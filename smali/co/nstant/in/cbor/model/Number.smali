.class public abstract Lco/nstant/in/cbor/model/Number;
.super Lco/nstant/in/cbor/model/DataItem;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/model/DataItem;-><init>(Lco/nstant/in/cbor/model/MajorType;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lco/nstant/in/cbor/model/Number;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lco/nstant/in/cbor/model/Number;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/DataItem;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    .line 16
    .line 17
    iget-object p1, v0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lco/nstant/in/cbor/model/DataItem;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    xor-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
