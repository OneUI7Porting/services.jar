.class public abstract Lcom/android/server/knox/zt/devicetrust/data/TracepointData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final comm:Ljava/lang/String;

.field public final pidTgid:J

.field public final uidGid:J


# direct methods
.method public constructor <init>(IJJJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    .line 2
    .line 3
    .line 4
    iput-wide p4, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->pidTgid:J

    .line 5
    .line 6
    iput-wide p6, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    .line 7
    .line 8
    if-eqz p8, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p8, ""

    .line 12
    .line 13
    :goto_0
    iput-object p8, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getComm()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPid()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->pidTgid:J

    .line 2
    .line 3
    const/16 p0, 0x20

    .line 4
    .line 5
    shr-long/2addr v0, p0

    .line 6
    long-to-int p0, v0

    .line 7
    return p0
.end method

.method public final getUid()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    .line 2
    .line 3
    long-to-int p0, v0

    .line 4
    return p0
.end method
