.class public final Lcom/android/server/UpdateLockService$LockWatcher;
.super Landroid/os/TokenWatcher;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/UpdateLockService;


# direct methods
.method public constructor <init>(Lcom/android/server/UpdateLockService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/UpdateLockService$LockWatcher;->this$0:Lcom/android/server/UpdateLockService;

    .line 2
    .line 3
    const-string p1, "UpdateLocks"

    .line 4
    .line 5
    invoke-direct {p0, p2, p1}, Landroid/os/TokenWatcher;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final acquired()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/UpdateLockService$LockWatcher;->this$0:Lcom/android/server/UpdateLockService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/UpdateLockService;->sendLockChangedBroadcast(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final released()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/UpdateLockService$LockWatcher;->this$0:Lcom/android/server/UpdateLockService;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/UpdateLockService;->sendLockChangedBroadcast(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
