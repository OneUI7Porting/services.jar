.class public final Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;
.super Lcom/android/server/biometrics/BiometricSensor;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;->this$1:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/biometrics/BiometricSensor;-><init>(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
