.class public final synthetic Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    .line 2
    .line 3
    iget-wide p0, p1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    .line 4
    .line 5
    const-wide/16 v0, 0x400

    .line 6
    .line 7
    div-long/2addr p0, v0

    .line 8
    long-to-double p0, p0

    .line 9
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 10
    .line 11
    add-double/2addr p0, v0

    .line 12
    double-to-long p0, p0

    .line 13
    return-wide p0
.end method
