.class public final synthetic Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserSwitchingDialog;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/UserSwitchingDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Runnable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/UserSwitchingDialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
