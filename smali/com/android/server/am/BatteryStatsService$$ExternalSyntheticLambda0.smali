.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;JJI)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 4
    .line 5
    iput-wide p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda26()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    .line 5
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    .line 6
    .line 7
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 11
    .line 12
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnNesting:I

    .line 13
    .line 14
    if-lez v1, :cond_1

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    iput v9, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnNesting:I

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 20
    .line 21
    const/high16 v6, 0x400000

    .line 22
    .line 23
    move-wide v2, v7

    .line 24
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStopEvent(JJI)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 28
    .line 29
    invoke-virtual {v1, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ge v9, v1, :cond_1

    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 53
    .line 54
    .line 55
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda31()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    .line 5
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    .line 6
    .line 7
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiOn:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 17
    .line 18
    const/high16 v6, 0x10000000

    .line 19
    .line 20
    move-wide v2, v7

    .line 21
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StopEvent(JJI)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiOn:Z

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 28
    .line 29
    invoke-virtual {v1, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiPowerStatsCollector:Lcom/android/server/power/stats/WifiPowerStatsCollector;

    .line 33
    .line 34
    iget-boolean v2, v1, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string/jumbo v1, "wifi-on"

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda40()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    .line 5
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    .line 6
    .line 7
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiOn:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 17
    .line 18
    const/high16 v6, 0x10000000

    .line 19
    .line 20
    move-wide v2, v7

    .line 21
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StartEvent(JJI)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiOn:Z

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 28
    .line 29
    invoke-virtual {v1, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiPowerStatsCollector:Lcom/android/server/power/stats/WifiPowerStatsCollector;

    .line 33
    .line 34
    iget-boolean v2, v1, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string/jumbo v1, "wifi-off"

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda44()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    .line 6
    .line 7
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetBluetoothScanLocked(JJ)V

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda64()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    .line 6
    .line 7
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneOnLocked(JJ)V

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 7
    .line 8
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    .line 9
    .line 10
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    .line 11
    .line 12
    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    monitor-enter v9

    .line 15
    :try_start_0
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPhoneOn:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 22
    .line 23
    const/high16 v6, 0x800000

    .line 24
    .line 25
    move-wide v2, v7

    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StopEvent(JJI)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPhoneOn:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 33
    .line 34
    invoke-virtual {v0, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v0, "phone-off"

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x4

    .line 41
    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileRadioPowerStatsCollector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    .line 47
    .line 48
    .line 49
    :cond_0
    monitor-exit v9

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0

    .line 54
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda64()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda44()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda40()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda31()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda26()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 75
    .line 76
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    .line 77
    .line 78
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    .line 79
    .line 80
    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 81
    .line 82
    monitor-enter v9

    .line 83
    :try_start_1
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 84
    .line 85
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnNesting:I

    .line 86
    .line 87
    if-lez v0, :cond_2

    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnNesting:I

    .line 91
    .line 92
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 93
    .line 94
    const/high16 v6, 0x40000000    # 2.0f

    .line 95
    .line 96
    move-wide v2, v7

    .line 97
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StopEvent(JJI)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 101
    .line 102
    invoke-virtual {v1, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 103
    .line 104
    .line 105
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-ge v0, v1, :cond_2

    .line 112
    .line 113
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 120
    .line 121
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 122
    .line 123
    if-eqz v1, :cond_1

    .line 124
    .line 125
    invoke-virtual {v1, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 126
    .line 127
    .line 128
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    monitor-exit v9

    .line 132
    return-void

    .line 133
    :catchall_1
    move-exception p0

    .line 134
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    throw p0

    .line 136
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 137
    .line 138
    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    .line 139
    .line 140
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    .line 141
    .line 142
    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 143
    .line 144
    monitor-enter v9

    .line 145
    :try_start_2
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 146
    .line 147
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnNesting:I

    .line 148
    .line 149
    if-lez v0, :cond_4

    .line 150
    .line 151
    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnNesting:I

    .line 153
    .line 154
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 155
    .line 156
    const/high16 v6, 0x8000000

    .line 157
    .line 158
    move-wide v2, v7

    .line 159
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StopEvent(JJI)V

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 163
    .line 164
    invoke-virtual {v1, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 165
    .line 166
    .line 167
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 168
    .line 169
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-ge v0, v1, :cond_4

    .line 174
    .line 175
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 176
    .line 177
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 182
    .line 183
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 184
    .line 185
    if-eqz v1, :cond_3

    .line 186
    .line 187
    invoke-virtual {v1, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 188
    .line 189
    .line 190
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_4
    monitor-exit v9

    .line 194
    return-void

    .line 195
    :catchall_2
    move-exception p0

    .line 196
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 197
    throw p0

    .line 198
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 199
    .line 200
    iget-wide v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    .line 201
    .line 202
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    .line 203
    .line 204
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 205
    .line 206
    monitor-enter p0

    .line 207
    :try_start_3
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 208
    .line 209
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetCameraLocked(JJ)V

    .line 210
    .line 211
    .line 212
    monitor-exit p0

    .line 213
    return-void

    .line 214
    :catchall_3
    move-exception v0

    .line 215
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 216
    throw v0

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
