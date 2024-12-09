.class public final Lcom/android/server/desktopmode/CoverStateManager$Authenticator;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/CoverStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

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
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v0, "onReceive(), action="

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "[DMS]CoverStateManager"

    .line 25
    .line 26
    invoke-static {p2, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/server/desktopmode/CoverStateManager;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->setAuthComplete()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 41
    .line 42
    iget-object v0, p1, Lcom/android/server/desktopmode/CoverStateManager;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 43
    .line 44
    iput-object p2, v0, Lcom/android/server/input/InputManagerService;->mDesktopModeServiceCallbacks:Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/server/desktopmode/CoverStateManager;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final setAuthComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 7
    .line 8
    iget-boolean v2, v1, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    iput-boolean v2, v1, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    .line 14
    .line 15
    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$minitializeCoverState(Lcom/android/server/desktopmode/CoverStateManager;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 24
    .line 25
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/StateManager;->notifyScheduleUpdateDesktopMode(Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method
