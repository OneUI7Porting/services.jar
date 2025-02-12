.class public final Lcom/android/server/DiskStatsService;
.super Landroid/os/Binder;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    sget-object p0, Lcom/android/server/storage/DiskStatsLoggingService;->sDiskStatsLoggingService:Landroid/content/ComponentName;

    .line 7
    .line 8
    const-string/jumbo p0, "jobscheduler"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 16
    .line 17
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    .line 18
    .line 19
    const v0, 0x4449534b

    .line 20
    .line 21
    .line 22
    sget-object v1, Lcom/android/server/storage/DiskStatsLoggingService;->sDiskStatsLoggingService:Landroid/content/ComponentName;

    .line 23
    .line 24
    invoke-direct {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    const-wide/16 v1, 0x1

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V
    .locals 15

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    const-string v0, "Invalid stat: bsize="

    .line 8
    .line 9
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    int-to-long v5, v5

    .line 23
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    int-to-long v7, v7

    .line 28
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    int-to-long v9, v4

    .line 33
    const-wide/16 v11, 0x0

    .line 34
    .line 35
    cmp-long v4, v5, v11

    .line 36
    .line 37
    if-lez v4, :cond_1

    .line 38
    .line 39
    cmp-long v4, v9, v11

    .line 40
    .line 41
    if-lez v4, :cond_1

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    const-wide v13, 0x20b00000004L

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 51
    .line 52
    .line 53
    move-result-wide v13

    .line 54
    const-wide v11, 0x10e00000001L

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    move/from16 v0, p4

    .line 60
    .line 61
    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 62
    .line 63
    .line 64
    mul-long/2addr v7, v5

    .line 65
    const-wide/16 v11, 0x400

    .line 66
    .line 67
    div-long/2addr v7, v11

    .line 68
    const-wide v11, 0x10300000002L

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 74
    .line 75
    .line 76
    mul-long/2addr v9, v5

    .line 77
    const-wide/16 v4, 0x400

    .line 78
    .line 79
    div-long/2addr v9, v4

    .line 80
    const-wide v4, 0x10300000003L

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v4, v5, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    goto :goto_1

    .line 94
    :cond_0
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v0, "-Free: "

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    mul-long v11, v7, v5

    .line 103
    .line 104
    const-wide/16 v13, 0x400

    .line 105
    .line 106
    div-long/2addr v11, v13

    .line 107
    invoke-virtual {v2, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    .line 108
    .line 109
    .line 110
    const-string v0, "K / "

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    mul-long/2addr v5, v9

    .line 116
    div-long/2addr v5, v13

    .line 117
    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 118
    .line 119
    .line 120
    const-string v0, "K total = "

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-wide/16 v4, 0x64

    .line 126
    .line 127
    mul-long/2addr v7, v4

    .line 128
    div-long/2addr v7, v9

    .line 129
    invoke-virtual {v2, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 130
    .line 131
    .line 132
    const-string v0, "% free"

    .line 133
    .line 134
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :goto_0
    return-void

    .line 138
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    new-instance v11, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v0, " avail="

    .line 149
    .line 150
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v0, " total="

    .line 157
    .line 158
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_1
    if-eqz v3, :cond_2

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_2
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string v1, "-Error: "

    .line 179
    .line 180
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :goto_2
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 24

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move-object/from16 v0, p0

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v3, "DiskStatsService"

    .line 10
    .line 11
    invoke-static {v0, v3, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/16 v0, 0x200

    .line 19
    .line 20
    new-array v4, v0, [B

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    move v6, v5

    .line 24
    :goto_0
    if-ge v6, v0, :cond_1

    .line 25
    .line 26
    int-to-byte v7, v6

    .line 27
    aput-byte v7, v4, v6

    .line 28
    .line 29
    add-int/lit8 v6, v6, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v6, Ljava/io/File;

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string/jumbo v7, "system/perftest.tmp"

    .line 39
    .line 40
    .line 41
    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    const/4 v9, 0x0

    .line 49
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    .line 50
    .line 51
    invoke-direct {v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    .line 53
    .line 54
    :try_start_1
    invoke-virtual {v10, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    .line 59
    .line 60
    :catch_0
    move-object v0, v9

    .line 61
    goto :goto_3

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    move-object v9, v10

    .line 64
    goto :goto_1

    .line 65
    :catch_1
    move-exception v0

    .line 66
    goto :goto_2

    .line 67
    :catchall_1
    move-exception v0

    .line 68
    goto :goto_1

    .line 69
    :catch_2
    move-exception v0

    .line 70
    move-object v10, v9

    .line 71
    goto :goto_2

    .line 72
    :goto_1
    if-eqz v9, :cond_2

    .line 73
    .line 74
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 75
    .line 76
    .line 77
    :catch_3
    :cond_2
    throw v0

    .line 78
    :goto_2
    if-eqz v10, :cond_3

    .line 79
    .line 80
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 81
    .line 82
    .line 83
    :catch_4
    :cond_3
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v10

    .line 87
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 94
    .line 95
    .line 96
    :cond_4
    array-length v4, v2

    .line 97
    move v6, v5

    .line 98
    :goto_4
    const/4 v12, 0x1

    .line 99
    if-ge v6, v4, :cond_6

    .line 100
    .line 101
    aget-object v13, v2, v6

    .line 102
    .line 103
    const-string v14, "--proto"

    .line 104
    .line 105
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    if-eqz v13, :cond_5

    .line 110
    .line 111
    move v2, v12

    .line 112
    goto :goto_5

    .line 113
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_6
    move v2, v5

    .line 117
    :goto_5
    if-eqz v2, :cond_9

    .line 118
    .line 119
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    .line 120
    .line 121
    move-object/from16 v4, p1

    .line 122
    .line 123
    invoke-direct {v1, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 124
    .line 125
    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    move v4, v12

    .line 129
    goto :goto_6

    .line 130
    :cond_7
    move v4, v5

    .line 131
    :goto_6
    const-wide v13, 0x10800000001L

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 137
    .line 138
    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    const-wide v6, 0x10900000002L

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_8
    const-wide v13, 0x10500000003L

    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    sub-long/2addr v10, v7

    .line 160
    invoke-virtual {v1, v13, v14, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 161
    .line 162
    .line 163
    :goto_7
    move-object/from16 v23, v9

    .line 164
    .line 165
    move-object v9, v1

    .line 166
    move-object/from16 v1, v23

    .line 167
    .line 168
    goto :goto_8

    .line 169
    :cond_9
    if-eqz v0, :cond_a

    .line 170
    .line 171
    const-string v4, "Test-Error: "

    .line 172
    .line 173
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_8

    .line 184
    :cond_a
    const-string v0, "Latency: "

    .line 185
    .line 186
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    sub-long/2addr v10, v7

    .line 190
    invoke-virtual {v1, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 191
    .line 192
    .line 193
    const-string/jumbo v0, "ms [512B Data Write]"

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :goto_8
    const-string/jumbo v0, "storaged not found"

    .line 200
    .line 201
    .line 202
    const-string/jumbo v4, "storaged"

    .line 203
    .line 204
    .line 205
    const-string v6, "Recent Disk Write Speed data unavailable!"

    .line 206
    .line 207
    const-wide/16 v7, 0x0

    .line 208
    .line 209
    if-eqz v2, :cond_d

    .line 210
    .line 211
    :try_start_5
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    if-eqz v4, :cond_c

    .line 216
    .line 217
    invoke-static {v4}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-interface {v0}, Landroid/os/IStoraged;->getRecentPerf()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    int-to-long v10, v0

    .line 226
    cmp-long v0, v10, v7

    .line 227
    .line 228
    if-eqz v0, :cond_b

    .line 229
    .line 230
    const-wide v6, 0x10500000007L

    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    invoke-virtual {v9, v6, v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 236
    .line 237
    .line 238
    goto :goto_b

    .line 239
    :catch_5
    move-exception v0

    .line 240
    goto :goto_9

    .line 241
    :cond_b
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    goto :goto_b

    .line 245
    :cond_c
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 246
    .line 247
    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5

    .line 251
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    goto :goto_b

    .line 259
    :cond_d
    :try_start_6
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    if-eqz v4, :cond_f

    .line 264
    .line 265
    invoke-static {v4}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-interface {v0}, Landroid/os/IStoraged;->getRecentPerf()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    int-to-long v10, v0

    .line 274
    cmp-long v0, v10, v7

    .line 275
    .line 276
    if-eqz v0, :cond_e

    .line 277
    .line 278
    const-string v0, "Recent Disk Write Speed (kB/s) = "

    .line 279
    .line 280
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v10, v11}, Ljava/io/PrintWriter;->println(J)V

    .line 284
    .line 285
    .line 286
    goto :goto_b

    .line 287
    :catch_6
    move-exception v0

    .line 288
    goto :goto_a

    .line 289
    :cond_e
    const-string v0, "Recent Disk Write Speed data unavailable"

    .line 290
    .line 291
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    goto :goto_b

    .line 298
    :cond_f
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 299
    .line 300
    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6

    .line 304
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    :goto_b
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    const-string v4, "Data"

    .line 323
    .line 324
    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 325
    .line 326
    .line 327
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    const-string v4, "Cache"

    .line 332
    .line 333
    invoke-static {v0, v4, v1, v9, v12}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 334
    .line 335
    .line 336
    new-instance v0, Ljava/io/File;

    .line 337
    .line 338
    const-string v4, "/system"

    .line 339
    .line 340
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    const-string v4, "System"

    .line 344
    .line 345
    const/4 v6, 0x2

    .line 346
    invoke-static {v0, v4, v1, v9, v6}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 347
    .line 348
    .line 349
    invoke-static {}, Landroid/os/Environment;->getMetadataDirectory()Ljava/io/File;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    const-string v4, "Metadata"

    .line 354
    .line 355
    const/4 v6, 0x3

    .line 356
    invoke-static {v0, v4, v1, v9, v6}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 357
    .line 358
    .line 359
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-eqz v2, :cond_11

    .line 364
    .line 365
    const-wide v7, 0x10e00000005L

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    if-eqz v0, :cond_10

    .line 371
    .line 372
    invoke-virtual {v9, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 373
    .line 374
    .line 375
    goto :goto_c

    .line 376
    :cond_10
    invoke-virtual {v9, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 377
    .line 378
    .line 379
    goto :goto_c

    .line 380
    :cond_11
    if-eqz v0, :cond_12

    .line 381
    .line 382
    const-string v0, "File-based Encryption: true"

    .line 383
    .line 384
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    :cond_12
    :goto_c
    const-string/jumbo v4, "exception reading diskstats cache file"

    .line 388
    .line 389
    .line 390
    const-string/jumbo v0, "cacheSizes"

    .line 391
    .line 392
    .line 393
    const-string/jumbo v6, "appDataSizes"

    .line 394
    .line 395
    .line 396
    const-string/jumbo v7, "appSizes"

    .line 397
    .line 398
    .line 399
    const-string/jumbo v8, "packageNames"

    .line 400
    .line 401
    .line 402
    const-string/jumbo v10, "otherSize"

    .line 403
    .line 404
    .line 405
    const-string/jumbo v11, "systemSize"

    .line 406
    .line 407
    .line 408
    const-string/jumbo v12, "downloadsSize"

    .line 409
    .line 410
    .line 411
    const-string/jumbo v13, "audioSize"

    .line 412
    .line 413
    .line 414
    const-string/jumbo v14, "videosSize"

    .line 415
    .line 416
    .line 417
    const-string/jumbo v15, "photosSize"

    .line 418
    .line 419
    .line 420
    const-string/jumbo v5, "cacheSize"

    .line 421
    .line 422
    .line 423
    move-object/from16 p1, v1

    .line 424
    .line 425
    const-string/jumbo v1, "appDataSize"

    .line 426
    .line 427
    .line 428
    move-object/from16 p2, v4

    .line 429
    .line 430
    const-string/jumbo v4, "appSize"

    .line 431
    .line 432
    .line 433
    const-string v16, "/data/system/diskstats_cache.json"

    .line 434
    .line 435
    if-eqz v2, :cond_15

    .line 436
    .line 437
    move/from16 p3, v2

    .line 438
    .line 439
    :try_start_7
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_8

    .line 443
    move-object/from16 v17, v3

    .line 444
    .line 445
    :try_start_8
    new-instance v3, Lorg/json/JSONObject;

    .line 446
    .line 447
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    move-object v2, v6

    .line 451
    move-object/from16 v18, v7

    .line 452
    .line 453
    const-wide v6, 0x10b00000006L

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 459
    .line 460
    .line 461
    move-result-wide v6

    .line 462
    move-wide/from16 v19, v6

    .line 463
    .line 464
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 465
    .line 466
    .line 467
    move-result-wide v6

    .line 468
    move-object/from16 v21, v10

    .line 469
    .line 470
    move-object/from16 v22, v11

    .line 471
    .line 472
    const-wide v10, 0x10300000001L

    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    invoke-virtual {v9, v10, v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 481
    .line 482
    .line 483
    move-result-wide v6

    .line 484
    const-wide v10, 0x1030000000aL

    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    invoke-virtual {v9, v10, v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 493
    .line 494
    .line 495
    move-result-wide v4

    .line 496
    const-wide v6, 0x10300000002L

    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    invoke-virtual {v9, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 505
    .line 506
    .line 507
    move-result-wide v4

    .line 508
    const-wide v10, 0x10300000003L

    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    invoke-virtual {v9, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 517
    .line 518
    .line 519
    move-result-wide v4

    .line 520
    const-wide v14, 0x10300000004L

    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    invoke-virtual {v9, v14, v15, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 529
    .line 530
    .line 531
    move-result-wide v4

    .line 532
    const-wide v10, 0x10300000005L

    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    invoke-virtual {v9, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 541
    .line 542
    .line 543
    move-result-wide v4

    .line 544
    const-wide v10, 0x10300000006L

    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    invoke-virtual {v9, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 550
    .line 551
    .line 552
    move-object/from16 v10, v22

    .line 553
    .line 554
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 555
    .line 556
    .line 557
    move-result-wide v4

    .line 558
    const-wide v10, 0x10300000007L

    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    invoke-virtual {v9, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 564
    .line 565
    .line 566
    move-object/from16 v11, v21

    .line 567
    .line 568
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 569
    .line 570
    .line 571
    move-result-wide v4

    .line 572
    const-wide v10, 0x10300000008L

    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    invoke-virtual {v9, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    move-object/from16 v4, v18

    .line 585
    .line 586
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 587
    .line 588
    .line 589
    move-result-object v4

    .line 590
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 603
    .line 604
    .line 605
    move-result v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_9

    .line 606
    if-ne v3, v5, :cond_14

    .line 607
    .line 608
    :try_start_9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 609
    .line 610
    .line 611
    move-result v5

    .line 612
    if-ne v3, v5, :cond_14

    .line 613
    .line 614
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 615
    .line 616
    .line 617
    move-result v5

    .line 618
    if-ne v3, v5, :cond_14

    .line 619
    .line 620
    const/4 v5, 0x0

    .line 621
    :goto_d
    if-ge v5, v3, :cond_13

    .line 622
    .line 623
    const-wide v10, 0x20b00000009L

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 629
    .line 630
    .line 631
    move-result-wide v10

    .line 632
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v8

    .line 636
    const-wide v12, 0x10900000001L

    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    invoke-virtual {v9, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getLong(I)J

    .line 645
    .line 646
    .line 647
    move-result-wide v12

    .line 648
    invoke-virtual {v9, v6, v7, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getLong(I)J

    .line 652
    .line 653
    .line 654
    move-result-wide v12

    .line 655
    invoke-virtual {v9, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getLong(I)J

    .line 659
    .line 660
    .line 661
    move-result-wide v12

    .line 662
    const-wide v6, 0x10300000003L

    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    invoke-virtual {v9, v6, v7, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    .line 671
    .line 672
    .line 673
    add-int/lit8 v5, v5, 0x1

    .line 674
    .line 675
    const-wide v6, 0x10300000002L

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    goto :goto_d

    .line 681
    :catch_7
    move-exception v0

    .line 682
    move-object/from16 v6, p2

    .line 683
    .line 684
    move-object/from16 v3, v17

    .line 685
    .line 686
    goto :goto_11

    .line 687
    :cond_13
    move-object/from16 v3, v17

    .line 688
    .line 689
    :goto_e
    move-wide/from16 v0, v19

    .line 690
    .line 691
    goto :goto_f

    .line 692
    :cond_14
    :try_start_a
    const-string v0, "Sizes of packageNamesArray, appSizesArray, appDataSizesArray  and cacheSizesArray are not the same"
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_9

    .line 693
    .line 694
    move-object/from16 v3, v17

    .line 695
    .line 696
    :try_start_b
    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    .line 698
    .line 699
    goto :goto_e

    .line 700
    :goto_f
    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_8

    .line 701
    .line 702
    .line 703
    goto :goto_12

    .line 704
    :catch_8
    move-exception v0

    .line 705
    :goto_10
    move-object/from16 v6, p2

    .line 706
    .line 707
    goto :goto_11

    .line 708
    :catch_9
    move-exception v0

    .line 709
    move-object/from16 v3, v17

    .line 710
    .line 711
    goto :goto_10

    .line 712
    :goto_11
    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    .line 714
    .line 715
    :goto_12
    move-object/from16 v17, v9

    .line 716
    .line 717
    goto/16 :goto_16

    .line 718
    .line 719
    :cond_15
    move/from16 p3, v2

    .line 720
    .line 721
    move-object v2, v6

    .line 722
    move-object/from16 v17, v9

    .line 723
    .line 724
    move-object/from16 v6, p2

    .line 725
    .line 726
    move-object/from16 v23, v11

    .line 727
    .line 728
    move-object v11, v10

    .line 729
    move-object/from16 v10, v23

    .line 730
    .line 731
    :try_start_c
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v9
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_c

    .line 735
    move-object/from16 v16, v3

    .line 736
    .line 737
    :try_start_d
    new-instance v3, Lorg/json/JSONObject;

    .line 738
    .line 739
    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    const-string v9, "App Size: "
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_b

    .line 743
    .line 744
    move-object/from16 p2, v6

    .line 745
    .line 746
    move-object/from16 v6, p1

    .line 747
    .line 748
    :try_start_e
    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    move-object/from16 v18, v7

    .line 752
    .line 753
    move-object/from16 p0, v8

    .line 754
    .line 755
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 756
    .line 757
    .line 758
    move-result-wide v7

    .line 759
    invoke-virtual {v6, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 760
    .line 761
    .line 762
    const-string v4, "App Data Size: "

    .line 763
    .line 764
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 768
    .line 769
    .line 770
    move-result-wide v7

    .line 771
    invoke-virtual {v6, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 772
    .line 773
    .line 774
    const-string v1, "App Cache Size: "

    .line 775
    .line 776
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 780
    .line 781
    .line 782
    move-result-wide v4

    .line 783
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 784
    .line 785
    .line 786
    const-string v1, "Photos Size: "

    .line 787
    .line 788
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 792
    .line 793
    .line 794
    move-result-wide v4

    .line 795
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 796
    .line 797
    .line 798
    const-string v1, "Videos Size: "

    .line 799
    .line 800
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 804
    .line 805
    .line 806
    move-result-wide v4

    .line 807
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 808
    .line 809
    .line 810
    const-string v1, "Audio Size: "

    .line 811
    .line 812
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 816
    .line 817
    .line 818
    move-result-wide v4

    .line 819
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 820
    .line 821
    .line 822
    const-string v1, "Downloads Size: "

    .line 823
    .line 824
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 828
    .line 829
    .line 830
    move-result-wide v4

    .line 831
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 832
    .line 833
    .line 834
    const-string v1, "System Size: "

    .line 835
    .line 836
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 840
    .line 841
    .line 842
    move-result-wide v4

    .line 843
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 844
    .line 845
    .line 846
    const-string v1, "Other Size: "

    .line 847
    .line 848
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 852
    .line 853
    .line 854
    move-result-wide v4

    .line 855
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 856
    .line 857
    .line 858
    const-string v1, "Package Names: "

    .line 859
    .line 860
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    move-object/from16 v1, p0

    .line 864
    .line 865
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 870
    .line 871
    .line 872
    const-string v1, "App Sizes: "

    .line 873
    .line 874
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 875
    .line 876
    .line 877
    move-object/from16 v1, v18

    .line 878
    .line 879
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 880
    .line 881
    .line 882
    move-result-object v1

    .line 883
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 884
    .line 885
    .line 886
    const-string v1, "App Data Sizes: "

    .line 887
    .line 888
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 892
    .line 893
    .line 894
    move-result-object v1

    .line 895
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 896
    .line 897
    .line 898
    const-string v1, "Cache Sizes: "

    .line 899
    .line 900
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_a

    .line 908
    .line 909
    .line 910
    goto :goto_16

    .line 911
    :catch_a
    move-exception v0

    .line 912
    :goto_13
    move-object/from16 v2, p2

    .line 913
    .line 914
    move-object/from16 v1, v16

    .line 915
    .line 916
    goto :goto_15

    .line 917
    :catch_b
    move-exception v0

    .line 918
    :goto_14
    move-object/from16 p2, v6

    .line 919
    .line 920
    goto :goto_13

    .line 921
    :catch_c
    move-exception v0

    .line 922
    move-object/from16 v16, v3

    .line 923
    .line 924
    goto :goto_14

    .line 925
    :goto_15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 926
    .line 927
    .line 928
    :goto_16
    if-eqz p3, :cond_16

    .line 929
    .line 930
    invoke-virtual/range {v17 .. v17}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 931
    .line 932
    .line 933
    :cond_16
    return-void
.end method
