.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;

.field public final synthetic f$1:[Landroid/os/Debug$MemoryInfo;

.field public final synthetic f$10:[J

.field public final synthetic f$11:[J

.field public final synthetic f$12:[J

.field public final synthetic f$13:[J

.field public final synthetic f$14:[J

.field public final synthetic f$15:[Ljava/util/ArrayList;

.field public final synthetic f$16:[J

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

.field public final synthetic f$4:[J

.field public final synthetic f$5:[J

.field public final synthetic f$6:Ljava/util/ArrayList;

.field public final synthetic f$7:[J

.field public final synthetic f$8:[J

.field public final synthetic f$9:[J


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;[Landroid/os/Debug$MemoryInfo;Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;[J[JLjava/util/ArrayList;[J[J[J[J[J[J[J[J[Ljava/util/ArrayList;[J)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$0:Landroid/util/SparseArray;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$1:[Landroid/os/Debug$MemoryInfo;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$2:Z

    .line 13
    .line 14
    move-object v1, p3

    .line 15
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

    .line 16
    .line 17
    move-object v1, p4

    .line 18
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$4:[J

    .line 19
    .line 20
    move-object v1, p5

    .line 21
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$5:[J

    .line 22
    .line 23
    move-object v1, p6

    .line 24
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$6:Ljava/util/ArrayList;

    .line 25
    .line 26
    move-object v1, p7

    .line 27
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$7:[J

    .line 28
    .line 29
    move-object v1, p8

    .line 30
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$8:[J

    .line 31
    .line 32
    move-object v1, p9

    .line 33
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$9:[J

    .line 34
    .line 35
    move-object v1, p10

    .line 36
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$10:[J

    .line 37
    .line 38
    move-object v1, p11

    .line 39
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$11:[J

    .line 40
    .line 41
    move-object v1, p12

    .line 42
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$12:[J

    .line 43
    .line 44
    move-object v1, p13

    .line 45
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$13:[J

    .line 46
    .line 47
    move-object/from16 v1, p14

    .line 48
    .line 49
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$14:[J

    .line 50
    .line 51
    move-object/from16 v1, p15

    .line 52
    .line 53
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$15:[Ljava/util/ArrayList;

    .line 54
    .line 55
    move-object/from16 v1, p16

    .line 56
    .line 57
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$16:[J

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$0:Landroid/util/SparseArray;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$1:[Landroid/os/Debug$MemoryInfo;

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$2:Z

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$4:[J

    .line 12
    .line 13
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$5:[J

    .line 14
    .line 15
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$6:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$7:[J

    .line 18
    .line 19
    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$8:[J

    .line 20
    .line 21
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$9:[J

    .line 22
    .line 23
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$10:[J

    .line 24
    .line 25
    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$11:[J

    .line 26
    .line 27
    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$12:[J

    .line 28
    .line 29
    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$13:[J

    .line 30
    .line 31
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$14:[J

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$15:[Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda39;->f$16:[J

    .line 38
    .line 39
    move-object/from16 p0, v0

    .line 40
    .line 41
    move-object/from16 v0, p1

    .line 42
    .line 43
    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 44
    .line 45
    move-object/from16 v17, v14

    .line 46
    .line 47
    move-object/from16 v18, v15

    .line 48
    .line 49
    iget-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 50
    .line 51
    const-wide/16 v19, 0x0

    .line 52
    .line 53
    cmp-long v14, v14, v19

    .line 54
    .line 55
    if-lez v14, :cond_7

    .line 56
    .line 57
    iget v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 58
    .line 59
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-gez v1, :cond_7

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    aget-object v14, v2, v1

    .line 67
    .line 68
    if-nez v14, :cond_0

    .line 69
    .line 70
    new-instance v14, Landroid/os/Debug$MemoryInfo;

    .line 71
    .line 72
    invoke-direct {v14}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 73
    .line 74
    .line 75
    aput-object v14, v2, v1

    .line 76
    .line 77
    :cond_0
    aget-object v2, v2, v1

    .line 78
    .line 79
    const/4 v14, 0x2

    .line 80
    if-nez v3, :cond_1

    .line 81
    .line 82
    iget-boolean v3, v4, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    .line 83
    .line 84
    if-nez v3, :cond_1

    .line 85
    .line 86
    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 87
    .line 88
    invoke-static {v3, v2}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_3

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :cond_1
    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 97
    .line 98
    const/4 v4, 0x0

    .line 99
    invoke-static {v3, v5, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    cmp-long v15, v3, v19

    .line 104
    .line 105
    if-nez v15, :cond_2

    .line 106
    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :cond_2
    long-to-int v3, v3

    .line 110
    iput v3, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 111
    .line 112
    aget-wide v3, v5, v1

    .line 113
    .line 114
    long-to-int v3, v3

    .line 115
    iput v3, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 116
    .line 117
    aget-wide v3, v5, v14

    .line 118
    .line 119
    long-to-int v3, v3

    .line 120
    iput v3, v2, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 121
    .line 122
    :cond_3
    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    int-to-long v3, v3

    .line 127
    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    int-to-long v14, v5

    .line 132
    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    move-object/from16 v33, v2

    .line 137
    .line 138
    int-to-long v1, v5

    .line 139
    const/16 v5, 0xc

    .line 140
    .line 141
    aget-wide v19, v6, v5

    .line 142
    .line 143
    add-long v19, v19, v3

    .line 144
    .line 145
    aput-wide v19, v6, v5

    .line 146
    .line 147
    const/16 v5, 0xd

    .line 148
    .line 149
    aget-wide v19, v6, v5

    .line 150
    .line 151
    add-long v19, v19, v14

    .line 152
    .line 153
    aput-wide v19, v6, v5

    .line 154
    .line 155
    const/16 v5, 0xe

    .line 156
    .line 157
    aget-wide v19, v6, v5

    .line 158
    .line 159
    add-long v19, v19, v1

    .line 160
    .line 161
    aput-wide v19, v6, v5

    .line 162
    .line 163
    const/16 v5, 0x10

    .line 164
    .line 165
    aget-wide v19, v6, v5

    .line 166
    .line 167
    add-long v19, v19, v3

    .line 168
    .line 169
    aput-wide v19, v6, v5

    .line 170
    .line 171
    new-instance v5, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 172
    .line 173
    move-wide/from16 v34, v14

    .line 174
    .line 175
    new-instance v14, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    iget-object v15, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v15, " (pid "

    .line 186
    .line 187
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget v15, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 191
    .line 192
    move-object/from16 v36, v13

    .line 193
    .line 194
    const-string v13, ")"

    .line 195
    .line 196
    invoke-static {v15, v14, v13}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v20

    .line 200
    iget-object v13, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual/range {v33 .. v33}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    .line 203
    .line 204
    .line 205
    move-result v14

    .line 206
    int-to-long v14, v14

    .line 207
    move-object/from16 v37, v12

    .line 208
    .line 209
    iget v12, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 210
    .line 211
    iget v0, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 212
    .line 213
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 214
    .line 215
    .line 216
    move-result v31

    .line 217
    const/16 v32, 0x0

    .line 218
    .line 219
    const-wide/16 v28, 0x0

    .line 220
    .line 221
    move-object/from16 v19, v5

    .line 222
    .line 223
    move-object/from16 v21, v13

    .line 224
    .line 225
    move-wide/from16 v22, v3

    .line 226
    .line 227
    move-wide/from16 v24, v14

    .line 228
    .line 229
    move-wide/from16 v26, v1

    .line 230
    .line 231
    move/from16 v30, v12

    .line 232
    .line 233
    invoke-direct/range {v19 .. v32}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJIIZ)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    const/4 v0, 0x0

    .line 240
    aget-wide v12, v6, v0

    .line 241
    .line 242
    move-object/from16 v7, v33

    .line 243
    .line 244
    iget v14, v7, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 245
    .line 246
    int-to-long v14, v14

    .line 247
    add-long/2addr v12, v14

    .line 248
    aput-wide v12, v6, v0

    .line 249
    .line 250
    const/4 v0, 0x1

    .line 251
    aget-wide v12, v6, v0

    .line 252
    .line 253
    iget v14, v7, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    .line 254
    .line 255
    int-to-long v14, v14

    .line 256
    add-long/2addr v12, v14

    .line 257
    aput-wide v12, v6, v0

    .line 258
    .line 259
    const/4 v0, 0x2

    .line 260
    aget-wide v12, v6, v0

    .line 261
    .line 262
    iget v14, v7, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 263
    .line 264
    int-to-long v14, v14

    .line 265
    add-long/2addr v12, v14

    .line 266
    aput-wide v12, v6, v0

    .line 267
    .line 268
    const/4 v0, 0x4

    .line 269
    aget-wide v12, v6, v0

    .line 270
    .line 271
    iget v14, v7, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 272
    .line 273
    int-to-long v14, v14

    .line 274
    add-long/2addr v12, v14

    .line 275
    aput-wide v12, v6, v0

    .line 276
    .line 277
    const/4 v0, 0x5

    .line 278
    aget-wide v12, v6, v0

    .line 279
    .line 280
    iget v14, v7, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    .line 281
    .line 282
    int-to-long v14, v14

    .line 283
    add-long/2addr v12, v14

    .line 284
    aput-wide v12, v6, v0

    .line 285
    .line 286
    const/4 v0, 0x6

    .line 287
    aget-wide v12, v6, v0

    .line 288
    .line 289
    iget v14, v7, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 290
    .line 291
    int-to-long v14, v14

    .line 292
    add-long/2addr v12, v14

    .line 293
    aput-wide v12, v6, v0

    .line 294
    .line 295
    const/4 v0, 0x0

    .line 296
    :goto_0
    array-length v12, v8

    .line 297
    if-ge v0, v12, :cond_4

    .line 298
    .line 299
    aget-wide v12, v8, v0

    .line 300
    .line 301
    add-int/lit8 v14, v0, 0x11

    .line 302
    .line 303
    invoke-virtual {v7, v14}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    .line 304
    .line 305
    .line 306
    move-result v15

    .line 307
    move-wide/from16 v19, v1

    .line 308
    .line 309
    int-to-long v1, v15

    .line 310
    add-long/2addr v12, v1

    .line 311
    aput-wide v12, v8, v0

    .line 312
    .line 313
    aget-wide v1, v9, v0

    .line 314
    .line 315
    invoke-virtual {v7, v14}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    .line 316
    .line 317
    .line 318
    move-result v12

    .line 319
    int-to-long v12, v12

    .line 320
    add-long/2addr v1, v12

    .line 321
    aput-wide v1, v9, v0

    .line 322
    .line 323
    aget-wide v1, v10, v0

    .line 324
    .line 325
    invoke-virtual {v7, v14}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    .line 326
    .line 327
    .line 328
    move-result v12

    .line 329
    int-to-long v12, v12

    .line 330
    add-long/2addr v1, v12

    .line 331
    aput-wide v1, v10, v0

    .line 332
    .line 333
    add-int/lit8 v0, v0, 0x1

    .line 334
    .line 335
    move-wide/from16 v1, v19

    .line 336
    .line 337
    goto :goto_0

    .line 338
    :cond_4
    move-wide/from16 v19, v1

    .line 339
    .line 340
    const/16 v0, 0x8

    .line 341
    .line 342
    aget-wide v1, v6, v0

    .line 343
    .line 344
    iget v8, v7, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 345
    .line 346
    int-to-long v8, v8

    .line 347
    add-long/2addr v1, v8

    .line 348
    aput-wide v1, v6, v0

    .line 349
    .line 350
    const/16 v1, 0x9

    .line 351
    .line 352
    aget-wide v8, v6, v1

    .line 353
    .line 354
    iget v2, v7, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 355
    .line 356
    int-to-long v12, v2

    .line 357
    add-long/2addr v8, v12

    .line 358
    aput-wide v8, v6, v1

    .line 359
    .line 360
    const/16 v2, 0xa

    .line 361
    .line 362
    aget-wide v8, v6, v2

    .line 363
    .line 364
    iget v10, v7, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 365
    .line 366
    int-to-long v12, v10

    .line 367
    add-long/2addr v8, v12

    .line 368
    aput-wide v8, v6, v2

    .line 369
    .line 370
    const/4 v8, 0x0

    .line 371
    :goto_1
    const/16 v9, 0x11

    .line 372
    .line 373
    if-ge v8, v9, :cond_5

    .line 374
    .line 375
    invoke-virtual {v7, v8}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    .line 376
    .line 377
    .line 378
    move-result v9

    .line 379
    int-to-long v9, v9

    .line 380
    aget-wide v12, v11, v8

    .line 381
    .line 382
    add-long/2addr v12, v9

    .line 383
    aput-wide v12, v11, v8

    .line 384
    .line 385
    aget-wide v12, v6, v0

    .line 386
    .line 387
    sub-long/2addr v12, v9

    .line 388
    aput-wide v12, v6, v0

    .line 389
    .line 390
    invoke-virtual {v7, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    .line 391
    .line 392
    .line 393
    move-result v9

    .line 394
    int-to-long v9, v9

    .line 395
    aget-wide v12, v37, v8

    .line 396
    .line 397
    add-long/2addr v12, v9

    .line 398
    aput-wide v12, v37, v8

    .line 399
    .line 400
    aget-wide v12, v6, v1

    .line 401
    .line 402
    sub-long/2addr v12, v9

    .line 403
    aput-wide v12, v6, v1

    .line 404
    .line 405
    invoke-virtual {v7, v8}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    .line 406
    .line 407
    .line 408
    move-result v9

    .line 409
    int-to-long v9, v9

    .line 410
    aget-wide v12, v36, v8

    .line 411
    .line 412
    add-long/2addr v12, v9

    .line 413
    aput-wide v12, v36, v8

    .line 414
    .line 415
    aget-wide v12, v6, v2

    .line 416
    .line 417
    sub-long/2addr v12, v9

    .line 418
    aput-wide v12, v6, v2

    .line 419
    .line 420
    add-int/lit8 v8, v8, 0x1

    .line 421
    .line 422
    goto :goto_1

    .line 423
    :cond_5
    const/4 v8, 0x0

    .line 424
    aget-wide v0, v17, v8

    .line 425
    .line 426
    add-long/2addr v0, v3

    .line 427
    aput-wide v0, v17, v8

    .line 428
    .line 429
    aget-wide v0, v16, v8

    .line 430
    .line 431
    add-long v0, v0, v34

    .line 432
    .line 433
    aput-wide v0, v16, v8

    .line 434
    .line 435
    aget-object v0, v18, v8

    .line 436
    .line 437
    if-nez v0, :cond_6

    .line 438
    .line 439
    new-instance v0, Ljava/util/ArrayList;

    .line 440
    .line 441
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .line 443
    .line 444
    aput-object v0, v18, v8

    .line 445
    .line 446
    :cond_6
    aget-object v0, v18, v8

    .line 447
    .line 448
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    aget-wide v0, p0, v8

    .line 452
    .line 453
    add-long v0, v0, v19

    .line 454
    .line 455
    aput-wide v0, p0, v8

    .line 456
    .line 457
    :cond_7
    :goto_2
    return-void
.end method
