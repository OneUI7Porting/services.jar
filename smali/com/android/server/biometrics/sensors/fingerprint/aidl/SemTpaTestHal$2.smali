.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;
.super Landroid/hardware/biometrics/common/ICancellationSignal$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic val$cs:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Landroid/os/CancellationSignal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;->val$cs:Landroid/os/CancellationSignal;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;->val$cs:Landroid/os/CancellationSignal;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "8a6cd86630181a4df6f20056259ec200ffe39209"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
.end method
