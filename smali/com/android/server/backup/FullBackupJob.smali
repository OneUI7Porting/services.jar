.class public Lcom/android/server/backup/FullBackupJob;
.super Landroid/app/job/JobService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final MAX_JOB_ID:I = 0x31fdd38

.field public static final MIN_JOB_ID:I = 0x31fd950

.field public static final sIdleService:Landroid/content/ComponentName;


# instance fields
.field public final mParamsForUser:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-class v1, Lcom/android/server/backup/FullBackupJob;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android"

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    .line 10
    .line 11
    return-void
.end method

.method public static getJobIdForUserId(I)I
    .locals 1

    .line 1
    const v0, 0x31fd950

    .line 2
    .line 3
    .line 4
    add-int/2addr v0, p0

    .line 5
    const p0, 0x31fdd38

    .line 6
    .line 7
    .line 8
    if-gt v0, p0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    const-string v0, "No job IDs available in the given range"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public static schedule(ILandroid/content/Context;JLcom/android/server/backup/UserBackupManagerService;)V
    .locals 6

    .line 1
    invoke-virtual {p4}, Lcom/android/server/backup/UserBackupManagerService;->isFrameworkSchedulingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string/jumbo v0, "jobscheduler"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 16
    .line 17
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/android/server/backup/FullBackupJob;->getJobIdForUserId(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    sget-object v3, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    .line 24
    .line 25
    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 26
    .line 27
    .line 28
    iget-object p4, p4, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 29
    .line 30
    monitor-enter p4

    .line 31
    :try_start_0
    const-string/jumbo v2, "getFullBackupRequiredNetworkType(...) returns "

    .line 32
    .line 33
    .line 34
    monitor-enter p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    const-string v3, "BackupManagerConstants"

    .line 36
    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v2, p4, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequiredNetworkType:I

    .line 43
    .line 44
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget v2, p4, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequiredNetworkType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 55
    .line 56
    :try_start_2
    monitor-exit p4

    .line 57
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string/jumbo v3, "getFullBackupRequireCharging(...) returns "

    .line 62
    .line 63
    .line 64
    monitor-enter p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :try_start_3
    const-string v4, "BackupManagerConstants"

    .line 66
    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-boolean v3, p4, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequireCharging:Z

    .line 73
    .line 74
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-boolean v3, p4, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequireCharging:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    .line 86
    :try_start_4
    monitor-exit p4

    .line 87
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 88
    .line 89
    .line 90
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    const-wide/16 v2, 0x0

    .line 92
    .line 93
    cmp-long p4, p2, v2

    .line 94
    .line 95
    if-lez p4, :cond_1

    .line 96
    .line 97
    invoke-virtual {v1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 98
    .line 99
    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string p2, "android.hardware.type.watch"

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_2

    .line 111
    .line 112
    const/4 p1, 0x1

    .line 113
    invoke-virtual {v1, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 114
    .line 115
    .line 116
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    .line 117
    .line 118
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string/jumbo p2, "userId"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, p1}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    goto :goto_0

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    :try_start_5
    monitor-exit p4

    .line 142
    throw p0

    .line 143
    :catchall_2
    move-exception p0

    .line 144
    monitor-exit p4

    .line 145
    throw p0

    .line 146
    :goto_0
    monitor-exit p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 147
    throw p0
.end method


# virtual methods
.method public final finishBackupPass(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/app/job/JobParameters;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "userId"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, v0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    .line 15
    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    iget-object v3, v0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    .line 18
    .line 19
    move-object/from16 v4, p1

    .line 20
    .line 21
    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 25
    sget-object v2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    .line 26
    .line 27
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v14, 0x0

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    goto/16 :goto_12

    .line 38
    .line 39
    :cond_0
    const-string/jumbo v3, "beginFullBackup()"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1, v3}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 43
    .line 44
    .line 45
    move-result-object v15

    .line 46
    if-eqz v15, :cond_12

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    iget-object v3, v15, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 53
    .line 54
    monitor-enter v3

    .line 55
    :try_start_1
    iget-object v4, v15, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    iget-object v6, v15, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 62
    .line 63
    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 68
    iget-boolean v3, v15, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 69
    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    iget-boolean v3, v15, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 73
    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    :cond_1
    move v1, v14

    .line 77
    const/16 v25, 0x1

    .line 78
    .line 79
    goto/16 :goto_10

    .line 80
    .line 81
    :cond_2
    iget-object v3, v15, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 82
    .line 83
    const/4 v8, 0x4

    .line 84
    invoke-virtual {v3, v8}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    iget-boolean v3, v3, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 89
    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    const-string v0, "BackupManagerService"

    .line 93
    .line 94
    iget v1, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 95
    .line 96
    const-string v2, "Deferring scheduled full backups in battery saver mode"

    .line 97
    .line 98
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    iget v0, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 106
    .line 107
    iget-object v1, v15, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    invoke-static {v0, v1, v6, v7, v15}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/UserBackupManagerService;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    move v1, v14

    .line 113
    move v13, v1

    .line 114
    const/16 v25, 0x1

    .line 115
    .line 116
    goto/16 :goto_11

    .line 117
    .line 118
    :cond_3
    const-string v3, "BackupManagerService"

    .line 119
    .line 120
    iget v8, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 121
    .line 122
    const-string v9, "Beginning scheduled full backup operation"

    .line 123
    .line 124
    invoke-static {v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    iget-object v12, v15, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 132
    .line 133
    monitor-enter v12

    .line 134
    :try_start_2
    iget-object v3, v15, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 135
    .line 136
    if-eqz v3, :cond_4

    .line 137
    .line 138
    const-string v0, "BackupManagerService"

    .line 139
    .line 140
    iget v1, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 141
    .line 142
    const-string v2, "Backup triggered but one already/still running!"

    .line 143
    .line 144
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    monitor-exit v12

    .line 152
    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    move-object/from16 v24, v12

    .line 155
    .line 156
    goto/16 :goto_f

    .line 157
    .line 158
    :cond_4
    const/4 v3, 0x0

    .line 159
    move-wide v9, v4

    .line 160
    const/4 v8, 0x1

    .line 161
    :goto_1
    iget-object v11, v15, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 164
    .line 165
    .line 166
    move-result v11

    .line 167
    if-nez v11, :cond_5

    .line 168
    .line 169
    const-string v1, "BackupManagerService"

    .line 170
    .line 171
    iget v2, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 172
    .line 173
    const-string v4, "Backup queue empty; doing nothing"

    .line 174
    .line 175
    invoke-static {v2, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    :goto_2
    move-wide v10, v9

    .line 183
    goto/16 :goto_b

    .line 184
    .line 185
    :cond_5
    iget-object v11, v15, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 186
    .line 187
    iget-object v11, v11, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v15, v11}, Lcom/android/server/backup/UserBackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    if-nez v11, :cond_6

    .line 194
    .line 195
    move-wide v9, v6

    .line 196
    move v8, v14

    .line 197
    :cond_6
    if-eqz v8, :cond_d

    .line 198
    .line 199
    iget-object v3, v15, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    check-cast v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 206
    .line 207
    iget-wide v13, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    .line 209
    sub-long v13, v1, v13

    .line 210
    .line 211
    cmp-long v8, v13, v4

    .line 212
    .line 213
    if-ltz v8, :cond_7

    .line 214
    .line 215
    const/4 v8, 0x1

    .line 216
    goto :goto_3

    .line 217
    :cond_7
    const/4 v8, 0x0

    .line 218
    :goto_3
    if-nez v8, :cond_8

    .line 219
    .line 220
    sub-long v9, v4, v13

    .line 221
    .line 222
    :goto_4
    move v14, v8

    .line 223
    goto :goto_2

    .line 224
    :cond_8
    :try_start_3
    iget-object v11, v15, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 225
    .line 226
    iget-object v13, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    .line 227
    .line 228
    iget v14, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    .line 230
    move-wide/from16 v17, v1

    .line 231
    .line 232
    const/4 v1, 0x0

    .line 233
    :try_start_4
    invoke-virtual {v11, v13, v1, v14}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    iget-object v11, v15, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 238
    .line 239
    invoke-virtual {v11, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    .line 240
    .line 241
    .line 242
    move-result v11

    .line 243
    if-nez v11, :cond_9

    .line 244
    .line 245
    iget-object v2, v15, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-wide/from16 v19, v6

    .line 251
    .line 252
    const/4 v11, 0x1

    .line 253
    goto/16 :goto_a

    .line 254
    .line 255
    :catch_0
    :goto_5
    move-wide/from16 v19, v6

    .line 256
    .line 257
    const/4 v11, 0x0

    .line 258
    goto/16 :goto_8

    .line 259
    .line 260
    :cond_9
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 261
    .line 262
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 263
    .line 264
    and-int/lit16 v2, v2, 0x2000

    .line 265
    .line 266
    if-nez v2, :cond_a

    .line 267
    .line 268
    iget-object v2, v15, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 269
    .line 270
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 271
    .line 272
    invoke-virtual {v2, v1}, Landroid/app/ActivityManagerInternal;->isAppForeground(I)Z

    .line 273
    .line 274
    .line 275
    move-result v1
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    if-eqz v1, :cond_a

    .line 277
    .line 278
    const/4 v1, 0x1

    .line 279
    goto :goto_6

    .line 280
    :cond_a
    const/4 v1, 0x0

    .line 281
    :goto_6
    if-eqz v1, :cond_b

    .line 282
    .line 283
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 284
    .line 285
    .line 286
    move-result-wide v13

    .line 287
    const-wide/32 v19, 0x36ee80

    .line 288
    .line 289
    .line 290
    add-long v13, v13, v19

    .line 291
    .line 292
    iget-object v2, v15, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 293
    .line 294
    const v11, 0x6ddd00

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2, v11}, Ljava/util/Random;->nextInt(I)I

    .line 298
    .line 299
    .line 300
    move-result v2
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 301
    move v11, v1

    .line 302
    int-to-long v0, v2

    .line 303
    add-long/2addr v13, v0

    .line 304
    :try_start_6
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 305
    .line 306
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 307
    .line 308
    .line 309
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    const-string v1, "BackupManagerService"

    .line 313
    .line 314
    iget v2, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 315
    .line 316
    move-wide/from16 v19, v6

    .line 317
    .line 318
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string v7, "Full backup time but "

    .line 324
    .line 325
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    iget-object v7, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v7, " is busy; deferring to "

    .line 334
    .line 335
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    new-instance v7, Ljava/util/Date;

    .line 339
    .line 340
    invoke-direct {v7, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-static {v2, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    .line 362
    .line 363
    sub-long/2addr v13, v4

    .line 364
    invoke-virtual {v15, v13, v14, v0}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(JLjava/lang/String;)V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 365
    .line 366
    .line 367
    goto :goto_a

    .line 368
    :catch_1
    :goto_7
    move-wide/from16 v19, v6

    .line 369
    .line 370
    goto :goto_8

    .line 371
    :catch_2
    move v11, v1

    .line 372
    goto :goto_7

    .line 373
    :cond_b
    move v11, v1

    .line 374
    move-wide/from16 v19, v6

    .line 375
    .line 376
    goto :goto_a

    .line 377
    :catch_3
    move-wide/from16 v17, v1

    .line 378
    .line 379
    goto :goto_5

    .line 380
    :catch_4
    :goto_8
    :try_start_8
    iget-object v0, v15, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    const/4 v1, 0x1

    .line 387
    if-le v0, v1, :cond_c

    .line 388
    .line 389
    const/4 v0, 0x1

    .line 390
    goto :goto_9

    .line 391
    :cond_c
    const/4 v0, 0x0

    .line 392
    :goto_9
    move v8, v0

    .line 393
    goto :goto_a

    .line 394
    :cond_d
    move-wide/from16 v17, v1

    .line 395
    .line 396
    move-wide/from16 v19, v6

    .line 397
    .line 398
    const/4 v11, 0x0

    .line 399
    :goto_a
    if-nez v11, :cond_11

    .line 400
    .line 401
    goto/16 :goto_4

    .line 402
    .line 403
    :goto_b
    if-eqz v14, :cond_f

    .line 404
    .line 405
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    .line 406
    .line 407
    const/4 v13, 0x1

    .line 408
    invoke-direct {v8, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 409
    .line 410
    .line 411
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    .line 412
    .line 413
    filled-new-array {v0}, [Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 417
    :try_start_9
    iget-object v3, v15, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 418
    .line 419
    const-string v0, "BMS.beginFullBackup()"

    .line 420
    .line 421
    const/4 v1, 0x0

    .line 422
    invoke-virtual {v15, v1}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 423
    .line 424
    .line 425
    move-result-object v16

    .line 426
    iget-object v1, v15, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 427
    .line 428
    invoke-virtual {v1, v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    if-eqz v4, :cond_e

    .line 433
    .line 434
    new-instance v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$$ExternalSyntheticLambda0;

    .line 435
    .line 436
    invoke-direct {v0, v1, v4}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 437
    .line 438
    .line 439
    new-instance v9, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 440
    .line 441
    const/16 v17, 0x0

    .line 442
    .line 443
    const/16 v18, 0x0

    .line 444
    .line 445
    const/4 v6, 0x1

    .line 446
    const/16 v19, 0x0

    .line 447
    .line 448
    move-object v1, v9

    .line 449
    move-object v2, v15

    .line 450
    move-object/from16 v7, p0

    .line 451
    .line 452
    move-object/from16 v21, v9

    .line 453
    .line 454
    move-object/from16 v9, v19

    .line 455
    .line 456
    move-wide/from16 v22, v10

    .line 457
    .line 458
    move-object/from16 v10, v17

    .line 459
    .line 460
    move-object v11, v0

    .line 461
    move-object/from16 v24, v12

    .line 462
    .line 463
    move/from16 v12, v18

    .line 464
    .line 465
    move/from16 v25, v13

    .line 466
    .line 467
    move-object/from16 v13, v16

    .line 468
    .line 469
    :try_start_a
    invoke-direct/range {v1 .. v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 470
    .line 471
    .line 472
    move-object/from16 v0, v21

    .line 473
    .line 474
    iput-object v0, v15, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 475
    .line 476
    goto :goto_d

    .line 477
    :catchall_1
    move-exception v0

    .line 478
    goto/16 :goto_f

    .line 479
    .line 480
    :catch_5
    move-exception v0

    .line 481
    goto :goto_c

    .line 482
    :cond_e
    move-wide/from16 v22, v10

    .line 483
    .line 484
    move-object/from16 v24, v12

    .line 485
    .line 486
    move/from16 v25, v13

    .line 487
    .line 488
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 489
    .line 490
    const-string v1, "No TransportConnection available"

    .line 491
    .line 492
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    throw v0
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 496
    :catch_6
    move-exception v0

    .line 497
    move-wide/from16 v22, v10

    .line 498
    .line 499
    move-object/from16 v24, v12

    .line 500
    .line 501
    move/from16 v25, v13

    .line 502
    .line 503
    :goto_c
    :try_start_b
    const-string v1, "BackupManagerService"

    .line 504
    .line 505
    const-string v2, "Failed to start backup"

    .line 506
    .line 507
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    .line 509
    .line 510
    const/4 v1, 0x0

    .line 511
    goto :goto_e

    .line 512
    :cond_f
    move-wide/from16 v22, v10

    .line 513
    .line 514
    move-object/from16 v24, v12

    .line 515
    .line 516
    const/16 v25, 0x1

    .line 517
    .line 518
    :goto_d
    move v1, v14

    .line 519
    :goto_e
    if-nez v1, :cond_10

    .line 520
    .line 521
    const-string v0, "BackupManagerService"

    .line 522
    .line 523
    iget v1, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 524
    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    .line 526
    .line 527
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .line 529
    .line 530
    const-string v3, "Nothing pending full backup or failed to start the operation; rescheduling +"

    .line 531
    .line 532
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    move-wide/from16 v9, v22

    .line 536
    .line 537
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .line 550
    .line 551
    iget v0, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 552
    .line 553
    iget-object v1, v15, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 554
    .line 555
    invoke-static {v0, v1, v9, v10, v15}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/UserBackupManagerService;)V

    .line 556
    .line 557
    .line 558
    monitor-exit v24

    .line 559
    const/4 v1, 0x0

    .line 560
    const/4 v13, 0x0

    .line 561
    goto :goto_11

    .line 562
    :cond_10
    iget-object v0, v15, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 563
    .line 564
    const/4 v1, 0x0

    .line 565
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    iget-object v0, v15, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 569
    .line 570
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 571
    .line 572
    .line 573
    new-instance v0, Ljava/lang/Thread;

    .line 574
    .line 575
    iget-object v2, v15, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 576
    .line 577
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 581
    .line 582
    .line 583
    monitor-exit v24

    .line 584
    move/from16 v13, v25

    .line 585
    .line 586
    goto :goto_11

    .line 587
    :cond_11
    move-object/from16 v0, p0

    .line 588
    .line 589
    move-wide/from16 v1, v17

    .line 590
    .line 591
    move-wide/from16 v6, v19

    .line 592
    .line 593
    const/4 v14, 0x0

    .line 594
    goto/16 :goto_1

    .line 595
    .line 596
    :goto_f
    monitor-exit v24
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 597
    throw v0

    .line 598
    :goto_10
    move v13, v1

    .line 599
    :goto_11
    if-eqz v13, :cond_13

    .line 600
    .line 601
    move/from16 v14, v25

    .line 602
    .line 603
    goto :goto_12

    .line 604
    :catchall_2
    move-exception v0

    .line 605
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 606
    throw v0

    .line 607
    :cond_12
    move v1, v14

    .line 608
    :cond_13
    move v14, v1

    .line 609
    :goto_12
    return v14

    .line 610
    :catchall_3
    move-exception v0

    .line 611
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 612
    throw v0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "userId"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return v1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    sget-object p0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    .line 30
    .line 31
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string/jumbo v0, "endFullBackup()"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    new-instance p1, Lcom/android/server/backup/UserBackupManagerService$1;

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-direct {p1, v0, p0}, Lcom/android/server/backup/UserBackupManagerService$1;-><init>(ILcom/android/server/backup/UserBackupManagerService;)V

    .line 54
    .line 55
    .line 56
    new-instance p0, Ljava/lang/Thread;

    .line 57
    .line 58
    const-string/jumbo v0, "end-full-backup"

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    return v1

    .line 68
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0
.end method
