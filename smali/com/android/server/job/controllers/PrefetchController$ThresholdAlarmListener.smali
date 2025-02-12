.class public final Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;
.super Lcom/android/server/utils/AlarmQueue;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/PrefetchController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const-wide/32 v6, 0x57e40

    .line 5
    .line 6
    .line 7
    const-string v3, "*job.prefetch*"

    .line 8
    .line 9
    const-string v4, "Prefetch threshold"

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p2

    .line 13
    move-object v2, p3

    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final isForUser(ILjava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Landroid/content/pm/UserPackage;

    .line 2
    .line 3
    iget p0, p2, Landroid/content/pm/UserPackage;->userId:I

    .line 4
    .line 5
    if-ne p0, p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final processExpiredAlarms(Landroid/util/ArraySet;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v11

    .line 19
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v13

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-ge v3, v4, :cond_2

    .line 34
    .line 35
    move-object/from16 v15, p1

    .line 36
    .line 37
    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    move-object v10, v4

    .line 42
    check-cast v10, Landroid/content/pm/UserPackage;

    .line 43
    .line 44
    iget-object v4, v0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 45
    .line 46
    iget v5, v10, Landroid/content/pm/UserPackage;->userId:I

    .line 47
    .line 48
    iget-object v6, v10, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v4, v5, v6, v11, v12}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    const-string v4, "JobScheduler.Prefetch"

    .line 57
    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v6, "Alarm expired for "

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v6, v10, Landroid/content/pm/UserPackage;->userId:I

    .line 69
    .line 70
    iget-object v7, v10, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v6, v7}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v6, " at the wrong time"

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iget-object v4, v0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 92
    .line 93
    iget v5, v10, Landroid/content/pm/UserPackage;->userId:I

    .line 94
    .line 95
    iget-object v10, v10, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 96
    .line 97
    move-wide v6, v11

    .line 98
    move-wide v8, v13

    .line 99
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(IJJLjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    move-wide/from16 v17, v11

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    goto :goto_2

    .line 107
    :cond_0
    iget-object v4, v0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 108
    .line 109
    iget v5, v10, Landroid/content/pm/UserPackage;->userId:I

    .line 110
    .line 111
    iget-object v8, v10, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 112
    .line 113
    move-wide v6, v11

    .line 114
    move-object/from16 v16, v8

    .line 115
    .line 116
    move-wide v8, v13

    .line 117
    move-wide/from16 v17, v11

    .line 118
    .line 119
    move-object v11, v10

    .line 120
    move-object/from16 v10, v16

    .line 121
    .line 122
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForPkgLocked(IJJLjava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_1

    .line 127
    .line 128
    iget-object v4, v0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 129
    .line 130
    iget-object v4, v4, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 131
    .line 132
    iget v5, v11, Landroid/content/pm/UserPackage;->userId:I

    .line 133
    .line 134
    iget-object v6, v11, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    check-cast v4, Landroid/util/ArraySet;

    .line 141
    .line 142
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 143
    .line 144
    .line 145
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 146
    .line 147
    move-wide/from16 v11, v17

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-lez v2, :cond_3

    .line 156
    .line 157
    iget-object v0, v0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 158
    .line 159
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 162
    .line 163
    .line 164
    :cond_3
    return-void

    .line 165
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    throw v0
.end method
