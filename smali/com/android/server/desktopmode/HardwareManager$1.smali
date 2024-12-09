.class public final Lcom/android/server/desktopmode/HardwareManager$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Ljava/util/Map;

    .line 6
    .line 7
    const-string/jumbo v0, "onDisplayAdded displayId="

    .line 8
    .line 9
    .line 10
    const-string v1, "[DMS]HardwareManager"

    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$mupdateExternalDisplayStatus(Lcom/android/server/desktopmode/HardwareManager;ZI)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 5

    .line 1
    const-string/jumbo v0, "onDisplayChanged, DisplayInfo="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 7
    .line 8
    check-cast v1, Lcom/android/server/desktopmode/StateManager;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 15
    .line 16
    if-ne v1, p1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/desktopmode/HardwareManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    new-instance v2, Lcom/android/server/desktopmode/DisplayInfo;

    .line 29
    .line 30
    invoke-direct {v2, v1}, Lcom/android/server/desktopmode/DisplayInfo;-><init>(Landroid/view/Display;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/DisplayInfo;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_0

    .line 51
    .line 52
    sget-object v3, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Ljava/util/Map;

    .line 53
    .line 54
    const-string v3, "[DMS]HardwareManager"

    .line 55
    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v3, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    :goto_0
    monitor-exit v1

    .line 82
    goto :goto_2

    .line 83
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0

    .line 85
    :cond_1
    :goto_2
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Ljava/util/Map;

    .line 6
    .line 7
    const-string/jumbo v0, "onDisplayRemoved displayId="

    .line 8
    .line 9
    .line 10
    const-string v1, "[DMS]HardwareManager"

    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$mupdateExternalDisplayStatus(Lcom/android/server/desktopmode/HardwareManager;ZI)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
