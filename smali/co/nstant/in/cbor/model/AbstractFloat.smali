.class public abstract Lco/nstant/in/cbor/model/AbstractFloat;
.super Lco/nstant/in/cbor/model/Special;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final value:F


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/model/SpecialType;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/model/Special;-><init>(Lco/nstant/in/cbor/model/SpecialType;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lco/nstant/in/cbor/model/AbstractFloat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lco/nstant/in/cbor/model/AbstractFloat;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget p0, p0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    .line 16
    .line 17
    iget p1, v0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    .line 18
    .line 19
    cmpl-float p0, p0, p1

    .line 20
    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lco/nstant/in/cbor/model/Special;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget p0, p0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    xor-int/2addr p0, v0

    .line 16
    return p0
.end method
