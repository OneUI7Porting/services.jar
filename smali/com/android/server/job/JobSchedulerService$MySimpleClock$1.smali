.class public final Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;
.super Lcom/android/server/job/JobSchedulerService$MySimpleClock;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService$MySimpleClock;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService$MySimpleClock;Ljava/time/ZoneId;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;->this$0:Lcom/android/server/job/JobSchedulerService$MySimpleClock;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/android/server/job/JobSchedulerService$MySimpleClock;-><init>(Ljava/time/ZoneId;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final millis()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;->this$0:Lcom/android/server/job/JobSchedulerService$MySimpleClock;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MySimpleClock;->millis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method