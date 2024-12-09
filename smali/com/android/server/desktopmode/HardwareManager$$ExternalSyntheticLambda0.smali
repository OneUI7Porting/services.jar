.class public final synthetic Lcom/android/server/desktopmode/HardwareManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/server/desktopmode/DisplayInfo;

    .line 20
    .line 21
    iget v3, v3, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 22
    .line 23
    invoke-static {v3}, Lcom/android/server/desktopmode/HardwareManager;->isSupportedDisplayType(I)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const-string v0, "[DMS]HardwareManager"

    .line 38
    .line 39
    const-string/jumbo v2, "checkExternalDisplayConnectedLocked(), Reconnection time out!"

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    const/4 v0, -0x1

    .line 46
    const-string v2, "/sys/class/dp_sec/dex"

    .line 47
    .line 48
    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Utils;->readFile(ILjava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    iput-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatusLocked()Z

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 60
    .line 61
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v1, v0}, Lcom/android/server/desktopmode/StateManager;->setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    new-instance v1, Lcom/android/server/desktopmode/HardwareManager$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/HardwareManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    .line 73
    .line 74
    .line 75
    const-wide/16 v2, 0x7d0

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    .line 79
    .line 80
    :goto_1
    return-void
.end method
