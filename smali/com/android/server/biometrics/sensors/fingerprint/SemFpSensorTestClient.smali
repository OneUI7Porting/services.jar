.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpSensorTestClient;
.super Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ErrorConsumer;


# instance fields
.field public mAlreadyCancelled:Z


# virtual methods
.method public final cancel()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSensorTestClient;->mAlreadyCancelled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "FingerprintSensorTestClient"

    .line 6
    .line 7
    const-string v0, "Cancel was already requested"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 20
    .line 21
    const-string v2, "Remote exception when requesting cancel"

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 29
    .line 30
    instance-of v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    :try_start_0
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 46
    .line 47
    invoke-interface {v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    const-string v3, "HidlToAidlSessionAdapter"

    .line 53
    .line 54
    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    instance-of v1, v0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    :try_start_1
    check-cast v0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    .line 62
    .line 63
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catch_1
    move-exception v0

    .line 68
    const-string v1, "FingerprintRequestClient"

    .line 69
    .line 70
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSensorTestClient;->mAlreadyCancelled:Z

    .line 75
    .line 76
    return-void
.end method

.method public final cancelWithoutStarting(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v0, "cancelWithoutStarting: "

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "FingerprintSensorTestClient"

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const/16 p1, 0x2719

    .line 22
    .line 23
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->onRequestResult(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final interruptsPrecedingClients()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onError(II)V
    .locals 0

    .line 1
    const/16 p1, 0x2719

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->onRequestResult(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onRequestResult(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->onRequestResult(I)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2719

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
