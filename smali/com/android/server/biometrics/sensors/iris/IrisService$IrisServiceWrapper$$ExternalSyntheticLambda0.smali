.class public final synthetic Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "biometric"

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 34
    .line 35
    iget v3, v2, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    .line 36
    .line 37
    iget v2, v2, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorStrength:I

    .line 38
    .line 39
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->propertyStrengthToAuthenticatorStrength(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    new-instance v4, Lcom/android/server/biometrics/sensors/iris/IrisAuthenticator;

    .line 44
    .line 45
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/iris/IrisService;

    .line 46
    .line 47
    iget-object v5, v5, Lcom/android/server/biometrics/sensors/iris/IrisService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    .line 48
    .line 49
    invoke-direct {v4}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v5, 0x4

    .line 53
    :try_start_0
    invoke-interface {v1, v3, v5, v2, v4}, Landroid/hardware/biometrics/IBiometricService;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    const-string v2, "Remote exception when registering sensorId: "

    .line 58
    .line 59
    const-string v4, "IrisService"

    .line 60
    .line 61
    invoke-static {v3, v2, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method
