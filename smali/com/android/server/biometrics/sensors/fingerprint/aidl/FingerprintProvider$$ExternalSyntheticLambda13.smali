.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field public final synthetic f$4:[I

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;[IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;->f$2:Landroid/os/IBinder;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;->f$3:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;->f$4:[I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;->f$5:I

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;->f$6:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 2
    .line 3
    iget v14, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;->f$1:I

    .line 4
    .line 5
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;->f$2:Landroid/os/IBinder;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;->f$3:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 8
    .line 9
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;->f$4:[I

    .line 10
    .line 11
    iget v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;->f$5:I

    .line 12
    .line 13
    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;->f$6:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRemovalClient;

    .line 19
    .line 20
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 33
    .line 34
    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 35
    .line 36
    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v14}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    const/4 v11, 0x0

    .line 47
    invoke-virtual {v0, v10, v11, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createLogger$1(IILcom/android/server/biometrics/AuthenticationStatsCollector;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 56
    .line 57
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 62
    .line 63
    iget-object v13, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    .line 64
    .line 65
    move-object v1, p0

    .line 66
    move v10, v14

    .line 67
    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;[IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 71
    .line 72
    invoke-virtual {v0, v14, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor$1(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method