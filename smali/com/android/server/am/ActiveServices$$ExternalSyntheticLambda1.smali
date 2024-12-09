.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/am/ServiceRecord;

    .line 4
    .line 5
    iget-wide p0, p1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 6
    .line 7
    iget-wide v0, p2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 8
    .line 9
    sub-long/2addr p0, v0

    .line 10
    long-to-int p0, p0

    .line 11
    return p0
.end method
