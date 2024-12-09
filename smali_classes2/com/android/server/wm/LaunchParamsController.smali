.class public final Lcom/android/server/wm/LaunchParamsController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mModifiers:Ljava/util/List;

.field public final mPersister:Lcom/android/server/wm/LaunchParamsPersister;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field public final mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field public final mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/LaunchParamsPersister;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p7

    move-object/from16 v14, p8

    .line 1
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    const/4 v15, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x5

    if-nez v8, :cond_0

    if-eqz v10, :cond_9

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mPersister:Lcom/android/server/wm/LaunchParamsPersister;

    if-lez v13, :cond_8

    if-eqz v12, :cond_1

    .line 3
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v7

    :goto_0
    if-nez v2, :cond_2

    if-eqz p9, :cond_2

    .line 4
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    :cond_2
    if-nez v2, :cond_3

    if-eqz v8, :cond_3

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    :cond_3
    if-eqz v8, :cond_4

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p9, :cond_5

    :cond_4
    if-ne v2, v6, :cond_9

    .line 8
    :cond_5
    invoke-virtual {v1, v8, v10, v14}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParams(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 9
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    if-eqz v2, :cond_9

    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_9

    .line 10
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v12, :cond_6

    .line 11
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    goto :goto_1

    :cond_6
    move v2, v7

    :goto_1
    if-ne v2, v6, :cond_7

    .line 12
    iget-object v3, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDexPersistBoundsParam:Lcom/android/server/wm/DexPersistBoundsParams;

    iget v4, v3, Lcom/android/server/wm/DexPersistBoundsParams;->mDexWindowingMode:I

    if-ne v4, v15, :cond_7

    .line 13
    iput v6, v3, Lcom/android/server/wm/DexPersistBoundsParams;->mDexWindowingMode:I

    if-eqz v8, :cond_9

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    goto :goto_2

    :cond_7
    if-eqz v8, :cond_9

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eq v2, v6, :cond_9

    iget v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-ne v1, v6, :cond_9

    .line 17
    iput v7, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_2

    .line 18
    :cond_8
    invoke-virtual {v1, v8, v10, v14}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParams(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 19
    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v15

    move v5, v1

    :goto_3
    if-ltz v5, :cond_a1

    .line 20
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1, v14}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 21
    iget-object v3, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 22
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;

    .line 23
    move-object v2, v1

    check-cast v2, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "TaskLaunchParamsModifier:task="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " activity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, v2, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v8, :cond_b

    .line 25
    invoke-virtual {v8, v15, v7}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_a

    move-object v1, v10

    goto :goto_4

    :cond_a
    invoke-virtual {v8, v15, v7}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :goto_4
    move-object v6, v1

    goto :goto_5

    :cond_b
    move-object v6, v10

    :goto_5
    const/4 v4, 0x2

    if-nez v6, :cond_c

    if-eqz v13, :cond_c

    move-object v15, v2

    move-object v0, v3

    move/from16 v23, v5

    move-object v8, v9

    move-object v14, v12

    :goto_6
    const/4 v10, 0x5

    move-object v12, v11

    goto/16 :goto_5e

    .line 26
    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object/from16 v17, v1

    move-object v1, v2

    move-object v15, v2

    move-object/from16 v2, p1

    move-object v0, v3

    move-object/from16 v3, p5

    const/4 v14, -0x1

    move-object/from16 v4, p4

    move/from16 v23, v5

    move-object/from16 v5, v17

    move-object/from16 v16, v6

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    .line 27
    iput-object v7, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 28
    iget-object v6, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "display-id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " task-display-area-windowing-mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " suggested-display-area="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v15, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 34
    iget-object v4, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    if-eqz v10, :cond_10

    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_10

    .line 35
    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v1

    if-eq v1, v14, :cond_10

    const/16 v2, -0x2710

    if-ne v1, v2, :cond_d

    .line 36
    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 37
    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v3, 0x0

    goto :goto_7

    .line 38
    :cond_d
    iget-object v2, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    .line 39
    invoke-virtual {v2, v1, v3, v5, v3}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_7
    if-eqz v1, :cond_e

    .line 40
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    goto :goto_8

    :cond_e
    move-object v1, v5

    :goto_8
    if-eqz v1, :cond_11

    .line 41
    iget-object v2, v1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 42
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v14, 0x2

    if-ne v2, v14, :cond_f

    .line 43
    iget-object v2, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 44
    invoke-virtual {v2}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v2

    if-eq v2, v14, :cond_f

    goto :goto_9

    .line 45
    :cond_f
    iput-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "tda-from-lott="

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " dc="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " display-windowing-mode="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v15, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :cond_11
    :goto_9
    if-nez v13, :cond_12

    move-object v8, v9

    move-object v14, v12

    const/4 v7, 0x2

    goto/16 :goto_6

    .line 49
    :cond_12
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 50
    iget v1, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 51
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 52
    iget-object v1, v1, Lcom/android/server/wm/DexController;->mDisplayContexts:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v1, v2, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 54
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_a

    .line 55
    :cond_13
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 56
    :goto_a
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    const v2, 0x1050171

    .line 57
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    const v2, 0x1050170

    .line 58
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    goto :goto_b

    :cond_14
    const v2, 0x10503a1

    .line 59
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    const v2, 0x10503a0

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    :goto_b
    if-eqz v12, :cond_15

    .line 61
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    goto :goto_c

    :cond_15
    move v1, v3

    .line 62
    :goto_c
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v2

    if-nez v2, :cond_16

    .line 63
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    if-nez v1, :cond_18

    if-eqz v11, :cond_18

    .line 64
    iget-object v2, v11, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v2, :cond_19

    :cond_18
    :goto_d
    const/4 v5, 0x5

    goto :goto_f

    .line 65
    :cond_19
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_d

    .line 66
    :cond_1a
    iget-object v2, v11, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 67
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    const/4 v14, 0x1

    const/4 v5, 0x5

    if-eq v2, v14, :cond_1b

    if-eq v2, v5, :cond_1b

    goto :goto_f

    :cond_1b
    if-ne v2, v5, :cond_1c

    .line 68
    iget-object v2, v11, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_1c

    .line 69
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 70
    invoke-virtual {v2, v14, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 71
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_1c

    goto :goto_f

    .line 72
    :cond_1c
    iget v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 73
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v14

    if-ne v2, v14, :cond_1e

    .line 74
    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 75
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 76
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 77
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    goto :goto_e

    .line 78
    :cond_1d
    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 79
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    .line 80
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "inherit-from-source="

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {v15, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_1e
    :goto_f
    if-nez v1, :cond_20

    if-eqz v8, :cond_20

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-ne v2, v7, :cond_20

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/Task;->mReparentLeafTaskIfRelaunch:Z

    if-nez v2, :cond_20

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 86
    iget-object v2, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 87
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eqz v2, :cond_20

    .line 88
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "inherit-from-task="

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v15, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 92
    :cond_20
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v2

    if-nez v2, :cond_21

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX:Z

    if-eqz v2, :cond_22

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_21
    if-eqz v1, :cond_23

    if-ne v1, v5, :cond_22

    goto :goto_10

    :cond_22
    move v2, v3

    goto :goto_11

    :cond_23
    :goto_10
    const/4 v2, 0x1

    .line 93
    :goto_11
    iget-object v14, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v14, :cond_26

    .line 94
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v14

    const/4 v3, 0x1

    if-ne v14, v3, :cond_24

    if-eqz v1, :cond_25

    :cond_24
    if-ne v1, v3, :cond_26

    :cond_25
    const/4 v3, 0x1

    goto :goto_12

    :cond_26
    const/4 v3, 0x0

    .line 95
    :goto_12
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v14

    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v13, 0x6

    if-eqz v14, :cond_28

    .line 96
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v14

    if-eqz v14, :cond_28

    :cond_27
    :goto_13
    const/4 v14, 0x0

    goto :goto_15

    :cond_28
    if-eqz v12, :cond_2a

    .line 97
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v14

    if-eqz v14, :cond_2a

    if-eq v1, v13, :cond_2a

    .line 98
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2a

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    move-result v14

    if-nez v14, :cond_2a

    :cond_29
    :goto_14
    const/4 v14, 0x1

    goto :goto_15

    .line 99
    :cond_2a
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v14

    if-eqz v14, :cond_2b

    .line 100
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v14

    if-eqz v14, :cond_2b

    if-eqz v11, :cond_2b

    .line 101
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v14

    if-eqz v14, :cond_2b

    if-nez v1, :cond_2b

    goto :goto_13

    .line 102
    :cond_2b
    iget-boolean v14, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v14, :cond_27

    .line 103
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v14

    if-eqz v14, :cond_2c

    if-eqz v1, :cond_29

    :cond_2c
    const/4 v14, 0x5

    if-ne v1, v14, :cond_27

    goto :goto_14

    :goto_15
    if-eqz v9, :cond_2e

    if-nez v14, :cond_2d

    if-eqz v3, :cond_2e

    :cond_2d
    const/16 v20, 0x1

    goto :goto_16

    :cond_2e
    const/16 v20, 0x0

    .line 104
    :goto_16
    invoke-virtual {v4, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v21

    move-object/from16 v26, v4

    if-eqz v21, :cond_39

    if-nez v14, :cond_30

    .line 105
    iget-boolean v4, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v4, :cond_2f

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2f

    goto :goto_17

    :cond_2f
    if-eqz v3, :cond_39

    .line 106
    :cond_30
    :goto_17
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 107
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v1, 0x1

    goto :goto_19

    :cond_31
    const/4 v2, 0x2

    if-eq v1, v2, :cond_32

    :goto_18
    const/4 v1, 0x5

    goto :goto_19

    :cond_32
    if-nez v1, :cond_33

    if-eqz v14, :cond_33

    goto :goto_18

    .line 108
    :cond_33
    :goto_19
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 109
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v3

    if-eqz v3, :cond_34

    if-eqz v2, :cond_34

    .line 110
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_34

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_1a

    :cond_34
    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_1a
    if-eqz v14, :cond_37

    if-eqz v2, :cond_37

    .line 111
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 112
    invoke-virtual {v6, v13}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 113
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v20

    if-eqz v20, :cond_35

    move/from16 v20, v1

    const/4 v1, 0x0

    .line 114
    iput v1, v13, Landroid/graphics/Rect;->top:I

    goto :goto_1b

    :cond_35
    move/from16 v20, v1

    .line 115
    :goto_1b
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v13, v13, Landroid/graphics/Rect;->top:I

    if-ge v1, v13, :cond_36

    .line 116
    iget v1, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getFreeformTopInset()I

    move-result v27

    add-int v13, v27, v13

    invoke-virtual {v2, v1, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_36
    if-eqz v8, :cond_38

    .line 117
    invoke-virtual {v8, v2}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    goto :goto_1c

    :cond_37
    move/from16 v20, v1

    .line 118
    :cond_38
    :goto_1c
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activity-options-bounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move v12, v3

    move-object/from16 v13, v17

    move/from16 v1, v20

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v20, v4

    :goto_1d
    move-object/from16 v17, v7

    goto/16 :goto_2a

    .line 120
    :cond_39
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v3, :cond_3c

    if-eqz v11, :cond_3c

    iget-boolean v3, v11, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v3, :cond_3c

    .line 121
    iget-boolean v3, v11, Lcom/android/server/wm/ActivityRecord;->mIsUnhandledDropLaunch:Z

    if-eqz v3, :cond_3c

    .line 122
    iget-object v3, v11, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 123
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3a

    .line 124
    iget-object v3, v11, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 125
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    const/4 v13, 0x1

    if-ne v3, v13, :cond_3c

    .line 126
    :cond_3a
    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 127
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    if-ne v2, v4, :cond_3b

    .line 128
    iget-object v3, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 129
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "inherit-unhandled-drop-bounds="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move v1, v2

    move-object/from16 v13, v17

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v20, 0x0

    goto :goto_1d

    :cond_3c
    if-eqz v2, :cond_47

    .line 130
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v14, :cond_44

    .line 131
    iget-object v1, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v1}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v1

    .line 132
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v2

    move-object/from16 v13, v17

    if-eqz v2, :cond_3f

    .line 133
    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDexPersistBoundsParam:Lcom/android/server/wm/DexPersistBoundsParams;

    .line 134
    iget-object v3, v2, Lcom/android/server/wm/DexPersistBoundsParams;->mDexDualBounds:Landroid/graphics/Rect;

    .line 135
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, v2, Lcom/android/server/wm/DexPersistBoundsParams;->mDexStandAloneBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    :cond_3d
    iget v2, v2, Lcom/android/server/wm/DexPersistBoundsParams;->mDexWindowingMode:I

    if-eqz v2, :cond_3f

    .line 136
    iget v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 137
    iget-object v3, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 138
    invoke-static {v1, v2, v13, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getPersistentDexBounds(IILcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 139
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 140
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v15, v7, v1, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    goto :goto_1e

    .line 141
    :cond_3e
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDexPersistBoundsParam:Lcom/android/server/wm/DexPersistBoundsParams;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/wm/DexPersistBoundsParams;->mDexWindowingMode:I

    .line 142
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dex-persistent-bounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object/from16 v4, v16

    const/4 v1, 0x1

    goto/16 :goto_22

    :cond_3f
    if-eqz v8, :cond_41

    .line 143
    iget-boolean v1, v8, Lcom/android/server/wm/Task;->mTakeInitBounds:Z

    if-nez v1, :cond_40

    goto :goto_1f

    :cond_40
    move-object/from16 v4, v16

    goto :goto_20

    :cond_41
    :goto_1f
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    move-object/from16 v4, v16

    invoke-virtual {v15, v7, v8, v4, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getDexMetaDataBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 144
    const-string v1, "dex-metadata-bounds"

    invoke-virtual {v15, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_21

    :cond_42
    :goto_20
    if-eqz v9, :cond_43

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 146
    invoke-virtual {v15, v7, v9, v10}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->recalculateLayout(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;)Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v1

    .line 147
    iget-object v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v15, v7, v4, v1, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dex-layout-bounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 149
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 150
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v15, v1, v4, v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getInitialDexBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dex-initial-bounds"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_21

    .line 152
    :cond_43
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v15, v1, v4, v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getInitialDexBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dex-initial_bounds"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_21

    :cond_44
    move-object/from16 v4, v16

    move-object/from16 v13, v17

    :cond_45
    :goto_21
    const/4 v1, 0x0

    .line 154
    :goto_22
    iget-object v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    goto :goto_23

    :cond_46
    const/4 v2, 0x5

    .line 155
    :goto_23
    iget-object v3, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move/from16 v16, v1

    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v1, v2

    move-object/from16 v17, v7

    move/from16 v10, v16

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v4

    goto/16 :goto_2a

    :cond_47
    move-object/from16 v4, v16

    move-object/from16 v13, v17

    if-eqz v20, :cond_4a

    .line 156
    iget-object v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v3, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 157
    invoke-virtual {v15, v7, v9, v10}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->recalculateLayout(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;)Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v2

    .line 158
    iget-object v3, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v15, v7, v4, v2, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 159
    iget-object v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    if-eqz v14, :cond_48

    const/4 v1, 0x5

    .line 160
    :cond_48
    iget-object v2, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bounds-from-layout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_24
    const/4 v12, 0x1

    :goto_25
    const/16 v20, 0x0

    goto/16 :goto_2a

    .line 162
    :cond_49
    const-string v2, "empty-window-layout"

    invoke-virtual {v15, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    goto/16 :goto_29

    :cond_4a
    const/4 v2, 0x6

    if-ne v1, v2, :cond_4b

    if-eqz v12, :cond_4b

    .line 163
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 164
    iget-object v2, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "multiwindow-activity-options-bounds="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    const/4 v9, 0x1

    :goto_26
    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_24

    :cond_4b
    if-eqz v14, :cond_53

    .line 166
    iget-boolean v2, v6, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_53

    .line 167
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v2

    if-nez v2, :cond_53

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    if-eqz v2, :cond_4c

    .line 168
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iget v3, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDisplayDeviceType:I

    if-ne v2, v3, :cond_53

    .line 169
    :cond_4c
    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 170
    iget-object v3, v2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    .line 171
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_53

    iget-object v3, v2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_53

    iget v2, v2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_53

    .line 172
    iget-object v2, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 173
    iget-object v3, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

    iget-object v11, v3, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 174
    iget v11, v3, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    .line 175
    iget-object v10, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 176
    iget v10, v10, Landroid/view/DisplayInfo;->rotation:I

    .line 177
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 178
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    move-object/from16 v16, v4

    iget v4, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v17, v7

    const/4 v7, 0x0

    invoke-virtual {v12, v7, v7, v4, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 179
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz v4, :cond_4d

    if-eqz v8, :cond_4d

    iget-boolean v4, v6, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_4d

    .line 180
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 181
    iget-object v4, v3, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    iget-object v3, v3, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-static {v4, v12, v3, v2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->adjustBoundsForScreenRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_28

    .line 182
    :cond_4d
    invoke-static {v10, v11}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_4e

    const/4 v7, 0x3

    if-ne v4, v7, :cond_4f

    goto :goto_27

    :cond_4e
    const/4 v7, 0x3

    .line 183
    :goto_27
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v9

    const/4 v7, 0x0

    invoke-virtual {v12, v7, v7, v4, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 184
    :cond_4f
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v7, v3, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    .line 185
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget-object v3, v3, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v7, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v9, v4, v3

    const/high16 v12, 0x3f000000    # 0.5f

    if-eqz v9, :cond_50

    .line 186
    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    mul-float/2addr v9, v4

    add-float/2addr v9, v12

    float-to-int v9, v9

    iput v9, v2, Landroid/graphics/Rect;->left:I

    .line 187
    iget v9, v2, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    mul-float/2addr v9, v4

    add-float/2addr v9, v12

    float-to-int v4, v9

    iput v4, v2, Landroid/graphics/Rect;->right:I

    :cond_50
    cmpl-float v3, v7, v3

    if-eqz v3, :cond_51

    .line 188
    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    add-float/2addr v3, v12

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 189
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    add-float/2addr v3, v12

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    :cond_51
    if-eq v11, v10, :cond_52

    .line 190
    invoke-virtual {v6, v11, v2, v10}, Lcom/android/server/wm/DisplayContent;->rotateBounds(ILandroid/graphics/Rect;I)V

    .line 191
    :cond_52
    :goto_28
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "freeform-persist-bounds="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_25

    :cond_53
    move-object/from16 v16, v4

    move-object/from16 v17, v7

    if-eqz v14, :cond_54

    const/4 v2, 0x5

    if-ne v1, v2, :cond_54

    .line 192
    iput v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :cond_54
    :goto_29
    const/4 v9, 0x0

    goto/16 :goto_26

    .line 193
    :goto_2a
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    if-eqz v2, :cond_5a

    if-eqz v8, :cond_5a

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_5a

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5a

    .line 195
    iget-object v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSnappingBounds:Landroid/graphics/Rect;

    .line 196
    iget-object v3, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v3}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v3

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v4

    move-object/from16 v7, v17

    if-eqz v4, :cond_55

    .line 198
    iget-object v4, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 199
    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 200
    invoke-static {v3, v4, v13, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getPersistentDexBounds(IILcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)Z

    .line 201
    :cond_55
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_56

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    :goto_2b
    move-object/from16 v16, v5

    goto :goto_2c

    :cond_56
    move-object/from16 v4, v16

    .line 202
    invoke-virtual {v15, v7, v8, v4, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getDexMetaDataBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)Z

    .line 203
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_57

    move-object/from16 v3, p2

    goto :goto_2b

    :cond_57
    move-object/from16 v3, p2

    move-object/from16 v16, v5

    if-eqz v3, :cond_58

    .line 204
    invoke-virtual {v15, v7, v3, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->recalculateLayout(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;)Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v5

    .line 205
    invoke-virtual {v15, v7, v4, v5, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 206
    :cond_58
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_59

    goto :goto_2c

    .line 207
    :cond_59
    invoke-virtual {v15, v2, v4, v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getInitialDexBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 208
    :goto_2c
    iget-object v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSnappingBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_5b

    .line 209
    iget-object v5, v8, Lcom/android/server/wm/Task;->mSnappingGuideBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2d

    :cond_5a
    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object/from16 v7, v17

    move-object/from16 v16, v5

    .line 210
    :cond_5b
    :goto_2d
    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 211
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-nez v2, :cond_5c

    iget v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-nez v2, :cond_5c

    goto/16 :goto_32

    :cond_5c
    if-nez v9, :cond_64

    .line 212
    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_5d

    .line 213
    iget-object v2, v2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 214
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 215
    iget v5, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v2, v5, :cond_64

    .line 216
    :cond_5d
    iget v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz v2, :cond_60

    .line 217
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_60

    const/4 v2, 0x5

    if-eqz v14, :cond_5e

    if-ne v1, v2, :cond_5e

    goto :goto_2e

    .line 218
    :cond_5e
    iget v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :goto_2e
    if-eq v1, v2, :cond_5f

    const/4 v2, 0x1

    goto :goto_2f

    :cond_5f
    const/4 v2, 0x0

    .line 219
    :goto_2f
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v14, "inherit-"

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_30

    .line 220
    :cond_60
    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v2, 0x0

    .line 221
    :goto_30
    iget-object v5, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_63

    .line 222
    iget v5, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mOrientation:I

    .line 223
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v14, :cond_61

    goto :goto_31

    .line 224
    :cond_61
    iget-object v2, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v5, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v2, 0x5

    if-ne v1, v2, :cond_62

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "inherit-bounds="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_62
    move v5, v1

    const/4 v14, 0x1

    goto :goto_33

    :cond_63
    :goto_31
    move v5, v1

    move v14, v2

    goto :goto_33

    :cond_64
    :goto_32
    move v5, v1

    const/4 v14, 0x0

    .line 226
    :goto_33
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->dexMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_66

    .line 227
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    move-result v1

    if-nez v1, :cond_66

    :goto_34
    move-object v8, v3

    move-object/from16 v17, v6

    move/from16 v35, v10

    move/from16 v34, v11

    move/from16 v29, v12

    move-object/from16 v32, v13

    move/from16 v33, v14

    move-object/from16 v10, v16

    move-object/from16 v12, v26

    const/16 v24, 0x5

    move-object/from16 v14, p5

    move-object v11, v4

    move/from16 v16, v5

    :cond_65
    move-object v13, v7

    goto/16 :goto_47

    .line 228
    :cond_66
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v1, 0x2

    if-ne v5, v1, :cond_67

    .line 229
    const-string/jumbo v1, "picture-in-picture"

    invoke-virtual {v15, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_34

    .line 230
    :cond_67
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DEX_SIZE_COMPAT_MODE:Z

    if-eqz v1, :cond_7e

    .line 231
    sget-object v1, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 232
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    sget-object v2, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 234
    iget v3, v2, Lcom/android/server/wm/SizeCompatPolicyManager;->mLaunchPolicy:I

    move/from16 v17, v5

    const/4 v5, 0x2

    if-ne v3, v5, :cond_68

    goto :goto_36

    :cond_68
    const/4 v3, 0x1

    .line 235
    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    move-result v5

    if-nez v5, :cond_69

    move-object/from16 v5, p5

    .line 236
    invoke-virtual {v15, v4, v7, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z

    move-result v3

    if-nez v3, :cond_7d

    .line 237
    iget-object v3, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/16 v5, 0xa

    if-ne v3, v5, :cond_6a

    :cond_69
    move-object/from16 v8, p2

    move/from16 v35, v10

    move/from16 v34, v11

    move/from16 v29, v12

    move-object/from16 v32, v13

    move/from16 v33, v14

    move-object/from16 v10, v16

    move/from16 v16, v17

    move-object/from16 v12, v26

    const/4 v1, 0x1

    const/4 v13, 0x3

    const/16 v24, 0x5

    move-object/from16 v14, p5

    move-object v11, v4

    :goto_35
    move-object/from16 v17, v6

    move/from16 v6, p7

    goto/16 :goto_45

    .line 238
    :cond_6a
    :goto_36
    iget-object v3, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 239
    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 240
    iget-object v2, v2, Lcom/android/server/wm/SizeCompatPolicyManager;->mDisplayIdsForActiveMode:Landroid/util/SparseArray;

    move-object/from16 v25, v6

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7c

    .line 241
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/DexSizeCompatController;->getCompatPolicy(Lcom/android/server/wm/Task;)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    move-result-object v2

    const/4 v6, 0x0

    if-nez v2, :cond_6c

    .line 242
    invoke-static {v6, v4, v7}, Lcom/android/server/wm/DexSizeCompatController;->shouldCreateCompatPolicy(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v3

    if-eqz v3, :cond_6b

    goto :goto_39

    .line 243
    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "interceptCalculateIfPossible: root="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", tda="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SizeCompatPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    move-object/from16 v8, p2

    move/from16 v6, p7

    move/from16 v35, v10

    move/from16 v34, v11

    move/from16 v29, v12

    move-object/from16 v32, v13

    move/from16 v33, v14

    move-object/from16 v10, v16

    move/from16 v16, v17

    move-object/from16 v17, v25

    move-object/from16 v12, v26

    const/4 v1, 0x1

    :goto_38
    const/4 v13, 0x3

    const/16 v24, 0x5

    move-object/from16 v14, p5

    move-object v11, v4

    goto/16 :goto_45

    :cond_6c
    :goto_39
    if-nez v8, :cond_6d

    move-object/from16 v28, v4

    move/from16 v35, v10

    move/from16 v34, v11

    move/from16 v29, v12

    move-object/from16 v32, v13

    move/from16 v33, v14

    const/4 v5, 0x5

    goto/16 :goto_42

    :cond_6d
    if-nez v2, :cond_6e

    .line 244
    invoke-static {v8, v7}, Lcom/android/server/wm/DexSizeCompatController;->createCompatPolicy(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    move-result-object v2

    if-nez v2, :cond_6e

    goto :goto_37

    .line 245
    :cond_6e
    iget-object v3, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 246
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 247
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    move-object/from16 v28, v4

    .line 248
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    move/from16 v29, v12

    move-object/from16 v12, p3

    if-eqz v12, :cond_6f

    .line 249
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v30

    goto :goto_3a

    .line 250
    :cond_6f
    invoke-virtual {v2}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTopOrientationInTask()I

    move-result v30

    .line 251
    :goto_3a
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v31

    const/16 v22, 0x1

    xor-int/lit8 v31, v31, 0x1

    if-eqz v31, :cond_75

    move-object/from16 v32, v13

    .line 252
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v13

    move/from16 v33, v14

    .line 253
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 254
    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->isRotatable(I)Z

    move-result v34

    if-eqz v34, :cond_70

    move/from16 v34, v11

    .line 255
    invoke-static {v13, v14}, Lcom/samsung/android/core/CompatUtils;->getConfigurationOrientation(II)I

    move-result v11

    .line 256
    iput v11, v2, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserOrientation:I

    move/from16 v35, v10

    goto :goto_3b

    :cond_70
    move/from16 v34, v11

    move/from16 v35, v10

    move/from16 v11, v30

    .line 257
    :goto_3b
    iget-object v10, v8, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v10, :cond_71

    .line 258
    invoke-virtual {v2, v10}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getStableBounds(Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;

    move-result-object v10

    goto :goto_3c

    :cond_71
    move-object v10, v5

    .line 259
    :goto_3c
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 260
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-gt v13, v12, :cond_74

    if-le v14, v8, :cond_72

    goto :goto_3d

    .line 261
    :cond_72
    iget-object v8, v2, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpFullScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v11, v8}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getFrameByOrientation(ILandroid/graphics/Rect;)V

    .line 262
    iget-object v8, v2, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpFullScreenBounds:Landroid/graphics/Rect;

    .line 263
    invoke-static {v8, v3}, Lcom/samsung/android/core/CompatUtils;->getCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v12

    invoke-static {v12}, Lcom/samsung/android/core/CompatUtils;->adjustRoundScale(F)F

    move-result v12

    .line 264
    iget v13, v1, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    cmpg-float v13, v12, v13

    if-gez v13, :cond_73

    .line 265
    invoke-virtual {v2, v11, v10, v8}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getMinScale(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v8

    cmpg-float v10, v12, v8

    if-gez v10, :cond_73

    move v12, v8

    .line 266
    :cond_73
    invoke-static {v12}, Lcom/samsung/android/core/CompatUtils;->adjustRoundScale(F)F

    move-result v8

    iput v8, v2, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserScale:F

    goto :goto_3e

    .line 267
    :cond_74
    :goto_3d
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3e

    :cond_75
    move/from16 v35, v10

    move/from16 v34, v11

    move-object/from16 v32, v13

    move/from16 v33, v14

    move/from16 v11, v30

    .line 268
    :goto_3e
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_77

    .line 269
    invoke-virtual {v2}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTopOrientationInTask()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->isRotatable(I)Z

    move-result v8

    if-eqz v8, :cond_76

    .line 270
    iget v1, v1, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    :goto_3f
    const/4 v8, 0x1

    goto :goto_40

    .line 271
    :cond_76
    iget v1, v2, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserScale:F

    goto :goto_3f

    .line 272
    :goto_40
    invoke-virtual {v2, v5, v11, v1, v8}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTaskBounds(Landroid/graphics/Rect;IFZ)Landroid/graphics/Rect;

    move-result-object v1

    .line 273
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 274
    :cond_77
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_78

    .line 275
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v1, v6, :cond_79

    .line 276
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v1, v4, :cond_79

    :cond_78
    const/4 v5, 0x5

    goto :goto_41

    :cond_79
    if-nez v31, :cond_7a

    .line 277
    invoke-static {v5, v3}, Lcom/samsung/android/core/CompatUtils;->adjustBoundsToCenter(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_7a
    const/4 v5, 0x5

    .line 278
    iput v5, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_42

    .line 279
    :goto_41
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v1, 0x1

    .line 280
    iput v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 281
    :goto_42
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7b

    .line 282
    iget-object v3, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v15

    move-object v2, v7

    move-object/from16 v8, p2

    const/4 v10, 0x0

    move-object/from16 v12, v26

    move-object/from16 v11, v28

    const/4 v13, 0x3

    move-object/from16 v14, p5

    move/from16 v24, v5

    move-object/from16 v10, v16

    move/from16 v16, v17

    move-object v5, v6

    move-object/from16 v17, v25

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;)V

    :goto_43
    move/from16 v6, p7

    const/4 v1, 0x1

    goto :goto_44

    :cond_7b
    move-object/from16 v8, p2

    move-object/from16 v14, p5

    move/from16 v24, v5

    move-object/from16 v10, v16

    move/from16 v16, v17

    move-object/from16 v17, v25

    move-object/from16 v12, v26

    move-object/from16 v11, v28

    const/4 v13, 0x3

    goto :goto_43

    :goto_44
    if-eq v6, v1, :cond_65

    move-object v13, v7

    const/4 v1, 0x0

    const/4 v7, 0x2

    goto/16 :goto_48

    :cond_7c
    move-object/from16 v8, p2

    move/from16 v6, p7

    move v1, v3

    move/from16 v35, v10

    move/from16 v34, v11

    move/from16 v29, v12

    move-object/from16 v32, v13

    move/from16 v33, v14

    move-object/from16 v10, v16

    move/from16 v16, v17

    move-object/from16 v17, v25

    move-object/from16 v12, v26

    goto/16 :goto_38

    :cond_7d
    move-object/from16 v8, p2

    move/from16 v35, v10

    move/from16 v34, v11

    move/from16 v29, v12

    move-object/from16 v32, v13

    move/from16 v33, v14

    move-object/from16 v10, v16

    move/from16 v16, v17

    move-object/from16 v12, v26

    const/4 v1, 0x1

    const/4 v13, 0x3

    const/16 v24, 0x5

    move-object v11, v4

    move-object v14, v5

    goto/16 :goto_35

    :cond_7e
    move-object v8, v3

    move-object/from16 v17, v6

    move/from16 v35, v10

    move/from16 v34, v11

    move/from16 v29, v12

    move-object/from16 v32, v13

    move/from16 v33, v14

    move-object/from16 v10, v16

    move-object/from16 v12, v26

    const/4 v1, 0x1

    const/4 v13, 0x3

    const/16 v24, 0x5

    move-object/from16 v14, p5

    move/from16 v6, p7

    move-object v11, v4

    move/from16 v16, v5

    .line 283
    :goto_45
    invoke-virtual {v11, v1}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    move-result v2

    if-nez v2, :cond_65

    .line 284
    iget-object v1, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 285
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_65

    .line 286
    invoke-virtual {v15, v11, v7, v14}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_80

    const/16 v16, 0x5

    if-eqz v8, :cond_7f

    .line 287
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 288
    iget-object v5, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object v1, v15

    move-object v2, v11

    move-object v3, v7

    move-object/from16 v4, p2

    move-object/from16 v19, v5

    move/from16 v5, v16

    move v6, v9

    move-object v13, v7

    move-object/from16 v7, v19

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    const/4 v7, 0x1

    goto :goto_46

    :cond_7f
    move-object v13, v7

    const/4 v7, 0x0

    .line 289
    :goto_46
    const-string/jumbo v1, "unresizable-freeform"

    invoke-virtual {v15, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move v1, v7

    move/from16 v7, p7

    goto :goto_48

    :cond_80
    move-object v13, v7

    .line 290
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 291
    const-string/jumbo v1, "unresizable-forced-maximize"

    invoke-virtual {v15, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move/from16 v7, p7

    const/4 v1, 0x0

    const/16 v16, 0x1

    goto :goto_48

    :cond_81
    move-object v8, v3

    move-object/from16 v17, v6

    move/from16 v35, v10

    move/from16 v34, v11

    move/from16 v29, v12

    move-object/from16 v32, v13

    move/from16 v33, v14

    move-object/from16 v10, v16

    move-object/from16 v12, v26

    const/16 v24, 0x5

    move-object/from16 v14, p5

    move-object v11, v4

    move/from16 v16, v5

    move-object v13, v7

    .line 292
    const-string/jumbo v1, "non-freeform-task-display-area"

    invoke-virtual {v15, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_47
    move/from16 v7, p7

    const/4 v1, 0x0

    :goto_48
    if-nez v16, :cond_83

    .line 293
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_83

    .line 294
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_83

    .line 295
    invoke-virtual {v13, v2}, Lcom/android/server/wm/TaskDisplayArea;->isUnderHomeTask(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v3

    if-nez v3, :cond_82

    .line 296
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notMinimizedFreeform-to-display-windowing-mode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-virtual {v15, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object/from16 v6, v17

    :goto_49
    move/from16 v5, v24

    goto :goto_4a

    .line 300
    :cond_82
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    move-object/from16 v6, v17

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "freeform-task"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-static/range {v24 .. v24}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-virtual {v15, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move/from16 v2, v24

    move v5, v2

    goto :goto_4a

    :cond_83
    move-object/from16 v6, v17

    :cond_84
    move/from16 v2, v16

    goto :goto_49

    :goto_4a
    if-ne v2, v5, :cond_85

    .line 304
    iput v2, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_4c

    .line 305
    :cond_85
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    if-ne v2, v3, :cond_86

    const/4 v3, 0x0

    goto :goto_4b

    :cond_86
    move v3, v2

    .line 306
    :goto_4b
    iput v3, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 307
    :goto_4c
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v3

    move-object/from16 v4, p1

    if-eqz v3, :cond_8c

    if-eqz v4, :cond_8c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 308
    iget-object v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 309
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 310
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    .line 311
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mDexCompatController:Lcom/android/server/wm/DexCompatController;

    move/from16 v16, v9

    iget-object v9, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    move/from16 v17, v1

    iget v1, v4, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    move-object/from16 v25, v6

    move-object/from16 v6, p3

    invoke-virtual {v10, v4, v9, v6, v1}, Lcom/android/server/wm/DexCompatController;->getCompatBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;I)V

    .line 312
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8a

    if-eqz v35, :cond_89

    if-nez v2, :cond_89

    .line 313
    iget v1, v4, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_87

    goto :goto_4d

    .line 314
    :cond_87
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_88
    const/4 v9, 0x0

    goto :goto_4e

    .line 315
    :cond_89
    :goto_4d
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 316
    iget-object v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 317
    iget-object v3, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 318
    iget-object v3, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {v13, v1, v2, v3}, Lcom/android/server/wm/LaunchParamsUtil;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 319
    iget v1, v4, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_88

    .line 320
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 321
    :goto_4e
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v15, v13, v8, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    goto :goto_4f

    :cond_8a
    const/4 v9, 0x0

    .line 322
    :goto_4f
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8b

    const/4 v1, 0x1

    goto :goto_50

    :cond_8b
    const/4 v1, 0x5

    .line 323
    :goto_50
    iput v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 324
    iget-object v2, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dex-compat-windowing-mode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-virtual {v15, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dex-compat-bounds="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move v5, v1

    move/from16 v29, v9

    :goto_51
    const/4 v1, 0x1

    goto :goto_52

    :cond_8c
    move/from16 v17, v1

    move-object/from16 v25, v6

    move/from16 v16, v9

    const/4 v9, 0x0

    move-object/from16 v6, p3

    move v5, v2

    goto :goto_51

    :goto_52
    if-ne v7, v1, :cond_8d

    :goto_53
    move-object/from16 v12, p4

    const/4 v7, 0x2

    const/4 v10, 0x5

    goto/16 :goto_5e

    :cond_8d
    if-eqz v5, :cond_8e

    move v10, v5

    goto :goto_54

    .line 329
    :cond_8e
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    move v10, v1

    :goto_54
    if-eqz v14, :cond_90

    .line 330
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-nez v1, :cond_8f

    .line 331
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayAreaFeatureId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8f

    goto :goto_55

    :cond_8f
    move v9, v7

    move-object v3, v13

    move/from16 v6, v16

    move-object/from16 v36, v25

    goto/16 :goto_59

    .line 332
    :cond_90
    :goto_55
    iget-object v1, v12, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 333
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v11, v4}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v12

    .line 334
    new-instance v1, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, v15, v10, v12}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;II)V

    move-object/from16 v3, v25

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z

    .line 335
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_92

    if-eq v1, v13, :cond_92

    .line 336
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-ne v5, v1, :cond_91

    move v1, v9

    goto :goto_56

    :cond_91
    move v1, v5

    .line 337
    :goto_56
    iput v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz v34, :cond_93

    .line 338
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 339
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v2, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v15, v1, v11, v8, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 340
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    move/from16 v16, v1

    :cond_92
    move-object/from16 v36, v3

    move v9, v7

    goto :goto_57

    :cond_93
    if-eqz v17, :cond_92

    .line 341
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 342
    iget-object v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v17, v1

    move-object v1, v15

    move-object/from16 v18, v2

    move-object v2, v11

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    move-object/from16 v4, p2

    const/4 v9, 0x5

    move-object/from16 v36, v19

    move/from16 v6, v16

    move v9, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 343
    :goto_57
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_94

    const/4 v2, 0x0

    .line 344
    iput-object v2, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "overridden-display-area=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-static {v12}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-static {v10}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-virtual {v15, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object v3, v1

    :goto_58
    move/from16 v6, v16

    goto :goto_59

    :cond_94
    move-object v3, v13

    goto :goto_58

    .line 349
    :goto_59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "display-area="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 350
    iput-object v3, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v1, 0x2

    if-ne v9, v1, :cond_95

    goto/16 :goto_53

    :cond_95
    if-eqz v33, :cond_98

    const/4 v1, 0x5

    if-ne v10, v1, :cond_97

    move-object/from16 v1, v32

    .line 351
    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v1, v3, :cond_96

    .line 352
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v15, v3, v8, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 353
    :cond_96
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v15

    move-object/from16 v17, v3

    move-object/from16 v18, v1

    .line 354
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;)V

    :goto_5a
    move-object/from16 v12, p4

    const/4 v10, 0x5

    goto/16 :goto_5d

    :cond_97
    move-object/from16 v12, p4

    move v10, v1

    goto/16 :goto_5d

    .line 355
    :cond_98
    iget-object v1, v3, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 356
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_9a

    if-eqz v14, :cond_9a

    .line 357
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->isApplyBigFreeformSize()Z

    move-result v1

    if-eqz v1, :cond_9a

    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 358
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 359
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    move-object/from16 v9, v36

    .line 360
    invoke-virtual {v9, v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    .line 361
    invoke-virtual {v11, v2}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    move-result v3

    if-eqz v3, :cond_99

    const v2, 0x3f733333    # 0.95f

    .line 362
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 363
    :cond_99
    iget-object v2, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "big-freeform-bounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_5a

    :cond_9a
    move-object/from16 v9, v36

    move-object/from16 v12, p4

    if-eqz v12, :cond_9b

    .line 365
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_9b

    const/4 v7, 0x5

    if-ne v10, v7, :cond_9c

    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 366
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 367
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-ne v1, v3, :cond_9c

    iget-boolean v1, v12, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-nez v1, :cond_9c

    .line 368
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v15, v1, v3, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    goto :goto_5b

    :cond_9b
    const/4 v7, 0x5

    :cond_9c
    :goto_5b
    if-eqz v29, :cond_9d

    .line 369
    iget-object v5, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object v1, v15

    move-object v2, v11

    move-object/from16 v4, p2

    move-object v11, v5

    move v5, v10

    move v10, v7

    move-object v7, v11

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    goto :goto_5c

    :cond_9d
    move v10, v7

    .line 370
    :goto_5c
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_9e

    if-nez v29, :cond_9e

    if-nez v20, :cond_9e

    .line 371
    iget-object v3, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v15

    move-object v2, v13

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;)V

    :cond_9e
    :goto_5d
    const/4 v7, 0x2

    .line 372
    :goto_5e
    iget-object v1, v15, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq v7, v1, :cond_a0

    const/4 v2, 0x2

    if-eq v7, v2, :cond_9f

    move-object/from16 v2, p8

    goto :goto_5f

    :cond_9f
    move-object/from16 v2, p8

    .line 373
    invoke-virtual {v2, v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    :goto_5f
    add-int/lit8 v5, v23, -0x1

    move-object/from16 v0, p0

    move/from16 v13, p7

    move v15, v1

    move-object v9, v8

    move v6, v10

    move-object v11, v12

    move-object v12, v14

    const/4 v7, 0x0

    move-object/from16 v8, p1

    move-object/from16 v10, p3

    move-object v14, v2

    goto/16 :goto_3

    :cond_a0
    move-object/from16 v2, p8

    .line 374
    invoke-virtual {v2, v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    return-void

    :cond_a1
    move-object v2, v14

    .line 375
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v1, p3

    if-eqz v1, :cond_a2

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_a2

    .line 376
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 377
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 378
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 379
    iput-object v0, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_60

    .line 380
    :cond_a2
    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_a3

    .line 381
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 382
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    :cond_a3
    :goto_60
    return-void
.end method

.method public final layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v11, p1

    .line 3
    move-object/from16 v12, p5

    .line 4
    .line 5
    iget-object v13, v0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v1, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 8
    .line 9
    move/from16 v2, p6

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    move-object v10, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    iget-object v9, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x3

    .line 29
    move-object v1, p0

    .line 30
    move-object v2, p1

    .line 31
    move-object/from16 v3, p2

    .line 32
    .line 33
    move-object/from16 v4, p3

    .line 34
    .line 35
    move-object/from16 v5, p4

    .line 36
    .line 37
    move-object/from16 v6, p5

    .line 38
    .line 39
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x1

    .line 51
    const/4 v3, 0x0

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 55
    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    iget v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 59
    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    move v1, v2

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    move v1, v3

    .line 65
    :goto_2
    if-eqz v1, :cond_2

    .line 66
    .line 67
    return v3

    .line 68
    :cond_2
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 69
    .line 70
    .line 71
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    iget v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDexPersistBoundsParam:Lcom/android/server/wm/DexPersistBoundsParams;

    .line 90
    .line 91
    iget v1, v1, Lcom/android/server/wm/DexPersistBoundsParams;->mDexWindowingMode:I

    .line 92
    .line 93
    if-ne v1, v2, :cond_4

    .line 94
    .line 95
    if-eqz v12, :cond_3

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iget v2, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 102
    .line 103
    if-eq v1, v2, :cond_3

    .line 104
    .line 105
    invoke-virtual {v12, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    goto :goto_4

    .line 111
    :cond_3
    :goto_3
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    :cond_4
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 117
    .line 118
    .line 119
    return v3

    .line 120
    :cond_5
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_7

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_7

    .line 131
    .line 132
    iget v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 133
    .line 134
    if-eqz v1, :cond_7

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eq v1, v4, :cond_7

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iget v4, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 147
    .line 148
    move-object/from16 v5, p3

    .line 149
    .line 150
    invoke-virtual {v1, v4, v5, p1}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-nez v1, :cond_6

    .line 155
    .line 156
    move v4, v3

    .line 157
    :cond_6
    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 158
    .line 159
    .line 160
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_8

    .line 169
    .line 170
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .line 174
    .line 175
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 176
    .line 177
    .line 178
    return v2

    .line 179
    :cond_8
    :try_start_2
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .line 183
    .line 184
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 185
    .line 186
    .line 187
    return v3

    .line 188
    :goto_4
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 189
    .line 190
    .line 191
    throw v0
.end method
