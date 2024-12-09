.class public final Landroid/net/NetworkTestResultParcelable$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Landroid/net/NetworkTestResultParcelable;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/NetworkTestResultParcelable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/net/NetworkTestResultParcelable;->readFromParcel(Landroid/os/Parcel;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/net/NetworkTestResultParcelable;

    .line 2
    .line 3
    return-object p0
.end method
