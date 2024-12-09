.class public final Lcom/android/server/desktopmode/CoverStateManager$2;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/CoverStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDockStateChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 7
    .line 8
    iget-boolean v1, v1, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    .line 9
    .line 10
    iget-object v2, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput-boolean p1, v1, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager;->updateCoverSupportStateLocked()Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final onDualModeStartLoadingScreen(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDualModeStopLoadingScreen(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager;->updateCoverSupportStateLocked()Z

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method
