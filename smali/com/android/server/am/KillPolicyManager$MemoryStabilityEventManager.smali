.class public final Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mReporter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;-><init>(Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->mReporter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final report()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->mReporter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const-wide/32 v4, 0xea60

    .line 13
    .line 14
    .line 15
    div-long/2addr v2, v4

    .line 16
    long-to-int v2, v2

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    div-long/2addr v6, v4

    .line 22
    long-to-int v3, v6

    .line 23
    iget-boolean v0, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mHasReportedAtLeastOnce:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastUptimeMinutes:I

    .line 28
    .line 29
    sub-int v0, v2, v0

    .line 30
    .line 31
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastRealtimeMinutes:I

    .line 32
    .line 33
    sub-int v4, v3, v4

    .line 34
    .line 35
    move v5, v4

    .line 36
    move v4, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v4, v2

    .line 39
    move v5, v3

    .line 40
    :goto_0
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 41
    .line 42
    const-string v6, "ActivityManager_kpm"

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    const/16 v0, 0x578

    .line 47
    .line 48
    if-ge v5, v0, :cond_1

    .line 49
    .line 50
    const-string/jumbo v0, "reportDiff() Skipped. diffRealtimeMinutes="

    .line 51
    .line 52
    .line 53
    invoke-static {v5, v0, v6}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_7

    .line 57
    .line 58
    :cond_1
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mTempCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    .line 59
    .line 60
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x3

    .line 64
    new-array v8, v0, [J

    .line 65
    .line 66
    const/4 v9, 0x0

    .line 67
    :try_start_0
    const-string v0, "/sys/block/zram0/mm_stat"

    .line 68
    .line 69
    sget-object v10, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->FORMAT_ZRAM_ERROR:[I

    .line 70
    .line 71
    const/4 v11, 0x0

    .line 72
    invoke-static {v0, v10, v11, v8, v11}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 73
    .line 74
    .line 75
    move-result v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move v0, v9

    .line 86
    :goto_1
    iget-object v10, v7, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 87
    .line 88
    const/4 v11, 0x1

    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    aget-wide v12, v8, v11

    .line 92
    .line 93
    aput-wide v12, v10, v9

    .line 94
    .line 95
    const/4 v9, 0x2

    .line 96
    aget-wide v8, v8, v9

    .line 97
    .line 98
    aput-wide v8, v10, v11

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    const-wide/16 v12, -0x1

    .line 102
    .line 103
    aput-wide v12, v10, v9

    .line 104
    .line 105
    aput-wide v12, v10, v11

    .line 106
    .line 107
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string/jumbo v9, "readProcFile(mmstat) success="

    .line 110
    .line 111
    .line 112
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mDiffCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    move v8, v11

    .line 131
    :goto_3
    if-ltz v8, :cond_3

    .line 132
    .line 133
    iget-object v9, v7, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 134
    .line 135
    aget-wide v9, v9, v8

    .line 136
    .line 137
    iget-object v12, v0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 138
    .line 139
    aput-wide v9, v12, v8

    .line 140
    .line 141
    add-int/lit8 v8, v8, -0x1

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_3
    iget-boolean v8, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mHasReportedAtLeastOnce:Z

    .line 145
    .line 146
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 147
    .line 148
    iget-object v9, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    .line 149
    .line 150
    if-eqz v8, :cond_5

    .line 151
    .line 152
    move v8, v11

    .line 153
    :goto_4
    if-ltz v8, :cond_5

    .line 154
    .line 155
    aget-wide v12, v0, v8

    .line 156
    .line 157
    iget-object v10, v9, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 158
    .line 159
    aget-wide v14, v10, v8

    .line 160
    .line 161
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 162
    .line 163
    .line 164
    move-result-wide v12

    .line 165
    const-wide/16 v14, 0x0

    .line 166
    .line 167
    cmp-long v10, v12, v14

    .line 168
    .line 169
    if-gez v10, :cond_4

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_4
    aget-wide v12, v0, v8

    .line 173
    .line 174
    iget-object v10, v9, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 175
    .line 176
    aget-wide v14, v10, v8

    .line 177
    .line 178
    sub-long/2addr v12, v14

    .line 179
    :goto_5
    aput-wide v12, v0, v8

    .line 180
    .line 181
    add-int/lit8 v8, v8, -0x1

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_5
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastUptimeMinutes:I

    .line 185
    .line 186
    iput v3, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastRealtimeMinutes:I

    .line 187
    .line 188
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    move v2, v11

    .line 192
    :goto_6
    if-ltz v2, :cond_6

    .line 193
    .line 194
    iget-object v3, v7, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 195
    .line 196
    aget-wide v12, v3, v2

    .line 197
    .line 198
    iget-object v3, v9, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 199
    .line 200
    aput-wide v12, v3, v2

    .line 201
    .line 202
    add-int/lit8 v2, v2, -0x1

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_6
    iget-boolean v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mHasReportedAtLeastOnce:Z

    .line 206
    .line 207
    if-nez v2, :cond_7

    .line 208
    .line 209
    iput-boolean v11, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mHasReportedAtLeastOnce:Z

    .line 210
    .line 211
    :cond_7
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    .line 212
    .line 213
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v3, "UTDIFF"

    .line 217
    .line 218
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    .line 220
    .line 221
    const-string v3, "RTDIFF"

    .line 222
    .line 223
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    .line 225
    .line 226
    const-string v3, "ZRERR"

    .line 227
    .line 228
    new-instance v4, Lorg/json/JSONArray;

    .line 229
    .line 230
    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    sub-int/2addr v2, v11

    .line 245
    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->this$1:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

    .line 250
    .line 251
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 252
    .line 253
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    .line 254
    .line 255
    if-nez v2, :cond_8

    .line 256
    .line 257
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 258
    .line 259
    const-string v3, "HqmManagerService"

    .line 260
    .line 261
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    check-cast v2, Landroid/os/SemHqmManager;

    .line 266
    .line 267
    iput-object v2, v1, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    .line 268
    .line 269
    if-nez v2, :cond_8

    .line 270
    .line 271
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 272
    .line 273
    if-eqz v0, :cond_a

    .line 274
    .line 275
    const-string v0, "HQM services is not working"

    .line 276
    .line 277
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_8
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    .line 282
    .line 283
    sget-boolean v13, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 284
    .line 285
    const-string v17, "1.1"

    .line 286
    .line 287
    const-string/jumbo v18, "sec"

    .line 288
    .line 289
    .line 290
    const-string v14, "Sluggish"

    .line 291
    .line 292
    const-string v15, "MSEC"

    .line 293
    .line 294
    const-string/jumbo v16, "ph"

    .line 295
    .line 296
    .line 297
    const-string v19, ""

    .line 298
    .line 299
    const-string v21, ""

    .line 300
    .line 301
    move-object/from16 v20, v0

    .line 302
    .line 303
    invoke-virtual/range {v12 .. v21}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_9

    .line 308
    .line 309
    const-string v1, "Success to report \'MSEC\' : "

    .line 310
    .line 311
    invoke-static {v1, v0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_9
    const-string v0, "Failed to send to server"

    .line 316
    .line 317
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    goto :goto_7

    .line 321
    :catch_1
    move-exception v0

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string v2, "JSON Exception: "

    .line 325
    .line 326
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    :cond_a
    :goto_7
    return-void
.end method
