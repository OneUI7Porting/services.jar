.class public final Lcom/android/server/am/ProcessStatsService$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ProcessStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessStatsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->evaluateSystemProperties(Z)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 20
    .line 21
    iget v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 22
    .line 23
    or-int/lit8 v3, v3, 0x4

    .line 24
    .line 25
    iput v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v1, v2, v2}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->evaluateSystemProperties(Z)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method
