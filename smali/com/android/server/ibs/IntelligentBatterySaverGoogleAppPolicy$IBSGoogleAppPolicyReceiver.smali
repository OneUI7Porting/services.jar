.class public final Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "com.samsung.android.server.action_google_net_state"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
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
    move-result-object p1

    .line 5
    const-string/jumbo v0, "com.samsung.android.server.action_google_net_state"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const-string/jumbo p1, "state"

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "ACTION***"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p2, " state = "

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string v0, "IntelligentBatterySaverGoogleAppPolicy"

    .line 49
    .line 50
    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;

    .line 67
    .line 68
    const/4 p1, 0x2

    .line 69
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    return-void
.end method
