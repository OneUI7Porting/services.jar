.class public final Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final newReadyJobs:Landroid/util/ArraySet;

.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->newReadyJobs:Landroid/util/ArraySet;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "    queued "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "JobScheduler"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->newReadyJobs:Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method
