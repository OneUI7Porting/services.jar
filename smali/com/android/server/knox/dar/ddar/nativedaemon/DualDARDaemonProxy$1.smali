.class public final Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$1;->this$0:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$1;->this$0:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    const-string v1, "DualDARDaemonProxy"

    .line 7
    .line 8
    const-string/jumbo v2, "coudn\'t connect with daemon!"

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {v1, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$1;->this$0:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method
