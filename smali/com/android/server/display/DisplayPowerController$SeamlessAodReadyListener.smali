.class public final Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/samsung/android/aod/AODManager$AODChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final readyToScreenTurningOn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "[api] AODManager.AODChangeListener : Received readyToScreenTurningOn()."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 13
    .line 14
    const/16 v1, 0x14

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
