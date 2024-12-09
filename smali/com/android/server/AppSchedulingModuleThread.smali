.class public final Lcom/android/server/AppSchedulingModuleThread;
.super Landroid/os/HandlerThread;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static sHandler:Landroid/os/Handler;

.field public static sHandlerExecutor:Ljava/util/concurrent/Executor;

.field public static sInstance:Lcom/android/server/AppSchedulingModuleThread;


# direct methods
.method public static ensureThreadLocked()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/AppSchedulingModuleThread;->sInstance:Lcom/android/server/AppSchedulingModuleThread;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/AppSchedulingModuleThread;

    .line 6
    .line 7
    const-string/jumbo v1, "appscheduling.default"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/server/AppSchedulingModuleThread;->sInstance:Lcom/android/server/AppSchedulingModuleThread;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/android/server/AppSchedulingModuleThread;->sInstance:Lcom/android/server/AppSchedulingModuleThread;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-wide/32 v1, 0x80000

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v1, 0x2710

    .line 32
    .line 33
    const-wide/16 v3, 0x7530

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Landroid/os/Handler;

    .line 39
    .line 40
    sget-object v1, Lcom/android/server/AppSchedulingModuleThread;->sInstance:Lcom/android/server/AppSchedulingModuleThread;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/android/server/AppSchedulingModuleThread;->sHandler:Landroid/os/Handler;

    .line 50
    .line 51
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 52
    .line 53
    sget-object v1, Lcom/android/server/AppSchedulingModuleThread;->sHandler:Landroid/os/Handler;

    .line 54
    .line 55
    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lcom/android/server/AppSchedulingModuleThread;->sHandlerExecutor:Ljava/util/concurrent/Executor;

    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/AppSchedulingModuleThread;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/AppSchedulingModuleThread;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->ensureThreadLocked()V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/android/server/AppSchedulingModuleThread;->sInstance:Lcom/android/server/AppSchedulingModuleThread;

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-object v1

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/AppSchedulingModuleThread;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->ensureThreadLocked()V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/android/server/AppSchedulingModuleThread;->sHandlerExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-object v1

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/AppSchedulingModuleThread;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->ensureThreadLocked()V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/android/server/AppSchedulingModuleThread;->sHandler:Landroid/os/Handler;

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-object v1

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method
