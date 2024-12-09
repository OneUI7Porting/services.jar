.class public final Lcom/android/server/display/WifiDisplayMcfManager$2;
.super Lcom/samsung/android/mcf/ble/BleAdapterCallback;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayMcfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$2;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/BleAdapterCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMcfServiceStateChanged(II)V
    .locals 1

    .line 1
    const-string/jumbo p2, "onMcfServiceStateChanged state "

    .line 2
    .line 3
    .line 4
    const-string v0, "WifiDisplayMcfManager"

    .line 5
    .line 6
    invoke-static {p1, p2, v0}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayMcfManager$2;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 10
    .line 11
    iget-object p2, p2, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$2;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
