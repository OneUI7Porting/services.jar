.class public final synthetic Lcom/android/server/alarm/LazyAlarmStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/alarm/Alarm;

    .line 2
    .line 3
    iget-wide p0, p1, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 4
    .line 5
    return-wide p0
.end method
