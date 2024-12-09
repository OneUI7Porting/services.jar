.class public final Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/ProximityManager;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/ProximityManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;->this$0:Lcom/android/server/remoteappmode/ProximityManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "onReceive(), action="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "ProximityManager"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;->this$0:Lcom/android/server/remoteappmode/ProximityManager;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/remoteappmode/ProximityManager;->mPackageName:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;->this$0:Lcom/android/server/remoteappmode/ProximityManager;

    .line 40
    .line 41
    const-string v0, "com.samsung.android.mdx.proximity.ACTION_USER_PRESENT"

    .line 42
    .line 43
    invoke-static {p2, p1, v0}, Lcom/android/server/remoteappmode/ProximityManager;->-$$Nest$msendIntent(Lcom/android/server/remoteappmode/ProximityManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    iget-object p2, p0, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;->this$0:Lcom/android/server/remoteappmode/ProximityManager;

    .line 56
    .line 57
    const-string v0, "com.samsung.android.mdx.proximity.ACTION_SCREEN_OFF"

    .line 58
    .line 59
    invoke-static {p2, p1, v0}, Lcom/android/server/remoteappmode/ProximityManager;->-$$Nest$msendIntent(Lcom/android/server/remoteappmode/ProximityManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;->this$0:Lcom/android/server/remoteappmode/ProximityManager;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->isValid()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->disableSendingUserPresentIntent()V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method
