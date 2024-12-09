.class public final Lcom/android/server/wm/DexMetaKeyPolicy;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mDexController:Lcom/android/server/wm/DexController;

.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public final mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

.field public final mLeftDockingBounds:Landroid/graphics/Rect;

.field public final mLeftHalfDisplayBounds:Landroid/graphics/Rect;

.field public final mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

.field public final mMaxHeightBounds:Landroid/graphics/Rect;

.field public final mMetaKeyBoundsProviderMap:Landroid/util/SparseArray;

.field public final mMinHeightBounds:Landroid/graphics/Rect;

.field public mOtherSnappingBounds:Landroid/graphics/Rect;

.field public final mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

.field public final mRightDockingBounds:Landroid/graphics/Rect;

.field public final mRightHalfDisplayBounds:Landroid/graphics/Rect;

.field public final mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

.field public mSnappingTask:Lcom/android/server/wm/Task;

.field public final mTaskBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/DexController;)V
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
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    .line 31
    .line 32
    new-instance v0, Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftDockingBounds:Landroid/graphics/Rect;

    .line 38
    .line 39
    new-instance v0, Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightDockingBounds:Landroid/graphics/Rect;

    .line 45
    .line 46
    new-instance v0, Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 52
    .line 53
    new-instance v0, Landroid/graphics/Rect;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 59
    .line 60
    new-instance v0, Landroid/graphics/Rect;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 66
    .line 67
    new-instance v0, Landroid/graphics/Rect;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 73
    .line 74
    new-instance v0, Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMinHeightBounds:Landroid/graphics/Rect;

    .line 80
    .line 81
    new-instance v0, Landroid/graphics/Rect;

    .line 82
    .line 83
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMaxHeightBounds:Landroid/graphics/Rect;

    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mSnappingTask:Lcom/android/server/wm/Task;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mOtherSnappingBounds:Landroid/graphics/Rect;

    .line 92
    .line 93
    new-instance v0, Landroid/util/SparseArray;

    .line 94
    .line 95
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMetaKeyBoundsProviderMap:Landroid/util/SparseArray;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 101
    .line 102
    iput-object p2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDexController:Lcom/android/server/wm/DexController;

    .line 103
    .line 104
    new-instance p1, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;

    .line 105
    .line 106
    const/4 p2, 0x2

    .line 107
    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;-><init>(Lcom/android/server/wm/DexMetaKeyPolicy;I)V

    .line 108
    .line 109
    .line 110
    const/16 p2, 0x15

    .line 111
    .line 112
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;

    .line 116
    .line 117
    const/4 p2, 0x3

    .line 118
    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;-><init>(Lcom/android/server/wm/DexMetaKeyPolicy;I)V

    .line 119
    .line 120
    .line 121
    const/16 p2, 0x16

    .line 122
    .line 123
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    new-instance p1, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;

    .line 127
    .line 128
    const/4 p2, 0x0

    .line 129
    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;-><init>(Lcom/android/server/wm/DexMetaKeyPolicy;I)V

    .line 130
    .line 131
    .line 132
    const/16 p2, 0x13

    .line 133
    .line 134
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    new-instance p1, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;

    .line 138
    .line 139
    const/4 p2, 0x1

    .line 140
    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;-><init>(Lcom/android/server/wm/DexMetaKeyPolicy;I)V

    .line 141
    .line 142
    .line 143
    const/16 p0, 0x14

    .line 144
    .line 145
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method


# virtual methods
.method public getMetaKeyBoundsProvider(I)Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMetaKeyBoundsProviderMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;

    .line 8
    .line 9
    return-object p0
.end method

.method public final handleDexMetaKeyForSnapping()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mSnappingTask:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftDockingBounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightDockingBounds:Landroid/graphics/Rect;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    iget-object v5, v1, Lcom/android/server/wm/DexDockingController;->mDockingBounds:Landroid/util/SparseArray;

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    invoke-virtual {v5, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v1, Lcom/android/server/wm/DexDockingController;->mDockingBounds:Landroid/util/SparseArray;

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput v4, v1, Lcom/android/server/wm/DexDockingController;->mDisplayWidth:I

    .line 33
    .line 34
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mSnappingTask:Lcom/android/server/wm/Task;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string/jumbo v4, "setCandidateTask t="

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "DexDockingController"

    .line 57
    .line 58
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iput-object v3, v1, Lcom/android/server/wm/DexDockingController;->mCandidateTask:Ljava/lang/ref/WeakReference;

    .line 67
    .line 68
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mSnappingTask:Lcom/android/server/wm/Task;

    .line 75
    .line 76
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mOtherSnappingBounds:Landroid/graphics/Rect;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iput v1, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 88
    .line 89
    iput-object v2, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    .line 92
    .line 93
    const/16 v1, 0xb

    .line 94
    .line 95
    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 100
    .line 101
    .line 102
    :cond_1
    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mSnappingTask:Lcom/android/server/wm/Task;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mOtherSnappingBounds:Landroid/graphics/Rect;

    .line 106
    .line 107
    return-void
.end method

.method public final handleMetaKeyEvent(Landroid/os/IBinder;Landroid/view/KeyEvent;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->getMetaKeyBoundsProvider(I)Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object p1, v1

    .line 33
    :goto_0
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    :goto_1
    move-object p1, v1

    .line 68
    :cond_4
    :goto_2
    if-nez p1, :cond_5

    .line 69
    .line 70
    return-void

    .line 71
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 72
    .line 73
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 83
    .line 84
    .line 85
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 86
    .line 87
    if-eqz v3, :cond_6

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getFreeformThickness()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    div-int/lit8 v4, v3, 0x2

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    const/4 v3, 0x0

    .line 97
    move v4, v3

    .line 98
    :goto_3
    iget-object v5, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 99
    .line 100
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 101
    .line 102
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    div-int/lit8 v5, v5, 0x2

    .line 107
    .line 108
    add-int/2addr v5, v6

    .line 109
    iget-object v6, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 110
    .line 111
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 112
    .line 113
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    div-int/lit8 v6, v6, 0x2

    .line 118
    .line 119
    add-int/2addr v6, v7

    .line 120
    iget-object v7, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    .line 121
    .line 122
    iget-object v8, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 123
    .line 124
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 125
    .line 126
    .line 127
    iget-object v7, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    .line 128
    .line 129
    iput v5, v7, Landroid/graphics/Rect;->right:I

    .line 130
    .line 131
    iget-object v8, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftDockingBounds:Landroid/graphics/Rect;

    .line 132
    .line 133
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 134
    .line 135
    .line 136
    iget-object v7, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftDockingBounds:Landroid/graphics/Rect;

    .line 137
    .line 138
    iget v8, v7, Landroid/graphics/Rect;->right:I

    .line 139
    .line 140
    sub-int/2addr v8, v3

    .line 141
    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 142
    .line 143
    iget-object v7, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    .line 144
    .line 145
    iget-object v8, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 146
    .line 147
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 148
    .line 149
    .line 150
    iget-object v7, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    .line 151
    .line 152
    iput v5, v7, Landroid/graphics/Rect;->left:I

    .line 153
    .line 154
    iget-object v5, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightDockingBounds:Landroid/graphics/Rect;

    .line 155
    .line 156
    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 157
    .line 158
    .line 159
    iget-object v5, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightDockingBounds:Landroid/graphics/Rect;

    .line 160
    .line 161
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 162
    .line 163
    add-int/2addr v7, v3

    .line 164
    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 165
    .line 166
    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 167
    .line 168
    iget-object v5, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    .line 169
    .line 170
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 171
    .line 172
    .line 173
    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 174
    .line 175
    sub-int v5, v6, v4

    .line 176
    .line 177
    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 178
    .line 179
    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 180
    .line 181
    iget-object v7, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    .line 182
    .line 183
    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 184
    .line 185
    .line 186
    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 187
    .line 188
    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 189
    .line 190
    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 191
    .line 192
    iget-object v5, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    .line 193
    .line 194
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 195
    .line 196
    .line 197
    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 198
    .line 199
    add-int/2addr v6, v4

    .line 200
    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 201
    .line 202
    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 203
    .line 204
    iget-object v4, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    .line 205
    .line 206
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 207
    .line 208
    .line 209
    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 210
    .line 211
    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 212
    .line 213
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 214
    .line 215
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    iget v3, p1, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 220
    .line 221
    const/4 v4, -0x1

    .line 222
    if-ne v3, v4, :cond_7

    .line 223
    .line 224
    const v3, 0x105016f

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMaxHeightBounds:Landroid/graphics/Rect;

    .line 232
    .line 233
    iget-object v4, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 234
    .line 235
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 236
    .line 237
    .line 238
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMaxHeightBounds:Landroid/graphics/Rect;

    .line 239
    .line 240
    iget-object v4, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 241
    .line 242
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 243
    .line 244
    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 245
    .line 246
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 247
    .line 248
    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 249
    .line 250
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMinHeightBounds:Landroid/graphics/Rect;

    .line 251
    .line 252
    iget-object v4, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 253
    .line 254
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 255
    .line 256
    .line 257
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMinHeightBounds:Landroid/graphics/Rect;

    .line 258
    .line 259
    iget-object v4, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 260
    .line 261
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 262
    .line 263
    add-int/2addr v4, v3

    .line 264
    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 265
    .line 266
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->getLaunchBounds(Lcom/android/server/wm/Task;Landroid/view/KeyEvent;)Landroid/graphics/Rect;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->isInvalidBounds(Landroid/graphics/Rect;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-nez v2, :cond_a

    .line 275
    .line 276
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->updateTaskBoundsInfoIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->applyBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    .line 280
    .line 281
    .line 282
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    .line 283
    .line 284
    if-eqz v0, :cond_a

    .line 285
    .line 286
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->isLeftHalfDisplayBounds(Landroid/graphics/Rect;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->isRightHalfDisplayBounds(Landroid/graphics/Rect;)Z

    .line 291
    .line 292
    .line 293
    move-result p2

    .line 294
    if-nez v0, :cond_8

    .line 295
    .line 296
    if-nez p2, :cond_8

    .line 297
    .line 298
    iput-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mSnappingTask:Lcom/android/server/wm/Task;

    .line 299
    .line 300
    iput-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mOtherSnappingBounds:Landroid/graphics/Rect;

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_8
    iput-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mSnappingTask:Lcom/android/server/wm/Task;

    .line 304
    .line 305
    if-eqz v0, :cond_9

    .line 306
    .line 307
    new-instance p1, Landroid/graphics/Rect;

    .line 308
    .line 309
    iget-object p2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightDockingBounds:Landroid/graphics/Rect;

    .line 310
    .line 311
    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 312
    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_9
    new-instance p1, Landroid/graphics/Rect;

    .line 316
    .line 317
    iget-object p2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftDockingBounds:Landroid/graphics/Rect;

    .line 318
    .line 319
    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 320
    .line 321
    .line 322
    :goto_4
    iput-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mOtherSnappingBounds:Landroid/graphics/Rect;

    .line 323
    .line 324
    :cond_a
    :goto_5
    return-void
.end method

.method public final isLeftHalfDisplayBounds(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

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

.method public final isQuarterDisplayBounds(Landroid/graphics/Rect;)Z
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
    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    :cond_1
    const/4 v0, 0x1

    .line 38
    :cond_2
    return v0
.end method

.method public final isRightHalfDisplayBounds(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

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
