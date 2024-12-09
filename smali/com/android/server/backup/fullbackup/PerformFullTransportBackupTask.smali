.class public final Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

.field public final mBackupObserver:Landroid/app/backup/IBackupObserver;

.field public mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

.field public final mBackupRunnerOpToken:I

.field public volatile mCancelAll:Z

.field public final mCancelLock:Ljava/lang/Object;

.field public final mCurrentOpToken:I

.field public final mCurrentPackage:Landroid/content/pm/PackageInfo;

.field public volatile mIsDoingBackup:Z

.field public final mJob:Lcom/android/server/backup/FullBackupJob;

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public final mPackages:Ljava/util/List;

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public mUpdateSchedule:Z

.field public final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mUserId:I

.field public final mUserInitiated:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 17
    .line 18
    iput-boolean p5, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 19
    .line 20
    iput-object p7, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 21
    .line 22
    iput-object p6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 23
    .line 24
    new-instance p2, Ljava/util/ArrayList;

    .line 25
    .line 26
    array-length p3, p4

    .line 27
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 31
    .line 32
    iput-object p8, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 33
    .line 34
    if-eqz p10, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-object p10, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    :goto_0
    iput-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 40
    .line 41
    iput-boolean p11, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 54
    .line 55
    new-instance p2, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 56
    .line 57
    invoke-direct {p2, p9}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    .line 58
    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 61
    .line 62
    iget-object p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 63
    .line 64
    const-string p3, "Timeout parameters cannot be null"

    .line 65
    .line 66
    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 70
    .line 71
    iget p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 72
    .line 73
    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 74
    .line 75
    iput-object p12, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    const-string p3, "PFTBT"

    .line 82
    .line 83
    if-eqz p2, :cond_1

    .line 84
    .line 85
    const-string p1, "Skipping full backup. A backup is already in progress."

    .line 86
    .line 87
    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    array-length p2, p4

    .line 95
    const/4 p5, 0x0

    .line 96
    :goto_1
    if-ge p5, p2, :cond_5

    .line 97
    .line 98
    aget-object p6, p4, p5

    .line 99
    .line 100
    const/4 p7, 0x3

    .line 101
    :try_start_0
    iget-object p8, p1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 102
    .line 103
    iget p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 104
    .line 105
    const/high16 p10, 0x8000000

    .line 106
    .line 107
    invoke-virtual {p8, p6, p10, p9}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 108
    .line 109
    .line 110
    move-result-object p8

    .line 111
    iput-object p8, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 112
    .line 113
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 114
    .line 115
    iget-object p10, p8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 116
    .line 117
    invoke-virtual {p9, p10}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    .line 118
    .line 119
    .line 120
    move-result p9

    .line 121
    const/16 p10, -0x7d1

    .line 122
    .line 123
    if-nez p9, :cond_2

    .line 124
    .line 125
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 126
    .line 127
    const/16 p11, 0x9

    .line 128
    .line 129
    invoke-virtual {p9, p11, p8, p7, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 130
    .line 131
    .line 132
    iget-object p8, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 133
    .line 134
    invoke-static {p8, p6, p10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_2
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 139
    .line 140
    invoke-virtual {p9, p8}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    .line 141
    .line 142
    .line 143
    move-result p9

    .line 144
    if-nez p9, :cond_3

    .line 145
    .line 146
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 147
    .line 148
    const/16 p11, 0xa

    .line 149
    .line 150
    invoke-virtual {p9, p11, p8, p7, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 151
    .line 152
    .line 153
    iget-object p8, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 154
    .line 155
    invoke-static {p8, p6, p10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_3
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 160
    .line 161
    iget-object p11, p8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 162
    .line 163
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-static {p11}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    .line 167
    .line 168
    .line 169
    move-result p9

    .line 170
    if-eqz p9, :cond_4

    .line 171
    .line 172
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 173
    .line 174
    const/16 p11, 0xb

    .line 175
    .line 176
    invoke-virtual {p9, p11, p8, p7, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 177
    .line 178
    .line 179
    iget-object p8, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 180
    .line 181
    invoke-static {p8, p6, p10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_4
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 186
    .line 187
    invoke-interface {p9, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :catch_0
    const-string p8, "Requested package "

    .line 192
    .line 193
    const-string p9, " not found; ignoring"

    .line 194
    .line 195
    invoke-static {p8, p6, p9, p3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object p6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 199
    .line 200
    const/16 p8, 0xc

    .line 201
    .line 202
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 203
    .line 204
    invoke-virtual {p6, p8, p9, p7, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 205
    .line 206
    .line 207
    :goto_2
    add-int/lit8 p5, p5, 0x1

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_5
    iget-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 211
    .line 212
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->filterUserFacingPackages(Ljava/util/List;)Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 217
    .line 218
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result p4

    .line 230
    if-eqz p4, :cond_6

    .line 231
    .line 232
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p4

    .line 236
    check-cast p4, Landroid/content/pm/PackageInfo;

    .line 237
    .line 238
    iget-object p4, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 239
    .line 240
    invoke-interface {p2, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string/jumbo p4, "backupmanager pftbt token="

    .line 247
    .line 248
    .line 249
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget p4, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 253
    .line 254
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p4

    .line 258
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 269
    .line 270
    iget p3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 271
    .line 272
    const/4 p4, 0x2

    .line 273
    check-cast p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 274
    .line 275
    invoke-virtual {p1, p3, p2, p0, p4}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->registerOperationForPackages(ILjava/util/Set;Lcom/android/server/backup/BackupRestoreTask;I)V

    .line 276
    .line 277
    .line 278
    return-void
.end method

.method public static cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .locals 5

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget-object v1, p0, v0

    .line 5
    .line 6
    const-string v2, "Unable to close pipe!"

    .line 7
    .line 8
    const-string v3, "PFTBT"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    aput-object v4, p0, v0

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 23
    aget-object v1, p0, v0

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    aput-object v4, p0, v0

    .line 28
    .line 29
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catch_1
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 0

    .line 1
    return-void
.end method

.method public final handleCancel(Z)V
    .locals 6

    .line 1
    const-string v0, "Error calling cancelFullBackup() on transport: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    const-string v2, "PFTBT"

    .line 9
    .line 10
    const-string v3, "Expected cancelAll to be true."

    .line 11
    .line 12
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const-string p0, "PFTBT"

    .line 23
    .line 24
    const-string p1, "Ignoring duplicate cancel call."

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :cond_1
    const/4 v2, 0x1

    .line 32
    iput-boolean v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 33
    .line 34
    iget-boolean v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 39
    .line 40
    iget v3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v4, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-direct {v4, v5, v2}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;-><init>(ILcom/android/server/backup/UserBackupManagerService;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 52
    .line 53
    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->cancelOperation(IZLjava/util/function/IntConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :try_start_1
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/backup/transport/TransportConnection;->getConnectedTransport()Lcom/android/server/backup/transport/BackupTransportClient;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    iget-object p1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 65
    .line 66
    .line 67
    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 69
    .line 70
    invoke-interface {p0, v2}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    .line 75
    .line 76
    :try_start_3
    invoke-virtual {p1, v2}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    invoke-virtual {p1, v2}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 82
    .line 83
    .line 84
    throw p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    :try_start_4
    const-string p1, "PFTBT"

    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_1
    monitor-exit v1

    .line 104
    return-void

    .line 105
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    throw p0
.end method

.method public final operationComplete(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final run()V
    .locals 32

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    const-string/jumbo v1, "full backup requested but enabled="

    .line 4
    .line 5
    .line 6
    const/4 v14, 0x0

    .line 7
    const-wide/16 v8, 0x0

    .line 8
    .line 9
    const/4 v15, 0x0

    .line 10
    :try_start_0
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_1f

    .line 11
    .line 12
    :try_start_1
    iget-boolean v3, v2, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_1e

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    :try_start_2
    iget-boolean v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    :cond_0
    const/16 v3, -0x7d3

    .line 21
    .line 22
    const/16 v6, -0x3e8

    .line 23
    .line 24
    goto/16 :goto_2c

    .line 25
    .line 26
    :cond_1
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 27
    .line 28
    const-string v2, "PFTBT.run()"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 31
    .line 32
    .line 33
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_18

    .line 34
    const/4 v7, 0x1

    .line 35
    if-nez v6, :cond_5

    .line 36
    .line 37
    :try_start_3
    const-string v1, "PFTBT"

    .line 38
    .line 39
    const-string v2, "Transport not present; full data backup not performed"

    .line 40
    .line 41
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 42
    .line 43
    .line 44
    :try_start_4
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 45
    .line 46
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 47
    .line 48
    const/16 v3, 0xf

    .line 49
    .line 50
    invoke-virtual {v1, v3, v2, v7, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 51
    .line 52
    .line 53
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const/16 v12, -0x7d3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/16 v12, -0x3e8

    .line 61
    .line 62
    :goto_0
    const-string v1, "PFTBT"

    .line 63
    .line 64
    const-string v2, "Full backup completed with status: "

    .line 65
    .line 66
    invoke-static {v12, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 70
    .line 71
    invoke-static {v1, v12}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 75
    .line 76
    .line 77
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    monitor-enter v1

    .line 93
    :try_start_5
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    .line 96
    .line 97
    .line 98
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 99
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 100
    .line 101
    const-string v2, "PFTBT.run()"

    .line 102
    .line 103
    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 109
    .line 110
    .line 111
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 112
    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    :goto_1
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 116
    .line 117
    invoke-virtual {v1, v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_2
    const-string v1, "PFTBT"

    .line 121
    .line 122
    const-string v2, "Full data backup pass finished."

    .line 123
    .line 124
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    move-object v2, v0

    .line 139
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 140
    throw v2

    .line 141
    :catchall_1
    move-exception v0

    .line 142
    move-object v2, v0

    .line 143
    move-object/from16 v25, v14

    .line 144
    .line 145
    const/16 v3, -0x7d3

    .line 146
    .line 147
    const/16 v12, -0x3e8

    .line 148
    .line 149
    goto/16 :goto_38

    .line 150
    .line 151
    :catch_0
    move-exception v0

    .line 152
    move-object v2, v0

    .line 153
    move-object/from16 v25, v14

    .line 154
    .line 155
    :goto_3
    const/16 v3, -0x7d3

    .line 156
    .line 157
    :goto_4
    const/16 v6, -0x3e8

    .line 158
    .line 159
    goto/16 :goto_35

    .line 160
    .line 161
    :catchall_2
    move-exception v0

    .line 162
    move-object v2, v0

    .line 163
    move-object/from16 v25, v14

    .line 164
    .line 165
    move v12, v15

    .line 166
    const/16 v3, -0x7d3

    .line 167
    .line 168
    goto/16 :goto_38

    .line 169
    .line 170
    :cond_5
    :try_start_7
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 171
    .line 172
    iget-object v2, v1, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_18

    .line 173
    .line 174
    if-nez v2, :cond_6

    .line 175
    .line 176
    :try_start_8
    invoke-virtual {v6}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupManagerMonitor()Landroid/app/backup/IBackupManagerMonitor;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    iput-object v2, v1, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :catch_1
    :try_start_9
    const-string v1, "PFTBT"

    .line 184
    .line 185
    const-string v2, "Failed to retrieve monitor from transport"

    .line 186
    .line 187
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 188
    .line 189
    .line 190
    :cond_6
    :goto_5
    :try_start_a
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 191
    .line 192
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    invoke-static {}, Lcom/android/server/backup/Flags;->enableMaxSizeWritesToPipes()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_7

    .line 201
    .line 202
    const/high16 v1, 0x10000

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_7
    const/16 v1, 0x2000

    .line 206
    .line 207
    :goto_6
    new-array v4, v1, [B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_18

    .line 208
    .line 209
    move-wide/from16 v16, v8

    .line 210
    .line 211
    move-object v1, v14

    .line 212
    move-object v2, v1

    .line 213
    move v3, v15

    .line 214
    :goto_7
    if-ge v3, v5, :cond_8

    .line 215
    .line 216
    :try_start_b
    iput-object v14, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 217
    .line 218
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 219
    .line 220
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    move-object v9, v8

    .line 225
    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 226
    .line 227
    iget-object v8, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 228
    .line 229
    const-string v12, "PFTBT"

    .line 230
    .line 231
    new-instance v13, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v11, "Initiating full-data transport backup of "

    .line 237
    .line 238
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v11, " token: "

    .line 245
    .line 246
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 250
    .line 251
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v11

    .line 258
    invoke-static {v12, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    const/16 v11, 0xb18

    .line 262
    .line 263
    invoke-static {v11, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 264
    .line 265
    .line 266
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 267
    .line 268
    .line 269
    move-result-object v11
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_16

    .line 270
    :try_start_c
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 271
    .line 272
    iget-object v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 273
    .line 274
    monitor-enter v12
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_15

    .line 275
    :try_start_d
    iget-boolean v13, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_12

    .line 276
    .line 277
    if-eqz v13, :cond_9

    .line 278
    .line 279
    :try_start_e
    monitor-exit v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 280
    move-object v2, v11

    .line 281
    :cond_8
    const/16 v3, -0x7d3

    .line 282
    .line 283
    goto/16 :goto_29

    .line 284
    .line 285
    :catchall_3
    move-exception v0

    .line 286
    move-object v14, v1

    .line 287
    move-object/from16 v25, v11

    .line 288
    .line 289
    :goto_8
    const/16 v3, -0x7d3

    .line 290
    .line 291
    const/16 v6, -0x3e8

    .line 292
    .line 293
    :goto_9
    move-object v1, v0

    .line 294
    goto/16 :goto_26

    .line 295
    .line 296
    :cond_9
    :try_start_f
    aget-object v13, v11, v15

    .line 297
    .line 298
    invoke-virtual {v6, v9, v13, v2}, Lcom/android/server/backup/transport/BackupTransportClient;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    .line 299
    .line 300
    .line 301
    move-result v13
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_12

    .line 302
    if-nez v13, :cond_a

    .line 303
    .line 304
    :try_start_10
    iget-object v2, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {v6, v2, v7}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupQuota(Ljava/lang/String;Z)J

    .line 307
    .line 308
    .line 309
    move-result-wide v20

    .line 310
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 311
    .line 312
    .line 313
    move-result-object v22
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 314
    :try_start_11
    new-instance v2, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 315
    .line 316
    aget-object v23, v22, v7

    .line 317
    .line 318
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 319
    .line 320
    iget v15, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 321
    .line 322
    invoke-virtual {v6}, Lcom/android/server/backup/transport/BackupTransportClient;->getTransportFlags()I

    .line 323
    .line 324
    .line 325
    move-result v24
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 326
    move-object/from16 v25, v1

    .line 327
    .line 328
    move-object v1, v2

    .line 329
    move-object v14, v2

    .line 330
    move-object/from16 v2, p0

    .line 331
    .line 332
    move/from16 v26, v3

    .line 333
    .line 334
    move-object/from16 v3, v23

    .line 335
    .line 336
    move-object/from16 v27, v4

    .line 337
    .line 338
    move-object v4, v9

    .line 339
    move/from16 v23, v5

    .line 340
    .line 341
    move-object/from16 v5, v25

    .line 342
    .line 343
    move-object/from16 v28, v6

    .line 344
    .line 345
    move-object/from16 v25, v11

    .line 346
    .line 347
    move v11, v7

    .line 348
    move-wide/from16 v6, v20

    .line 349
    .line 350
    move-object/from16 v29, v8

    .line 351
    .line 352
    move v8, v15

    .line 353
    move-object v15, v9

    .line 354
    move/from16 v9, v24

    .line 355
    .line 356
    :try_start_12
    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportConnection;JII)V

    .line 357
    .line 358
    .line 359
    iput-object v14, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 360
    .line 361
    aget-object v1, v22, v11

    .line 362
    .line 363
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 364
    .line 365
    .line 366
    const/4 v1, 0x0

    .line 367
    aput-object v1, v22, v11

    .line 368
    .line 369
    iput-boolean v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 370
    .line 371
    move-wide/from16 v2, v20

    .line 372
    .line 373
    move-object/from16 v1, v22

    .line 374
    .line 375
    goto :goto_b

    .line 376
    :catchall_4
    move-exception v0

    .line 377
    :goto_a
    move-object v1, v0

    .line 378
    move-object/from16 v14, v22

    .line 379
    .line 380
    const/16 v3, -0x7d3

    .line 381
    .line 382
    const/16 v6, -0x3e8

    .line 383
    .line 384
    goto/16 :goto_26

    .line 385
    .line 386
    :catchall_5
    move-exception v0

    .line 387
    move-object/from16 v25, v11

    .line 388
    .line 389
    goto :goto_a

    .line 390
    :catchall_6
    move-exception v0

    .line 391
    move-object/from16 v25, v11

    .line 392
    .line 393
    move-object v14, v1

    .line 394
    goto :goto_8

    .line 395
    :cond_a
    move/from16 v26, v3

    .line 396
    .line 397
    move-object/from16 v27, v4

    .line 398
    .line 399
    move/from16 v23, v5

    .line 400
    .line 401
    move-object/from16 v28, v6

    .line 402
    .line 403
    move-object/from16 v29, v8

    .line 404
    .line 405
    move-object v15, v9

    .line 406
    move-object/from16 v25, v11

    .line 407
    .line 408
    move v11, v7

    .line 409
    const-wide v20, 0x7fffffffffffffffL

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    move-wide/from16 v2, v20

    .line 415
    .line 416
    :goto_b
    :try_start_13
    monitor-exit v12
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    .line 417
    if-nez v13, :cond_16

    .line 418
    .line 419
    const/4 v5, 0x0

    .line 420
    :try_start_14
    aget-object v6, v25, v5

    .line 421
    .line 422
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 423
    .line 424
    .line 425
    const/4 v6, 0x0

    .line 426
    aput-object v6, v25, v5

    .line 427
    .line 428
    new-instance v5, Ljava/lang/Thread;

    .line 429
    .line 430
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 431
    .line 432
    const-string/jumbo v7, "package-backup-bridge"

    .line 433
    .line 434
    .line 435
    invoke-direct {v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 439
    .line 440
    .line 441
    new-instance v5, Ljava/io/FileInputStream;

    .line 442
    .line 443
    const/4 v6, 0x0

    .line 444
    aget-object v7, v1, v6

    .line 445
    .line 446
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 451
    .line 452
    .line 453
    new-instance v6, Ljava/io/FileOutputStream;

    .line 454
    .line 455
    aget-object v7, v25, v11

    .line 456
    .line 457
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 458
    .line 459
    .line 460
    move-result-object v7

    .line 461
    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 462
    .line 463
    .line 464
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 465
    .line 466
    invoke-virtual {v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    .line 467
    .line 468
    .line 469
    move-result-wide v7

    .line 470
    const-wide/16 v11, 0x0

    .line 471
    .line 472
    cmp-long v14, v7, v11

    .line 473
    .line 474
    if-gez v14, :cond_b

    .line 475
    .line 476
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 477
    .line 478
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 479
    .line 480
    const-string v5, "android.app.backup.extra.LOG_PREFLIGHT_ERROR"
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 481
    .line 482
    :try_start_15
    new-instance v6, Landroid/os/Bundle;

    .line 483
    .line 484
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 488
    .line 489
    .line 490
    const/16 v5, 0x10

    .line 491
    .line 492
    const/4 v13, 0x3

    .line 493
    :try_start_16
    invoke-virtual {v2, v5, v3, v13, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 494
    .line 495
    .line 496
    long-to-int v2, v7

    .line 497
    move-object/from16 v4, v28

    .line 498
    .line 499
    move-object/from16 v5, v29

    .line 500
    .line 501
    const/4 v14, 0x1

    .line 502
    goto/16 :goto_18

    .line 503
    .line 504
    :catchall_7
    move-exception v0

    .line 505
    :goto_c
    move-object v2, v0

    .line 506
    move-object v14, v1

    .line 507
    move-wide/from16 v8, v16

    .line 508
    .line 509
    :goto_d
    const/16 v3, -0x7d3

    .line 510
    .line 511
    :goto_e
    const/4 v12, 0x0

    .line 512
    goto/16 :goto_38

    .line 513
    .line 514
    :catch_2
    move-exception v0

    .line 515
    :goto_f
    move-object v2, v0

    .line 516
    move-object v14, v1

    .line 517
    move-wide/from16 v8, v16

    .line 518
    .line 519
    goto/16 :goto_3

    .line 520
    .line 521
    :catchall_8
    move-exception v0

    .line 522
    goto :goto_c

    .line 523
    :catch_3
    move-exception v0

    .line 524
    goto :goto_f

    .line 525
    :cond_b
    move-wide/from16 v18, v11

    .line 526
    .line 527
    move-object/from16 v9, v27

    .line 528
    .line 529
    :goto_10
    invoke-virtual {v5, v9}, Ljava/io/FileInputStream;->read([B)I

    .line 530
    .line 531
    .line 532
    move-result v11

    .line 533
    if-lez v11, :cond_e

    .line 534
    .line 535
    const/4 v12, 0x0

    .line 536
    invoke-virtual {v6, v9, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 537
    .line 538
    .line 539
    iget-object v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 540
    .line 541
    monitor-enter v12
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 542
    :try_start_17
    iget-boolean v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 543
    .line 544
    if-nez v4, :cond_c

    .line 545
    .line 546
    move-object/from16 v4, v28

    .line 547
    .line 548
    invoke-virtual {v4, v11}, Lcom/android/server/backup/transport/BackupTransportClient;->sendBackupData(I)I

    .line 549
    .line 550
    .line 551
    move-result v13

    .line 552
    goto :goto_11

    .line 553
    :catchall_9
    move-exception v0

    .line 554
    move-object v2, v0

    .line 555
    goto :goto_13

    .line 556
    :cond_c
    move-object/from16 v4, v28

    .line 557
    .line 558
    :goto_11
    monitor-exit v12
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 559
    move-object/from16 v22, v5

    .line 560
    .line 561
    move-object/from16 v24, v6

    .line 562
    .line 563
    int-to-long v5, v11

    .line 564
    add-long v5, v18, v5

    .line 565
    .line 566
    :try_start_18
    iget-object v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 567
    .line 568
    if-eqz v12, :cond_d

    .line 569
    .line 570
    if-lez v14, :cond_d

    .line 571
    .line 572
    move-object/from16 v27, v9

    .line 573
    .line 574
    new-instance v9, Landroid/app/backup/BackupProgress;

    .line 575
    .line 576
    invoke-direct {v9, v7, v8, v5, v6}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    .line 577
    .line 578
    .line 579
    move-wide/from16 v18, v5

    .line 580
    .line 581
    move-object/from16 v5, v29

    .line 582
    .line 583
    invoke-static {v12, v5, v9}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 584
    .line 585
    .line 586
    goto :goto_12

    .line 587
    :cond_d
    move-wide/from16 v18, v5

    .line 588
    .line 589
    move-object/from16 v27, v9

    .line 590
    .line 591
    goto :goto_14

    .line 592
    :goto_12
    move-wide/from16 v30, v7

    .line 593
    .line 594
    move-wide/from16 v6, v18

    .line 595
    .line 596
    move-wide/from16 v18, v30

    .line 597
    .line 598
    goto :goto_15

    .line 599
    :goto_13
    :try_start_19
    monitor-exit v12
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 600
    :try_start_1a
    throw v2

    .line 601
    :cond_e
    move-object/from16 v22, v5

    .line 602
    .line 603
    move-object/from16 v24, v6

    .line 604
    .line 605
    move-object/from16 v27, v9

    .line 606
    .line 607
    move-object/from16 v4, v28

    .line 608
    .line 609
    :goto_14
    move-object/from16 v5, v29

    .line 610
    .line 611
    goto :goto_12

    .line 612
    :goto_15
    if-lez v11, :cond_f

    .line 613
    .line 614
    if-eqz v13, :cond_10

    .line 615
    .line 616
    :cond_f
    const/16 v8, -0x3ed

    .line 617
    .line 618
    goto :goto_16

    .line 619
    :cond_10
    move-object/from16 v28, v4

    .line 620
    .line 621
    move-object/from16 v29, v5

    .line 622
    .line 623
    move-object/from16 v5, v22

    .line 624
    .line 625
    move-object/from16 v9, v27

    .line 626
    .line 627
    move-wide/from16 v30, v6

    .line 628
    .line 629
    move-object/from16 v6, v24

    .line 630
    .line 631
    move-wide/from16 v7, v18

    .line 632
    .line 633
    move-wide/from16 v18, v30

    .line 634
    .line 635
    goto :goto_10

    .line 636
    :goto_16
    if-ne v13, v8, :cond_11

    .line 637
    .line 638
    const-string v8, "PFTBT"

    .line 639
    .line 640
    new-instance v9, Ljava/lang/StringBuilder;

    .line 641
    .line 642
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    .line 644
    .line 645
    const-string v11, "Package hit quota limit in-flight "

    .line 646
    .line 647
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    const-string v11, ": "

    .line 654
    .line 655
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    const-string v11, " of "

    .line 662
    .line 663
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v9

    .line 673
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    .line 675
    .line 676
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 677
    .line 678
    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 679
    .line 680
    const/16 v11, 0x12

    .line 681
    .line 682
    const/4 v12, 0x0

    .line 683
    const/4 v14, 0x1

    .line 684
    invoke-virtual {v8, v11, v9, v14, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 685
    .line 686
    .line 687
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 688
    .line 689
    invoke-virtual {v8, v6, v7, v2, v3}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V

    .line 690
    .line 691
    .line 692
    goto :goto_17

    .line 693
    :cond_11
    const/4 v14, 0x1

    .line 694
    :goto_17
    move v2, v13

    .line 695
    :goto_18
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 696
    .line 697
    invoke-virtual {v3}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    .line 698
    .line 699
    .line 700
    move-result v3

    .line 701
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 702
    .line 703
    monitor-enter v6
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 704
    const/4 v7, 0x0

    .line 705
    :try_start_1b
    iput-boolean v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    .line 706
    .line 707
    iget-boolean v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 708
    .line 709
    if-nez v7, :cond_13

    .line 710
    .line 711
    if-nez v3, :cond_12

    .line 712
    .line 713
    invoke-virtual {v4}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I

    .line 714
    .line 715
    .line 716
    move-result v7

    .line 717
    if-nez v2, :cond_13

    .line 718
    .line 719
    move v2, v7

    .line 720
    goto :goto_19

    .line 721
    :catchall_a
    move-exception v0

    .line 722
    move-object v2, v0

    .line 723
    goto/16 :goto_1b

    .line 724
    .line 725
    :cond_12
    iget-object v7, v4, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 726
    .line 727
    invoke-virtual {v7}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 728
    .line 729
    .line 730
    move-result-object v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    .line 731
    :try_start_1c
    iget-object v9, v4, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 732
    .line 733
    invoke-interface {v9, v8}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v8}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    .line 737
    .line 738
    .line 739
    :try_start_1d
    invoke-virtual {v7, v8}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 740
    .line 741
    .line 742
    goto :goto_19

    .line 743
    :catchall_b
    move-exception v0

    .line 744
    move-object v2, v0

    .line 745
    invoke-virtual {v7, v8}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 746
    .line 747
    .line 748
    throw v2

    .line 749
    :cond_13
    :goto_19
    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 750
    if-nez v2, :cond_14

    .line 751
    .line 752
    if-eqz v3, :cond_14

    .line 753
    .line 754
    move v13, v3

    .line 755
    goto :goto_1a

    .line 756
    :cond_14
    move v13, v2

    .line 757
    :goto_1a
    if-eqz v13, :cond_15

    .line 758
    .line 759
    :try_start_1e
    const-string v2, "PFTBT"

    .line 760
    .line 761
    new-instance v3, Ljava/lang/StringBuilder;

    .line 762
    .line 763
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    .line 765
    .line 766
    const-string v6, "Error "

    .line 767
    .line 768
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    const-string v6, " backing up "

    .line 775
    .line 776
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    .line 778
    .line 779
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v3

    .line 786
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .line 788
    .line 789
    :cond_15
    invoke-virtual {v4}, Lcom/android/server/backup/transport/BackupTransportClient;->requestFullBackupTime()J

    .line 790
    .line 791
    .line 792
    move-result-wide v8
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_2
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 793
    :try_start_1f
    const-string v2, "PFTBT"

    .line 794
    .line 795
    new-instance v3, Ljava/lang/StringBuilder;

    .line 796
    .line 797
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 798
    .line 799
    .line 800
    const-string v6, "Transport suggested backoff="

    .line 801
    .line 802
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v3

    .line 812
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_4
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    .line 813
    .line 814
    .line 815
    goto :goto_1c

    .line 816
    :catchall_c
    move-exception v0

    .line 817
    move-object v2, v0

    .line 818
    move-object v14, v1

    .line 819
    goto/16 :goto_d

    .line 820
    .line 821
    :catch_4
    move-exception v0

    .line 822
    move-object v2, v0

    .line 823
    move-object v14, v1

    .line 824
    goto/16 :goto_3

    .line 825
    .line 826
    :goto_1b
    :try_start_20
    monitor-exit v6
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 827
    :try_start_21
    throw v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_2
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    .line 828
    :cond_16
    move v14, v11

    .line 829
    move-object/from16 v4, v28

    .line 830
    .line 831
    move-object/from16 v5, v29

    .line 832
    .line 833
    move-wide/from16 v8, v16

    .line 834
    .line 835
    :goto_1c
    :try_start_22
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    .line 836
    .line 837
    if-eqz v2, :cond_17

    .line 838
    .line 839
    :try_start_23
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 840
    .line 841
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 842
    .line 843
    .line 844
    move-result-wide v6

    .line 845
    invoke-virtual {v2, v6, v7, v5}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(JLjava/lang/String;)V

    .line 846
    .line 847
    .line 848
    :cond_17
    const/16 v2, -0x3ea

    .line 849
    .line 850
    if-ne v13, v2, :cond_19

    .line 851
    .line 852
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 853
    .line 854
    invoke-static {v3, v5, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 855
    .line 856
    .line 857
    const-string v2, "PFTBT"

    .line 858
    .line 859
    new-instance v3, Ljava/lang/StringBuilder;

    .line 860
    .line 861
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 862
    .line 863
    .line 864
    const-string v6, "Transport rejected backup of "

    .line 865
    .line 866
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    .line 868
    .line 869
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    const-string v6, ", skipping"

    .line 873
    .line 874
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v3

    .line 881
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    .line 883
    .line 884
    const-string/jumbo v2, "transport rejected"

    .line 885
    .line 886
    .line 887
    filled-new-array {v5, v2}, [Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    move-result-object v2

    .line 891
    const/16 v3, 0xb19

    .line 892
    .line 893
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 894
    .line 895
    .line 896
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 897
    .line 898
    if-eqz v2, :cond_18

    .line 899
    .line 900
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 901
    .line 902
    iget-object v3, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 903
    .line 904
    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 905
    .line 906
    .line 907
    :cond_18
    :goto_1d
    const/16 v3, -0x7d3

    .line 908
    .line 909
    :goto_1e
    const/16 v6, -0x3e8

    .line 910
    .line 911
    goto/16 :goto_24

    .line 912
    .line 913
    :cond_19
    const/16 v2, -0x3ed

    .line 914
    .line 915
    if-ne v13, v2, :cond_1a

    .line 916
    .line 917
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 918
    .line 919
    invoke-static {v3, v5, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 920
    .line 921
    .line 922
    const-string v2, "PFTBT"

    .line 923
    .line 924
    new-instance v3, Ljava/lang/StringBuilder;

    .line 925
    .line 926
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    .line 928
    .line 929
    const-string v6, "Transport quota exceeded for package: "

    .line 930
    .line 931
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    .line 936
    .line 937
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v3

    .line 941
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    .line 943
    .line 944
    const/16 v2, 0xb1d

    .line 945
    .line 946
    invoke-static {v2, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 947
    .line 948
    .line 949
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 950
    .line 951
    iget-object v3, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 952
    .line 953
    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 954
    .line 955
    .line 956
    goto :goto_1d

    .line 957
    :cond_1a
    const/16 v2, -0x3eb

    .line 958
    .line 959
    if-ne v13, v2, :cond_1b

    .line 960
    .line 961
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 962
    .line 963
    invoke-static {v3, v5, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 964
    .line 965
    .line 966
    const-string v2, "PFTBT"

    .line 967
    .line 968
    new-instance v3, Ljava/lang/StringBuilder;

    .line 969
    .line 970
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    .line 972
    .line 973
    const-string v6, "Application failure for package: "

    .line 974
    .line 975
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    .line 977
    .line 978
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    .line 980
    .line 981
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v3

    .line 985
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    .line 987
    .line 988
    const/16 v2, 0xb07

    .line 989
    .line 990
    invoke-static {v2, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 991
    .line 992
    .line 993
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 994
    .line 995
    iget-object v3, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 996
    .line 997
    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_4
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    .line 998
    .line 999
    .line 1000
    goto :goto_1d

    .line 1001
    :cond_1b
    const/16 v3, -0x7d3

    .line 1002
    .line 1003
    if-ne v13, v3, :cond_1c

    .line 1004
    .line 1005
    :try_start_24
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 1006
    .line 1007
    invoke-static {v2, v5, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1008
    .line 1009
    .line 1010
    const-string v2, "PFTBT"

    .line 1011
    .line 1012
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1015
    .line 1016
    .line 1017
    const-string v7, "Backup cancelled. package="

    .line 1018
    .line 1019
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    .line 1025
    const-string v7, ", cancelAll="

    .line 1026
    .line 1027
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    .line 1030
    iget-boolean v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 1031
    .line 1032
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v6

    .line 1039
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    .line 1041
    .line 1042
    const/16 v2, 0xb1e

    .line 1043
    .line 1044
    invoke-static {v2, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1045
    .line 1046
    .line 1047
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1048
    .line 1049
    iget-object v6, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1050
    .line 1051
    invoke-virtual {v2, v6}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_5
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    .line 1052
    .line 1053
    .line 1054
    goto/16 :goto_1e

    .line 1055
    .line 1056
    :catchall_d
    move-exception v0

    .line 1057
    :goto_1f
    move-object v2, v0

    .line 1058
    move-object v14, v1

    .line 1059
    goto/16 :goto_e

    .line 1060
    .line 1061
    :catch_5
    move-exception v0

    .line 1062
    move-object v2, v0

    .line 1063
    move-object v14, v1

    .line 1064
    goto/16 :goto_4

    .line 1065
    .line 1066
    :cond_1c
    if-eqz v13, :cond_1f

    .line 1067
    .line 1068
    :try_start_25
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_7
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    .line 1069
    .line 1070
    const/16 v6, -0x3e8

    .line 1071
    .line 1072
    :try_start_26
    invoke-static {v2, v5, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1073
    .line 1074
    .line 1075
    const-string v2, "PFTBT"

    .line 1076
    .line 1077
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    .line 1081
    .line 1082
    const-string v5, "Transport failed; aborting backup: "

    .line 1083
    .line 1084
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v4

    .line 1094
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    .line 1096
    .line 1097
    const/4 v2, 0x0

    .line 1098
    new-array v4, v2, [Ljava/lang/Object;

    .line 1099
    .line 1100
    const/16 v2, 0xb1a

    .line 1101
    .line 1102
    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_6
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    .line 1103
    .line 1104
    .line 1105
    :try_start_27
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1106
    .line 1107
    iget-object v4, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1108
    .line 1109
    invoke-virtual {v2, v4}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_6
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    .line 1110
    .line 1111
    .line 1112
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 1113
    .line 1114
    if-eqz v2, :cond_1d

    .line 1115
    .line 1116
    move v12, v3

    .line 1117
    goto :goto_20

    .line 1118
    :cond_1d
    move v12, v6

    .line 1119
    :goto_20
    const-string v2, "PFTBT"

    .line 1120
    .line 1121
    const-string v3, "Full backup completed with status: "

    .line 1122
    .line 1123
    invoke-static {v12, v3, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 1127
    .line 1128
    invoke-static {v2, v12}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1129
    .line 1130
    .line 1131
    invoke-static/range {v25 .. v25}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 1132
    .line 1133
    .line 1134
    invoke-static {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 1138
    .line 1139
    .line 1140
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 1141
    .line 1142
    if-eqz v1, :cond_1e

    .line 1143
    .line 1144
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 1145
    .line 1146
    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 1147
    .line 1148
    .line 1149
    :cond_1e
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1150
    .line 1151
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v2

    .line 1155
    monitor-enter v2

    .line 1156
    :try_start_28
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1157
    .line 1158
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    .line 1159
    .line 1160
    .line 1161
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    .line 1162
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 1163
    .line 1164
    const-string v2, "PFTBT.run()"

    .line 1165
    .line 1166
    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 1167
    .line 1168
    .line 1169
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1170
    .line 1171
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1172
    .line 1173
    .line 1174
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 1175
    .line 1176
    if-eqz v1, :cond_4

    .line 1177
    .line 1178
    goto/16 :goto_1

    .line 1179
    .line 1180
    :catchall_e
    move-exception v0

    .line 1181
    move-object v1, v0

    .line 1182
    :try_start_29
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    .line 1183
    throw v1

    .line 1184
    :catchall_f
    move-exception v0

    .line 1185
    move-object v2, v0

    .line 1186
    move-object v14, v1

    .line 1187
    :goto_21
    move v12, v6

    .line 1188
    goto/16 :goto_38

    .line 1189
    .line 1190
    :catch_6
    move-exception v0

    .line 1191
    :goto_22
    move-object v2, v0

    .line 1192
    move-object v14, v1

    .line 1193
    goto/16 :goto_35

    .line 1194
    .line 1195
    :catch_7
    move-exception v0

    .line 1196
    :goto_23
    const/16 v6, -0x3e8

    .line 1197
    .line 1198
    goto :goto_22

    .line 1199
    :cond_1f
    const/16 v6, -0x3e8

    .line 1200
    .line 1201
    :try_start_2a
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 1202
    .line 1203
    const/4 v7, 0x0

    .line 1204
    invoke-static {v2, v5, v7}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1205
    .line 1206
    .line 1207
    const/16 v2, 0xb1b

    .line 1208
    .line 1209
    invoke-static {v2, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1210
    .line 1211
    .line 1212
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1213
    .line 1214
    invoke-virtual {v2, v5}, Lcom/android/server/backup/UserBackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    .line 1215
    .line 1216
    .line 1217
    :goto_24
    invoke-static/range {v25 .. v25}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 1218
    .line 1219
    .line 1220
    invoke-static {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 1221
    .line 1222
    .line 1223
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1224
    .line 1225
    if-eqz v2, :cond_20

    .line 1226
    .line 1227
    const-string v2, "PFTBT"

    .line 1228
    .line 1229
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1230
    .line 1231
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1232
    .line 1233
    .line 1234
    const-string v11, "Unbinding agent in "

    .line 1235
    .line 1236
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    .line 1238
    .line 1239
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v5

    .line 1246
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_6
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    .line 1247
    .line 1248
    .line 1249
    :try_start_2b
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1250
    .line 1251
    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 1252
    .line 1253
    iget-object v5, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1254
    .line 1255
    invoke-interface {v2, v5}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_6
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    .line 1256
    .line 1257
    .line 1258
    :catch_8
    :cond_20
    add-int/lit8 v2, v26, 0x1

    .line 1259
    .line 1260
    move v3, v2

    .line 1261
    move-object v6, v4

    .line 1262
    move-wide/from16 v16, v8

    .line 1263
    .line 1264
    move v7, v14

    .line 1265
    move/from16 v5, v23

    .line 1266
    .line 1267
    move-object/from16 v2, v25

    .line 1268
    .line 1269
    move-object/from16 v4, v27

    .line 1270
    .line 1271
    const-wide/16 v8, 0x0

    .line 1272
    .line 1273
    const/4 v14, 0x0

    .line 1274
    const/4 v15, 0x0

    .line 1275
    goto/16 :goto_7

    .line 1276
    .line 1277
    :catchall_10
    move-exception v0

    .line 1278
    const/16 v3, -0x7d3

    .line 1279
    .line 1280
    goto/16 :goto_1f

    .line 1281
    .line 1282
    :catch_9
    move-exception v0

    .line 1283
    const/16 v3, -0x7d3

    .line 1284
    .line 1285
    goto :goto_23

    .line 1286
    :catchall_11
    move-exception v0

    .line 1287
    :goto_25
    const/16 v3, -0x7d3

    .line 1288
    .line 1289
    const/16 v6, -0x3e8

    .line 1290
    .line 1291
    move-object v14, v1

    .line 1292
    goto/16 :goto_9

    .line 1293
    .line 1294
    :catchall_12
    move-exception v0

    .line 1295
    move-object/from16 v25, v11

    .line 1296
    .line 1297
    goto :goto_25

    .line 1298
    :goto_26
    :try_start_2c
    monitor-exit v12
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_14

    .line 1299
    :try_start_2d
    throw v1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_a
    .catchall {:try_start_2d .. :try_end_2d} :catchall_13

    .line 1300
    :catchall_13
    move-exception v0

    .line 1301
    move-object v2, v0

    .line 1302
    :goto_27
    move-wide/from16 v8, v16

    .line 1303
    .line 1304
    goto/16 :goto_e

    .line 1305
    .line 1306
    :catch_a
    move-exception v0

    .line 1307
    move-object v2, v0

    .line 1308
    :goto_28
    move-wide/from16 v8, v16

    .line 1309
    .line 1310
    goto/16 :goto_35

    .line 1311
    .line 1312
    :catchall_14
    move-exception v0

    .line 1313
    goto/16 :goto_9

    .line 1314
    .line 1315
    :catchall_15
    move-exception v0

    .line 1316
    move-object/from16 v25, v11

    .line 1317
    .line 1318
    const/16 v3, -0x7d3

    .line 1319
    .line 1320
    move-object v2, v0

    .line 1321
    move-object v14, v1

    .line 1322
    goto :goto_27

    .line 1323
    :catch_b
    move-exception v0

    .line 1324
    move-object/from16 v25, v11

    .line 1325
    .line 1326
    const/16 v3, -0x7d3

    .line 1327
    .line 1328
    const/16 v6, -0x3e8

    .line 1329
    .line 1330
    move-object v2, v0

    .line 1331
    move-object v14, v1

    .line 1332
    goto :goto_28

    .line 1333
    :catchall_16
    move-exception v0

    .line 1334
    const/16 v3, -0x7d3

    .line 1335
    .line 1336
    move-object v14, v1

    .line 1337
    move-object/from16 v25, v2

    .line 1338
    .line 1339
    move-wide/from16 v8, v16

    .line 1340
    .line 1341
    const/4 v12, 0x0

    .line 1342
    move-object v2, v0

    .line 1343
    goto/16 :goto_38

    .line 1344
    .line 1345
    :catch_c
    move-exception v0

    .line 1346
    const/16 v3, -0x7d3

    .line 1347
    .line 1348
    const/16 v6, -0x3e8

    .line 1349
    .line 1350
    move-object v14, v1

    .line 1351
    move-object/from16 v25, v2

    .line 1352
    .line 1353
    move-wide/from16 v8, v16

    .line 1354
    .line 1355
    move-object v2, v0

    .line 1356
    goto/16 :goto_35

    .line 1357
    .line 1358
    :goto_29
    iget-boolean v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 1359
    .line 1360
    if-eqz v4, :cond_21

    .line 1361
    .line 1362
    move v13, v3

    .line 1363
    goto :goto_2a

    .line 1364
    :cond_21
    const/4 v13, 0x0

    .line 1365
    :goto_2a
    const-string v3, "PFTBT"

    .line 1366
    .line 1367
    const-string v4, "Full backup completed with status: "

    .line 1368
    .line 1369
    invoke-static {v13, v4, v3}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1370
    .line 1371
    .line 1372
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 1373
    .line 1374
    invoke-static {v3, v13}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1375
    .line 1376
    .line 1377
    invoke-static {v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 1378
    .line 1379
    .line 1380
    invoke-static {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 1384
    .line 1385
    .line 1386
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 1387
    .line 1388
    if-eqz v1, :cond_22

    .line 1389
    .line 1390
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 1391
    .line 1392
    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 1393
    .line 1394
    .line 1395
    :cond_22
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1396
    .line 1397
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v1

    .line 1401
    monitor-enter v1

    .line 1402
    :try_start_2e
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1403
    .line 1404
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    .line 1405
    .line 1406
    .line 1407
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_17

    .line 1408
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 1409
    .line 1410
    const-string v2, "PFTBT.run()"

    .line 1411
    .line 1412
    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 1413
    .line 1414
    .line 1415
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1416
    .line 1417
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1418
    .line 1419
    .line 1420
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 1421
    .line 1422
    if-eqz v1, :cond_23

    .line 1423
    .line 1424
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1425
    .line 1426
    move-wide/from16 v8, v16

    .line 1427
    .line 1428
    :goto_2b
    invoke-virtual {v1, v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 1429
    .line 1430
    .line 1431
    :cond_23
    const-string v1, "PFTBT"

    .line 1432
    .line 1433
    const-string v2, "Full data backup pass finished."

    .line 1434
    .line 1435
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    .line 1437
    .line 1438
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1439
    .line 1440
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v1

    .line 1444
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 1445
    .line 1446
    .line 1447
    goto/16 :goto_37

    .line 1448
    .line 1449
    :catchall_17
    move-exception v0

    .line 1450
    move-object v2, v0

    .line 1451
    :try_start_2f
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_17

    .line 1452
    throw v2

    .line 1453
    :catchall_18
    move-exception v0

    .line 1454
    const/16 v3, -0x7d3

    .line 1455
    .line 1456
    move-object v2, v0

    .line 1457
    const-wide/16 v8, 0x0

    .line 1458
    .line 1459
    const/4 v12, 0x0

    .line 1460
    const/4 v14, 0x0

    .line 1461
    const/16 v25, 0x0

    .line 1462
    .line 1463
    goto/16 :goto_38

    .line 1464
    .line 1465
    :catch_d
    move-exception v0

    .line 1466
    const/16 v3, -0x7d3

    .line 1467
    .line 1468
    const/16 v6, -0x3e8

    .line 1469
    .line 1470
    move-object v2, v0

    .line 1471
    const-wide/16 v8, 0x0

    .line 1472
    .line 1473
    const/4 v14, 0x0

    .line 1474
    const/16 v25, 0x0

    .line 1475
    .line 1476
    goto/16 :goto_35

    .line 1477
    .line 1478
    :goto_2c
    :try_start_30
    const-string v2, "PFTBT"

    .line 1479
    .line 1480
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1481
    .line 1482
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1483
    .line 1484
    .line 1485
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_f
    .catchall {:try_start_30 .. :try_end_30} :catchall_1c

    .line 1486
    .line 1487
    :try_start_31
    iget-boolean v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_10
    .catchall {:try_start_31 .. :try_end_31} :catchall_1d

    .line 1488
    .line 1489
    :try_start_32
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1490
    .line 1491
    .line 1492
    const-string v1, " setupComplete="

    .line 1493
    .line 1494
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    .line 1496
    .line 1497
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_f
    .catchall {:try_start_32 .. :try_end_32} :catchall_1c

    .line 1498
    .line 1499
    :try_start_33
    iget-boolean v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_10
    .catchall {:try_start_33 .. :try_end_33} :catchall_1d

    .line 1500
    .line 1501
    :try_start_34
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1502
    .line 1503
    .line 1504
    const-string v1, "; ignoring"

    .line 1505
    .line 1506
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v1

    .line 1513
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    .line 1515
    .line 1516
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_f
    .catchall {:try_start_34 .. :try_end_34} :catchall_1c

    .line 1517
    .line 1518
    :try_start_35
    iget-boolean v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_10
    .catchall {:try_start_35 .. :try_end_35} :catchall_1d

    .line 1519
    .line 1520
    if-eqz v1, :cond_24

    .line 1521
    .line 1522
    const/16 v1, 0xd

    .line 1523
    .line 1524
    goto :goto_2d

    .line 1525
    :cond_24
    const/16 v1, 0xe

    .line 1526
    .line 1527
    :goto_2d
    :try_start_36
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_f
    .catchall {:try_start_36 .. :try_end_36} :catchall_1c

    .line 1528
    .line 1529
    const/4 v4, 0x3

    .line 1530
    const/4 v5, 0x0

    .line 1531
    :try_start_37
    invoke-virtual {v2, v1, v5, v4, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_e
    .catchall {:try_start_37 .. :try_end_37} :catchall_1b

    .line 1532
    .line 1533
    .line 1534
    const/4 v1, 0x0

    .line 1535
    :try_start_38
    iput-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_e
    .catchall {:try_start_38 .. :try_end_38} :catchall_1a

    .line 1536
    .line 1537
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 1538
    .line 1539
    if-eqz v1, :cond_25

    .line 1540
    .line 1541
    move v13, v3

    .line 1542
    goto :goto_2e

    .line 1543
    :cond_25
    const/16 v13, -0x7d1

    .line 1544
    .line 1545
    :goto_2e
    const-string v1, "PFTBT"

    .line 1546
    .line 1547
    const-string v2, "Full backup completed with status: "

    .line 1548
    .line 1549
    invoke-static {v13, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 1553
    .line 1554
    invoke-static {v1, v13}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 1558
    .line 1559
    .line 1560
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 1561
    .line 1562
    if-eqz v1, :cond_26

    .line 1563
    .line 1564
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 1565
    .line 1566
    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 1567
    .line 1568
    .line 1569
    :cond_26
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1570
    .line 1571
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v2

    .line 1575
    monitor-enter v2

    .line 1576
    :try_start_39
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1577
    .line 1578
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    .line 1579
    .line 1580
    .line 1581
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_19

    .line 1582
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 1583
    .line 1584
    const-string v2, "PFTBT.run()"

    .line 1585
    .line 1586
    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 1587
    .line 1588
    .line 1589
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1590
    .line 1591
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1592
    .line 1593
    .line 1594
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 1595
    .line 1596
    if-eqz v1, :cond_4

    .line 1597
    .line 1598
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1599
    .line 1600
    const-wide/16 v7, 0x0

    .line 1601
    .line 1602
    invoke-virtual {v1, v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 1603
    .line 1604
    .line 1605
    goto/16 :goto_2

    .line 1606
    .line 1607
    :catchall_19
    move-exception v0

    .line 1608
    move-object v1, v0

    .line 1609
    :try_start_3a
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_19

    .line 1610
    throw v1

    .line 1611
    :catchall_1a
    move-exception v0

    .line 1612
    :goto_2f
    const-wide/16 v7, 0x0

    .line 1613
    .line 1614
    :goto_30
    move-object v2, v0

    .line 1615
    move v12, v1

    .line 1616
    move-object v14, v5

    .line 1617
    :goto_31
    move-object/from16 v25, v14

    .line 1618
    .line 1619
    move-wide v8, v7

    .line 1620
    goto/16 :goto_38

    .line 1621
    .line 1622
    :catch_e
    move-exception v0

    .line 1623
    :goto_32
    const-wide/16 v7, 0x0

    .line 1624
    .line 1625
    :goto_33
    move-object v2, v0

    .line 1626
    move-object v14, v5

    .line 1627
    :goto_34
    move-object/from16 v25, v14

    .line 1628
    .line 1629
    move-wide v8, v7

    .line 1630
    goto :goto_35

    .line 1631
    :catchall_1b
    move-exception v0

    .line 1632
    const/4 v1, 0x0

    .line 1633
    goto :goto_2f

    .line 1634
    :catchall_1c
    move-exception v0

    .line 1635
    const/4 v1, 0x0

    .line 1636
    const/4 v5, 0x0

    .line 1637
    goto :goto_2f

    .line 1638
    :catch_f
    move-exception v0

    .line 1639
    const/4 v5, 0x0

    .line 1640
    goto :goto_32

    .line 1641
    :catchall_1d
    move-exception v0

    .line 1642
    const/4 v1, 0x0

    .line 1643
    const/4 v5, 0x0

    .line 1644
    goto :goto_2f

    .line 1645
    :catch_10
    move-exception v0

    .line 1646
    const/4 v5, 0x0

    .line 1647
    goto :goto_32

    .line 1648
    :catchall_1e
    move-exception v0

    .line 1649
    move-wide v7, v8

    .line 1650
    move-object v5, v14

    .line 1651
    move v1, v15

    .line 1652
    const/16 v3, -0x7d3

    .line 1653
    .line 1654
    goto :goto_30

    .line 1655
    :catch_11
    move-exception v0

    .line 1656
    move-wide v7, v8

    .line 1657
    move-object v5, v14

    .line 1658
    const/16 v3, -0x7d3

    .line 1659
    .line 1660
    const/16 v6, -0x3e8

    .line 1661
    .line 1662
    goto :goto_33

    .line 1663
    :catchall_1f
    move-exception v0

    .line 1664
    move-wide v7, v8

    .line 1665
    move-object v5, v14

    .line 1666
    move v1, v15

    .line 1667
    const/16 v3, -0x7d3

    .line 1668
    .line 1669
    move-object v2, v0

    .line 1670
    move v12, v1

    .line 1671
    goto :goto_31

    .line 1672
    :catch_12
    move-exception v0

    .line 1673
    move-wide v7, v8

    .line 1674
    move-object v5, v14

    .line 1675
    const/16 v3, -0x7d3

    .line 1676
    .line 1677
    const/16 v6, -0x3e8

    .line 1678
    .line 1679
    move-object v2, v0

    .line 1680
    goto :goto_34

    .line 1681
    :goto_35
    :try_start_3b
    const-string v1, "PFTBT"

    .line 1682
    .line 1683
    const-string v4, "Exception trying full transport backup"

    .line 1684
    .line 1685
    invoke-static {v1, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1686
    .line 1687
    .line 1688
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 1689
    .line 1690
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 1691
    .line 1692
    const-string v5, "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP"

    .line 1693
    .line 1694
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v2

    .line 1698
    invoke-static {v5, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v2

    .line 1702
    const/16 v5, 0x13

    .line 1703
    .line 1704
    const/4 v7, 0x3

    .line 1705
    invoke-virtual {v1, v5, v4, v7, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_21

    .line 1706
    .line 1707
    .line 1708
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 1709
    .line 1710
    if-eqz v1, :cond_27

    .line 1711
    .line 1712
    move v12, v3

    .line 1713
    goto :goto_36

    .line 1714
    :cond_27
    move v12, v6

    .line 1715
    :goto_36
    const-string v1, "PFTBT"

    .line 1716
    .line 1717
    const-string v2, "Full backup completed with status: "

    .line 1718
    .line 1719
    invoke-static {v12, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1720
    .line 1721
    .line 1722
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 1723
    .line 1724
    invoke-static {v1, v12}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1725
    .line 1726
    .line 1727
    invoke-static/range {v25 .. v25}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 1728
    .line 1729
    .line 1730
    invoke-static {v14}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 1731
    .line 1732
    .line 1733
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 1734
    .line 1735
    .line 1736
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 1737
    .line 1738
    if-eqz v1, :cond_28

    .line 1739
    .line 1740
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 1741
    .line 1742
    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 1743
    .line 1744
    .line 1745
    :cond_28
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1746
    .line 1747
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v1

    .line 1751
    monitor-enter v1

    .line 1752
    :try_start_3c
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1753
    .line 1754
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    .line 1755
    .line 1756
    .line 1757
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_20

    .line 1758
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 1759
    .line 1760
    const-string v2, "PFTBT.run()"

    .line 1761
    .line 1762
    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 1763
    .line 1764
    .line 1765
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1766
    .line 1767
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1768
    .line 1769
    .line 1770
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 1771
    .line 1772
    if-eqz v1, :cond_23

    .line 1773
    .line 1774
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1775
    .line 1776
    goto/16 :goto_2b

    .line 1777
    .line 1778
    :goto_37
    return-void

    .line 1779
    :catchall_20
    move-exception v0

    .line 1780
    move-object v2, v0

    .line 1781
    :try_start_3d
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_20

    .line 1782
    throw v2

    .line 1783
    :catchall_21
    move-exception v0

    .line 1784
    move-object v2, v0

    .line 1785
    goto/16 :goto_21

    .line 1786
    .line 1787
    :goto_38
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 1788
    .line 1789
    if-eqz v1, :cond_29

    .line 1790
    .line 1791
    move v13, v3

    .line 1792
    goto :goto_39

    .line 1793
    :cond_29
    move v13, v12

    .line 1794
    :goto_39
    const-string v1, "PFTBT"

    .line 1795
    .line 1796
    const-string v3, "Full backup completed with status: "

    .line 1797
    .line 1798
    invoke-static {v13, v3, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1799
    .line 1800
    .line 1801
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 1802
    .line 1803
    invoke-static {v1, v13}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1804
    .line 1805
    .line 1806
    invoke-static/range {v25 .. v25}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 1807
    .line 1808
    .line 1809
    invoke-static {v14}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 1810
    .line 1811
    .line 1812
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 1813
    .line 1814
    .line 1815
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 1816
    .line 1817
    if-eqz v1, :cond_2a

    .line 1818
    .line 1819
    iget v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 1820
    .line 1821
    invoke-virtual {v1, v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 1822
    .line 1823
    .line 1824
    :cond_2a
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1825
    .line 1826
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v1

    .line 1830
    monitor-enter v1

    .line 1831
    :try_start_3e
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1832
    .line 1833
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    .line 1834
    .line 1835
    .line 1836
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_22

    .line 1837
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 1838
    .line 1839
    const-string v3, "PFTBT.run()"

    .line 1840
    .line 1841
    invoke-interface {v1, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 1842
    .line 1843
    .line 1844
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1845
    .line 1846
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1847
    .line 1848
    .line 1849
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 1850
    .line 1851
    if-eqz v1, :cond_2b

    .line 1852
    .line 1853
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1854
    .line 1855
    invoke-virtual {v1, v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 1856
    .line 1857
    .line 1858
    :cond_2b
    const-string v1, "PFTBT"

    .line 1859
    .line 1860
    const-string v3, "Full data backup pass finished."

    .line 1861
    .line 1862
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    .line 1864
    .line 1865
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1866
    .line 1867
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1868
    .line 1869
    .line 1870
    move-result-object v1

    .line 1871
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 1872
    .line 1873
    .line 1874
    throw v2

    .line 1875
    :catchall_22
    move-exception v0

    .line 1876
    move-object v2, v0

    .line 1877
    :try_start_3f
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_22

    .line 1878
    throw v2
.end method

.method public final unregisterTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 4
    .line 5
    check-cast v0, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
