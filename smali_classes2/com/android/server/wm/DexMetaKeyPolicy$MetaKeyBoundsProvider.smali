.class public abstract Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DexMetaKeyPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DexMetaKeyPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public applyBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->isMoveToDefaultDisplayBounds(Landroid/graphics/Rect;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 18
    .line 19
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 36
    .line 37
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 p1, 0x0

    .line 59
    :goto_0
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_1
    return-void
.end method

.method public final getDefaultBounds()Landroid/graphics/Rect;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDexController:Lcom/android/server/wm/DexController;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 v2, 0x2

    .line 22
    if-ne p0, v2, :cond_0

    .line 23
    .line 24
    int-to-float p0, v0

    .line 25
    sget-object v3, Lcom/samsung/android/multiwindow/MultiWindowUtils;->DEX_DEFAULT_SIZE_RATIO:Landroid/graphics/PointF;

    .line 26
    .line 27
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 28
    .line 29
    mul-float/2addr p0, v4

    .line 30
    float-to-int p0, p0

    .line 31
    int-to-float v4, v1

    .line 32
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 33
    .line 34
    :goto_0
    mul-float/2addr v4, v3

    .line 35
    float-to-int v3, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    int-to-float p0, v0

    .line 38
    sget-object v3, Lcom/samsung/android/multiwindow/MultiWindowUtils;->DEX_DEFAULT_SIZE_RATIO_FOR_STANDALONE:Landroid/graphics/PointF;

    .line 39
    .line 40
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 41
    .line 42
    mul-float/2addr p0, v4

    .line 43
    float-to-int p0, p0

    .line 44
    int-to-float v4, v1

    .line 45
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :goto_1
    sub-int/2addr v0, p0

    .line 49
    div-int/2addr v0, v2

    .line 50
    sub-int/2addr v1, v3

    .line 51
    div-int/2addr v1, v2

    .line 52
    new-instance v2, Landroid/graphics/Rect;

    .line 53
    .line 54
    add-int/2addr p0, v0

    .line 55
    add-int/2addr v3, v1

    .line 56
    invoke-direct {v2, v0, v1, p0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 57
    .line 58
    .line 59
    return-object v2
.end method

.method public abstract getLaunchBounds(Lcom/android/server/wm/Task;Landroid/view/KeyEvent;)Landroid/graphics/Rect;
.end method

.method public abstract updateTaskBoundsInfoIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
.end method
