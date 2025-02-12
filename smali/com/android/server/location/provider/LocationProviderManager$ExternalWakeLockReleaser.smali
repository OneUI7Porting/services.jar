.class public final Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/location/util/identity/CallerIdentity;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 5
    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-string/jumbo p1, "wakelock over-released by "

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_2

    .line 19
    :catch_0
    move-exception v2

    .line 20
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-class v4, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    if-ne v3, v4, :cond_0

    .line 27
    .line 28
    const-string v3, "LocationManagerService"

    .line 29
    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 36
    .line 37
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v3, p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :goto_1
    return-void

    .line 49
    :cond_0
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    new-instance p1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-direct {p1, v3, v2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    check-cast p0, Landroid/os/HandlerExecutor;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method
