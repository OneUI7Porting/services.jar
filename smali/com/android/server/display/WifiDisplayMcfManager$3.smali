.class public final Lcom/android/server/display/WifiDisplayMcfManager$3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayMcfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Lcom/samsung/android/mcf/McfAdapter;)V
    .locals 2

    .line 1
    const-string v0, "WifiDisplayMcfManager"

    .line 2
    .line 3
    const-string v1, "McfAdapterListener onServiceConnected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 19
    .line 20
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-wide/16 v0, 0x64

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onServiceDisconnected()V
    .locals 2

    .line 1
    const-string v0, "WifiDisplayMcfManager"

    .line 2
    .line 3
    const-string v1, "McfAdapterListener onServiceDisconnected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onServiceRemoteException()V
    .locals 0

    .line 1
    return-void
.end method
