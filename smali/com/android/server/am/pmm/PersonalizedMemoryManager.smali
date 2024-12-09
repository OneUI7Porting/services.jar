.class public final Lcom/android/server/am/pmm/PersonalizedMemoryManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;


# virtual methods
.method public final onMemoryEvent(Landroid/content/Context;Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p2, v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    .line 13
    .line 14
    const-string/jumbo p2, "getDmaBufSizeKb()="

    .line 15
    .line 16
    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isListenerAppInstalled(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput-boolean v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsListenerAppInstalled:Z

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsReporting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iget-boolean v2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsTestMode:Z

    .line 46
    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    const-string p1, "DmaBufLeakDetector"

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getDmaBufSizeKb()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p2, ", getLargestDmaBufProcess()="

    .line 64
    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getLargestDmaBufProcess()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p2, ", isCameraRunning()="

    .line 76
    .line 77
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isCameraRunning()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p2, ", mLeakThreshold="

    .line 88
    .line 89
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget p2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLeakThreshold:F

    .line 93
    .line 94
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p2, ", mIsListenerAppInstalled="

    .line 98
    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-boolean p2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsListenerAppInstalled:Z

    .line 103
    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    goto/16 :goto_1

    .line 115
    .line 116
    :cond_3
    iget-boolean p2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsListenerAppInstalled:Z

    .line 117
    .line 118
    if-eqz p2, :cond_7

    .line 119
    .line 120
    iget-wide v2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLastLeakTime:J

    .line 121
    .line 122
    const-wide/32 v4, 0x927c0

    .line 123
    .line 124
    .line 125
    add-long/2addr v2, v4

    .line 126
    cmp-long p2, v0, v2

    .line 127
    .line 128
    if-lez p2, :cond_9

    .line 129
    .line 130
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isCameraRunning()Z

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-nez p2, :cond_6

    .line 135
    .line 136
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getDmaBufSizeKb()J

    .line 137
    .line 138
    .line 139
    move-result-wide v2

    .line 140
    long-to-float p2, v2

    .line 141
    iget v2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLeakThreshold:F

    .line 142
    .line 143
    cmpl-float p2, p2, v2

    .line 144
    .line 145
    if-lez p2, :cond_6

    .line 146
    .line 147
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getLargestDmaBufProcess()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    if-nez p2, :cond_4

    .line 152
    .line 153
    monitor-exit p0

    .line 154
    goto :goto_2

    .line 155
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isCameraRunning()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-nez v2, :cond_5

    .line 160
    .line 161
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getDmaBufSizeKb()J

    .line 162
    .line 163
    .line 164
    move-result-wide v2

    .line 165
    long-to-float v2, v2

    .line 166
    iget v3, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLeakThreshold:F

    .line 167
    .line 168
    cmpl-float v2, v2, v3

    .line 169
    .line 170
    if-lez v2, :cond_5

    .line 171
    .line 172
    iput-wide v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLastLeakTime:J

    .line 173
    .line 174
    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsReporting:Z

    .line 176
    .line 177
    new-instance v0, Ljava/lang/Thread;

    .line 178
    .line 179
    new-instance v1, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda1;

    .line 180
    .line 181
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/pmm/DmaBufLeakDetector;Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 185
    .line 186
    .line 187
    const-string p1, "DmaBufLeakDetector"

    .line 188
    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_5
    monitor-exit p0

    .line 197
    goto :goto_2

    .line 198
    :cond_6
    monitor-exit p0

    .line 199
    goto :goto_2

    .line 200
    :cond_7
    :try_start_3
    iget-wide p1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLastCheckTime:J

    .line 201
    .line 202
    const-wide/32 v2, 0xea60

    .line 203
    .line 204
    .line 205
    add-long/2addr p1, v2

    .line 206
    cmp-long p1, v0, p1

    .line 207
    .line 208
    if-lez p1, :cond_9

    .line 209
    .line 210
    iput-wide v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLastCheckTime:J

    .line 211
    .line 212
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isCameraRunning()Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-nez p1, :cond_8

    .line 217
    .line 218
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getDmaBufSizeKb()J

    .line 219
    .line 220
    .line 221
    move-result-wide p1

    .line 222
    long-to-float p1, p1

    .line 223
    iget p2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLeakThreshold:F

    .line 224
    .line 225
    cmpl-float p1, p1, p2

    .line 226
    .line 227
    if-lez p1, :cond_8

    .line 228
    .line 229
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getLargestDmaBufProcess()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_8
    monitor-exit p0

    .line 234
    goto :goto_2

    .line 235
    :cond_9
    :goto_1
    monitor-exit p0

    .line 236
    :goto_2
    return-void

    .line 237
    :goto_3
    monitor-exit p0

    .line 238
    throw p1
.end method
