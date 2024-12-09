.class public final Lcom/android/server/display/WifiDisplayController$13;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field public final synthetic val$config:Landroid/net/wifi/p2p/WifiP2pConfig;

.field public final synthetic val$newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/display/WifiDisplayController$13;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$13;->val$newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController$13;->val$config:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/server/display/WifiDisplayController$13;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "WifiDisplayController"

    .line 7
    .line 8
    const-string/jumbo v0, "setPreparedAccountPin with SmartThings Device ID, onFailure"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->val$newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$13;->val$config:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 19
    .line 20
    invoke-virtual {p1, v0, p0}, Lcom/android/server/display/WifiDisplayController;->connectP2p(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    const-string p1, "WifiDisplayController"

    .line 25
    .line 26
    const-string/jumbo v0, "setPreparedAccountPin with IRK, onFailure"

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->val$newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$13;->val$config:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 37
    .line 38
    invoke-virtual {p1, v0, p0}, Lcom/android/server/display/WifiDisplayController;->connectP2p(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/display/WifiDisplayController$13;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "WifiDisplayController"

    .line 7
    .line 8
    const-string/jumbo v1, "setPreparedAccountPin with SmartThings Device ID, onSuccess"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$13;->val$newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$13;->val$config:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 19
    .line 20
    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/WifiDisplayController;->connectP2p(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    const-string v0, "WifiDisplayController"

    .line 25
    .line 26
    const-string/jumbo v1, "setPreparedAccountPin with IRK, onSuccess"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$13;->val$newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$13;->val$config:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 37
    .line 38
    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/WifiDisplayController;->connectP2p(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
