.class public final synthetic Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;->f$0:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;->f$0:J

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/alarm/Alarm;

    .line 4
    .line 5
    iget-object p0, p1, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    aget-wide v2, p0, p1

    .line 9
    .line 10
    const-wide v4, 0x757b12c00L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    add-long/2addr v0, v4

    .line 16
    cmp-long p0, v2, v0

    .line 17
    .line 18
    if-lez p0, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    :cond_0
    return p1
.end method
