.class Lcom/att/iqi/lib/metrics/hw/HW0E$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/att/iqi/lib/metrics/hw/HW0E;
    .locals 0

    .line 2
    new-instance p0, Lcom/att/iqi/lib/metrics/hw/HW0E;

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/metrics/hw/HW0E;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/metrics/hw/HW0E$1;->createFromParcel(Landroid/os/Parcel;)Lcom/att/iqi/lib/metrics/hw/HW0E;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/att/iqi/lib/metrics/hw/HW0E;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/att/iqi/lib/metrics/hw/HW0E;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/metrics/hw/HW0E$1;->newArray(I)[Lcom/att/iqi/lib/metrics/hw/HW0E;

    move-result-object p0

    return-object p0
.end method
