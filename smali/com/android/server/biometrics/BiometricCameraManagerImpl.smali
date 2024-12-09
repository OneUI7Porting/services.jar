.class public final Lcom/android/server/biometrics/BiometricCameraManagerImpl;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mCameraAvailabilityCallback:Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;

.field public final mIsCameraAvailable:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Landroid/hardware/SensorPrivacyManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mIsCameraAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;-><init>(Lcom/android/server/biometrics/BiometricCameraManagerImpl;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
