.class public final synthetic Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 2
    .line 3
    check-cast p2, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    invoke-virtual {p2}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sub-long/2addr p0, v0

    .line 14
    invoke-static {p0, p1}, Ljava/lang/Long;->signum(J)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method
