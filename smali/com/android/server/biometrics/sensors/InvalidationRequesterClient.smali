.class public final Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;
.super Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field public final mInvalidationCallback:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;

.field public final mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/BiometricUtils;)V
    .locals 11

    .line 1
    move-object v10, p0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v5

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move v4, p2

    .line 12
    move v7, p3

    .line 13
    move-object v8, p4

    .line 14
    move-object/from16 v9, p5

    .line 15
    .line 16
    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;-><init>(Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, v10, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mInvalidationCallback:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;

    .line 25
    .line 26
    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    .line 33
    .line 34
    iput-object v0, v10, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 35
    .line 36
    move-object/from16 v0, p6

    .line 37
    .line 38
    iput-object v0, v10, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final getProtoEnum()I
    .locals 0

    .line 1
    const/16 p0, 0xe

    .line 2
    .line 3
    return p0
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-interface {p1, v0, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->setInvalidationInProgress(Landroid/content/Context;IZ)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 15
    .line 16
    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mInvalidationCallback:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1, p0}, Landroid/hardware/biometrics/BiometricManager;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
