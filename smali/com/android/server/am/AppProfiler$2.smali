.class public final Lcom/android/server/am/AppProfiler$2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lcom/android/server/am/ProcessMemInfo;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/am/ProcessMemInfo;

    .line 4
    .line 5
    iget p0, p1, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    .line 6
    .line 7
    iget v0, p2, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    if-ge p0, v0, :cond_3

    .line 14
    .line 15
    :cond_0
    move v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-wide p0, p1, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 18
    .line 19
    iget-wide v3, p2, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 20
    .line 21
    cmp-long p0, p0, v3

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    if-gez p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v1, 0x0

    .line 29
    :cond_3
    :goto_0
    return v1
.end method
