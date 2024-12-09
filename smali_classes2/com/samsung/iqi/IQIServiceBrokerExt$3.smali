.class public final Lcom/samsung/iqi/IQIServiceBrokerExt$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;


# direct methods
.method public constructor <init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 2
    .line 3
    iget-boolean p1, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string p1, "IQIServiceBrokerExt"

    .line 8
    .line 9
    const-string/jumbo p2, "mUploadStateReceiver upload done"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter p1

    .line 20
    :try_start_0
    iget-object p2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 21
    .line 22
    iget-boolean v0, p2, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p2, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    .line 28
    .line 29
    invoke-static {p2, v0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$mchangeIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 33
    .line 34
    iget-object v0, p2, Lcom/samsung/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    iget-object p2, p2, Lcom/samsung/iqi/IQIServiceBrokerExt;->rbIqiState:Lcom/samsung/iqi/IQIServiceBrokerExt$1;

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 42
    .line 43
    iget-object p2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mUploadStateReceiver:Lcom/samsung/iqi/IQIServiceBrokerExt$3;

    .line 46
    .line 47
    invoke-virtual {p2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    monitor-exit p1

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method
