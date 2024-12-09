.class public final Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;
.super Landroid/app/ITaskStackListener$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

.field public mHandler:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;

.field public mNeedToNotifyRecentTaskListUpdated:Z

.field public mNeedToNotifyTaskDisplayChanged:Z


# virtual methods
.method public final onActivityDismissingDockedTask()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityDismissingSplitTask(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityPinned(Ljava/lang/String;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityRequestedOrientationChanged(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityRotation(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityUnpinned()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onLockTaskModeChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onRecentTaskListFrozenChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onRecentTaskListUpdated()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 1

    .line 1
    new-instance p2, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p2, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTaskDisplayChanged(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyTaskDisplayChanged:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Message;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    iput v1, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onTaskFocusChanged(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTaskRemoved(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onTaskRequestedOrientationChanged(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyRecentTaskListUpdated:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/os/Message;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x5

    .line 11
    iput p2, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onTaskSnapshotInvalidated(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTaskStackChanged()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyRecentTaskListUpdated:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Message;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    iput v1, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onTaskWindowingModeChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTaskbarIconVisibleChangeRequest(Landroid/content/ComponentName;Z)V
    .locals 0

    .line 1
    return-void
.end method
