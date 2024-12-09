.class public final synthetic Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DexDockingController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/wm/Task;

.field public final synthetic f$3:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DexDockingController;ILcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DexDockingController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DexDockingController;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/Task;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/wm/Task;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDexTaskDockingState()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eq v3, v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getFreeformThickness()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    new-instance v3, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-direct {v3, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    if-eq v1, v4, :cond_2

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    if-eq v1, v4, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 38
    .line 39
    add-int/2addr p0, v2

    .line 40
    iput p0, v3, Landroid/graphics/Rect;->left:I

    .line 41
    .line 42
    iget p0, v0, Lcom/android/server/wm/DexDockingController;->mDisplayWidth:I

    .line 43
    .line 44
    iput p0, v3, Landroid/graphics/Rect;->right:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v1, 0x0

    .line 48
    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 49
    .line 50
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 51
    .line 52
    sub-int/2addr p0, v2

    .line 53
    iput p0, v3, Landroid/graphics/Rect;->right:I

    .line 54
    .line 55
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_3

    .line 60
    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v1, "Resize other task="

    .line 64
    .line 65
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, "  bounds="

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string v1, "DexDockingController"

    .line 84
    .line 85
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget p0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 89
    .line 90
    const/4 p1, 0x3

    .line 91
    iget-object v0, v0, Lcom/android/server/wm/DexDockingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 92
    .line 93
    invoke-virtual {v0, p0, v3, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_1
    return-void
.end method
