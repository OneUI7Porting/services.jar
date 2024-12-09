.class public final Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;
.super Lcom/samsung/android/provider/IDynamicFeatureManager$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final ALLOWED_MCC:Ljava/util/ArrayList;

.field public static mCurrentBroadcastFeature:Lcom/samsung/android/server/dynamicfeature/DFeature;


# instance fields
.field public isWorking:Z

.field public final mButler:Lcom/samsung/android/server/dynamicfeature/Butler;

.field public final mContext:Landroid/content/Context;

.field public final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field public final mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

.field public mDiff:Ljava/util/ArrayList;

.field public final mDynamicFeatureReceiver:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

.field public final mFeatureServiceCallBack:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

.field public mFeatures:Ljava/util/ArrayList;

.field public final mHandler:Landroid/os/Handler;

.field public final mHttpConnector:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

.field public mPrefix:Ljava/lang/String;

.field public mPrevMcc:Ljava/lang/String;

.field public final mPreventFlooding:Z

.field public mPw:Ljava/io/PrintWriter;

.field public mRemoved:Ljava/util/ArrayList;

.field public mRequestUpdate:Z

.field public mStage:I

.field public mStopUpdateRequest:I

.field public final mTracker:Lcom/samsung/android/server/dynamicfeature/sentinel/Tracker;

.field public nextFeatures:Ljava/util/ArrayList;

.field public final postNotifyUpdateRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

.field public final requestJobSchedulerRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$JobSchedulerRunnable;

.field public testOnlyBackupTermHandling:J

.field public testOnlyReceiver:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

.field public final updateOnceRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

.field public final updateRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;


# direct methods
.method public static -$$Nest$mreleaseUpdate(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "applyDiff want to releaseUpdate"

    .line 5
    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "dynamicfeature_Service"

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStopUpdateRequest:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    iput v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStopUpdateRequest:I

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRequestUpdate:Z

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateOnceRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, "450"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ALLOWED_MCC:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/provider/IDynamicFeatureManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->isWorking:Z

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStopUpdateRequest:I

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRequestUpdate:Z

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPreventFlooding:Z

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrevMcc:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 30
    .line 31
    invoke-direct {v2, p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatureServiceCallBack:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 35
    .line 36
    new-instance v2, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;I)V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDynamicFeatureReceiver:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

    .line 43
    .line 44
    new-instance v2, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 45
    .line 46
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;I)V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 50
    .line 51
    new-instance v2, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;I)V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateOnceRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 58
    .line 59
    new-instance v2, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 60
    .line 61
    const/4 v3, 0x2

    .line 62
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;I)V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->postNotifyUpdateRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 66
    .line 67
    iput v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStage:I

    .line 68
    .line 69
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    const-string v2, "DynamicFeatureManagerService launched ========"

    .line 72
    .line 73
    const-string v3, "dynamicfeature_Service"

    .line 74
    .line 75
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    new-instance v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 79
    .line 80
    const-string v4, "C"

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 83
    .line 84
    .line 85
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v5, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mModelName:Ljava/lang/String;

    .line 88
    .line 89
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    .line 91
    iput v5, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mSdkVersion:I

    .line 92
    .line 93
    const/4 v5, -0x1

    .line 94
    iput v5, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mLastResultCode:I

    .line 95
    .line 96
    iput-object p1, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->isBetaBinaryType()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_0

    .line 103
    .line 104
    const-string v5, "Z"

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception v5

    .line 108
    goto :goto_1

    .line 109
    :cond_0
    move-object v5, v4

    .line 110
    :goto_0
    iput-object v5, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mBinaryType:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {}, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->getProperty()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    iput-object v5, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mOneUiVersion:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v5, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 119
    .line 120
    iput-object v5, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mFeatures:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    const-string v6, "dynamicfeature_HttpConnector"

    .line 128
    .line 129
    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    iput-object v4, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mBinaryType:Ljava/lang/String;

    .line 133
    .line 134
    :goto_2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    iput-object v4, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 139
    .line 140
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHttpConnector:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 141
    .line 142
    iget-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 143
    .line 144
    if-nez v2, :cond_1

    .line 145
    .line 146
    const-string p0, "mContext is null"

    .line 147
    .line 148
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_1
    new-instance v2, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 153
    .line 154
    const-string v4, "dynamicFeature.db"

    .line 155
    .line 156
    const/4 v5, 0x0

    .line 157
    invoke-direct {v2, p1, v4, v5, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 158
    .line 159
    .line 160
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 161
    .line 162
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 167
    .line 168
    invoke-static {p1}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->loadFeatures(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 173
    .line 174
    const-string v2, "loadInfos "

    .line 175
    .line 176
    :try_start_1
    const-string v4, "SELECT * FROM DF_INFO_TABLE"

    .line 177
    .line 178
    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_3

    .line 187
    .line 188
    const-string/jumbo p1, "virtualid"

    .line 189
    .line 190
    .line 191
    invoke-interface {v5, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    invoke-interface {v5, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    sget-object v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 200
    .line 201
    iget-object v6, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->vid:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-eqz v6, :cond_2

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_2
    sput-boolean v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 211
    .line 212
    iput-object p1, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->vid:Ljava/lang/String;

    .line 213
    .line 214
    :goto_3
    const-string p1, "jobIntervalMill"

    .line 215
    .line 216
    invoke-interface {v5, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    invoke-interface {v5, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 221
    .line 222
    .line 223
    move-result-wide v6

    .line 224
    sput-boolean v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 225
    .line 226
    sget-object p1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 227
    .line 228
    iput-wide v6, p1, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->jobIntervalMill:J

    .line 229
    .line 230
    const-string v4, "UT"

    .line 231
    .line 232
    const-string/jumbo v6, "usertrial"

    .line 233
    .line 234
    .line 235
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    sput-boolean v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 248
    .line 249
    iput-boolean v4, p1, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->isUT:Z

    .line 250
    .line 251
    const-string p1, "lastUpdateTime"

    .line 252
    .line 253
    invoke-interface {v5, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    invoke-interface {v5, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    sput-boolean v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 262
    .line 263
    sget-object v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 264
    .line 265
    iput-object p1, v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->lastUpdatedTime:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :catchall_0
    move-exception p0

    .line 269
    goto/16 :goto_7

    .line 270
    .line 271
    :catch_1
    move-exception p1

    .line 272
    goto :goto_5

    .line 273
    :cond_3
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 274
    .line 275
    .line 276
    :cond_4
    sput-boolean v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :goto_5
    :try_start_2
    sget-object v1, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->TAG:Ljava/lang/String;

    .line 280
    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    .line 299
    .line 300
    if-eqz v5, :cond_4

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :goto_6
    iget-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 304
    .line 305
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 306
    .line 307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->loadParams(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 311
    .line 312
    .line 313
    iget-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 314
    .line 315
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 316
    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->loadFeatures(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    .line 321
    .line 322
    .line 323
    new-instance p1, Lcom/samsung/android/server/dynamicfeature/Butler;

    .line 324
    .line 325
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 326
    .line 327
    .line 328
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 329
    .line 330
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 331
    .line 332
    .line 333
    iput-object v0, p1, Lcom/samsung/android/server/dynamicfeature/Butler;->featureHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 334
    .line 335
    new-instance v1, Lcom/samsung/android/server/dynamicfeature/Butler$$ExternalSyntheticLambda0;

    .line 336
    .line 337
    const/4 v2, 0x0

    .line 338
    invoke-direct {v1, p1, v2}, Lcom/samsung/android/server/dynamicfeature/Butler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/dynamicfeature/Butler;I)V

    .line 339
    .line 340
    .line 341
    const-string v2, "EXECUTABLE_BINARY_TYPE"

    .line 342
    .line 343
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    new-instance v1, Lcom/samsung/android/server/dynamicfeature/Butler$$ExternalSyntheticLambda0;

    .line 347
    .line 348
    const/4 v2, 0x1

    .line 349
    invoke-direct {v1, p1, v2}, Lcom/samsung/android/server/dynamicfeature/Butler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/dynamicfeature/Butler;I)V

    .line 350
    .line 351
    .line 352
    const-string v2, "UPDATE_INTERVAL_MIN"

    .line 353
    .line 354
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    new-instance v1, Lcom/samsung/android/server/dynamicfeature/Butler$$ExternalSyntheticLambda0;

    .line 358
    .line 359
    const/4 v2, 0x2

    .line 360
    invoke-direct {v1, p1, v2}, Lcom/samsung/android/server/dynamicfeature/Butler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/dynamicfeature/Butler;I)V

    .line 361
    .line 362
    .line 363
    const-string v2, "DISABLE_CLIENT"

    .line 364
    .line 365
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mButler:Lcom/samsung/android/server/dynamicfeature/Butler;

    .line 369
    .line 370
    new-instance p1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$JobSchedulerRunnable;

    .line 371
    .line 372
    invoke-direct {p1, p0, p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$JobSchedulerRunnable;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V

    .line 373
    .line 374
    .line 375
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->requestJobSchedulerRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$JobSchedulerRunnable;

    .line 376
    .line 377
    const-string p1, "com.samsung.feature.FORCE_START"

    .line 378
    .line 379
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 380
    .line 381
    const-string v1, "android.intent.action.SERVICE_STATE"

    .line 382
    .line 383
    invoke-static {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 388
    .line 389
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDynamicFeatureReceiver:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

    .line 390
    .line 391
    const/4 v2, 0x2

    .line 392
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->enableService()V

    .line 396
    .line 397
    .line 398
    new-instance p1, Lcom/samsung/android/server/dynamicfeature/sentinel/Tracker;

    .line 399
    .line 400
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatureServiceCallBack:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 401
    .line 402
    invoke-direct {p1}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 403
    .line 404
    .line 405
    iput-object v0, p1, Lcom/samsung/android/server/dynamicfeature/sentinel/Tracker;->serviceCallback:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 406
    .line 407
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mTracker:Lcom/samsung/android/server/dynamicfeature/sentinel/Tracker;

    .line 408
    .line 409
    new-instance p0, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    const-string p1, "DF caller "

    .line 412
    .line 413
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    const/16 p1, 0xa

    .line 417
    .line 418
    invoke-static {p1}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->getCallers(I)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p0

    .line 429
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .line 431
    .line 432
    return-void

    .line 433
    :goto_7
    if-eqz v5, :cond_5

    .line 434
    .line 435
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 436
    .line 437
    .line 438
    :cond_5
    sput-boolean v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 439
    .line 440
    throw p0
.end method

.method public static ASSERT(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public static declared-synchronized setCurrentBroadcastFeature(Lcom/samsung/android/server/dynamicfeature/DFeature;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setCurrentBroadcastFeature :"

    .line 2
    .line 3
    .line 4
    const-class v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "dynamicfeature_Service"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    sput-object p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mCurrentBroadcastFeature:Lcom/samsung/android/server/dynamicfeature/DFeature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit v1

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v1

    .line 30
    throw p0
.end method


# virtual methods
.method public final applyDiff()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->nextFeatures:Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_6

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    move v7, v4

    .line 42
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-eqz v8, :cond_4

    .line 47
    .line 48
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    check-cast v8, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 53
    .line 54
    iget-object v9, v5, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v10, v5, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/server/dynamicfeature/DFeature;->isThis(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    if-eqz v9, :cond_2

    .line 63
    .line 64
    iget v7, v5, Lcom/samsung/android/server/dynamicfeature/DFeature;->version:I

    .line 65
    .line 66
    iget v8, v8, Lcom/samsung/android/server/dynamicfeature/DFeature;->version:I

    .line 67
    .line 68
    if-le v7, v8, :cond_3

    .line 69
    .line 70
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move v7, v3

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    move v7, v3

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    :goto_2
    if-nez v7, :cond_1

    .line 78
    .line 79
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object v2, v0

    .line 88
    check-cast v2, Ljava/util/ArrayList;

    .line 89
    .line 90
    :cond_6
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDiff:Ljava/util/ArrayList;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->nextFeatures:Ljava/util/ArrayList;

    .line 95
    .line 96
    new-instance v2, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_9

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_8

    .line 126
    .line 127
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    check-cast v7, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 132
    .line 133
    iget-object v8, v7, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v7, v7, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v5, v8, v7}, Lcom/samsung/android/server/dynamicfeature/DFeature;->isThis(Ljava/lang/String;Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-eqz v7, :cond_7

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_8
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_9
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRemoved:Ljava/util/ArrayList;

    .line 149
    .line 150
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->nextFeatures:Ljava/util/ArrayList;

    .line 151
    .line 152
    iput-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 153
    .line 154
    const-string v0, "android.intent.action.DROPBOX_ENTRY_ADDED"

    .line 155
    .line 156
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 161
    .line 162
    iget-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mTracker:Lcom/samsung/android/server/dynamicfeature/sentinel/Tracker;

    .line 163
    .line 164
    const/4 v5, 0x2

    .line 165
    invoke-virtual {v1, v2, v0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 166
    .line 167
    .line 168
    const-string v0, "applyDiff want to blockUpdate"

    .line 169
    .line 170
    filled-new-array {v0}, [Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v0, "dynamicfeature_Service"

    .line 178
    .line 179
    monitor-enter v0

    .line 180
    :try_start_0
    iget v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStopUpdateRequest:I

    .line 181
    .line 182
    add-int/2addr v1, v3

    .line 183
    iput v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStopUpdateRequest:I

    .line 184
    .line 185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-boolean v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPreventFlooding:Z

    .line 187
    .line 188
    if-eqz v0, :cond_d

    .line 189
    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDiff:Ljava/util/ArrayList;

    .line 191
    .line 192
    const-string v1, "dynamicfeature_Service"

    .line 193
    .line 194
    if-nez v0, :cond_a

    .line 195
    .line 196
    iget-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRemoved:Ljava/util/ArrayList;

    .line 197
    .line 198
    if-nez v2, :cond_a

    .line 199
    .line 200
    const-string p0, "No changes for intent"

    .line 201
    .line 202
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    goto/16 :goto_c

    .line 206
    .line 207
    :cond_a
    const-string v2, " after "

    .line 208
    .line 209
    const-string v6, "Start runnable for +"

    .line 210
    .line 211
    if-eqz v0, :cond_b

    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    if-eqz v7, :cond_b

    .line 222
    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    check-cast v7, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 228
    .line 229
    new-instance v8, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;

    .line 230
    .line 231
    invoke-direct {v8, p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V

    .line 232
    .line 233
    .line 234
    iput-object v7, v8, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->feature:Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 235
    .line 236
    iput v3, v8, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->state:I

    .line 237
    .line 238
    new-instance v9, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v7, v7, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    sget-wide v10, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 252
    .line 253
    int-to-long v12, v4

    .line 254
    mul-long/2addr v10, v12

    .line 255
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    iget-object v7, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHandler:Landroid/os/Handler;

    .line 266
    .line 267
    sget-wide v9, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 268
    .line 269
    add-int/lit8 v4, v4, 0x1

    .line 270
    .line 271
    mul-long/2addr v9, v12

    .line 272
    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRemoved:Ljava/util/ArrayList;

    .line 277
    .line 278
    if-eqz v0, :cond_c

    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-eqz v3, :cond_c

    .line 289
    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    check-cast v3, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 295
    .line 296
    new-instance v7, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;

    .line 297
    .line 298
    invoke-direct {v7, p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V

    .line 299
    .line 300
    .line 301
    iput-object v3, v7, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->feature:Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 302
    .line 303
    iput v5, v7, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->state:I

    .line 304
    .line 305
    new-instance v8, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iget-object v3, v3, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    sget-wide v9, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 319
    .line 320
    int-to-long v11, v4

    .line 321
    mul-long/2addr v9, v11

    .line 322
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    iget-object v3, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHandler:Landroid/os/Handler;

    .line 333
    .line 334
    sget-wide v8, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 335
    .line 336
    add-int/lit8 v4, v4, 0x1

    .line 337
    .line 338
    mul-long/2addr v8, v11

    .line 339
    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    .line 341
    .line 342
    goto :goto_6

    .line 343
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    const-string v2, "Stop tracking after "

    .line 346
    .line 347
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    sget-wide v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 351
    .line 352
    int-to-long v4, v4

    .line 353
    mul-long/2addr v2, v4

    .line 354
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .line 363
    .line 364
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHandler:Landroid/os/Handler;

    .line 365
    .line 366
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->postNotifyUpdateRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 367
    .line 368
    sget-wide v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 369
    .line 370
    mul-long/2addr v1, v4

    .line 371
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    .line 373
    .line 374
    goto/16 :goto_c

    .line 375
    .line 376
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDiff:Ljava/util/ArrayList;

    .line 377
    .line 378
    const-string v1, "dynamicfeature_Service"

    .line 379
    .line 380
    if-nez v0, :cond_e

    .line 381
    .line 382
    iget-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRemoved:Ljava/util/ArrayList;

    .line 383
    .line 384
    if-nez v2, :cond_e

    .line 385
    .line 386
    const-string v0, "No changes for intent"

    .line 387
    .line 388
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    goto/16 :goto_9

    .line 392
    .line 393
    :cond_e
    if-eqz v0, :cond_10

    .line 394
    .line 395
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eqz v2, :cond_10

    .line 404
    .line 405
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    check-cast v2, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 410
    .line 411
    new-instance v5, Landroid/content/Intent;

    .line 412
    .line 413
    invoke-virtual {v2}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getIntentAction()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/server/dynamicfeature/DFeature;->loadCargo(Landroid/content/Intent;Z)V

    .line 421
    .line 422
    .line 423
    iget-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 424
    .line 425
    invoke-virtual {v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 426
    .line 427
    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    const-string/jumbo v6, "send broadcast for new or edit : "

    .line 431
    .line 432
    .line 433
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v6

    .line 440
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v6, "PROPERTY_CARGO"

    .line 444
    .line 445
    const-class v7, Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    .line 446
    .line 447
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v6

    .line 451
    check-cast v6, Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    .line 452
    .line 453
    if-nez v6, :cond_f

    .line 454
    .line 455
    new-instance v7, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    const-string v8, "The cargo is null : "

    .line 458
    .line 459
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    const-string v7, "dynamicfeature_Feature"

    .line 470
    .line 471
    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    :cond_f
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .line 483
    .line 484
    goto :goto_7

    .line 485
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRemoved:Ljava/util/ArrayList;

    .line 486
    .line 487
    if-eqz v0, :cond_11

    .line 488
    .line 489
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    if-eqz v2, :cond_11

    .line 498
    .line 499
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    check-cast v2, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 504
    .line 505
    new-instance v4, Landroid/content/Intent;

    .line 506
    .line 507
    invoke-virtual {v2}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getIntentAction()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    iget-object v5, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 515
    .line 516
    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/server/dynamicfeature/DFeature;->loadCargo(Landroid/content/Intent;Z)V

    .line 520
    .line 521
    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    const-string/jumbo v5, "send broadcast for removed : "

    .line 525
    .line 526
    .line 527
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .line 543
    .line 544
    goto :goto_8

    .line 545
    :cond_11
    :goto_9
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDiff:Ljava/util/ArrayList;

    .line 546
    .line 547
    const-string v1, "dynamicfeature_Service"

    .line 548
    .line 549
    if-nez v0, :cond_12

    .line 550
    .line 551
    iget-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRemoved:Ljava/util/ArrayList;

    .line 552
    .line 553
    if-nez v2, :cond_12

    .line 554
    .line 555
    const-string p0, "No changes for intent"

    .line 556
    .line 557
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .line 559
    .line 560
    goto :goto_c

    .line 561
    :cond_12
    const-string v2, "Fail to set property : "

    .line 562
    .line 563
    if-eqz v0, :cond_13

    .line 564
    .line 565
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    if-eqz v3, :cond_13

    .line 574
    .line 575
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    check-cast v3, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 580
    .line 581
    invoke-virtual {v3}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getPersistPropertyKey()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v4

    .line 585
    :try_start_1
    iget-object v3, v3, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 586
    .line 587
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 588
    .line 589
    .line 590
    goto :goto_a

    .line 591
    :catch_0
    invoke-static {v2, v4, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    goto :goto_a

    .line 595
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRemoved:Ljava/util/ArrayList;

    .line 596
    .line 597
    if-eqz p0, :cond_14

    .line 598
    .line 599
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 600
    .line 601
    .line 602
    move-result-object p0

    .line 603
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    if-eqz v0, :cond_14

    .line 608
    .line 609
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 614
    .line 615
    invoke-virtual {v0}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getPersistPropertyKey()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    :try_start_2
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->removeProperty(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 620
    .line 621
    .line 622
    goto :goto_b

    .line 623
    :catch_1
    invoke-static {v2, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    goto :goto_b

    .line 627
    :cond_14
    :goto_c
    return-void

    .line 628
    :catchall_0
    move-exception p0

    .line 629
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 630
    throw p0
.end method

.method public final applyNextToDB()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "DF_FEATURE_TABLE"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->nextFeatures:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v0, "DROP TABLE IF EXISTS DF_FEATURE_TABLE"

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "CREATE TABLE IF NOT EXISTS DF_FEATURE_TABLE (namespace TEXT,name TEXT,value TEXT,version INTEGER,property BOOLEAN,reboot BOOLEAN,package TEXT, signature TEXT, type TEXT,  PRIMARY KEY(namespace, name))"

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "CREATE TABLE IF NOT EXISTS DF_INFO_TABLE (_ID INTEGER PRIMARY KEY AUTOINCREMENT, virtualid TEXT,jobIntervalMill INTEGER,usertrial TEXT,lastUpdateTime TEXT )"

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "CREATE TABLE IF NOT EXISTS DF_PARAM_TABLE (_ID INTEGER PRIMARY KEY AUTOINCREMENT, mcc TEXT,mnc TEXT,csc TEXT,sdkVersion INTEGER,oneUiVersion TEXT, binaryType TEXT )"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ge v0, v2, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 58
    .line 59
    invoke-static {v1, v2}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->insertFeature(Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/server/dynamicfeature/DFeature;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_4

    .line 67
    :catch_0
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :goto_2
    :try_start_1
    sget-object v0, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :goto_3
    return-void

    .line 87
    :goto_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public final declared-synchronized disableService()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;->cancelJob()V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->isWorking:Z

    .line 7
    .line 8
    const-string v0, "disableService"

    .line 9
    .line 10
    filled-new-array {v0}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0

    .line 21
    throw v0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    const-string v9, "info"

    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    const-string v12, "isWorking : "

    .line 11
    .line 12
    const-string v13, "binder : "

    .line 13
    .line 14
    iput-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPw:Ljava/io/PrintWriter;

    .line 15
    .line 16
    const-string v14, ""

    .line 17
    .line 18
    iput-object v14, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrefix:Ljava/lang/String;

    .line 19
    .line 20
    const-string v15, "Dynamic Feature dump"

    .line 21
    .line 22
    invoke-virtual {v1, v15}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    array-length v15, v3

    .line 29
    if-lez v15, :cond_1

    .line 30
    .line 31
    aget-object v15, v3, v10

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v15, v9

    .line 35
    :goto_0
    sget-object v16, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sExecutableBinaryType:Ljava/lang/String;

    .line 36
    .line 37
    const-string v4, "UNKNOWN"

    .line 38
    .line 39
    const-string/jumbo v0, "ro.product_ship"

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string/jumbo v4, "true"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    const-string v0, "This shell command only work on non-ship version on the device"

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const-string v0, "DF_FEATURE_TABLE"

    .line 65
    .line 66
    const-string v8, "** Test FAIL T____T **"

    .line 67
    .line 68
    const-string v7, "** All Test finished **"

    .line 69
    .line 70
    const-string v4, "SEC_UI"

    .line 71
    .line 72
    const-string v10, "        "

    .line 73
    .line 74
    const-string/jumbo v6, "r342f3ffdsf"

    .line 75
    .line 76
    .line 77
    const-string v11, "\"C\".equals(mockFeatures.get(0).getAbType())"

    .line 78
    .line 79
    const-string v5, "C"

    .line 80
    .line 81
    move-object/from16 v18, v12

    .line 82
    .line 83
    const-string/jumbo v12, "mockFeatures.get(0).getProperty() == true"

    .line 84
    .line 85
    .line 86
    move-object/from16 v19, v13

    .line 87
    .line 88
    const-string v13, "MODE_ANIMATION"

    .line 89
    .line 90
    move-object/from16 v20, v14

    .line 91
    .line 92
    const-string/jumbo v14, "mockFeatures.size() == 3"

    .line 93
    .line 94
    .line 95
    move-object/from16 v21, v0

    .line 96
    .line 97
    const-string v0, "interrupted"

    .line 98
    .line 99
    move-object/from16 v22, v8

    .line 100
    .line 101
    const-string v8, "=====================================\n"

    .line 102
    .line 103
    move-object/from16 v23, v8

    .line 104
    .line 105
    const-string v8, "    "

    .line 106
    .line 107
    const/16 v24, -0x1

    .line 108
    .line 109
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    .line 110
    .line 111
    .line 112
    move-result v25

    .line 113
    sparse-switch v25, :sswitch_data_0

    .line 114
    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :sswitch_0
    const-string v9, "disable"

    .line 119
    .line 120
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-nez v9, :cond_3

    .line 125
    .line 126
    goto/16 :goto_2

    .line 127
    .line 128
    :cond_3
    const/16 v9, 0xe

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :sswitch_1
    const-string/jumbo v9, "sentinel"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    if-nez v9, :cond_4

    .line 139
    .line 140
    goto/16 :goto_2

    .line 141
    .line 142
    :cond_4
    const/16 v9, 0xd

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :sswitch_2
    const-string/jumbo v9, "test2"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    if-nez v9, :cond_5

    .line 153
    .line 154
    goto/16 :goto_2

    .line 155
    .line 156
    :cond_5
    const/16 v9, 0xc

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :sswitch_3
    const-string/jumbo v9, "param"

    .line 160
    .line 161
    .line 162
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-nez v9, :cond_6

    .line 167
    .line 168
    goto/16 :goto_2

    .line 169
    .line 170
    :cond_6
    const/16 v9, 0xb

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :sswitch_4
    const-string v9, "clear"

    .line 174
    .line 175
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    if-nez v9, :cond_7

    .line 180
    .line 181
    goto/16 :goto_2

    .line 182
    .line 183
    :cond_7
    const/16 v9, 0xa

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :sswitch_5
    const-string/jumbo v9, "test"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    if-nez v9, :cond_8

    .line 194
    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :cond_8
    const/16 v9, 0x9

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :sswitch_6
    const-string v9, "list"

    .line 201
    .line 202
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    if-nez v9, :cond_9

    .line 207
    .line 208
    goto/16 :goto_2

    .line 209
    .line 210
    :cond_9
    const/16 v9, 0x8

    .line 211
    .line 212
    :goto_1
    move/from16 v24, v9

    .line 213
    .line 214
    goto/16 :goto_2

    .line 215
    .line 216
    :sswitch_7
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    if-nez v9, :cond_a

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_a
    const/16 v24, 0x7

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :sswitch_8
    const-string v9, "drop"

    .line 227
    .line 228
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v9

    .line 232
    if-nez v9, :cond_b

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_b
    const/16 v24, 0x6

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :sswitch_9
    const-string v9, "add"

    .line 239
    .line 240
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v9

    .line 244
    if-nez v9, :cond_c

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_c
    const/16 v24, 0x5

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :sswitch_a
    const-string v9, "db"

    .line 251
    .line 252
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    if-nez v9, :cond_d

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_d
    const/16 v24, 0x4

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :sswitch_b
    const-string/jumbo v9, "update"

    .line 263
    .line 264
    .line 265
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v9

    .line 269
    if-nez v9, :cond_e

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_e
    const/16 v24, 0x3

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :sswitch_c
    const-string v9, "errorReport"

    .line 276
    .line 277
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v9

    .line 281
    if-nez v9, :cond_f

    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_f
    const/16 v24, 0x2

    .line 285
    .line 286
    goto :goto_2

    .line 287
    :sswitch_d
    const-string v9, "enable"

    .line 288
    .line 289
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v9

    .line 293
    if-nez v9, :cond_10

    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_10
    const/16 v24, 0x1

    .line 297
    .line 298
    goto :goto_2

    .line 299
    :sswitch_e
    const-string v9, "abComment"

    .line 300
    .line 301
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    if-nez v9, :cond_11

    .line 306
    .line 307
    goto :goto_2

    .line 308
    :cond_11
    const/16 v24, 0x0

    .line 309
    .line 310
    :goto_2
    packed-switch v24, :pswitch_data_0

    .line 311
    .line 312
    .line 313
    const-string/jumbo v0, "unknown command : "

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    goto/16 :goto_22

    .line 324
    .line 325
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->disableService()V

    .line 326
    .line 327
    .line 328
    goto/16 :goto_22

    .line 329
    .line 330
    :pswitch_1
    array-length v0, v3

    .line 331
    const/4 v2, 0x2

    .line 332
    if-ge v0, v2, :cond_12

    .line 333
    .line 334
    const-string/jumbo v0, "please input watching time .. ex) sentinel 200"

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :cond_12
    const/4 v2, 0x1

    .line 342
    :try_start_0
    aget-object v0, v3, v2

    .line 343
    .line 344
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    sput v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_TEST_FEATURE:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .line 350
    goto :goto_3

    .line 351
    :catch_0
    move-exception v0

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    const-string v4, "Wrong index : "

    .line 355
    .line 356
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v0, "  / "

    .line 367
    .line 368
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const/4 v4, 0x1

    .line 372
    aget-object v0, v3, v4

    .line 373
    .line 374
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string v2, "TERM_HANDLING_TEST_FEATURE : "

    .line 387
    .line 388
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    sget v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_TEST_FEATURE:I

    .line 392
    .line 393
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    goto/16 :goto_22

    .line 404
    .line 405
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testSetUp()V

    .line 406
    .line 407
    .line 408
    const-string v3, "[2nd  parsing response] "

    .line 409
    .line 410
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    iget-object v3, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPw:Ljava/io/PrintWriter;

    .line 414
    .line 415
    iget-object v8, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrefix:Ljava/lang/String;

    .line 416
    .line 417
    const/4 v9, 0x2

    .line 418
    iput v9, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStage:I

    .line 419
    .line 420
    iput-object v8, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrefix:Ljava/lang/String;

    .line 421
    .line 422
    iput-object v3, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPw:Ljava/io/PrintWriter;

    .line 423
    .line 424
    const-string/jumbo v3, "{\"features\":[{\"namespace\":\"SEC_UI\",\"name\":\"MODE_NIGHT\",\"version\":\"4\",\"value\":\"2\",\"reboot\":true,\"property\":true,\"abTestTypes\":[{\"type\":\"A\",\"allocRatio\":50,\"value\":\"0.1|0.5|false\"},{\"type\":\"B\",\"allocRatio\":50,\"value\":\"0.1|0.9|false\"},{\"type\":\"C\",\"allocRatio\":50,\"value\":\"1|0.9|true\"}]},{\"namespace\":\"SEC__TEST__UI\",\"name\":\"MODE_ANIMATION\",\"value\":\"NEW_AIRDROP2\",\"reboot\":false,\"version\":\"4\",\"property\":false},{\"namespace\":\"SYSTEM\",\"name\":\"MODE_ANIMATION\",\"value\":\"NEW_AIRDROP5\",\"reboot\":false,\"version\":\"6\",\"property\":true}],\"virtualId\":\"9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d\",\"releasedAt\":\"2023-10-07T02:20:26\",\"abTestAllocation\":[{\"namespace\":\"SEC_UI\",\"name\":\"MODE_NIGHT\",\"abType\":\"C\",\"packagename\":[\"com.samsung.swu.buttontest\",\"com.samsung.swu.buttontest3\"],\"signature\":[\"981c60a4ad266615187fccc1461781eb62b628d102feece383046c84b5793bac\",\"r342f3ffdsf\"]}]}"

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateFeature(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    const-wide/16 v8, 0x64

    .line 431
    .line 432
    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 433
    .line 434
    .line 435
    goto :goto_4

    .line 436
    :catch_1
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    :goto_4
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 440
    .line 441
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    const/4 v3, 0x3

    .line 446
    if-ne v0, v3, :cond_13

    .line 447
    .line 448
    const/4 v0, 0x1

    .line 449
    goto :goto_5

    .line 450
    :cond_13
    const/4 v0, 0x0

    .line 451
    :goto_5
    invoke-static {v14, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 452
    .line 453
    .line 454
    const-string v0, "SEC__TEST__UI"

    .line 455
    .line 456
    iget-object v3, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 457
    .line 458
    const/4 v8, 0x1

    .line 459
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    check-cast v3, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 464
    .line 465
    iget-object v3, v3, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 466
    .line 467
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    const-string v3, "\"SEC__TEST__UI\".equals(mockFeatures.get(1).namespace)"

    .line 472
    .line 473
    invoke-static {v3, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 474
    .line 475
    .line 476
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 477
    .line 478
    const/4 v3, 0x1

    .line 479
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 484
    .line 485
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 486
    .line 487
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    const-string v3, "\"MODE_ANIMATION\".equals(mockFeatures.get(1).getName())"

    .line 492
    .line 493
    invoke-static {v3, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 494
    .line 495
    .line 496
    const-string v0, "NEW_AIRDROP5"

    .line 497
    .line 498
    iget-object v3, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 499
    .line 500
    const/4 v8, 0x2

    .line 501
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    check-cast v3, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 506
    .line 507
    iget-object v3, v3, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 508
    .line 509
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    const-string v3, "\"NEW_AIRDROP5\".equals(mockFeatures.get(2).getValue())"

    .line 514
    .line 515
    invoke-static {v3, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 516
    .line 517
    .line 518
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 519
    .line 520
    const/4 v3, 0x0

    .line 521
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 526
    .line 527
    iget-boolean v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->property:Z

    .line 528
    .line 529
    const/4 v3, 0x1

    .line 530
    if-ne v0, v3, :cond_14

    .line 531
    .line 532
    const/4 v0, 0x1

    .line 533
    goto :goto_6

    .line 534
    :cond_14
    const/4 v0, 0x0

    .line 535
    :goto_6
    invoke-static {v12, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 536
    .line 537
    .line 538
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 539
    .line 540
    const/4 v3, 0x0

    .line 541
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 546
    .line 547
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 548
    .line 549
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    invoke-static {v11, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 554
    .line 555
    .line 556
    const-string v0, "1|0.9|true"

    .line 557
    .line 558
    iget-object v3, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 559
    .line 560
    const/4 v5, 0x0

    .line 561
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    check-cast v3, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 566
    .line 567
    iget-object v3, v3, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 568
    .line 569
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v0

    .line 573
    iget-object v3, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 574
    .line 575
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    check-cast v3, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 580
    .line 581
    iget-object v3, v3, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 582
    .line 583
    invoke-static {v3, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 584
    .line 585
    .line 586
    const-string v0, "com.samsung.swu.buttontest3"

    .line 587
    .line 588
    iget-object v3, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 589
    .line 590
    const/4 v5, 0x0

    .line 591
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v3

    .line 595
    check-cast v3, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 596
    .line 597
    iget-object v3, v3, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 598
    .line 599
    const/4 v5, 0x1

    .line 600
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    iget-object v3, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 609
    .line 610
    const/4 v5, 0x0

    .line 611
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    check-cast v3, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 616
    .line 617
    iget-object v3, v3, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 618
    .line 619
    const/4 v5, 0x1

    .line 620
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v3

    .line 624
    check-cast v3, Ljava/lang/String;

    .line 625
    .line 626
    invoke-static {v3, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 627
    .line 628
    .line 629
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 630
    .line 631
    const/4 v3, 0x0

    .line 632
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 637
    .line 638
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 639
    .line 640
    const/4 v3, 0x1

    .line 641
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v0

    .line 649
    iget-object v3, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 650
    .line 651
    const/4 v5, 0x0

    .line 652
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    check-cast v3, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 657
    .line 658
    iget-object v3, v3, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 659
    .line 660
    const/4 v5, 0x1

    .line 661
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v3

    .line 665
    check-cast v3, Ljava/lang/String;

    .line 666
    .line 667
    invoke-static {v3, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 668
    .line 669
    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testVerifyProperty()Z

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    if-eqz v0, :cond_15

    .line 675
    .line 676
    const/4 v3, 0x1

    .line 677
    goto :goto_7

    .line 678
    :catch_2
    move-exception v0

    .line 679
    new-instance v3, Ljava/lang/StringBuilder;

    .line 680
    .line 681
    const-string v5, "Test FAILED at testVerifyFeatures2nd "

    .line 682
    .line 683
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    :cond_15
    const/4 v3, 0x0

    .line 701
    :goto_7
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 702
    .line 703
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 708
    .line 709
    .line 710
    move-result v5

    .line 711
    if-eqz v5, :cond_16

    .line 712
    .line 713
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    move-result-object v5

    .line 717
    check-cast v5, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 718
    .line 719
    invoke-virtual {v5, v2, v10}, Lcom/samsung/android/server/dynamicfeature/DFeature;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    goto :goto_8

    .line 723
    :cond_16
    if-eqz v3, :cond_20

    .line 724
    .line 725
    const-string v0, "ABCDEFG_11111"

    .line 726
    .line 727
    const-string v2, "ABCDEFG_22222"

    .line 728
    .line 729
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 734
    .line 735
    const/4 v5, 0x0

    .line 736
    new-array v6, v5, [Ljava/lang/String;

    .line 737
    .line 738
    invoke-static {v2, v4, v6}, Lcom/samsung/android/provider/SemDynamicFeature;->getProperties(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    if-eqz v2, :cond_1f

    .line 743
    .line 744
    const-string v6, "MODE_NIGHT"

    .line 745
    .line 746
    invoke-virtual {v2, v6}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;->isAbTest(Ljava/lang/String;)Z

    .line 747
    .line 748
    .line 749
    move-result v8

    .line 750
    if-nez v8, :cond_17

    .line 751
    .line 752
    goto/16 :goto_d

    .line 753
    .line 754
    :cond_17
    iget-object v8, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 755
    .line 756
    aget-object v9, v0, v5

    .line 757
    .line 758
    invoke-virtual {v2, v8, v6, v9}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;->sendAbTestResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 759
    .line 760
    .line 761
    iget-object v5, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 762
    .line 763
    const/4 v8, 0x1

    .line 764
    aget-object v9, v0, v8

    .line 765
    .line 766
    invoke-virtual {v2, v5, v6, v9}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;->sendAbTestResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 767
    .line 768
    .line 769
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 770
    .line 771
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 776
    .line 777
    .line 778
    move-result v5

    .line 779
    if-eqz v5, :cond_19

    .line 780
    .line 781
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v5

    .line 785
    check-cast v5, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 786
    .line 787
    invoke-virtual {v5, v4, v6}, Lcom/samsung/android/server/dynamicfeature/DFeature;->isThis(Ljava/lang/String;Ljava/lang/String;)Z

    .line 788
    .line 789
    .line 790
    move-result v8

    .line 791
    if-eqz v8, :cond_18

    .line 792
    .line 793
    move-object v4, v5

    .line 794
    goto :goto_9

    .line 795
    :cond_19
    const/4 v4, 0x0

    .line 796
    :goto_9
    if-eqz v4, :cond_20

    .line 797
    .line 798
    iget-object v2, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 799
    .line 800
    if-eqz v2, :cond_1e

    .line 801
    .line 802
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 803
    .line 804
    if-eqz v5, :cond_1e

    .line 805
    .line 806
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 807
    .line 808
    .line 809
    move-result v2

    .line 810
    if-nez v2, :cond_1e

    .line 811
    .line 812
    iget-object v2, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 813
    .line 814
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 815
    .line 816
    .line 817
    move-result v2

    .line 818
    if-eqz v2, :cond_1a

    .line 819
    .line 820
    goto/16 :goto_c

    .line 821
    .line 822
    :cond_1a
    invoke-virtual {v4}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getCommentJSONArray()Lorg/json/JSONArray;

    .line 823
    .line 824
    .line 825
    move-result-object v2

    .line 826
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 827
    .line 828
    .line 829
    move-result v4

    .line 830
    if-nez v4, :cond_1b

    .line 831
    .line 832
    const-string v0, "comment is empty"

    .line 833
    .line 834
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    goto/16 :goto_e

    .line 838
    .line 839
    :cond_1b
    const/4 v4, 0x0

    .line 840
    :goto_a
    const/4 v5, 0x2

    .line 841
    if-ge v4, v5, :cond_1d

    .line 842
    .line 843
    :try_start_3
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v5

    .line 847
    aget-object v6, v0, v4

    .line 848
    .line 849
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 850
    .line 851
    .line 852
    move-result v6

    .line 853
    if-nez v6, :cond_1c

    .line 854
    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    .line 856
    .line 857
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 858
    .line 859
    .line 860
    const-string v6, "comment has problem origin"

    .line 861
    .line 862
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    const-string v6, ":"

    .line 869
    .line 870
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    aget-object v0, v0, v4

    .line 874
    .line 875
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    const-string v0, "  real : "

    .line 879
    .line 880
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    goto :goto_e

    .line 894
    :catch_3
    move-exception v0

    .line 895
    goto :goto_b

    .line 896
    :cond_1c
    new-instance v6, Ljava/lang/StringBuilder;

    .line 897
    .line 898
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    .line 900
    .line 901
    const-string v8, "AbTest : msg: "

    .line 902
    .line 903
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    aget-object v8, v0, v4

    .line 907
    .line 908
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    const-string v8, " feature : "

    .line 912
    .line 913
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v5

    .line 923
    invoke-virtual {v1, v5}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 924
    .line 925
    .line 926
    const/4 v5, 0x1

    .line 927
    add-int/2addr v4, v5

    .line 928
    goto :goto_a

    .line 929
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 930
    .line 931
    const-string v4, "FAIL : "

    .line 932
    .line 933
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    goto :goto_e

    .line 947
    :cond_1d
    const/4 v10, 0x1

    .line 948
    goto :goto_f

    .line 949
    :cond_1e
    :goto_c
    const-string v0, "feature is not commentable"

    .line 950
    .line 951
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    goto :goto_e

    .line 955
    :cond_1f
    :goto_d
    const-string v0, "Fail to get SEC_UI_MODE_NIGHT"

    .line 956
    .line 957
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 958
    .line 959
    .line 960
    :cond_20
    :goto_e
    const/4 v10, 0x0

    .line 961
    :goto_f
    and-int v0, v3, v10

    .line 962
    .line 963
    if-eqz v0, :cond_21

    .line 964
    .line 965
    invoke-virtual {v1, v7}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    goto :goto_10

    .line 969
    :cond_21
    move-object/from16 v3, v22

    .line 970
    .line 971
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testTearDown()V

    .line 975
    .line 976
    .line 977
    goto/16 :goto_22

    .line 978
    .line 979
    :pswitch_3
    const-string v7, "0"

    .line 980
    .line 981
    const-string v8, "C"

    .line 982
    .line 983
    const-string v4, "340"

    .line 984
    .line 985
    const-string v5, "10"

    .line 986
    .line 987
    const-string v6, "KOO"

    .line 988
    .line 989
    const/4 v9, 0x0

    .line 990
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 991
    .line 992
    .line 993
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateOnceRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 994
    .line 995
    invoke-virtual {v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;->run()V

    .line 996
    .line 997
    .line 998
    const-wide/16 v2, 0xc8

    .line 999
    .line 1000
    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1001
    .line 1002
    .line 1003
    goto :goto_11

    .line 1004
    :catch_4
    move-exception v0

    .line 1005
    move-object v2, v0

    .line 1006
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    const-string v2, "dynamicfeature_Service"

    .line 1011
    .line 1012
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    .line 1014
    .line 1015
    :goto_11
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHttpConnector:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 1016
    .line 1017
    invoke-virtual {v0}, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->getLastReultCode()I

    .line 1018
    .line 1019
    .line 1020
    move-result v0

    .line 1021
    const/16 v2, 0xc8

    .line 1022
    .line 1023
    if-eq v0, v2, :cond_22

    .line 1024
    .line 1025
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    const-string/jumbo v3, "result expected 200 but : "

    .line 1028
    .line 1029
    .line 1030
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    .line 1036
    const-string v0, " returned."

    .line 1037
    .line 1038
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 1046
    .line 1047
    .line 1048
    goto/16 :goto_22

    .line 1049
    .line 1050
    :cond_22
    const-string v0, "Param test success"

    .line 1051
    .line 1052
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1053
    .line 1054
    .line 1055
    goto/16 :goto_22

    .line 1056
    .line 1057
    :pswitch_4
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1058
    .line 1059
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1060
    .line 1061
    .line 1062
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 1063
    .line 1064
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 1065
    .line 1066
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1067
    .line 1068
    .line 1069
    move-object/from16 v9, v21

    .line 1070
    .line 1071
    const/4 v3, 0x0

    .line 1072
    invoke-virtual {v2, v9, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1073
    .line 1074
    .line 1075
    sget-object v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 1076
    .line 1077
    move-object/from16 v2, v20

    .line 1078
    .line 1079
    iput-object v2, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->vid:Ljava/lang/String;

    .line 1080
    .line 1081
    const-wide/16 v3, 0xf

    .line 1082
    .line 1083
    iput-wide v3, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->jobIntervalMill:J

    .line 1084
    .line 1085
    const/4 v3, 0x5

    .line 1086
    iput v3, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->flexMill:I

    .line 1087
    .line 1088
    const/4 v3, 0x0

    .line 1089
    iput-boolean v3, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->isUT:Z

    .line 1090
    .line 1091
    iput-object v2, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->lastUpdatedTime:Ljava/lang/String;

    .line 1092
    .line 1093
    const-string v0, "Clear finished"

    .line 1094
    .line 1095
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1096
    .line 1097
    .line 1098
    goto/16 :goto_22

    .line 1099
    .line 1100
    :pswitch_5
    move-object/from16 v9, v21

    .line 1101
    .line 1102
    move-object/from16 v3, v22

    .line 1103
    .line 1104
    const-string v15, "com.samsung.swu.buttontest2"

    .line 1105
    .line 1106
    const-string v3, "0.2|0.9|false"

    .line 1107
    .line 1108
    move-object/from16 v17, v7

    .line 1109
    .line 1110
    const-string v7, "\"NEW_AIRDROP2\".equals(mockFeatures.get(1).getValue())"

    .line 1111
    .line 1112
    move-object/from16 v20, v10

    .line 1113
    .line 1114
    const-string v10, "NEW_AIRDROP2"

    .line 1115
    .line 1116
    move-object/from16 v21, v6

    .line 1117
    .line 1118
    const-string v6, "\"MODE_ANIMATION\".equals(mockFeatures.get(2).getName())"

    .line 1119
    .line 1120
    move-object/from16 p1, v15

    .line 1121
    .line 1122
    const-string v15, "\"SEC_UI\".equals(mockFeatures.get(1).namespace)"

    .line 1123
    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testSetUp()V

    .line 1125
    .line 1126
    .line 1127
    move-object/from16 p3, v3

    .line 1128
    .line 1129
    const-string v3, "[start test]"

    .line 1130
    .line 1131
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    const/4 v3, 0x0

    .line 1135
    iput v3, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStage:I

    .line 1136
    .line 1137
    iput-object v8, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrefix:Ljava/lang/String;

    .line 1138
    .line 1139
    iput-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPw:Ljava/io/PrintWriter;

    .line 1140
    .line 1141
    iget-object v3, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1142
    .line 1143
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1144
    .line 1145
    .line 1146
    iget-object v3, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 1147
    .line 1148
    move-object/from16 v24, v11

    .line 1149
    .line 1150
    iget-object v11, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 1151
    .line 1152
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1153
    .line 1154
    .line 1155
    const/4 v3, 0x0

    .line 1156
    invoke-virtual {v11, v9, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1157
    .line 1158
    .line 1159
    const-string v3, "[1st parsing response]"

    .line 1160
    .line 1161
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    const/4 v3, 0x1

    .line 1165
    iput v3, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStage:I

    .line 1166
    .line 1167
    iput-object v8, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrefix:Ljava/lang/String;

    .line 1168
    .line 1169
    iput-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPw:Ljava/io/PrintWriter;

    .line 1170
    .line 1171
    const-string/jumbo v3, "{\"features\":[{\"namespace\":\"SEC_UI\",\"name\":\"MODE_NIGHT\",\"version\":\"3\",\"value\":\"2\",\"reboot\":false,\"property\":true,\"abTestTypes\":[{\"type\":\"A\",\"allocRatio\":50,\"value\":\"0.1|0.5|false\"},{\"type\":\"B\",\"allocRatio\":50,\"value\":\"0.1|0.9|false\"},{\"type\":\"C\",\"allocRatio\":50,\"value\":\"0.2|0.9|false\"}]},{\"namespace\":\"SEC_UI\",\"name\":\"MODE_ANIMATION\",\"value\":\"NEW_AIRDROP2\",\"reboot\":false,\"version\":\"4\",\"property\":true},{\"namespace\":\"SYSTEM\",\"name\":\"MODE_ANIMATION\",\"value\":\"NEW_AIRDROP2\",\"reboot\":false,\"version\":\"5\",\"property\":false}],\"virtualId\":\"9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d\",\"releasedAt\":\"2023-10-05T02:20:26\",\"abTestAllocation\":[{\"namespace\":\"SEC_UI\",\"name\":\"MODE_NIGHT\",\"abType\":\"C\",\"packagename\":[\"com.samsung.swu.buttontest\",\"com.samsung.swu.buttontest2\"],\"signature\":[\"981c60a4ad266615187fccc1461781eb62b628d102feece383046c84b5793bac\",\"r342f3ffdsf\"]}]}"

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateFeature(Ljava/lang/String;)V

    .line 1175
    .line 1176
    .line 1177
    const-wide/16 v8, 0xa

    .line 1178
    .line 1179
    :try_start_5
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1180
    .line 1181
    .line 1182
    goto :goto_12

    .line 1183
    :catch_5
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    :goto_12
    :try_start_6
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1187
    .line 1188
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1189
    .line 1190
    .line 1191
    move-result v0

    .line 1192
    const/4 v3, 0x3

    .line 1193
    if-ne v0, v3, :cond_23

    .line 1194
    .line 1195
    const/4 v0, 0x1

    .line 1196
    goto :goto_13

    .line 1197
    :cond_23
    const/4 v0, 0x0

    .line 1198
    :goto_13
    invoke-static {v14, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1199
    .line 1200
    .line 1201
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1202
    .line 1203
    const/4 v3, 0x1

    .line 1204
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v0

    .line 1208
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1209
    .line 1210
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 1211
    .line 1212
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1213
    .line 1214
    .line 1215
    move-result v0

    .line 1216
    invoke-static {v15, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1217
    .line 1218
    .line 1219
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1220
    .line 1221
    const/4 v3, 0x2

    .line 1222
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v0

    .line 1226
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1227
    .line 1228
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 1229
    .line 1230
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1231
    .line 1232
    .line 1233
    move-result v0

    .line 1234
    invoke-static {v6, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1235
    .line 1236
    .line 1237
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1238
    .line 1239
    const/4 v3, 0x1

    .line 1240
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1245
    .line 1246
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 1247
    .line 1248
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1249
    .line 1250
    .line 1251
    move-result v0

    .line 1252
    invoke-static {v7, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1253
    .line 1254
    .line 1255
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1256
    .line 1257
    const/4 v3, 0x0

    .line 1258
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v0

    .line 1262
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1263
    .line 1264
    iget-boolean v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->property:Z

    .line 1265
    .line 1266
    const/4 v3, 0x1

    .line 1267
    if-ne v0, v3, :cond_24

    .line 1268
    .line 1269
    const/4 v0, 0x1

    .line 1270
    goto :goto_14

    .line 1271
    :cond_24
    const/4 v0, 0x0

    .line 1272
    :goto_14
    invoke-static {v12, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1273
    .line 1274
    .line 1275
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1276
    .line 1277
    const/4 v3, 0x0

    .line 1278
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v0

    .line 1282
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1283
    .line 1284
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 1285
    .line 1286
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1287
    .line 1288
    .line 1289
    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    .line 1290
    move-object/from16 v3, v24

    .line 1291
    .line 1292
    :try_start_7
    invoke-static {v3, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1293
    .line 1294
    .line 1295
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1296
    .line 1297
    const/4 v8, 0x0

    .line 1298
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v0

    .line 1302
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1303
    .line 1304
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 1305
    .line 1306
    move-object/from16 v9, p3

    .line 1307
    .line 1308
    :try_start_8
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1309
    .line 1310
    .line 1311
    move-result v0

    .line 1312
    iget-object v11, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1313
    .line 1314
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v11

    .line 1318
    check-cast v11, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1319
    .line 1320
    iget-object v11, v11, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 1321
    .line 1322
    invoke-static {v11, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1323
    .line 1324
    .line 1325
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1326
    .line 1327
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v0

    .line 1331
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1332
    .line 1333
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 1334
    .line 1335
    const/4 v8, 0x1

    .line 1336
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1340
    move-object/from16 v8, p1

    .line 1341
    .line 1342
    :try_start_9
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1343
    .line 1344
    .line 1345
    move-result v0

    .line 1346
    iget-object v11, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 1347
    .line 1348
    move-object/from16 p1, v8

    .line 1349
    .line 1350
    const/4 v8, 0x0

    .line 1351
    :try_start_a
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v11

    .line 1355
    check-cast v11, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1356
    .line 1357
    iget-object v8, v11, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 1358
    .line 1359
    const/4 v11, 0x1

    .line 1360
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v8

    .line 1364
    check-cast v8, Ljava/lang/String;

    .line 1365
    .line 1366
    invoke-static {v8, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1367
    .line 1368
    .line 1369
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1370
    .line 1371
    const/4 v8, 0x0

    .line 1372
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v0

    .line 1376
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1377
    .line 1378
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 1379
    .line 1380
    const/4 v8, 0x1

    .line 1381
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 1385
    move-object/from16 v8, v21

    .line 1386
    .line 1387
    :try_start_b
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1388
    .line 1389
    .line 1390
    move-result v0

    .line 1391
    iget-object v11, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 1392
    .line 1393
    move-object/from16 v21, v8

    .line 1394
    .line 1395
    const/4 v8, 0x0

    .line 1396
    :try_start_c
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v11

    .line 1400
    check-cast v11, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1401
    .line 1402
    iget-object v8, v11, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 1403
    .line 1404
    const/4 v11, 0x1

    .line 1405
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v8

    .line 1409
    check-cast v8, Ljava/lang/String;

    .line 1410
    .line 1411
    invoke-static {v8, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testVerifyProperty()Z

    .line 1415
    .line 1416
    .line 1417
    move-result v0

    .line 1418
    if-eqz v0, :cond_25

    .line 1419
    .line 1420
    const/4 v0, 0x1

    .line 1421
    goto :goto_16

    .line 1422
    :catch_6
    move-exception v0

    .line 1423
    goto :goto_15

    .line 1424
    :catch_7
    move-exception v0

    .line 1425
    move-object/from16 v21, v8

    .line 1426
    .line 1427
    goto :goto_15

    .line 1428
    :catch_8
    move-exception v0

    .line 1429
    move-object/from16 p1, v8

    .line 1430
    .line 1431
    goto :goto_15

    .line 1432
    :catch_9
    move-exception v0

    .line 1433
    move-object/from16 v9, p3

    .line 1434
    .line 1435
    goto :goto_15

    .line 1436
    :catch_a
    move-exception v0

    .line 1437
    move-object/from16 v9, p3

    .line 1438
    .line 1439
    move-object/from16 v3, v24

    .line 1440
    .line 1441
    :goto_15
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1442
    .line 1443
    const-string v11, "Test FAILED at testVerifyFeatures1st "

    .line 1444
    .line 1445
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v0

    .line 1452
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    .line 1454
    .line 1455
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v0

    .line 1459
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1460
    .line 1461
    .line 1462
    :cond_25
    const/4 v0, 0x0

    .line 1463
    :goto_16
    iget-object v8, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1464
    .line 1465
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v8

    .line 1469
    :goto_17
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1470
    .line 1471
    .line 1472
    move-result v11

    .line 1473
    if-eqz v11, :cond_26

    .line 1474
    .line 1475
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v11

    .line 1479
    check-cast v11, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1480
    .line 1481
    move-object/from16 p3, v8

    .line 1482
    .line 1483
    move-object/from16 v8, v20

    .line 1484
    .line 1485
    invoke-virtual {v11, v2, v8}, Lcom/samsung/android/server/dynamicfeature/DFeature;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1486
    .line 1487
    .line 1488
    move-object/from16 v8, p3

    .line 1489
    .line 1490
    goto :goto_17

    .line 1491
    :cond_26
    const-string v2, "[DB test]"

    .line 1492
    .line 1493
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1494
    .line 1495
    .line 1496
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->applyNextToDB()V

    .line 1497
    .line 1498
    .line 1499
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 1500
    .line 1501
    iget-object v8, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 1502
    .line 1503
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1504
    .line 1505
    .line 1506
    invoke-static {v8}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->loadFeatures(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v2

    .line 1510
    if-eqz v0, :cond_29

    .line 1511
    .line 1512
    :try_start_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1513
    .line 1514
    .line 1515
    move-result v0

    .line 1516
    const/4 v8, 0x3

    .line 1517
    if-ne v0, v8, :cond_27

    .line 1518
    .line 1519
    const/4 v0, 0x1

    .line 1520
    goto :goto_18

    .line 1521
    :cond_27
    const/4 v0, 0x0

    .line 1522
    :goto_18
    invoke-static {v14, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1523
    .line 1524
    .line 1525
    const/4 v8, 0x1

    .line 1526
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v0

    .line 1530
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1531
    .line 1532
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 1533
    .line 1534
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1535
    .line 1536
    .line 1537
    move-result v0

    .line 1538
    invoke-static {v15, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1539
    .line 1540
    .line 1541
    const/4 v4, 0x2

    .line 1542
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v0

    .line 1546
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1547
    .line 1548
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 1549
    .line 1550
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1551
    .line 1552
    .line 1553
    move-result v0

    .line 1554
    invoke-static {v6, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1555
    .line 1556
    .line 1557
    const/4 v4, 0x1

    .line 1558
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1559
    .line 1560
    .line 1561
    move-result-object v0

    .line 1562
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1563
    .line 1564
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 1565
    .line 1566
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1567
    .line 1568
    .line 1569
    move-result v0

    .line 1570
    invoke-static {v7, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 1571
    .line 1572
    .line 1573
    const/4 v4, 0x0

    .line 1574
    :try_start_e
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v0

    .line 1578
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1579
    .line 1580
    iget-boolean v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->property:Z

    .line 1581
    .line 1582
    const/4 v6, 0x1

    .line 1583
    if-ne v0, v6, :cond_28

    .line 1584
    .line 1585
    const/4 v0, 0x1

    .line 1586
    goto :goto_19

    .line 1587
    :cond_28
    move v0, v4

    .line 1588
    :goto_19
    invoke-static {v12, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1589
    .line 1590
    .line 1591
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v0

    .line 1595
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1596
    .line 1597
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 1598
    .line 1599
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1600
    .line 1601
    .line 1602
    move-result v0

    .line 1603
    invoke-static {v3, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1604
    .line 1605
    .line 1606
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v0

    .line 1610
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1611
    .line 1612
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 1613
    .line 1614
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1615
    .line 1616
    .line 1617
    move-result v0

    .line 1618
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v3

    .line 1622
    check-cast v3, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1623
    .line 1624
    iget-object v3, v3, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 1625
    .line 1626
    invoke-static {v3, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1627
    .line 1628
    .line 1629
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v0

    .line 1633
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1634
    .line 1635
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 1636
    .line 1637
    const/4 v3, 0x1

    .line 1638
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v0

    .line 1642
    move-object/from16 v5, p1

    .line 1643
    .line 1644
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1645
    .line 1646
    .line 1647
    move-result v0

    .line 1648
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    .line 1652
    :try_start_f
    check-cast v5, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1653
    .line 1654
    iget-object v4, v5, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 1655
    .line 1656
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v4

    .line 1660
    check-cast v4, Ljava/lang/String;

    .line 1661
    .line 1662
    invoke-static {v4, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 1663
    .line 1664
    .line 1665
    const/4 v3, 0x0

    .line 1666
    :try_start_10
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v0

    .line 1670
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1671
    .line 1672
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 1673
    .line 1674
    const/4 v4, 0x1

    .line 1675
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v0

    .line 1679
    move-object/from16 v5, v21

    .line 1680
    .line 1681
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1682
    .line 1683
    .line 1684
    move-result v0

    .line 1685
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v2

    .line 1689
    check-cast v2, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1690
    .line 1691
    iget-object v2, v2, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 1692
    .line 1693
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1694
    .line 1695
    .line 1696
    move-result-object v2

    .line 1697
    check-cast v2, Ljava/lang/String;

    .line 1698
    .line 1699
    invoke-static {v2, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    .line 1700
    .line 1701
    .line 1702
    const/4 v10, 0x1

    .line 1703
    goto :goto_1c

    .line 1704
    :catch_b
    move-exception v0

    .line 1705
    goto :goto_1a

    .line 1706
    :catch_c
    move-exception v0

    .line 1707
    const/4 v3, 0x0

    .line 1708
    goto :goto_1a

    .line 1709
    :catch_d
    move-exception v0

    .line 1710
    move v3, v4

    .line 1711
    :goto_1a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1712
    .line 1713
    const-string v4, "Test FAILED at JSON PARSER "

    .line 1714
    .line 1715
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1716
    .line 1717
    .line 1718
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v0

    .line 1722
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1723
    .line 1724
    .line 1725
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v0

    .line 1729
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1730
    .line 1731
    .line 1732
    goto :goto_1b

    .line 1733
    :cond_29
    const/4 v3, 0x0

    .line 1734
    :goto_1b
    move v10, v3

    .line 1735
    :goto_1c
    const-string v0, "DB test passed"

    .line 1736
    .line 1737
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1738
    .line 1739
    .line 1740
    if-eqz v10, :cond_2a

    .line 1741
    .line 1742
    move-object/from16 v2, v17

    .line 1743
    .line 1744
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1745
    .line 1746
    .line 1747
    goto :goto_1d

    .line 1748
    :cond_2a
    move-object/from16 v2, v22

    .line 1749
    .line 1750
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1751
    .line 1752
    .line 1753
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testTearDown()V

    .line 1754
    .line 1755
    .line 1756
    goto/16 :goto_22

    .line 1757
    .line 1758
    :pswitch_6
    const/4 v3, 0x0

    .line 1759
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 1760
    .line 1761
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1762
    .line 1763
    .line 1764
    move-result-object v0

    .line 1765
    new-instance v4, Landroid/content/ComponentName;

    .line 1766
    .line 1767
    iget-object v5, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 1768
    .line 1769
    const-string v6, "com.samsung.android.server.dynamicfeature.CheckUpdateJobService"

    .line 1770
    .line 1771
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1772
    .line 1773
    .line 1774
    const/high16 v5, 0xc0000

    .line 1775
    .line 1776
    :try_start_11
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 1777
    .line 1778
    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1780
    .line 1781
    move-object/from16 v4, v19

    .line 1782
    .line 1783
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1784
    .line 1785
    .line 1786
    iget-object v4, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 1787
    .line 1788
    const-string v5, "dynamic_feature"

    .line 1789
    .line 1790
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v4

    .line 1794
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1795
    .line 1796
    .line 1797
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v0

    .line 1801
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1802
    .line 1803
    .line 1804
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1805
    .line 1806
    move-object/from16 v4, v18

    .line 1807
    .line 1808
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1809
    .line 1810
    .line 1811
    iget-boolean v4, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->isWorking:Z

    .line 1812
    .line 1813
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1814
    .line 1815
    .line 1816
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1817
    .line 1818
    .line 1819
    move-result-object v0

    .line 1820
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    .line 1821
    .line 1822
    .line 1823
    goto :goto_1e

    .line 1824
    :catch_e
    move-exception v0

    .line 1825
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1826
    .line 1827
    .line 1828
    :goto_1e
    const-string v0, "    *Basic Info"

    .line 1829
    .line 1830
    const-string v4, "       Virtual ID: "

    .line 1831
    .line 1832
    invoke-static {v2, v0, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v0

    .line 1836
    sget-object v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 1837
    .line 1838
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->vid:Ljava/lang/String;

    .line 1839
    .line 1840
    const-string v6, "       Last updated time: "

    .line 1841
    .line 1842
    invoke-static {v2, v5, v6, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1843
    .line 1844
    .line 1845
    move-result-object v0

    .line 1846
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->lastUpdatedTime:Ljava/lang/String;

    .line 1847
    .line 1848
    const-string v6, "       updateInvtervalMin: "

    .line 1849
    .line 1850
    invoke-static {v2, v5, v6, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v0

    .line 1854
    iget-wide v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->jobIntervalMill:J

    .line 1855
    .line 1856
    const-string v7, "       isUt: "

    .line 1857
    .line 1858
    invoke-static {v0, v5, v6, v2, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v0

    .line 1862
    iget-boolean v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->isUT:Z

    .line 1863
    .line 1864
    const-string v6, "       flexMill: "

    .line 1865
    .line 1866
    invoke-static {v0, v5, v2, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v0

    .line 1870
    iget v4, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->flexMill:I

    .line 1871
    .line 1872
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1873
    .line 1874
    .line 1875
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1876
    .line 1877
    .line 1878
    move-result-object v0

    .line 1879
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1880
    .line 1881
    .line 1882
    const-string v0, "    *Param Info"

    .line 1883
    .line 1884
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1885
    .line 1886
    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1888
    .line 1889
    const-string v4, "       mcc:"

    .line 1890
    .line 1891
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1892
    .line 1893
    .line 1894
    sget-object v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->paramInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;

    .line 1895
    .line 1896
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->mcc:Ljava/lang/String;

    .line 1897
    .line 1898
    const-string v6, "       mnc:"

    .line 1899
    .line 1900
    invoke-static {v2, v5, v6, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v0

    .line 1904
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->mnc:Ljava/lang/String;

    .line 1905
    .line 1906
    const-string v6, "       csc:"

    .line 1907
    .line 1908
    invoke-static {v2, v5, v6, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v0

    .line 1912
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->csc:Ljava/lang/String;

    .line 1913
    .line 1914
    const-string v6, "       sdkVersion:"

    .line 1915
    .line 1916
    invoke-static {v2, v5, v6, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v0

    .line 1920
    iget v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->sdkVersion:I

    .line 1921
    .line 1922
    const-string v6, "       oneUiVersion:"

    .line 1923
    .line 1924
    invoke-static {v0, v5, v2, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v0

    .line 1928
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->oneUiVersion:Ljava/lang/String;

    .line 1929
    .line 1930
    const-string v6, "       binaryType:"

    .line 1931
    .line 1932
    invoke-static {v2, v5, v6, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1933
    .line 1934
    .line 1935
    move-result-object v0

    .line 1936
    iget-object v4, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->binaryType:Ljava/lang/String;

    .line 1937
    .line 1938
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    .line 1940
    .line 1941
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1942
    .line 1943
    .line 1944
    move-result-object v0

    .line 1945
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1946
    .line 1947
    .line 1948
    const-string v0, "=========================================\n"

    .line 1949
    .line 1950
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1951
    .line 1952
    .line 1953
    const-string v4, "    *Event log"

    .line 1954
    .line 1955
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1956
    .line 1957
    .line 1958
    move v10, v3

    .line 1959
    :goto_1f
    const/16 v3, 0x28

    .line 1960
    .line 1961
    if-ge v10, v3, :cond_2c

    .line 1962
    .line 1963
    sget-object v3, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->circularQueue:[Ljava/lang/String;

    .line 1964
    .line 1965
    aget-object v4, v3, v10

    .line 1966
    .line 1967
    if-eqz v4, :cond_2b

    .line 1968
    .line 1969
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1970
    .line 1971
    const-string v5, "       "

    .line 1972
    .line 1973
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1974
    .line 1975
    .line 1976
    aget-object v3, v3, v10

    .line 1977
    .line 1978
    invoke-static {v4, v3, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1979
    .line 1980
    .line 1981
    :cond_2b
    const/4 v3, 0x1

    .line 1982
    add-int/2addr v10, v3

    .line 1983
    goto :goto_1f

    .line 1984
    :cond_2c
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1985
    .line 1986
    .line 1987
    :pswitch_7
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1988
    .line 1989
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1990
    .line 1991
    .line 1992
    move-result-object v0

    .line 1993
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1994
    .line 1995
    .line 1996
    move-result v3

    .line 1997
    if-eqz v3, :cond_2d

    .line 1998
    .line 1999
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v3

    .line 2003
    check-cast v3, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 2004
    .line 2005
    invoke-virtual {v3, v2, v8}, Lcom/samsung/android/server/dynamicfeature/DFeature;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2006
    .line 2007
    .line 2008
    goto :goto_20

    .line 2009
    :cond_2d
    move-object/from16 v4, v23

    .line 2010
    .line 2011
    invoke-virtual {v1, v4}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 2012
    .line 2013
    .line 2014
    goto/16 :goto_22

    .line 2015
    .line 2016
    :pswitch_8
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2017
    .line 2018
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2019
    .line 2020
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2021
    .line 2022
    .line 2023
    const-string v0, "DROP TABLE IF EXISTS DF_FEATURE_TABLE"

    .line 2024
    .line 2025
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2026
    .line 2027
    .line 2028
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2029
    .line 2030
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2031
    .line 2032
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2033
    .line 2034
    .line 2035
    const-string v0, "DROP TABLE IF EXISTS DF_INFO_TABLE"

    .line 2036
    .line 2037
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2038
    .line 2039
    .line 2040
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2041
    .line 2042
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2043
    .line 2044
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2045
    .line 2046
    .line 2047
    const-string v0, "DROP TABLE IF EXISTS DF_PARAM_TABLE"

    .line 2048
    .line 2049
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2050
    .line 2051
    .line 2052
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2053
    .line 2054
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2055
    .line 2056
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2057
    .line 2058
    .line 2059
    const-string v0, "CREATE TABLE IF NOT EXISTS DF_FEATURE_TABLE (namespace TEXT,name TEXT,value TEXT,version INTEGER,property BOOLEAN,reboot BOOLEAN,package TEXT, signature TEXT, type TEXT,  PRIMARY KEY(namespace, name))"

    .line 2060
    .line 2061
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2062
    .line 2063
    .line 2064
    const-string v0, "CREATE TABLE IF NOT EXISTS DF_INFO_TABLE (_ID INTEGER PRIMARY KEY AUTOINCREMENT, virtualid TEXT,jobIntervalMill INTEGER,usertrial TEXT,lastUpdateTime TEXT )"

    .line 2065
    .line 2066
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2067
    .line 2068
    .line 2069
    const-string v0, "CREATE TABLE IF NOT EXISTS DF_PARAM_TABLE (_ID INTEGER PRIMARY KEY AUTOINCREMENT, mcc TEXT,mnc TEXT,csc TEXT,sdkVersion INTEGER,oneUiVersion TEXT, binaryType TEXT )"

    .line 2070
    .line 2071
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2072
    .line 2073
    .line 2074
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2075
    .line 2076
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2077
    .line 2078
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2079
    .line 2080
    .line 2081
    invoke-static {v2}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->replaceBasicInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2082
    .line 2083
    .line 2084
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2085
    .line 2086
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2087
    .line 2088
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2089
    .line 2090
    .line 2091
    invoke-static {v2}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->replaceParamInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2092
    .line 2093
    .line 2094
    const-string v0, "Drop tables finished"

    .line 2095
    .line 2096
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 2097
    .line 2098
    .line 2099
    goto/16 :goto_22

    .line 2100
    .line 2101
    :pswitch_9
    move-object/from16 v4, v23

    .line 2102
    .line 2103
    array-length v0, v3

    .line 2104
    const/4 v2, 0x4

    .line 2105
    if-ge v0, v2, :cond_2e

    .line 2106
    .line 2107
    const-string v0, "Plz check usage - add namespace name value abType packageName sigHash @@"

    .line 2108
    .line 2109
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 2110
    .line 2111
    .line 2112
    goto/16 :goto_22

    .line 2113
    .line 2114
    :cond_2e
    const/4 v2, 0x1

    .line 2115
    aget-object v0, v3, v2

    .line 2116
    .line 2117
    const/4 v2, 0x2

    .line 2118
    aget-object v2, v3, v2

    .line 2119
    .line 2120
    iget-object v5, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 2121
    .line 2122
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2123
    .line 2124
    .line 2125
    move-result-object v5

    .line 2126
    :cond_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 2127
    .line 2128
    .line 2129
    move-result v6

    .line 2130
    if-eqz v6, :cond_30

    .line 2131
    .line 2132
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2133
    .line 2134
    .line 2135
    move-result-object v6

    .line 2136
    check-cast v6, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 2137
    .line 2138
    invoke-virtual {v6, v0, v2}, Lcom/samsung/android/server/dynamicfeature/DFeature;->isThis(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2139
    .line 2140
    .line 2141
    move-result v7

    .line 2142
    if-eqz v7, :cond_2f

    .line 2143
    .line 2144
    iget-object v5, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 2145
    .line 2146
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2147
    .line 2148
    .line 2149
    :cond_30
    new-instance v5, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 2150
    .line 2151
    invoke-direct {v5}, Lcom/samsung/android/server/dynamicfeature/DFeature;-><init>()V

    .line 2152
    .line 2153
    .line 2154
    iput-object v0, v5, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 2155
    .line 2156
    iput-object v2, v5, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 2157
    .line 2158
    const/4 v2, 0x3

    .line 2159
    aget-object v0, v3, v2

    .line 2160
    .line 2161
    iput-object v0, v5, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 2162
    .line 2163
    array-length v0, v3

    .line 2164
    const/4 v2, 0x5

    .line 2165
    if-lt v0, v2, :cond_31

    .line 2166
    .line 2167
    const/4 v0, 0x4

    .line 2168
    aget-object v0, v3, v0

    .line 2169
    .line 2170
    iput-object v0, v5, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 2171
    .line 2172
    :cond_31
    array-length v0, v3

    .line 2173
    const/4 v6, 0x7

    .line 2174
    if-lt v0, v6, :cond_32

    .line 2175
    .line 2176
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2177
    .line 2178
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2179
    .line 2180
    .line 2181
    aget-object v2, v3, v2

    .line 2182
    .line 2183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2184
    .line 2185
    .line 2186
    const-string v2, ",,"

    .line 2187
    .line 2188
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2189
    .line 2190
    .line 2191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2192
    .line 2193
    .line 2194
    move-result-object v0

    .line 2195
    invoke-virtual {v5, v0}, Lcom/samsung/android/server/dynamicfeature/DFeature;->setPackageNames(Ljava/lang/String;)V

    .line 2196
    .line 2197
    .line 2198
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2199
    .line 2200
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2201
    .line 2202
    .line 2203
    const/4 v6, 0x6

    .line 2204
    aget-object v3, v3, v6

    .line 2205
    .line 2206
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2207
    .line 2208
    .line 2209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2210
    .line 2211
    .line 2212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2213
    .line 2214
    .line 2215
    move-result-object v0

    .line 2216
    invoke-virtual {v5, v0}, Lcom/samsung/android/server/dynamicfeature/DFeature;->setSignatures(Ljava/lang/String;)V

    .line 2217
    .line 2218
    .line 2219
    :cond_32
    new-instance v0, Ljava/util/ArrayList;

    .line 2220
    .line 2221
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2222
    .line 2223
    .line 2224
    iput-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->nextFeatures:Ljava/util/ArrayList;

    .line 2225
    .line 2226
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 2227
    .line 2228
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2229
    .line 2230
    .line 2231
    move-result-object v0

    .line 2232
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2233
    .line 2234
    .line 2235
    move-result v2

    .line 2236
    if-eqz v2, :cond_33

    .line 2237
    .line 2238
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2239
    .line 2240
    .line 2241
    move-result-object v2

    .line 2242
    check-cast v2, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 2243
    .line 2244
    iget-object v3, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->nextFeatures:Ljava/util/ArrayList;

    .line 2245
    .line 2246
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2247
    .line 2248
    .line 2249
    goto :goto_21

    .line 2250
    :cond_33
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->nextFeatures:Ljava/util/ArrayList;

    .line 2251
    .line 2252
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2253
    .line 2254
    .line 2255
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->applyDiff()V

    .line 2256
    .line 2257
    .line 2258
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->applyNextToDB()V

    .line 2259
    .line 2260
    .line 2261
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mButler:Lcom/samsung/android/server/dynamicfeature/Butler;

    .line 2262
    .line 2263
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 2264
    .line 2265
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/dynamicfeature/Butler;->processNewFeature(Ljava/util/ArrayList;)V

    .line 2266
    .line 2267
    .line 2268
    invoke-virtual {v1, v4}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 2269
    .line 2270
    .line 2271
    goto :goto_22

    .line 2272
    :pswitch_a
    move-object/from16 v4, v23

    .line 2273
    .line 2274
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2275
    .line 2276
    iget-object v3, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2277
    .line 2278
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2279
    .line 2280
    .line 2281
    invoke-static {v3, v2}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->dumpDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/PrintWriter;)V

    .line 2282
    .line 2283
    .line 2284
    invoke-virtual {v1, v4}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 2285
    .line 2286
    .line 2287
    goto :goto_22

    .line 2288
    :pswitch_b
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateOnceRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 2289
    .line 2290
    invoke-virtual {v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;->run()V

    .line 2291
    .line 2292
    .line 2293
    const-string v0, "Update requested"

    .line 2294
    .line 2295
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 2296
    .line 2297
    .line 2298
    goto :goto_22

    .line 2299
    :pswitch_c
    array-length v0, v3

    .line 2300
    const/4 v2, 0x2

    .line 2301
    if-ge v0, v2, :cond_34

    .line 2302
    .line 2303
    const-string/jumbo v0, "please input error message"

    .line 2304
    .line 2305
    .line 2306
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 2307
    .line 2308
    .line 2309
    return-void

    .line 2310
    :cond_34
    const/4 v2, 0x1

    .line 2311
    aget-object v0, v3, v2

    .line 2312
    .line 2313
    iget-object v1, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatureServiceCallBack:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 2314
    .line 2315
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;->onSignalFire(Ljava/lang/String;)V

    .line 2316
    .line 2317
    .line 2318
    goto :goto_22

    .line 2319
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->enableService()V

    .line 2320
    .line 2321
    .line 2322
    goto :goto_22

    .line 2323
    :pswitch_e
    const/4 v2, 0x1

    .line 2324
    array-length v0, v3

    .line 2325
    const/4 v4, 0x4

    .line 2326
    if-ge v0, v4, :cond_35

    .line 2327
    .line 2328
    const-string/jumbo v0, "please input namespace name comment .. ex) SEC_UI RUNTIME FAILED"

    .line 2329
    .line 2330
    .line 2331
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 2332
    .line 2333
    .line 2334
    return-void

    .line 2335
    :cond_35
    aget-object v0, v3, v2

    .line 2336
    .line 2337
    const/4 v2, 0x2

    .line 2338
    aget-object v2, v3, v2

    .line 2339
    .line 2340
    const/4 v4, 0x3

    .line 2341
    aget-object v3, v3, v4

    .line 2342
    .line 2343
    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->sendAbTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2344
    .line 2345
    .line 2346
    :goto_22
    return-void

    .line 2347
    :sswitch_data_0
    .sparse-switch
        -0x72003d02 -> :sswitch_e
        -0x4d6ada7d -> :sswitch_d
        -0x47bd92a4 -> :sswitch_c
        -0x31ffc737 -> :sswitch_b
        0xc7e -> :sswitch_a
        0x178a1 -> :sswitch_9
        0x2f2eef -> :sswitch_8
        0x3164ae -> :sswitch_7
        0x32b09e -> :sswitch_6
        0x364492 -> :sswitch_5
        0x5a5b64d -> :sswitch_4
        0x658188d -> :sswitch_3
        0x6924de0 -> :sswitch_2
        0x4b45a824 -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    .line 2348
    .line 2349
    .line 2350
    .line 2351
    .line 2352
    .line 2353
    .line 2354
    .line 2355
    .line 2356
    .line 2357
    .line 2358
    .line 2359
    .line 2360
    .line 2361
    .line 2362
    .line 2363
    .line 2364
    .line 2365
    .line 2366
    .line 2367
    .line 2368
    .line 2369
    .line 2370
    .line 2371
    .line 2372
    .line 2373
    .line 2374
    .line 2375
    .line 2376
    .line 2377
    .line 2378
    .line 2379
    .line 2380
    .line 2381
    .line 2382
    .line 2383
    .line 2384
    .line 2385
    .line 2386
    .line 2387
    .line 2388
    .line 2389
    .line 2390
    .line 2391
    .line 2392
    .line 2393
    .line 2394
    .line 2395
    .line 2396
    .line 2397
    .line 2398
    .line 2399
    .line 2400
    .line 2401
    .line 2402
    .line 2403
    .line 2404
    .line 2405
    .line 2406
    .line 2407
    .line 2408
    .line 2409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ee(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrefix:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "   "

    .line 6
    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "dynamicfeature_Service_test"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPw:Ljava/io/PrintWriter;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, "##### "

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPw:Ljava/io/PrintWriter;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    :catch_0
    :cond_1
    return-void
.end method

.method public final declared-synchronized enableService()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHandler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->requestJobSchedulerRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$JobSchedulerRunnable;

    .line 5
    .line 6
    invoke-static {}, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->getStartMilFromNow()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->isWorking:Z

    .line 15
    .line 16
    const-string v0, "enableService"

    .line 17
    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0

    .line 29
    throw v0
.end method

.method public final getProperties(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/provider/SemDynamicFeature$Properties;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->isWorking:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string p0, "dynamicfeature_Service"

    .line 7
    .line 8
    const-string p1, "This is not working"

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    array-length v2, p2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move v2, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_3
    :goto_0
    move v2, v0

    .line 32
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    new-instance p2, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_7

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 63
    .line 64
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_4

    .line 71
    .line 72
    if-nez v2, :cond_5

    .line 73
    .line 74
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_4

    .line 81
    .line 82
    :cond_5
    new-instance v5, Lcom/samsung/android/provider/Feature;

    .line 83
    .line 84
    iget-object v6, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v7, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v4, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v4, :cond_6

    .line 91
    .line 92
    move v4, v0

    .line 93
    goto :goto_3

    .line 94
    :cond_6
    move v4, v1

    .line 95
    :goto_3
    invoke-direct {v5, v6, v7, v4}, Lcom/samsung/android/provider/Feature;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_7
    new-instance p0, Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    .line 103
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 105
    .line 106
    .line 107
    return-object p0
.end method

.method public final ll(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrefix:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "   "

    .line 6
    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "dynamicfeature_Service_test"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPw:Ljava/io/PrintWriter;

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    :cond_1
    return-void
.end method

.method public final onFeatureListUpdated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mButler:Lcom/samsung/android/server/dynamicfeature/Butler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/dynamicfeature/Butler;->processNewFeature(Ljava/util/ArrayList;)V

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v0, "DROP TABLE IF EXISTS DF_INFO_TABLE"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string v0, "CREATE TABLE IF NOT EXISTS DF_INFO_TABLE (_ID INTEGER PRIMARY KEY AUTOINCREMENT, virtualid TEXT,jobIntervalMill INTEGER,usertrial TEXT,lastUpdateTime TEXT )"

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->replaceBasicInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->replaceParamInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    sput-boolean p0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public final sendAbTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v5, "dynamicfeature_Service"

    .line 10
    .line 11
    const-string/jumbo v6, "sendAbTestResult : "

    .line 12
    .line 13
    .line 14
    const-string v7, ",  "

    .line 15
    .line 16
    invoke-static {v6, v2, v7, v3, v5}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v5, v0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->isWorking:Z

    .line 20
    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    const-string v5, "dynamicfeature_Service"

    .line 24
    .line 25
    const-string v6, "This is not working"

    .line 26
    .line 27
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v5, v0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 47
    .line 48
    invoke-virtual {v6, v1, v2}, Lcom/samsung/android/server/dynamicfeature/DFeature;->isThis(Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-eqz v8, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v6, 0x0

    .line 56
    :goto_0
    const/4 v5, 0x0

    .line 57
    if-nez v6, :cond_3

    .line 58
    .line 59
    const-string v0, "dynamicfeature_Service"

    .line 60
    .line 61
    const-string/jumbo v3, "no such feature : "

    .line 62
    .line 63
    .line 64
    const-string v4, "/"

    .line 65
    .line 66
    invoke-static {v3, v1, v4, v2, v0}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return v5

    .line 70
    :cond_3
    iget-object v8, v6, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v8, :cond_11

    .line 73
    .line 74
    iget-object v8, v6, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 75
    .line 76
    if-eqz v8, :cond_10

    .line 77
    .line 78
    iget-object v9, v6, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 79
    .line 80
    if-eqz v9, :cond_10

    .line 81
    .line 82
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-nez v8, :cond_10

    .line 87
    .line 88
    iget-object v8, v6, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_4

    .line 95
    .line 96
    goto/16 :goto_12

    .line 97
    .line 98
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    sget-object v9, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sExecutableBinaryType:Ljava/lang/String;

    .line 103
    .line 104
    const/16 v9, 0x2710

    .line 105
    .line 106
    if-le v8, v9, :cond_5

    .line 107
    .line 108
    const-string v0, "dynamicfeature_Service"

    .line 109
    .line 110
    const-string/jumbo v3, "too long comment : "

    .line 111
    .line 112
    .line 113
    const-string v4, "/"

    .line 114
    .line 115
    const-string v6, " max length of string is 10000"

    .line 116
    .line 117
    invoke-static {v3, v1, v4, v2, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    return v5

    .line 125
    :cond_5
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    iget-object v8, v6, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 128
    .line 129
    iget-object v9, v6, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    const/16 v11, 0x3e8

    .line 136
    .line 137
    if-ne v10, v11, :cond_6

    .line 138
    .line 139
    :goto_1
    const/4 v5, 0x1

    .line 140
    goto/16 :goto_e

    .line 141
    .line 142
    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    const-string v13, "dynamicfeature_InfoBoard"

    .line 151
    .line 152
    if-nez v12, :cond_7

    .line 153
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v7, " uid doesn\'t have any packages"

    .line 163
    .line 164
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    goto/16 :goto_e

    .line 175
    .line 176
    :cond_7
    move v10, v5

    .line 177
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-ge v10, v0, :cond_d

    .line 182
    .line 183
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v14

    .line 193
    check-cast v14, Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v15

    .line 199
    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v15

    .line 203
    if-nez v15, :cond_9

    .line 204
    .line 205
    :cond_8
    :goto_3
    move-object/from16 v16, v8

    .line 206
    .line 207
    move-object/from16 p0, v9

    .line 208
    .line 209
    :goto_4
    const/4 v4, 0x1

    .line 210
    goto/16 :goto_d

    .line 211
    .line 212
    :cond_9
    const/high16 v15, 0x8000000

    .line 213
    .line 214
    :try_start_0
    invoke-virtual {v11, v0, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    iget-object v15, v15, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    .line 219
    .line 220
    if-nez v15, :cond_a

    .line 221
    .line 222
    const-string/jumbo v0, "signingInfo is NULL"

    .line 223
    .line 224
    .line 225
    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_a
    invoke-virtual {v15}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 230
    .line 231
    .line 232
    move-result-object v15

    .line 233
    const-string v7, "check signature for "

    .line 234
    .line 235
    const-string v5, " with "

    .line 236
    .line 237
    invoke-static {v7, v0, v5, v14, v13}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const/4 v5, 0x0

    .line 241
    :goto_5
    array-length v7, v15

    .line 242
    if-ge v5, v7, :cond_8

    .line 243
    .line 244
    aget-object v7, v15, v5

    .line 245
    .line 246
    :try_start_1
    const-string v16, "SHA-256"

    .line 247
    .line 248
    invoke-static/range {v16 .. v16}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->digest([B)[B

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    new-instance v7, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 263
    .line 264
    .line 265
    move-object/from16 v16, v8

    .line 266
    .line 267
    :try_start_2
    array-length v8, v4
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 268
    move-object/from16 p0, v9

    .line 269
    .line 270
    const/4 v9, 0x0

    .line 271
    :goto_6
    if-ge v9, v8, :cond_b

    .line 272
    .line 273
    :try_start_3
    aget-byte v17, v4, v9

    .line 274
    .line 275
    move-object/from16 v18, v4

    .line 276
    .line 277
    const-string v4, "%02x"

    .line 278
    .line 279
    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 280
    .line 281
    .line 282
    move-result-object v17

    .line 283
    move/from16 v19, v8

    .line 284
    .line 285
    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const/4 v4, 0x1

    .line 297
    add-int/2addr v9, v4

    .line 298
    move-object/from16 v4, v18

    .line 299
    .line 300
    move/from16 v8, v19

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 307
    goto :goto_c

    .line 308
    :catch_0
    :goto_7
    move-object/from16 p0, v9

    .line 309
    .line 310
    goto :goto_9

    .line 311
    :catch_1
    :goto_8
    move-object/from16 p0, v9

    .line 312
    .line 313
    goto :goto_a

    .line 314
    :catch_2
    move-object/from16 v16, v8

    .line 315
    .line 316
    goto :goto_7

    .line 317
    :catch_3
    move-object/from16 v16, v8

    .line 318
    .line 319
    goto :goto_8

    .line 320
    :catch_4
    :goto_9
    const-string v4, "Unknown error"

    .line 321
    .line 322
    invoke-static {v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    goto :goto_b

    .line 326
    :catch_5
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v7, " doesn\'t support SHA-256"

    .line 335
    .line 336
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-static {v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    :goto_b
    const/4 v4, 0x0

    .line 347
    :goto_c
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    if-eqz v7, :cond_c

    .line 352
    .line 353
    goto/16 :goto_1

    .line 354
    .line 355
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    const-string/jumbo v8, "the real signature is "

    .line 358
    .line 359
    .line 360
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    invoke-static {v13, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    const/4 v4, 0x1

    .line 374
    add-int/2addr v5, v4

    .line 375
    move-object/from16 v9, p0

    .line 376
    .line 377
    move-object/from16 v8, v16

    .line 378
    .line 379
    goto/16 :goto_5

    .line 380
    .line 381
    :catch_6
    move-exception v0

    .line 382
    move-object/from16 v16, v8

    .line 383
    .line 384
    move-object/from16 p0, v9

    .line 385
    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string v5, "No such name : "

    .line 389
    .line 390
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    goto/16 :goto_4

    .line 408
    .line 409
    :goto_d
    add-int/2addr v10, v4

    .line 410
    move-object/from16 v9, p0

    .line 411
    .line 412
    move-object/from16 v8, v16

    .line 413
    .line 414
    const/4 v5, 0x0

    .line 415
    goto/16 :goto_2

    .line 416
    .line 417
    :cond_d
    const/4 v5, 0x0

    .line 418
    :goto_e
    if-nez v5, :cond_e

    .line 419
    .line 420
    const-string v0, "dynamicfeature_Service"

    .line 421
    .line 422
    const-string v3, "The package doesn\'t allowed to comment : "

    .line 423
    .line 424
    const-string v4, "/"

    .line 425
    .line 426
    invoke-static {v3, v1, v4, v2, v0}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    goto :goto_10

    .line 430
    :cond_e
    iget-object v4, v6, Lcom/samsung/android/server/dynamicfeature/DFeature;->abComment:Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;

    .line 431
    .line 432
    monitor-enter v4

    .line 433
    :try_start_4
    iget v0, v4, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->size:I

    .line 434
    .line 435
    const/16 v1, 0xa

    .line 436
    .line 437
    if-ne v0, v1, :cond_f

    .line 438
    .line 439
    iget v0, v4, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->front:I

    .line 440
    .line 441
    const/4 v2, 0x1

    .line 442
    add-int/2addr v0, v2

    .line 443
    rem-int/2addr v0, v1

    .line 444
    iput v0, v4, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->front:I

    .line 445
    .line 446
    const/4 v2, 0x1

    .line 447
    goto :goto_f

    .line 448
    :catchall_0
    move-exception v0

    .line 449
    goto :goto_11

    .line 450
    :cond_f
    const/4 v2, 0x1

    .line 451
    add-int/2addr v0, v2

    .line 452
    iput v0, v4, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->size:I

    .line 453
    .line 454
    :goto_f
    iget v0, v4, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->rear:I

    .line 455
    .line 456
    add-int/2addr v0, v2

    .line 457
    rem-int/2addr v0, v1

    .line 458
    iput v0, v4, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->rear:I

    .line 459
    .line 460
    iget-object v1, v4, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->queue:[Ljava/lang/String;

    .line 461
    .line 462
    aput-object v3, v1, v0

    .line 463
    .line 464
    monitor-exit v4

    .line 465
    :goto_10
    return v5

    .line 466
    :goto_11
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 467
    throw v0

    .line 468
    :cond_10
    :goto_12
    const-string v0, "dynamicfeature_Service"

    .line 469
    .line 470
    const-string v3, "feature doesn\'t support AbTest comment : "

    .line 471
    .line 472
    const-string v4, "/"

    .line 473
    .line 474
    invoke-static {v3, v1, v4, v2, v0}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    const/4 v3, 0x0

    .line 478
    return v3

    .line 479
    :cond_11
    move v3, v5

    .line 480
    const-string v0, "dynamicfeature_Service"

    .line 481
    .line 482
    const-string v4, "feature doesn\'t support AbTest : "

    .line 483
    .line 484
    const-string v5, "/"

    .line 485
    .line 486
    invoke-static {v4, v1, v5, v2, v0}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    return v3
.end method

.method public final testCheckProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, " def is:problem real value is:"

    .line 2
    .line 3
    const-string/jumbo v1, "right value is:"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "problem"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v0, "testCheckProperty : "

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    const/4 p0, 0x0

    .line 67
    return p0
.end method

.method public final testSetUp()V
    .locals 3

    .line 1
    const-string v0, "HttpConnector::stopUpdate "

    .line 2
    .line 3
    const-class v1, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I

    .line 7
    .line 8
    add-int/lit8 v2, v2, 0x1

    .line 9
    .line 10
    sput v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x5

    .line 18
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->getCallers(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, "  "

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    sget v0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    filled-new-array {v0}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit v1

    .line 47
    sget-wide v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 48
    .line 49
    iput-wide v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testOnlyBackupTermHandling:J

    .line 50
    .line 51
    sget v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_TEST_FEATURE:I

    .line 52
    .line 53
    int-to-long v0, v0

    .line 54
    sput-wide v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 55
    .line 56
    new-instance v0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;I)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testOnlyReceiver:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

    .line 63
    .line 64
    const-string v0, "com.sec.df.changed.SEC_UI.MODE_NIGHT"

    .line 65
    .line 66
    const-string v1, "com.sec.df.changed.SEC_UI.MODE_ANIMATION"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testOnlyReceiver:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

    .line 75
    .line 76
    const/4 v2, 0x2

    .line 77
    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    monitor-exit v1

    .line 83
    throw p0
.end method

.method public final testTearDown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testOnlyReceiver:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "HttpConnector::resumeUpdate "

    .line 9
    .line 10
    const-class v1, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    sget v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I

    .line 14
    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    .line 17
    sput v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x5

    .line 25
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->getCallers(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, "  "

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    sget v0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    filled-new-array {v0}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit v1

    .line 54
    iget-wide v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testOnlyBackupTermHandling:J

    .line 55
    .line 56
    sput-wide v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v1

    .line 61
    throw p0
.end method

.method public final testVerifyIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Intent1 received "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "PROPERTY_CARGO"

    .line 19
    .line 20
    const-class v1, Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "   Intent1 received properties "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "   "

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const-string v1, "__default"

    .line 50
    .line 51
    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-nez p3, :cond_0

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    if-eqz p3, :cond_1

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string/jumbo p3, "no item : may "

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p2, " is removed"

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-eqz p3, :cond_1

    .line 92
    .line 93
    const-string p3, " : "

    .line 94
    .line 95
    invoke-static {v0, p2, p3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    const-string/jumbo v0, "problem"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string p3, "   ##### testVerifyIntent: properties failed : "

    .line 120
    .line 121
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    if-nez p3, :cond_3

    .line 136
    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p2, " is removed "

    .line 146
    .line 147
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string p3, "   ##### testVerifyIntent: properties failed "

    .line 161
    .line 162
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public final testVerifyProperty()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStage:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getPersistPropertyKey()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "0.2|0.9|false"

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testCheckProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getPersistPropertyKey()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "NEW_AIRDROP2"

    .line 38
    .line 39
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testCheckProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    :goto_0
    and-int v2, v0, v1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const/4 v3, 0x2

    .line 47
    if-ne v0, v3, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getPersistPropertyKey()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "1|0.9|true"

    .line 62
    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testCheckProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const-string/jumbo v1, "persist.sys.df.SEC_UI.MODE_ANIMATION"

    .line 68
    .line 69
    .line 70
    const-string/jumbo v2, "problem"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testCheckProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string/jumbo v1, "testVerifyProperty success : "

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStage:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v1, "========= testVerifyProperty failed : "

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStage:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_2
    return v2
.end method

.method public final updateFeature(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "dynamicfeature_Service"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/server/dynamicfeature/json/JsonParser;->converter(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->nextFeatures:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p0, "No update from server"

    .line 12
    .line 13
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-static {v1, p1}, Lcom/samsung/android/server/dynamicfeature/DFeature;->isSame(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const-string p0, "Same as previous"

    .line 28
    .line 29
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->applyDiff()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->applyNextToDB()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->onFeatureListUpdated()V

    .line 40
    .line 41
    .line 42
    const-string p0, "Update complete"

    .line 43
    .line 44
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v1, "updateFeature"

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void
.end method

.method public final updateFeatureViaServer()V
    .locals 4

    .line 1
    const-string v0, "dynamicfeature_Service"

    .line 2
    .line 3
    const-string v1, "Check updates from server."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, "dynamicfeature_Service"

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    const-string v1, "dynamicfeature_Service"

    .line 13
    .line 14
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 15
    :try_start_2
    iget v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStopUpdateRequest:I

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    :try_start_3
    monitor-exit p0

    .line 21
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    const-string v0, "dynamicfeature_Service"

    .line 23
    .line 24
    const-string v1, "Start updates from server."

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHttpConnector:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 32
    .line 33
    iput-object v1, v0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mFeatures:Ljava/util/ArrayList;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatureServiceCallBack:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 36
    .line 37
    const-string v1, "dynamicfeature_HttpConnector"

    .line 38
    .line 39
    iget-object v2, v0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    new-instance v3, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-direct {v3, v0}, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :try_start_4
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/util/Pair;

    .line 55
    .line 56
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_0

    .line 65
    .line 66
    const-string v2, "No result to update"

    .line 67
    .line 68
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v2, Ljava/lang/String;

    .line 77
    .line 78
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;->onFeatureUpdateComplete(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string/jumbo v2, "requestConnection error "

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p0, v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_2
    return-void

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto :goto_5

    .line 104
    :catchall_1
    move-exception v2

    .line 105
    goto :goto_3

    .line 106
    :cond_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 107
    const/4 v1, 0x1

    .line 108
    :try_start_6
    iput-boolean v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRequestUpdate:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 109
    .line 110
    :try_start_7
    monitor-exit p0

    .line 111
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 112
    return-void

    .line 113
    :catchall_2
    move-exception v1

    .line 114
    goto :goto_4

    .line 115
    :goto_3
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 116
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 117
    :goto_4
    :try_start_a
    monitor-exit p0

    .line 118
    throw v1

    .line 119
    :goto_5
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 120
    throw p0
.end method
