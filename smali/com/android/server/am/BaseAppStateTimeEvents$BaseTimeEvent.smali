.class public Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public mTimestamp:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 7
    .line 8
    iput-wide v1, v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 9
    .line 10
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-class v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    check-cast p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 15
    .line 16
    iget-wide v1, p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 17
    .line 18
    iget-wide p0, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 19
    .line 20
    cmp-long p0, v1, p0

    .line 21
    .line 22
    if-nez p0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public trimTo(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 2
    .line 3
    return-void
.end method
