.class public final Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final lock:Ljava/lang/Object;

.field public mLastSendTime:J

.field public final mReportData:Ljava/util/Queue;

.field public final synthetic this$0:Lcom/android/server/chimera/heimdall/HeimdallReportManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/heimdall/HeimdallReportManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->mReportData:Ljava/util/Queue;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->lock:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final addReportHistory(Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    const-string v2, "MM-dd HH:mm:ss.SSS"

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/util/Date;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ",pid="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->pid:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ",processName="

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ",packageName="

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->packageName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ",abnormalType="

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget p1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->abnormalType:I

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mReportHistory:Lcom/android/internal/util/RingBuffer;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "send broadcast for "

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->poll()Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    monitor-exit p1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->mReportData:Ljava/util/Queue;

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    const-string/jumbo v3, "report queue poll one but still not empty"

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-wide/32 v3, 0x493e0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    iput-wide v3, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->mLastSendTime:J

    .line 55
    .line 56
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->toDumpString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v2}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->sendBroadcast(Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v2}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->addReportHistory(Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mReportedAlwaysRunningProcesses:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 85
    .line 86
    iget-object p1, v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catch_0
    move-exception p0

    .line 93
    goto :goto_1

    .line 94
    :goto_0
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 96
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v0, "Handler message catch exception "

    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_2
    return-void
.end method

.method public final poll()Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;
    .locals 11

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->mReportData:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_8

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->mReportData:Ljava/util/Queue;

    .line 10
    .line 11
    check-cast v0, Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget v1, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->abnormalType:I

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    const/16 v4, 0xbce

    .line 26
    .line 27
    if-ne v4, v1, :cond_4

    .line 28
    .line 29
    sget-object v1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 30
    .line 31
    iget v5, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->pid:I

    .line 32
    .line 33
    iget-object v6, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v7, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v8, v1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 38
    .line 39
    monitor-enter v8

    .line 40
    :try_start_0
    iget-object v1, v1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 41
    .line 42
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v1, Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 53
    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    monitor-exit v8

    .line 57
    move v1, v3

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_3

    .line 61
    :cond_1
    iget-object v5, v1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    iget-object v5, v1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->packageName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 78
    .line 79
    .line 80
    move-result-wide v5

    .line 81
    iget-wide v9, v1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->alwaysRunningStartTime:J

    .line 82
    .line 83
    sub-long/2addr v5, v9

    .line 84
    const-wide/32 v9, 0xa4cb80

    .line 85
    .line 86
    .line 87
    cmp-long v1, v5, v9

    .line 88
    .line 89
    if-lez v1, :cond_2

    .line 90
    .line 91
    move v1, v2

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    move v1, v3

    .line 94
    :goto_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_1
    if-nez v1, :cond_3

    .line 96
    .line 97
    :goto_2
    move v2, v3

    .line 98
    goto :goto_4

    .line 99
    :cond_3
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 100
    .line 101
    .line 102
    move-result-wide v5

    .line 103
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    .line 104
    .line 105
    mul-double/2addr v5, v7

    .line 106
    sget v1, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sRandomSampleRate:I

    .line 107
    .line 108
    int-to-double v7, v1

    .line 109
    const-wide v9, 0x3fb999999999999aL    # 0.1

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    mul-double/2addr v7, v9

    .line 115
    cmpl-double v1, v5, v7

    .line 116
    .line 117
    if-lez v1, :cond_4

    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v2, "Block report by RandomSampleRate: "

    .line 122
    .line 123
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->toDumpString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :goto_3
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    throw p0

    .line 143
    :cond_4
    iget v1, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->abnormalType:I

    .line 144
    .line 145
    if-eq v4, v1, :cond_5

    .line 146
    .line 147
    const/16 v4, 0xbcf

    .line 148
    .line 149
    if-ne v4, v1, :cond_6

    .line 150
    .line 151
    :cond_5
    move v3, v2

    .line 152
    :cond_6
    if-eqz v3, :cond_7

    .line 153
    .line 154
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 155
    .line 156
    iget-object v1, v1, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mReportedAlwaysRunningProcesses:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 157
    .line 158
    iget-object v3, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    xor-int/2addr v2, v1

    .line 165
    :cond_7
    :goto_4
    if-eqz v2, :cond_0

    .line 166
    .line 167
    return-object v0

    .line 168
    :cond_8
    const/4 p0, 0x0

    .line 169
    return-object p0
.end method

.method public final sendBroadcast(Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "com.samsung.sdhms.MEMORY_ABNORMAL_HEIMDALL"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "com.sec.android.sdhms"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    const-string/jumbo v2, "package_name"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const-string/jumbo v1, "process_name"

    .line 27
    .line 28
    .line 29
    iget-object v2, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const-string/jumbo v1, "uid"

    .line 35
    .line 36
    .line 37
    iget v2, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->uid:I

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const-string/jumbo v1, "pid"

    .line 43
    .line 44
    .line 45
    iget v2, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->pid:I

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const-string v1, "anomaly_type"

    .line 51
    .line 52
    iget p1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->abnormalType:I

    .line 53
    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 62
    .line 63
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method