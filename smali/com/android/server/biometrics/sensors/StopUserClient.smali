.class public abstract Lcom/android/server/biometrics/sensors/StopUserClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field private final mUserStoppedCallback:Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    const/4 v11, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v7, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v2, p2

    .line 11
    move-object v3, p3

    .line 12
    move/from16 v5, p4

    .line 13
    .line 14
    move/from16 v8, p5

    .line 15
    .line 16
    move-object/from16 v9, p6

    .line 17
    .line 18
    move-object/from16 v10, p7

    .line 19
    .line 20
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 21
    .line 22
    .line 23
    move-object/from16 v1, p8

    .line 24
    .line 25
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/StopUserClient;->mUserStoppedCallback:Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final getProtoEnum()I
    .locals 0

    .line 1
    const/16 p0, 0x10

    .line 2
    .line 3
    return p0
.end method

.method public final onUserStopped()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/StopUserClient;->mUserStoppedCallback:Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;->onUserStopped()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
