.class public final synthetic Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/controllers/PrefetchController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/PrefetchController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v7, v0, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 4
    .line 5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v8, Landroid/util/ArraySet;

    .line 9
    .line 10
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v9, v7, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v9

    .line 16
    :try_start_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v10

    .line 25
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v12

    .line 31
    const/4 v15, 0x0

    .line 32
    :goto_0
    iget-object v0, v7, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ge v15, v0, :cond_3

    .line 39
    .line 40
    iget-object v0, v7, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 41
    .line 42
    invoke-virtual {v0, v15}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    const/4 v4, 0x0

    .line 47
    :goto_1
    iget-object v0, v7, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 48
    .line 49
    invoke-virtual {v0, v6}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-ge v4, v0, :cond_2

    .line 54
    .line 55
    iget-object v0, v7, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 56
    .line 57
    invoke-virtual {v0, v15, v4}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v5, v0

    .line 62
    check-cast v5, Ljava/lang/String;

    .line 63
    .line 64
    move-object v0, v7

    .line 65
    move v1, v6

    .line 66
    move-wide v2, v12

    .line 67
    move v14, v4

    .line 68
    move-object/from16 v16, v5

    .line 69
    .line 70
    move-wide v4, v10

    .line 71
    move-wide/from16 v17, v10

    .line 72
    .line 73
    move v10, v6

    .line 74
    move-object/from16 v6, v16

    .line 75
    .line 76
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForPkgLocked(IJJLjava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    .line 82
    iget-object v0, v7, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 83
    .line 84
    invoke-virtual {v0, v15, v14}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/util/ArraySet;

    .line 89
    .line 90
    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 91
    .line 92
    .line 93
    :cond_0
    move-object/from16 v6, v16

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto :goto_3

    .line 98
    :goto_2
    invoke-virtual {v7, v10, v6, v12, v13}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_1

    .line 103
    .line 104
    move-object v0, v7

    .line 105
    move v1, v10

    .line 106
    move-wide v2, v12

    .line 107
    move-wide/from16 v4, v17

    .line 108
    .line 109
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(IJJLjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    add-int/lit8 v4, v14, 0x1

    .line 113
    .line 114
    move v6, v10

    .line 115
    move-wide/from16 v10, v17

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    move-wide/from16 v17, v10

    .line 119
    .line 120
    add-int/lit8 v15, v15, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-lez v0, :cond_4

    .line 129
    .line 130
    iget-object v0, v7, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 131
    .line 132
    invoke-virtual {v0, v8}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    return-void

    .line 136
    :goto_3
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    throw v0
.end method
