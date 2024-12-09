.class public final Lcom/android/server/display/WifiDisplayAdapter$11;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field public final synthetic val$mode:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$mode:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string/jumbo v1, "sem_wifi"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$mode:Z

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/samsung/android/wifi/SemWifiManager;->setAllowWifiScan(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .line 28
    .line 29
    const-string/jumbo v1, "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v1, "screenratiovalue"

    .line 36
    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$mode:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 48
    .line 49
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 50
    .line 51
    .line 52
    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$mode:Z

    .line 53
    .line 54
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string/jumbo v0, "wlan.wfd.screenratiovalue"

    .line 59
    .line 60
    .line 61
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
