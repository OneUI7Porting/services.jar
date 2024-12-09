.class public final Lcom/android/server/wm/DexCompatController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mDecorCaptionHeightInFreeform:Landroid/util/SparseArray;

.field public final mDecorCaptionHeightInFullscreen:Landroid/util/SparseArray;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mH:Lcom/android/server/wm/DexCompatController$H;

.field public final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
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
    iput-object v0, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/DexCompatController;->mDecorCaptionHeightInFullscreen:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/DexCompatController;->mDecorCaptionHeightInFreeform:Landroid/util/SparseArray;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/wm/DexCompatController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final changeWindowingModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 12

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 18
    .line 19
    invoke-direct {v11}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 27
    .line 28
    const/4 v10, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x3

    .line 34
    move-object v2, p1

    .line 35
    move-object v4, p2

    .line 36
    move-object v9, v11

    .line 37
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    iget p2, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 45
    .line 46
    if-eqz p2, :cond_3

    .line 47
    .line 48
    if-ne p2, p0, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string p2, "[DexCompat] changeWindowingModeIfNeeded: prev="

    .line 52
    .line 53
    const-string v1, ", next="

    .line 54
    .line 55
    invoke-static {p0, p2, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    iget p2, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 60
    .line 61
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p2, ", task="

    .line 65
    .line 66
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-string p1, "DexCompatController"

    .line 77
    .line 78
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iget p0, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/Task;->setWindowingMode(IZ)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_0
    return-void
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    const-string v0, "[DexCompatController]"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v1, v3, :cond_0

    .line 19
    .line 20
    move v4, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v4, 0x2

    .line 23
    :goto_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-static {v1, p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDefaultWidth(II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v1, p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDefaultHeight(II)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v5, "  DexCompat isDefaultSizeCompatible="

    .line 64
    .line 65
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    if-lez p0, :cond_2

    .line 69
    .line 70
    const/16 v5, 0x578

    .line 71
    .line 72
    if-le p0, v5, :cond_3

    .line 73
    .line 74
    :cond_2
    move v2, v3

    .line 75
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v2, "  DexCompat DefaultSize=("

    .line 88
    .line 89
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string/jumbo v0, "x"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, ")"

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final getCompatBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p4}, Lcom/android/server/wm/DexCompatController;->getCompatBoundsProvider(I)Lcom/android/server/wm/DexCompatBoundsProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo p2, "rotateDexCompatTaskLocked: cannot found bounds provider, "

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "DexCompatController"

    .line 23
    .line 24
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    if-eqz p4, :cond_2

    .line 33
    .line 34
    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    const/4 v0, -0x2

    .line 39
    if-eq p3, v0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p3, p4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 43
    .line 44
    iget p3, p3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    if-eqz p3, :cond_4

    .line 48
    .line 49
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    if-eqz p4, :cond_3

    .line 54
    .line 55
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object p3, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 61
    .line 62
    iget p3, p3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    const/4 p3, -0x1

    .line 66
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    if-nez p4, :cond_5

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    .line 74
    .line 75
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DexCompatBoundsProvider;->isPortrait(I)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iput-boolean p1, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mIsPortrait:Z

    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p3, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mStableBounds:Landroid/graphics/Rect;

    .line 88
    .line 89
    invoke-virtual {p1, p3}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DexCompatBoundsProvider;->getBounds(Landroid/graphics/Rect;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    return-void
.end method

.method public getCompatBoundsProvider(I)Lcom/android/server/wm/DexCompatBoundsProvider;
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    new-instance p0, Lcom/android/server/wm/DexCompatBoundsProvider;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;-><init>()V

    .line 7
    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x2

    .line 11
    if-ne p1, p0, :cond_1

    .line 12
    .line 13
    new-instance p0, Lcom/android/server/wm/DexCompatBoundsProvider$CustomDexCompatBoundsProvider;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/server/wm/DexCompatBoundsProvider$CustomDexCompatBoundsProvider;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    const/4 p0, 0x3

    .line 21
    if-ne p1, p0, :cond_2

    .line 22
    .line 23
    new-instance p0, Lcom/android/server/wm/DexCompatBoundsProvider$CustomDexCompatBoundsProvider;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/wm/DexCompatBoundsProvider$CustomDexCompatBoundsProvider;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public final initialize()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/DexCompatController$H;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

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
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DexCompatController$H;-><init>(Lcom/android/server/wm/DexCompatController;Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/DexCompatController;->mH:Lcom/android/server/wm/DexCompatController$H;

    .line 15
    .line 16
    return-void
.end method

.method public final isOrientationChanged(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    if-eq v2, p1, :cond_2

    .line 25
    .line 26
    return v1

    .line 27
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x2

    .line 36
    const/4 v4, 0x1

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    move p1, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    move p1, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_4
    move p1, v1

    .line 50
    :goto_0
    if-eqz p1, :cond_7

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_6

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-le v0, p0, :cond_5

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    move v3, v4

    .line 85
    :cond_6
    :goto_1
    if-eq v3, p1, :cond_7

    .line 86
    .line 87
    move v1, v4

    .line 88
    :cond_7
    return v1
.end method

.method public final rotateDexCompatTaskLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :cond_0
    iget v1, v0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DexCompatController;->getCompatBoundsProvider(I)Lcom/android/server/wm/DexCompatBoundsProvider;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo p1, "rotateDexCompatTaskLocked: cannot found bounds provider, "

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "DexCompatController"

    .line 37
    .line 38
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const/4 v5, 0x1

    .line 56
    const/4 v6, 0x0

    .line 57
    if-nez v4, :cond_3

    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-le v4, v7, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move v4, v6

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    :goto_0
    move v4, v5

    .line 73
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    if-nez v7, :cond_4

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    iput-object v0, v1, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    .line 81
    .line 82
    invoke-virtual {v1, v4}, Lcom/android/server/wm/DexCompatBoundsProvider;->isPortrait(I)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    iput-boolean v4, v1, Lcom/android/server/wm/DexCompatBoundsProvider;->mIsPortrait:Z

    .line 87
    .line 88
    iget-object v4, v1, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iget-object v7, v1, Lcom/android/server/wm/DexCompatBoundsProvider;->mStableBounds:Landroid/graphics/Rect;

    .line 95
    .line 96
    invoke-virtual {v4, v7}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DexCompatBoundsProvider;->getBounds(Landroid/graphics/Rect;)V

    .line 100
    .line 101
    .line 102
    :goto_2
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    const/4 v8, 0x3

    .line 111
    if-nez v7, :cond_d

    .line 112
    .line 113
    if-eqz v4, :cond_5

    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-nez v7, :cond_5

    .line 120
    .line 121
    const/4 v7, 0x5

    .line 122
    invoke-virtual {v4, v7}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 123
    .line 124
    .line 125
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 126
    .line 127
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 128
    .line 129
    invoke-virtual {v4}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    const/4 v7, 0x2

    .line 134
    if-ne v4, v7, :cond_6

    .line 135
    .line 136
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 137
    .line 138
    iget-object v4, v4, Lcom/android/server/wm/DexController;->mDexDisplaySize:Landroid/graphics/Point;

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    new-instance v4, Landroid/graphics/Point;

    .line 142
    .line 143
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 144
    .line 145
    .line 146
    iget-object v9, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 147
    .line 148
    iget-object v9, v9, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 149
    .line 150
    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 151
    .line 152
    invoke-virtual {v9, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 153
    .line 154
    .line 155
    :goto_3
    iget v9, v4, Landroid/graphics/Point;->x:I

    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    sub-int/2addr v9, v10

    .line 162
    div-int/2addr v9, v7

    .line 163
    iget v7, v0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    .line 164
    .line 165
    if-ne v7, v8, :cond_7

    .line 166
    .line 167
    iget-boolean v1, v1, Lcom/android/server/wm/DexCompatBoundsProvider;->mIsPortrait:Z

    .line 168
    .line 169
    if-eqz v1, :cond_7

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-ne p1, v5, :cond_7

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_7
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-nez p1, :cond_8

    .line 183
    .line 184
    iget v9, v3, Landroid/graphics/Rect;->left:I

    .line 185
    .line 186
    iget p1, v3, Landroid/graphics/Rect;->top:I

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_8
    :goto_4
    move p1, v6

    .line 190
    :goto_5
    invoke-virtual {v2, v9, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 191
    .line 192
    .line 193
    iget p1, v2, Landroid/graphics/Rect;->left:I

    .line 194
    .line 195
    if-gez p1, :cond_9

    .line 196
    .line 197
    neg-int p1, p1

    .line 198
    goto :goto_6

    .line 199
    :cond_9
    iget p1, v2, Landroid/graphics/Rect;->right:I

    .line 200
    .line 201
    iget v1, v4, Landroid/graphics/Point;->x:I

    .line 202
    .line 203
    if-le p1, v1, :cond_a

    .line 204
    .line 205
    sub-int p1, v1, p1

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_a
    move p1, v6

    .line 209
    :goto_6
    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 210
    .line 211
    if-gez v1, :cond_b

    .line 212
    .line 213
    neg-int v1, v1

    .line 214
    goto :goto_7

    .line 215
    :cond_b
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 216
    .line 217
    iget v3, v4, Landroid/graphics/Point;->y:I

    .line 218
    .line 219
    if-le v1, v3, :cond_c

    .line 220
    .line 221
    sub-int v1, v3, v1

    .line 222
    .line 223
    goto :goto_7

    .line 224
    :cond_c
    move v1, v6

    .line 225
    :goto_7
    invoke-virtual {v2, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 226
    .line 227
    .line 228
    iget p1, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 229
    .line 230
    invoke-virtual {p0, p1, v2, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 231
    .line 232
    .line 233
    goto :goto_8

    .line 234
    :cond_d
    iget p0, v0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    .line 235
    .line 236
    if-ne p0, v8, :cond_e

    .line 237
    .line 238
    if-eqz v4, :cond_e

    .line 239
    .line 240
    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 241
    .line 242
    .line 243
    :cond_e
    :goto_8
    return-void
.end method

.method public final scheduleStartActivityAsToggleFreeform(Lcom/android/server/wm/Task;Ljava/util/function/BooleanSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/Supplier;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const-string v5, "DexCompatController"

    .line 19
    .line 20
    const/4 v6, -0x1

    .line 21
    if-ne v4, v6, :cond_1

    .line 22
    .line 23
    const-string v0, "[DexCompat] Display is not invalid."

    .line 24
    .line 25
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v7, v1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 30
    .line 31
    const/high16 v8, 0x100000

    .line 32
    .line 33
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {v8, v4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 41
    .line 42
    .line 43
    invoke-interface/range {p2 .. p2}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-eqz v9, :cond_2

    .line 48
    .line 49
    iget-object v9, v0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 52
    .line 53
    .line 54
    iget-object v9, v0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    .line 55
    .line 56
    invoke-virtual {v8, v9}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-interface/range {p3 .. p3}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    invoke-virtual {v8, v9}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 64
    .line 65
    .line 66
    invoke-interface/range {p4 .. p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    move-object v14, v9

    .line 71
    check-cast v14, Ljava/lang/String;

    .line 72
    .line 73
    new-instance v9, Lcom/android/server/wm/DexCompatController$Request;

    .line 74
    .line 75
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    const/4 v10, 0x0

    .line 79
    iput-object v10, v9, Lcom/android/server/wm/DexCompatController$Request;->wpc:Lcom/android/server/wm/WindowProcessController;

    .line 80
    .line 81
    iput-object v10, v9, Lcom/android/server/wm/DexCompatController$Request;->intent:Landroid/content/Intent;

    .line 82
    .line 83
    iput v6, v9, Lcom/android/server/wm/DexCompatController$Request;->callingUid:I

    .line 84
    .line 85
    iput-object v10, v9, Lcom/android/server/wm/DexCompatController$Request;->callingPackage:Ljava/lang/String;

    .line 86
    .line 87
    iput v3, v9, Lcom/android/server/wm/DexCompatController$Request;->realCallingPid:I

    .line 88
    .line 89
    iput v6, v9, Lcom/android/server/wm/DexCompatController$Request;->realCallingUid:I

    .line 90
    .line 91
    iput-object v10, v9, Lcom/android/server/wm/DexCompatController$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 92
    .line 93
    iput-object v10, v9, Lcom/android/server/wm/DexCompatController$Request;->reason:Ljava/lang/String;

    .line 94
    .line 95
    iput v3, v9, Lcom/android/server/wm/DexCompatController$Request;->userId:I

    .line 96
    .line 97
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 98
    .line 99
    if-eqz v6, :cond_4

    .line 100
    .line 101
    const-string v10, "com.android.systemui"

    .line 102
    .line 103
    iget-object v6, v6, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    if-nez v10, :cond_3

    .line 110
    .line 111
    const-string/jumbo v10, "system:ui"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_4

    .line 119
    .line 120
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string/jumbo v10, "startActivityForDexRestart: cannot kill systemui process, root="

    .line 123
    .line 124
    .line 125
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v2, ", task="

    .line 132
    .line 133
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_4
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 148
    .line 149
    iput-object v2, v9, Lcom/android/server/wm/DexCompatController$Request;->wpc:Lcom/android/server/wm/WindowProcessController;

    .line 150
    .line 151
    :goto_0
    iput-object v7, v9, Lcom/android/server/wm/DexCompatController$Request;->intent:Landroid/content/Intent;

    .line 152
    .line 153
    iget v2, v1, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 154
    .line 155
    iput v2, v9, Lcom/android/server/wm/DexCompatController$Request;->callingUid:I

    .line 156
    .line 157
    iget-object v2, v1, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 158
    .line 159
    iput-object v2, v9, Lcom/android/server/wm/DexCompatController$Request;->callingPackage:Ljava/lang/String;

    .line 160
    .line 161
    iget-object v2, v1, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 162
    .line 163
    iput-object v2, v9, Lcom/android/server/wm/DexCompatController$Request;->callingFeatureId:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    iput v2, v9, Lcom/android/server/wm/DexCompatController$Request;->realCallingPid:I

    .line 170
    .line 171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    iput v2, v9, Lcom/android/server/wm/DexCompatController$Request;->realCallingUid:I

    .line 176
    .line 177
    new-instance v2, Lcom/android/server/wm/SafeActivityOptions;

    .line 178
    .line 179
    invoke-direct {v2, v8}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    .line 180
    .line 181
    .line 182
    iput-object v2, v9, Lcom/android/server/wm/DexCompatController$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 183
    .line 184
    iput-object v14, v9, Lcom/android/server/wm/DexCompatController$Request;->reason:Ljava/lang/String;

    .line 185
    .line 186
    iget v2, v1, Lcom/android/server/wm/Task;->mUserId:I

    .line 187
    .line 188
    iput v2, v9, Lcom/android/server/wm/DexCompatController$Request;->userId:I

    .line 189
    .line 190
    iget-object v2, v0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 191
    .line 192
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 193
    .line 194
    .line 195
    :try_start_0
    iget-object v10, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 196
    .line 197
    iget v11, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 198
    .line 199
    iget v12, v9, Lcom/android/server/wm/DexCompatController$Request;->callingUid:I

    .line 200
    .line 201
    iget v13, v9, Lcom/android/server/wm/DexCompatController$Request;->realCallingPid:I

    .line 202
    .line 203
    const/16 v16, 0x1

    .line 204
    .line 205
    const/16 v17, 0x0

    .line 206
    .line 207
    const/4 v15, 0x0

    .line 208
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IIILjava/lang/String;ZZZ)Z

    .line 209
    .line 210
    .line 211
    iget-object v0, v0, Lcom/android/server/wm/DexCompatController;->mH:Lcom/android/server/wm/DexCompatController$H;

    .line 212
    .line 213
    invoke-virtual {v0, v3, v4, v3, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :catchall_0
    move-exception v0

    .line 225
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 226
    .line 227
    .line 228
    throw v0
.end method

.method public final shouldBeApplyDexCompatConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_b

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_b

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 25
    .line 26
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x1

    .line 33
    if-ne v2, v3, :cond_1

    .line 34
    .line 35
    if-eqz p3, :cond_2

    .line 36
    .line 37
    :cond_1
    const/4 v4, 0x2

    .line 38
    if-ne v2, v4, :cond_b

    .line 39
    .line 40
    if-ne p3, v4, :cond_b

    .line 41
    .line 42
    :cond_2
    const-class p3, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 43
    .line 44
    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    if-nez p3, :cond_4

    .line 49
    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p2, "[DexCompat] DexCompatLaunchPolicy: task="

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p0, ", DesktopModeService is null, caller="

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x6

    .line 66
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string p1, "DexCompatController"

    .line 78
    .line 79
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_0
    move p0, v0

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    const/4 p0, 0x0

    .line 85
    if-nez p1, :cond_5

    .line 86
    .line 87
    iget-object p1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 88
    .line 89
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/DexController;->getDexPolicyFlags(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    goto :goto_2

    .line 94
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    if-nez p3, :cond_9

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    if-eqz p3, :cond_6

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    iget p3, p1, Lcom/android/server/wm/ActivityRecord;->mProcessAppLaunchPolicy:I

    .line 108
    .line 109
    if-nez p3, :cond_8

    .line 110
    .line 111
    iget-object p3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 112
    .line 113
    invoke-virtual {p3, p0, p2}, Lcom/android/server/wm/DexController;->getDexPolicyFlags(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    iput p0, p1, Lcom/android/server/wm/ActivityRecord;->mProcessAppLaunchPolicy:I

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-nez p0, :cond_7

    .line 124
    .line 125
    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mProcessAppLaunchPolicy:I

    .line 126
    .line 127
    or-int/2addr p0, v3

    .line 128
    iput p0, p1, Lcom/android/server/wm/ActivityRecord;->mProcessAppLaunchPolicy:I

    .line 129
    .line 130
    :cond_7
    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mProcessAppLaunchPolicy:I

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_8
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 134
    .line 135
    if-eqz v2, :cond_3

    .line 136
    .line 137
    and-int/2addr p3, v3

    .line 138
    if-eqz p3, :cond_3

    .line 139
    .line 140
    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 141
    .line 142
    if-eqz p3, :cond_3

    .line 143
    .line 144
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    .line 145
    .line 146
    .line 147
    move-result p3

    .line 148
    if-eqz p3, :cond_3

    .line 149
    .line 150
    iget-object p3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 151
    .line 152
    invoke-virtual {p3, p0, p2}, Lcom/android/server/wm/DexController;->getDexPolicyFlags(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)I

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_a

    .line 161
    .line 162
    or-int/lit8 p0, p0, 0x1

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_9
    :goto_1
    iput v0, p1, Lcom/android/server/wm/ActivityRecord;->mProcessAppLaunchPolicy:I

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_a
    :goto_2
    and-int/2addr p0, v3

    .line 169
    if-eqz p0, :cond_b

    .line 170
    .line 171
    move v0, v3

    .line 172
    :cond_b
    :goto_3
    return v0
.end method
