.class public final synthetic Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Long;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    check-cast p3, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    check-cast p4, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    check-cast p5, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    iget p4, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogHead:I

    .line 28
    .line 29
    iget p5, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogSize:I

    .line 30
    .line 31
    add-int v2, p4, p5

    .line 32
    .line 33
    const/16 v3, 0xc8

    .line 34
    .line 35
    rem-int/2addr v2, v3

    .line 36
    const/4 v4, 0x1

    .line 37
    if-ne p5, v3, :cond_0

    .line 38
    .line 39
    add-int/2addr p4, v4

    .line 40
    rem-int/2addr p4, v3

    .line 41
    iput p4, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogHead:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    add-int/2addr p5, v4

    .line 45
    iput p5, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogSize:I

    .line 46
    .line 47
    :goto_0
    iget-object p4, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLog:[[I

    .line 48
    .line 49
    aget-object p4, p4, v2

    .line 50
    .line 51
    const/4 p5, 0x0

    .line 52
    aput p0, p4, p5

    .line 53
    .line 54
    aput p2, p4, v4

    .line 55
    .line 56
    const/4 p0, 0x2

    .line 57
    aput p3, p4, p0

    .line 58
    .line 59
    iget-object p0, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogTimestamps:[J

    .line 60
    .line 61
    aput-wide v0, p0, v2

    .line 62
    .line 63
    return-void
.end method
