.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager;

.field public final synthetic f$1:Landroid/location/ILocationCallback;

.field public final synthetic f$2:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/ILocationCallback;Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;->f$1:Landroid/location/ILocationCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;->f$2:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;->f$1:Landroid/location/ILocationCallback;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;->f$2:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    :try_start_0
    invoke-interface {v1}, Landroid/location/ILocationCallback;->asBinder()Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    :try_start_1
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-direct {v1, v4, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    check-cast v0, Landroid/os/HandlerExecutor;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method
