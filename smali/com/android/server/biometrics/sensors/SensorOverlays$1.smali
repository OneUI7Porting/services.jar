.class public final Lcom/android/server/biometrics/sensors/SensorOverlays$1;
.super Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SensorOverlays$1;->val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserCanceled()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays$1;->val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onUserCanceled()V

    .line 4
    .line 5
    .line 6
    return-void
.end method