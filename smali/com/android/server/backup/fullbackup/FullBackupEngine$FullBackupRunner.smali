.class public final Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final isDisableDataExtractionRules:Z

.field public final mAgent:Landroid/app/IBackupAgent;

.field public final mFilesDir:Ljava/io/File;

.field public final mIncludeApks:Z

.field public final mPackage:Landroid/content/pm/PackageInfo;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPipe:Landroid/os/ParcelFileDescriptor;

.field public final mSmartSwitchBackupPath:[Ljava/lang/String;

.field public final mToken:I

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZ[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->isDisableDataExtractionRules:Z

    .line 8
    .line 9
    iget v0, p2, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 20
    .line 21
    iput-object p4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    .line 22
    .line 23
    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 32
    .line 33
    iput p6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    .line 34
    .line 35
    iput-boolean p7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mIncludeApks:Z

    .line 36
    .line 37
    iget-object p1, p2, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    .line 40
    .line 41
    iput-object p8, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 42
    .line 43
    iget-boolean p1, p2, Lcom/android/server/backup/UserBackupManagerService;->mDisableDataExtractionRule:Z

    .line 44
    .line 45
    iput-boolean p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->isDisableDataExtractionRules:Z

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "BackupManagerService"

    .line 4
    .line 5
    const-string v3, "Error running full backup for "

    .line 6
    .line 7
    const-string v4, "Remote agent vanished during full backup of "

    .line 8
    .line 9
    const-string v0, "Calling doFullBackup() on "

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    :try_start_0
    new-instance v6, Landroid/app/backup/FullBackupDataOutput;

    .line 13
    .line 14
    iget-object v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 15
    .line 16
    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 17
    .line 18
    iget v8, v8, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    .line 19
    .line 20
    const-wide/16 v9, -0x1

    .line 21
    .line 22
    invoke-direct {v6, v7, v9, v10, v8}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;JI)V

    .line 23
    .line 24
    .line 25
    new-instance v7, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;

    .line 26
    .line 27
    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    invoke-direct {v7, v6, v8}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;-><init>(Landroid/app/backup/FullBackupDataOutput;Landroid/content/pm/PackageManager;)V

    .line 30
    .line 31
    .line 32
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 33
    .line 34
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    const-string/jumbo v8, "com.android.sharedstoragebackup"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    iget-object v9, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 44
    .line 45
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 46
    .line 47
    iget-boolean v10, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mIncludeApks:Z

    .line 48
    .line 49
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 50
    .line 51
    and-int/lit8 v11, v9, 0x1

    .line 52
    .line 53
    const/4 v12, 0x0

    .line 54
    if-eqz v11, :cond_0

    .line 55
    .line 56
    move v11, v5

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v11, v12

    .line 59
    :goto_0
    and-int/lit16 v9, v9, 0x80

    .line 60
    .line 61
    if-eqz v9, :cond_1

    .line 62
    .line 63
    move v9, v5

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move v9, v12

    .line 66
    :goto_1
    if-eqz v10, :cond_3

    .line 67
    .line 68
    if-nez v8, :cond_3

    .line 69
    .line 70
    if-eqz v11, :cond_2

    .line 71
    .line 72
    if-eqz v9, :cond_3

    .line 73
    .line 74
    :cond_2
    move v9, v5

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    move v9, v12

    .line 77
    :goto_2
    if-nez v8, :cond_4

    .line 78
    .line 79
    new-instance v10, Ljava/io/File;

    .line 80
    .line 81
    iget-object v11, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    .line 82
    .line 83
    const-string v12, "_manifest"

    .line 84
    .line 85
    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v12, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 89
    .line 90
    iget-object v14, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    .line 91
    .line 92
    const/4 v15, 0x0

    .line 93
    move-object v11, v7

    .line 94
    move-object v13, v10

    .line 95
    move/from16 v16, v9

    .line 96
    .line 97
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 101
    .line 102
    .line 103
    iget v10, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    .line 104
    .line 105
    invoke-static {v6, v10}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    if-eqz v10, :cond_4

    .line 110
    .line 111
    array-length v11, v10

    .line 112
    if-lez v11, :cond_4

    .line 113
    .line 114
    new-instance v11, Ljava/io/File;

    .line 115
    .line 116
    iget-object v12, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    .line 117
    .line 118
    const-string v13, "_meta"

    .line 119
    .line 120
    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v12, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 124
    .line 125
    iget-object v13, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    .line 126
    .line 127
    invoke-virtual {v7, v12, v11, v13, v10}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupWidget(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;[B)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    goto/16 :goto_a

    .line 136
    .line 137
    :catch_0
    move-exception v0

    .line 138
    goto/16 :goto_7

    .line 139
    .line 140
    :catch_1
    move-exception v0

    .line 141
    goto/16 :goto_8

    .line 142
    .line 143
    :cond_4
    :goto_3
    if-eqz v9, :cond_5

    .line 144
    .line 145
    iget-object v9, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 146
    .line 147
    invoke-virtual {v7, v9}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupApk(Landroid/content/pm/PackageInfo;)V

    .line 148
    .line 149
    .line 150
    iget v9, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    .line 151
    .line 152
    iget-object v10, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 153
    .line 154
    invoke-virtual {v7, v9, v10}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupObb(ILandroid/content/pm/PackageInfo;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    if-eqz v8, :cond_6

    .line 173
    .line 174
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 175
    .line 176
    iget-object v0, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 177
    .line 178
    iget-object v6, v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    .line 179
    .line 180
    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :try_start_1
    iget-wide v7, v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mSharedBackupAgentTimeoutMillis:J

    .line 182
    .line 183
    monitor-exit v6

    .line 184
    :goto_4
    move-wide v11, v7

    .line 185
    goto :goto_5

    .line 186
    :catchall_1
    move-exception v0

    .line 187
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    :try_start_2
    throw v0

    .line 189
    :cond_6
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 190
    .line 191
    iget-object v0, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    .line 194
    .line 195
    .line 196
    move-result-wide v7

    .line 197
    goto :goto_4

    .line 198
    :goto_5
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 199
    .line 200
    iget-object v9, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 201
    .line 202
    iget v10, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    .line 203
    .line 204
    iget-object v13, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    .line 205
    .line 206
    const/4 v14, 0x0

    .line 207
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 208
    .line 209
    .line 210
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 211
    .line 212
    if-eqz v0, :cond_7

    .line 213
    .line 214
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    .line 215
    .line 216
    iget-boolean v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->isDisableDataExtractionRules:Z

    .line 217
    .line 218
    invoke-interface {v0, v6}, Landroid/app/IBackupAgent;->doDisableDataExtractionRules(Z)V

    .line 219
    .line 220
    .line 221
    iget-object v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    .line 222
    .line 223
    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 224
    .line 225
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 226
    .line 227
    iget-wide v9, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    .line 228
    .line 229
    iget v11, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    .line 230
    .line 231
    iget-object v6, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 232
    .line 233
    iget-object v12, v6, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 234
    .line 235
    iget v13, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    .line 236
    .line 237
    iget-object v14, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 238
    .line 239
    invoke-interface/range {v7 .. v14}, Landroid/app/IBackupAgent;->doFullBackupPath(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I[Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_7
    iget-object v15, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    .line 244
    .line 245
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 246
    .line 247
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 248
    .line 249
    iget-wide v7, v6, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    .line 250
    .line 251
    iget v9, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    .line 252
    .line 253
    iget-object v10, v6, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 254
    .line 255
    iget-object v10, v10, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 256
    .line 257
    iget v6, v6, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    .line 258
    .line 259
    move-object/from16 v16, v0

    .line 260
    .line 261
    move-wide/from16 v17, v7

    .line 262
    .line 263
    move/from16 v19, v9

    .line 264
    .line 265
    move-object/from16 v20, v10

    .line 266
    .line 267
    move/from16 v21, v6

    .line 268
    .line 269
    invoke-interface/range {v15 .. v21}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    .line 271
    .line 272
    :cond_8
    :goto_6
    :try_start_3
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 273
    .line 274
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 275
    .line 276
    .line 277
    goto :goto_9

    .line 278
    :goto_7
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 284
    .line 285
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    .line 296
    .line 297
    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 298
    .line 299
    if-eqz v0, :cond_8

    .line 300
    .line 301
    iput-boolean v5, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    .line 302
    .line 303
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 304
    .line 305
    .line 306
    goto :goto_6

    .line 307
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 313
    .line 314
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .line 325
    .line 326
    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 327
    .line 328
    if-eqz v0, :cond_8

    .line 329
    .line 330
    iput-boolean v5, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    .line 331
    .line 332
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 333
    .line 334
    .line 335
    goto :goto_6

    .line 336
    :catch_2
    :goto_9
    return-void

    .line 337
    :goto_a
    :try_start_5
    iget-object v1, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 338
    .line 339
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 340
    .line 341
    .line 342
    :catch_3
    throw v0
.end method
