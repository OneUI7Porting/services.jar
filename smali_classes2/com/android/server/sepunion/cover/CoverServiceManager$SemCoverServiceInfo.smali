.class public final Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;
.super Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public final asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/cover/ICoverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final onCoverAppStateChanged(Z)I
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/samsung/android/cover/ICoverService;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ICoverService;->onCoverAppCovered(Z)I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/samsung/android/cover/ICoverService;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/cover/ICoverService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    return-void
.end method

.method public final updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/samsung/android/cover/ICoverService;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ICoverService;->onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    return-void
.end method
