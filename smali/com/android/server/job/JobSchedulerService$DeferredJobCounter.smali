.class public final Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mDeferred:I


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 2
    .line 3
    iget-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p1, v0, v2

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    iget p1, p0, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->mDeferred:I

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->mDeferred:I

    .line 16
    .line 17
    :cond_0
    return-void
.end method
