.class public final Lcom/android/server/desktopmode/BootInitBlocker$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/BootInitBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/BootInitBlocker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/BootInitBlocker$1;->this$0:Lcom/android/server/desktopmode/BootInitBlocker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/desktopmode/BootInitBlocker$1;->this$0:Lcom/android/server/desktopmode/BootInitBlocker;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/desktopmode/BootInitBlocker;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/desktopmode/BootInitBlocker$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/BootInitBlocker$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/BootInitBlocker$1;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v2, 0xbb8

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/desktopmode/BootInitBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 16
    .line 17
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/StateManager;->unregisterListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
