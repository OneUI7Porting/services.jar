.class public final Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mProcDumpMemThread:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;

.field public final mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

.field public procsMemoryPssKbByADJ:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public static -$$Nest$mgetProcDumpMemInfo(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    new-instance v2, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18
    .line 19
    .line 20
    monitor-enter v3

    .line 21
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 24
    .line 25
    iget-object v5, v5, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 26
    .line 27
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 28
    .line 29
    iget-object v5, v5, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_0

    .line 43
    .line 44
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 49
    .line 50
    iget v7, v6, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 51
    .line 52
    invoke-virtual {v2, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_4

    .line 58
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 60
    .line 61
    .line 62
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 63
    .line 64
    iget-object v3, v3, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 65
    .line 66
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 67
    .line 68
    new-instance v5, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    invoke-direct {v5, p0, v2}, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Landroid/util/SparseArray;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v5}, Lcom/android/server/am/AppProfiler;->forAllCpuStats(Ljava/util/function/Consumer;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    add-int/lit8 v2, v2, -0x1

    .line 81
    .line 82
    :goto_1
    if-ltz v2, :cond_4

    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 89
    .line 90
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 91
    .line 92
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getSetAdjWithServices()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 97
    .line 98
    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 99
    .line 100
    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 101
    .line 102
    const/4 v8, 0x0

    .line 103
    :goto_2
    sget-object v9, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    .line 104
    .line 105
    array-length v10, v9

    .line 106
    if-ge v8, v10, :cond_2

    .line 107
    .line 108
    array-length v10, v9

    .line 109
    add-int/lit8 v10, v10, -0x1

    .line 110
    .line 111
    if-eq v8, v10, :cond_3

    .line 112
    .line 113
    aget v10, v9, v8

    .line 114
    .line 115
    if-lt v5, v10, :cond_1

    .line 116
    .line 117
    add-int/lit8 v10, v8, 0x1

    .line 118
    .line 119
    aget v9, v9, v10

    .line 120
    .line 121
    if-ge v5, v9, :cond_1

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_2
    const/4 v8, -0x1

    .line 128
    :cond_3
    :goto_3
    iget v3, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 129
    .line 130
    invoke-virtual {p0, v3, v8, v6, v7}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->getProcDumpMemInfoInternal(IIILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    add-int/lit8 v2, v2, -0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 137
    .line 138
    .line 139
    move-result-wide v2

    .line 140
    sub-long/2addr v2, v0

    .line 141
    sget-boolean p0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 142
    .line 143
    if-eqz p0, :cond_5

    .line 144
    .line 145
    const-string p0, "ActivityManager_kpm"

    .line 146
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string/jumbo v1, "getProcDumpMemInfo() elapsed time "

    .line 150
    .line 151
    .line 152
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v1, " ms"

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_5
    return-void

    .line 171
    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 173
    .line 174
    .line 175
    throw p0
.end method

.method public static -$$Nest$mshowDebugAdjPss(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    if-ge v4, v2, :cond_2

    .line 12
    .line 13
    aget-object v5, v1, v4

    .line 14
    .line 15
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    const-string v7, "ActivityManager_kpm"

    .line 22
    .line 23
    const-string v8, "[ADJ Label] : "

    .line 24
    .line 25
    if-eqz v6, :cond_1

    .line 26
    .line 27
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, [J

    .line 34
    .line 35
    aget-wide v9, v6, v3

    .line 36
    .line 37
    const/4 v11, 0x1

    .line 38
    aget-wide v12, v6, v11

    .line 39
    .line 40
    add-long/2addr v9, v12

    .line 41
    const-wide/16 v12, 0x0

    .line 42
    .line 43
    cmp-long v14, v9, v12

    .line 44
    .line 45
    if-gez v14, :cond_0

    .line 46
    .line 47
    move-wide v9, v12

    .line 48
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const/16 v13, 0x80

    .line 51
    .line 52
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, " - total: "

    .line 62
    .line 63
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    long-to-double v8, v9

    .line 67
    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    .line 68
    .line 69
    div-double/2addr v8, v13

    .line 70
    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    .line 71
    .line 72
    add-double/2addr v8, v15

    .line 73
    double-to-int v5, v8

    .line 74
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v5, " mb, pss: "

    .line 78
    .line 79
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    aget-wide v8, v6, v3

    .line 83
    .line 84
    long-to-double v8, v8

    .line 85
    div-double/2addr v8, v13

    .line 86
    add-double/2addr v8, v15

    .line 87
    double-to-int v5, v8

    .line 88
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v5, " mb, swappss: "

    .line 92
    .line 93
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    aget-wide v8, v6, v11

    .line 97
    .line 98
    long-to-double v8, v8

    .line 99
    div-double/2addr v8, v13

    .line 100
    add-double/2addr v8, v15

    .line 101
    double-to-int v5, v8

    .line 102
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v5, " mb, writeback: "

    .line 106
    .line 107
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const/4 v5, 0x2

    .line 111
    aget-wide v8, v6, v5

    .line 112
    .line 113
    long-to-double v8, v8

    .line 114
    div-double/2addr v8, v13

    .line 115
    add-double/2addr v8, v15

    .line 116
    double-to-int v5, v8

    .line 117
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v5, " mb, count: "

    .line 121
    .line 122
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const/4 v5, 0x3

    .line 126
    aget-wide v5, v6, v5

    .line 127
    .line 128
    invoke-static {v12, v5, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    const-string v6, " - this ADJ not found"

    .line 133
    .line 134
    invoke-static {v8, v5, v6, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getProcDumpMemInfoInternal(IIILjava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    const/4 v9, 0x3

    .line 9
    const/4 v10, 0x1

    .line 10
    const-string/jumbo v11, "failed to read "

    .line 11
    .line 12
    .line 13
    const-string v12, "ActivityManager"

    .line 14
    .line 15
    if-gtz v2, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_5

    .line 19
    :cond_0
    const-string v0, "Writeback:"

    .line 20
    .line 21
    const-string v13, "Pss:"

    .line 22
    .line 23
    const-string v14, "SwapPss:"

    .line 24
    .line 25
    filled-new-array {v13, v14, v0}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v13, "/proc/"

    .line 30
    .line 31
    const-string v14, "/smaps_rollup"

    .line 32
    .line 33
    invoke-static {v2, v13, v14}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v13

    .line 37
    new-array v14, v9, [J

    .line 38
    .line 39
    :try_start_0
    new-instance v15, Ljava/io/BufferedReader;

    .line 40
    .line 41
    new-instance v4, Ljava/io/FileReader;

    .line 42
    .line 43
    invoke-direct {v4, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v15, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    move v4, v8

    .line 50
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    if-eqz v5, :cond_4

    .line 55
    .line 56
    aget-object v7, v0, v4

    .line 57
    .line 58
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-nez v7, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const-string v7, "\\s+"

    .line 66
    .line 67
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    array-length v7, v5

    .line 72
    if-ne v7, v9, :cond_3

    .line 73
    .line 74
    aget-object v5, v5, v10

    .line 75
    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    int-to-long v6, v5

    .line 81
    aput-wide v6, v14, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    move-object v4, v0

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    :goto_1
    add-int/2addr v4, v10

    .line 88
    if-ne v4, v9, :cond_1

    .line 89
    .line 90
    :cond_4
    :try_start_2
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :goto_2
    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    move-object v5, v0

    .line 100
    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    :goto_3
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 104
    :catch_0
    invoke-static {v11, v13, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :catch_1
    invoke-static {v11, v13, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_4
    move-object v0, v14

    .line 112
    :goto_5
    if-nez v0, :cond_5

    .line 113
    .line 114
    return-void

    .line 115
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/server/chimera/heimdall/Heimdall;->readMemtrackMemory(I)[J

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    if-eqz v4, :cond_6

    .line 120
    .line 121
    array-length v5, v4

    .line 122
    const/4 v6, 0x4

    .line 123
    if-lt v5, v6, :cond_6

    .line 124
    .line 125
    aget-wide v5, v4, v9

    .line 126
    .line 127
    const-wide/16 v11, 0x0

    .line 128
    .line 129
    cmp-long v5, v5, v11

    .line 130
    .line 131
    if-nez v5, :cond_6

    .line 132
    .line 133
    aget-wide v5, v0, v8

    .line 134
    .line 135
    aget-wide v11, v4, v8

    .line 136
    .line 137
    aget-wide v13, v4, v10

    .line 138
    .line 139
    add-long/2addr v11, v13

    .line 140
    const/4 v7, 0x2

    .line 141
    aget-wide v13, v4, v7

    .line 142
    .line 143
    add-long/2addr v11, v13

    .line 144
    add-long/2addr v11, v5

    .line 145
    aput-wide v11, v0, v8

    .line 146
    .line 147
    :cond_6
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 148
    .line 149
    aget-object v4, v4, v3

    .line 150
    .line 151
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    .line 152
    .line 153
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-nez v5, :cond_7

    .line 158
    .line 159
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    .line 160
    .line 161
    aget-wide v6, v0, v8

    .line 162
    .line 163
    aget-wide v11, v0, v10

    .line 164
    .line 165
    const/4 v13, 0x2

    .line 166
    aget-wide v14, v0, v13

    .line 167
    .line 168
    const/4 v9, 0x4

    .line 169
    new-array v9, v9, [J

    .line 170
    .line 171
    aput-wide v6, v9, v8

    .line 172
    .line 173
    aput-wide v11, v9, v10

    .line 174
    .line 175
    aput-wide v14, v9, v13

    .line 176
    .line 177
    const/4 v6, 0x3

    .line 178
    const-wide/16 v11, 0x1

    .line 179
    .line 180
    aput-wide v11, v9, v6

    .line 181
    .line 182
    invoke-virtual {v5, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    const/4 v6, 0x2

    .line 186
    goto :goto_6

    .line 187
    :cond_7
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    .line 188
    .line 189
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    check-cast v5, [J

    .line 194
    .line 195
    aget-wide v6, v5, v8

    .line 196
    .line 197
    aget-wide v11, v0, v8

    .line 198
    .line 199
    add-long/2addr v6, v11

    .line 200
    aput-wide v6, v5, v8

    .line 201
    .line 202
    aget-wide v6, v5, v10

    .line 203
    .line 204
    aget-wide v11, v0, v10

    .line 205
    .line 206
    add-long/2addr v6, v11

    .line 207
    aput-wide v6, v5, v10

    .line 208
    .line 209
    const/4 v6, 0x2

    .line 210
    aget-wide v11, v5, v6

    .line 211
    .line 212
    aget-wide v13, v0, v6

    .line 213
    .line 214
    add-long/2addr v11, v13

    .line 215
    aput-wide v11, v5, v6

    .line 216
    .line 217
    const/4 v7, 0x3

    .line 218
    aget-wide v11, v5, v7

    .line 219
    .line 220
    const-wide/16 v13, 0x1

    .line 221
    .line 222
    add-long/2addr v11, v13

    .line 223
    aput-wide v11, v5, v7

    .line 224
    .line 225
    :goto_6
    aget-wide v11, v0, v8

    .line 226
    .line 227
    aget-wide v13, v0, v10

    .line 228
    .line 229
    aget-wide v8, v0, v6

    .line 230
    .line 231
    const-string v7, ""

    .line 232
    .line 233
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    .line 234
    .line 235
    iget v15, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    .line 236
    .line 237
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 238
    .line 239
    const-wide/high16 v18, 0x4090000000000000L    # 1024.0

    .line 240
    .line 241
    if-eq v15, v6, :cond_8

    .line 242
    .line 243
    goto :goto_9

    .line 244
    :cond_8
    if-nez p4, :cond_9

    .line 245
    .line 246
    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2

    .line 250
    goto :goto_7

    .line 251
    :catch_2
    move-object v2, v7

    .line 252
    :goto_7
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-eqz v6, :cond_a

    .line 257
    .line 258
    const-string v2, "<invalid>"

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_9
    move-object/from16 v2, p4

    .line 262
    .line 263
    :cond_a
    :goto_8
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    .line 264
    .line 265
    new-instance v6, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;

    .line 266
    .line 267
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 268
    .line 269
    .line 270
    iput-object v2, v6, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->processName:Ljava/lang/String;

    .line 271
    .line 272
    iput v3, v6, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->adjLabelIndex:I

    .line 273
    .line 274
    move/from16 v2, p3

    .line 275
    .line 276
    iput v2, v6, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->procState:I

    .line 277
    .line 278
    add-long/2addr v11, v13

    .line 279
    long-to-double v2, v11

    .line 280
    div-double v2, v2, v18

    .line 281
    .line 282
    add-double v2, v2, v16

    .line 283
    .line 284
    double-to-int v2, v2

    .line 285
    iput v2, v6, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->pssInMb:I

    .line 286
    .line 287
    long-to-double v2, v13

    .line 288
    div-double v2, v2, v18

    .line 289
    .line 290
    add-double v2, v2, v16

    .line 291
    .line 292
    double-to-int v2, v2

    .line 293
    iput v2, v6, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->swapPssInMb:I

    .line 294
    .line 295
    long-to-double v2, v8

    .line 296
    div-double v2, v2, v18

    .line 297
    .line 298
    add-double v2, v2, v16

    .line 299
    .line 300
    double-to-int v2, v2

    .line 301
    iput v2, v6, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->writebackInMb:I

    .line 302
    .line 303
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    .line 304
    .line 305
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    :goto_9
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 309
    .line 310
    if-eqz v1, :cond_b

    .line 311
    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const/16 v2, 0x80

    .line 315
    .line 316
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 317
    .line 318
    .line 319
    const-string/jumbo v2, "getProcDumpMemInfo() adj: "

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v2, ", pss: "

    .line 329
    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const/4 v2, 0x0

    .line 334
    aget-wide v2, v0, v2

    .line 335
    .line 336
    long-to-double v2, v2

    .line 337
    div-double v2, v2, v18

    .line 338
    .line 339
    add-double v2, v2, v16

    .line 340
    .line 341
    double-to-int v2, v2

    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v2, " mb, swappss: "

    .line 346
    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    aget-wide v2, v0, v10

    .line 351
    .line 352
    long-to-double v2, v2

    .line 353
    div-double v2, v2, v18

    .line 354
    .line 355
    add-double v2, v2, v16

    .line 356
    .line 357
    double-to-int v2, v2

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v2, " mb, writeback:"

    .line 362
    .line 363
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const/4 v2, 0x2

    .line 367
    aget-wide v2, v0, v2

    .line 368
    .line 369
    long-to-double v2, v2

    .line 370
    div-double v2, v2, v18

    .line 371
    .line 372
    add-double v2, v2, v16

    .line 373
    .line 374
    double-to-int v0, v2

    .line 375
    const-string v2, " mb"

    .line 376
    .line 377
    const-string v3, "ActivityManager_kpm"

    .line 378
    .line 379
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    :cond_b
    return-void
.end method
