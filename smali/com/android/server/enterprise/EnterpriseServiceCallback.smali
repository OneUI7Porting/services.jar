.class public interface abstract Lcom/android/server/enterprise/EnterpriseServiceCallback;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public hasDeferredBroadcastReceiverToRegister()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
.end method

.method public abstract onAdminAdded(I)V
.end method

.method public onAdminRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAdminRemoved(IZ)V
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminRemoved(I)V

    return-void
.end method

.method public abstract onPreAdminRemoval(I)V
.end method

.method public onUserStarting(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public registerDeferredBoradcastReceiver()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract systemReady()V
.end method
