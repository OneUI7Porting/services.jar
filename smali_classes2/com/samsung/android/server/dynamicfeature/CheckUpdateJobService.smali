.class public Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;
.super Landroid/app/job/JobService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static isStarted:Z = false

.field public static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static cancelJob()V
    .locals 4

    .line 1
    const-string v0, "dynamicfeature_CheckUpdateJobService"

    .line 2
    .line 3
    sget-boolean v1, Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;->isStarted:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;->sContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "jobscheduler"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/app/job/JobScheduler;

    .line 17
    .line 18
    const/16 v2, 0x2a18

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    sput-boolean v1, Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;->isStarted:Z

    .line 25
    .line 26
    const-string v1, "Cancel job scheduler "

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "JobScheduler : "

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public static scheduleDynamicFeatureScheduler(Landroid/content/Context;Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "start job scheduler : "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "next job is : "

    .line 5
    .line 6
    .line 7
    const-string v2, "DynamicFeatureService is working : "

    .line 8
    .line 9
    const-string v3, "dynamicfeature_CheckUpdateJobService"

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    const-string v4, "dynamicfeature_CheckUpdateJobService"

    .line 13
    .line 14
    const-string/jumbo v5, "start job scheduler request  ======="

    .line 15
    .line 16
    .line 17
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    sget-boolean v4, Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;->isStarted:Z

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    monitor-exit v3

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    if-nez p1, :cond_1

    .line 30
    .line 31
    const-string p0, "dynamicfeature_CheckUpdateJobService"

    .line 32
    .line 33
    const-string p1, "DynamicFeatureService is not started"

    .line 34
    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    monitor-exit v3

    .line 39
    return-void

    .line 40
    :cond_1
    const-string v4, "dynamicfeature_CheckUpdateJobService"

    .line 41
    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    new-instance p1, Landroid/content/ComponentName;

    .line 59
    .line 60
    const-string v2, "com.samsung.android.server.dynamicfeature.CheckUpdateJobService"

    .line 61
    .line 62
    invoke-direct {p1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v2, "dynamicfeature_CheckUpdateJobService"

    .line 66
    .line 67
    const-string/jumbo v3, "start job scheduler begin!  ==========  "

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :try_start_1
    const-string v2, "jobscheduler"

    .line 74
    .line 75
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Landroid/app/job/JobScheduler;

    .line 80
    .line 81
    sput-object p0, Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;->sContext:Landroid/content/Context;

    .line 82
    .line 83
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    .line 84
    .line 85
    const/16 v3, 0x2a18

    .line 86
    .line 87
    invoke-direct {p0, v3, p1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 88
    .line 89
    .line 90
    sget-object p1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 91
    .line 92
    iget-wide v3, p1, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->jobIntervalMill:J

    .line 93
    .line 94
    const v5, 0xea60

    .line 95
    .line 96
    .line 97
    int-to-long v6, v5

    .line 98
    mul-long/2addr v3, v6

    .line 99
    iget p1, p1, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->flexMill:I

    .line 100
    .line 101
    mul-int/2addr p1, v5

    .line 102
    int-to-long v8, p1

    .line 103
    invoke-virtual {p0, v3, v4, v8, v9}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const/4 p1, 0x1

    .line 108
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const-wide/16 v3, 0x0

    .line 113
    .line 114
    invoke-virtual {p0, v3, v4}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {v2, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-ne p0, p1, :cond_2

    .line 127
    .line 128
    sput-boolean p1, Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;->isStarted:Z

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :catch_0
    move-exception p0

    .line 132
    goto :goto_1

    .line 133
    :cond_2
    :goto_0
    const-string p1, "dynamicfeature_CheckUpdateJobService"

    .line 134
    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    sget-object v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 141
    .line 142
    iget-wide v3, v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->jobIntervalMill:J

    .line 143
    .line 144
    mul-long/2addr v3, v6

    .line 145
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, " flex : "

    .line 149
    .line 150
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    sget-object v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 154
    .line 155
    iget v1, v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->flexMill:I

    .line 156
    .line 157
    mul-int/2addr v1, v5

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    const-string p1, "dynamicfeature_CheckUpdateJobService"

    .line 169
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :goto_1
    const-string p1, "dynamicfeature_CheckUpdateJobService"

    .line 187
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v1, "JobScheduler : "

    .line 191
    .line 192
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-static {p0, v0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :goto_2
    return-void

    .line 199
    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    throw p0
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 1
    const-string v0, "dynamicfeature_CheckUpdateJobService"

    .line 2
    .line 3
    const-string/jumbo v1, "onStartJob for update ==================== "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    :try_start_0
    const-class v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string p0, "DynamicFeatureService is not started"

    .line 21
    .line 22
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateFeatureViaServer()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 32
    .line 33
    .line 34
    const-string/jumbo p0, "onStartJob finished ==================== "

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string/jumbo v1, "onStartJob : "

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0, p1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    const/4 p0, 0x1

    .line 53
    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    const-string p0, "dynamicfeature_CheckUpdateJobService"

    .line 2
    .line 3
    const-string/jumbo p1, "onStopJob for update ====================="

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method
