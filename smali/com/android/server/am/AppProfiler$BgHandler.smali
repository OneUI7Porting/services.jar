.class public final Lcom/android/server/am/AppProfiler$BgHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_5

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x3

    .line 8
    if-eq v0, v2, :cond_3

    .line 9
    .line 10
    if-eq v0, v3, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 20
    .line 21
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 22
    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    .line 26
    .line 27
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 28
    .line 29
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v7

    .line 39
    iget-object p0, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 42
    .line 43
    iget-boolean v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    .line 49
    .line 50
    aget-wide v3, p0, v1

    .line 51
    .line 52
    aget-wide v5, p0, p1

    .line 53
    .line 54
    const-string/jumbo v9, "mem-pressure-event"

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActiveServices;->performRescheduleServiceRestartOnMemoryPressureLocked(JJJLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-gtz p1, :cond_7

    .line 80
    .line 81
    if-gez p1, :cond_7

    .line 82
    .line 83
    const-string p1, "ActivityManager"

    .line 84
    .line 85
    const-string v0, "Activity start nesting undercount!"

    .line 86
    .line 87
    invoke-static {p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    .line 97
    .line 98
    iget-wide v4, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 99
    .line 100
    const-wide/16 v6, 0x0

    .line 101
    .line 102
    cmp-long p1, v4, v6

    .line 103
    .line 104
    if-lez p1, :cond_7

    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 107
    .line 108
    monitor-enter p1

    .line 109
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-lez v0, :cond_4

    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    .line 123
    .line 124
    iget-wide v4, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 125
    .line 126
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 127
    .line 128
    .line 129
    :cond_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    .line 136
    .line 137
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 138
    .line 139
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :catchall_1
    move-exception p0

    .line 144
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    throw p0

    .line 146
    :cond_5
    iget-object p1, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_6

    .line 153
    .line 154
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    .line 155
    .line 156
    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$mcollectPssInBackground(Lcom/android/server/am/AppProfiler;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_6
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    .line 161
    .line 162
    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$mcollectRssInBackground(Lcom/android/server/am/AppProfiler;)V

    .line 163
    .line 164
    .line 165
    :cond_7
    :goto_1
    return-void
.end method