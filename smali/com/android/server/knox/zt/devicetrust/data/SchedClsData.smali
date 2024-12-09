.class public abstract Lcom/android/server/knox/zt/devicetrust/data/SchedClsData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final uid:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedClsData;->uid:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getPid()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedClsData;->uid:I

    .line 2
    .line 3
    return p0
.end method
