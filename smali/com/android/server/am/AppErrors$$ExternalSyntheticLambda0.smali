.class public final synthetic Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppErrors;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppErrors;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppErrors;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 4
    .line 5
    iget-object p0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    const-string/jumbo v4, "forced"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v5, "killed for invalid state"

    .line 21
    .line 22
    .line 23
    const/16 v2, 0xd

    .line 24
    .line 25
    const/16 v3, 0xe

    .line 26
    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppErrors;->killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 32
    .line 33
    .line 34
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_0

    .line 41
    :catchall_1
    move-exception v0

    .line 42
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 49
    .line 50
    .line 51
    throw v0
.end method
