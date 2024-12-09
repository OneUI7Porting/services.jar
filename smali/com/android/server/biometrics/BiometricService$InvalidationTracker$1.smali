.class public final Lcom/android/server/biometrics/BiometricService$InvalidationTracker$1;
.super Landroid/hardware/biometrics/IInvalidationCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService$InvalidationTracker;

.field public final synthetic val$sensor:Lcom/android/server/biometrics/BiometricSensor;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService$InvalidationTracker;Lcom/android/server/biometrics/BiometricSensor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker$1;->this$0:Lcom/android/server/biometrics/BiometricService$InvalidationTracker;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker$1;->val$sensor:Lcom/android/server/biometrics/BiometricSensor;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker$1;->this$0:Lcom/android/server/biometrics/BiometricService$InvalidationTracker;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker$1;->val$sensor:Lcom/android/server/biometrics/BiometricSensor;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->onInvalidated(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
