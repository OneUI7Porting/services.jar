.class public final synthetic Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object p1, p1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 12
    .line 13
    iget-object p2, p2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 14
    .line 15
    iget-object v1, p2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move p0, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    const/4 p0, -0x1

    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 30
    .line 31
    const/16 v3, 0x28

    .line 32
    .line 33
    if-ne v0, v3, :cond_4

    .line 34
    .line 35
    iget v0, v1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 36
    .line 37
    if-eq v0, v3, :cond_5

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_4
    iget p0, v1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 41
    .line 42
    if-ne p0, v3, :cond_5

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_5
    iget-wide v0, p2, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 46
    .line 47
    iget-wide p0, p1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 48
    .line 49
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    :goto_1
    return p0
.end method