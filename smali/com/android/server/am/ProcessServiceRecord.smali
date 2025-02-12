.class public final Lcom/android/server/am/ProcessServiceRecord;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mAllowlistManager:Z

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBoundClientUids:Landroid/util/ArraySet;

.field public mConnectionGroup:I

.field public mConnectionImportance:I

.field public mConnectionService:Lcom/android/server/am/ServiceRecord;

.field public final mConnections:Landroid/util/ArraySet;

.field public mExecServicesFg:Z

.field public final mExecutingServices:Landroid/util/ArraySet;

.field public mFgServiceTypes:I

.field public mHasAboveClient:Z

.field public mHasClientActivities:Z

.field public mHasForegroundServices:Z

.field public mHasTopStartedAlmostPerceptibleServices:Z

.field public mHasTypeNoneFgs:Z

.field public mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

.field public mRepHasForegroundServices:Z

.field public mScheduleServiceTimeoutPending:Z

.field public mSdkSandboxConnections:Landroid/util/ArraySet;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mServices:Landroid/util/ArraySet;

.field public mTreatLikeActivity:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    .line 24
    .line 25
    new-instance v0, Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 37
    .line 38
    return-void
.end method

.method public static isAlmostPerceptible(Lcom/android/server/am/ServiceRecord;)Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    sub-int/2addr v0, v2

    .line 19
    :goto_0
    if-ltz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    sub-int/2addr v4, v2

    .line 32
    :goto_1
    if-ltz v4, :cond_2

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 39
    .line 40
    const/high16 v6, 0x10000

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    return v2

    .line 49
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return v1
.end method


# virtual methods
.method public final clearBoundClientUids()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroid/util/IntArray;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 28
    .line 29
    .line 30
    :goto_0
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v0
.end method

.method public final getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/ConnectionRecord;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/ServiceRecord;

    .line 8
    .line 9
    return-object p0
.end method

.method public final hasNonShortForegroundServices()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTypeNoneFgs:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    iget p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mFgServiceTypes:I

    .line 14
    .line 15
    const/16 v0, 0x800

    .line 16
    .line 17
    if-eq p0, v0, :cond_2

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_2
    return v1
.end method

.method public final modifyRawOomAdj(I)I
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/16 p0, 0x64

    .line 9
    .line 10
    if-ge p1, p0, :cond_1

    .line 11
    .line 12
    :goto_0
    move p1, p0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/16 p0, 0xc8

    .line 15
    .line 16
    if-ge p1, p0, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/16 p0, 0xfa

    .line 20
    .line 21
    if-ge p1, p0, :cond_3

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    const/16 p0, 0x384

    .line 25
    .line 26
    if-ge p1, p0, :cond_4

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_4
    const/16 p0, 0x3e7

    .line 30
    .line 31
    if-ge p1, p0, :cond_5

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    :cond_5
    :goto_1
    return p1
.end method

.method public final scheduleServiceTimeoutIfNeededLocked()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/server/am/Flags;->serviceBindingOomAdjPolicy()Z

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mScheduleServiceTimeoutPending:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_0
    if-ge v3, v2, :cond_0

    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 45
    .line 46
    iput-wide v0, v4, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public final startService(Lcom/android/server/am/ServiceRecord;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_5

    .line 13
    .line 14
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 15
    .line 16
    if-eqz v3, :cond_5

    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 19
    .line 20
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v5, -0x1

    .line 31
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    sparse-switch v6, :sswitch_data_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :sswitch_0
    const-string v6, "android.permission.BIND_INPUT_METHOD"

    .line 40
    .line 41
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v5, 0x2

    .line 49
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v6, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    .line 51
    .line 52
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move v5, v0

    .line 60
    goto :goto_0

    .line 61
    :sswitch_2
    const-string v6, "android.permission.BIND_VOICE_INTERACTION"

    .line 62
    .line 63
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    move v5, v1

    .line 71
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :pswitch_0
    iput-boolean v0, v4, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    .line 76
    .line 77
    :pswitch_1
    iput-boolean v1, v4, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    .line 83
    .line 84
    .line 85
    :cond_5
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    .line 86
    .line 87
    const-wide/16 v3, 0x0

    .line 88
    .line 89
    cmp-long v3, v0, v3

    .line 90
    .line 91
    if-lez v3, :cond_6

    .line 92
    .line 93
    iget-wide v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 94
    .line 95
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 96
    .line 97
    .line 98
    move-result-wide v0

    .line 99
    iput-wide v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 100
    .line 101
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    .line 102
    .line 103
    if-nez v0, :cond_6

    .line 104
    .line 105
    invoke-static {p1}, Lcom/android/server/am/ProcessServiceRecord;->isAlmostPerceptible(Lcom/android/server/am/ServiceRecord;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    .line 110
    .line 111
    :cond_6
    return v2

    .line 112
    nop

    .line 113
    :sswitch_data_0
    .sparse-switch
        -0x2de34dfd -> :sswitch_2
        0x542fc942 -> :sswitch_1
        0x56545c98 -> :sswitch_0
    .end sparse-switch

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final stopService(Lcom/android/server/am/ServiceRecord;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long p1, v1, v3

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHasTopStartedAlmostPerceptibleServices()V

    .line 16
    .line 17
    .line 18
    :cond_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final updateBoundClientUids()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->clearBoundClientUids()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    move v4, v3

    .line 30
    :goto_0
    if-ge v4, v1, :cond_3

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 33
    .line 34
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 39
    .line 40
    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    move v7, v3

    .line 47
    :goto_1
    if-ge v7, v6, :cond_2

    .line 48
    .line 49
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    check-cast v8, Ljava/util/ArrayList;

    .line 54
    .line 55
    move v9, v3

    .line 56
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    if-ge v9, v10, :cond_1

    .line 61
    .line 62
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    .line 67
    .line 68
    iget v11, v10, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    .line 69
    .line 70
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    iget v11, v10, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    .line 78
    .line 79
    iget-object v12, v10, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    .line 80
    .line 81
    iget-wide v13, v10, Lcom/android/server/am/ConnectionRecord;->flags:J

    .line 82
    .line 83
    invoke-virtual {v2, v11, v12, v13, v14}, Lcom/android/server/wm/WindowProcessController;->addBoundClientUid(ILjava/lang/String;J)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v9, v9, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 96
    .line 97
    return-void
.end method

.method public final updateHasTopStartedAlmostPerceptibleServices()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    :goto_0
    if-ltz v0, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 25
    .line 26
    iget-wide v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 27
    .line 28
    iget-wide v5, v2, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    .line 29
    .line 30
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    iput-wide v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 35
    .line 36
    iget-boolean v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    .line 37
    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    invoke-static {v2}, Lcom/android/server/am/ProcessServiceRecord;->isAlmostPerceptible(Lcom/android/server/am/ServiceRecord;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    .line 47
    .line 48
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method public final updateHostingComonentTypeForBindingsLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    const/16 v1, 0x200

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 12
    .line 13
    if-ltz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    iget-object p0, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p0, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-void
.end method
