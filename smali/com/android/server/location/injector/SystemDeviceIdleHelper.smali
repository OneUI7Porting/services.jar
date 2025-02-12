.class public final Lcom/android/server/location/injector/SystemDeviceIdleHelper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mReceiver:Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;

.field public mRegistrationRequired:Z

.field public mSystemReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final declared-synchronized addListener(Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mRegistrationRequired:Z

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->onRegistrationStateChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_2
    monitor-exit p0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p0

    .line 29
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    :catchall_1
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit p0

    .line 35
    throw p1
.end method

.method public final onRegistrationStateChanged()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mSystemReady:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mRegistrationRequired:Z

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mReceiver:Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;

    .line 16
    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    new-instance v2, Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;-><init>(Lcom/android/server/location/injector/SystemDeviceIdleHelper;)V

    .line 22
    .line 23
    .line 24
    iget-object v4, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    new-instance v5, Landroid/content/IntentFilter;

    .line 27
    .line 28
    const-string v6, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 29
    .line 30
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v4, v2, v5, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mReceiver:Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    if-nez v2, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mReceiver:Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iput-object v3, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mReceiver:Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method
