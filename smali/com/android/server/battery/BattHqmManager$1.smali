.class public final Lcom/android/server/battery/BattHqmManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/server/battery/BattHqmManager;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 2
    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string p1, "[hqmEventReceiver_onReceive]intent:"

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "[SS]BattHqmManager"

    .line 22
    .line 23
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    sget-object p0, Lcom/android/server/battery/BattHqmManager;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 27
    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    const-string p0, "[hqmEventReceiver_onReceive]fail - mBattCallback null"

    .line 31
    .line 32
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    sget-object p1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 37
    .line 38
    const-string p1, "BatteryService"

    .line 39
    .line 40
    const-string p2, "[onHqmEventOccured]"

    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/BatteryService$BattCallbackImpl;->this$0:Lcom/android/server/BatteryService;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    new-instance p2, Lcom/android/server/BatteryService$31;

    .line 50
    .line 51
    const/4 v0, 0x3

    .line 52
    invoke-direct {p2, v0, p0}, Lcom/android/server/BatteryService$31;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method
