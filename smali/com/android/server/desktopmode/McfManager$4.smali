.class public final Lcom/android/server/desktopmode/McfManager$4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/McfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/McfManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager$4;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Lcom/samsung/android/mcf/McfAdapter;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]McfManager"

    .line 6
    .line 7
    const-string v1, "McfAdapterListener onServiceConnected"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager$4;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 15
    .line 16
    const/16 v1, 0x12d

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$4;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v1, v0, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-wide/16 v0, 0x64

    .line 31
    .line 32
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onServiceDisconnected()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]McfManager"

    .line 6
    .line 7
    const-string v1, "McfAdapterListener onServiceDisconnected"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager$4;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 15
    .line 16
    const/16 v1, 0x12e

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$4;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onServiceRemoteException()V
    .locals 1

    .line 1
    const-string p0, "[DMS]McfManager"

    .line 2
    .line 3
    const-string v0, "McfAdapterListener onServiceRemoteException"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
