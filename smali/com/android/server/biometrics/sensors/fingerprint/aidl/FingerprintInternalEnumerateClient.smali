.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInternalEnumerateClient;
.super Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public final getModality()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final startHalOperation()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "FingerprintInternalEnumerateClient"

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_0
    iget-object v5, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v6, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 9
    .line 10
    iget-object v7, v1, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 11
    .line 12
    iget v10, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    .line 15
    .line 16
    const-string v12, "FingerprintRequestClient"

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    const/16 v17, 0x0

    .line 21
    .line 22
    const/16 v16, 0x0

    .line 23
    .line 24
    const/4 v15, 0x0

    .line 25
    const/4 v13, 0x0

    .line 26
    const/4 v11, 0x0

    .line 27
    const/16 v14, 0xb

    .line 28
    .line 29
    move-object v4, v0

    .line 30
    invoke-direct/range {v4 .. v17}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;ZII[B[B)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->startWithoutScheduler()I

    .line 34
    .line 35
    .line 36
    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    if-ltz v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 41
    .line 42
    invoke-interface {v0, v1, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string/jumbo v5, "canUseEnumerateOperation: "

    .line 50
    .line 51
    .line 52
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 78
    .line 79
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/ISession;->enumerateEnrollments()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_1
    move-exception v0

    .line 84
    const-string v4, "Remote exception when requesting enumerate"

    .line 85
    .line 86
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 90
    .line 91
    invoke-interface {v0, v1, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 92
    .line 93
    .line 94
    :goto_1
    return-void
.end method
