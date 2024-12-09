.class public final Lcom/android/server/chimera/ChimeraAppManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;


# instance fields
.field public final mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

.field public final mCemPkgProtectedIntervalMs:I

.field public final mForegroundG3ProcList:Ljava/util/Set;

.field public final mGcApps:Ljava/util/Map;

.field public final mReclaimApps:Ljava/util/Map;

.field public final mStandbyInfoMap:Ljava/util/Map;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0xea60

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/chimera/ChimeraAppManager;->CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    .line 6
    .line 7
    new-instance v0, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    .line 13
    .line 14
    new-instance v0, Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    .line 20
    .line 21
    new-instance v0, Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    .line 34
    .line 35
    new-instance v0, Lcom/android/server/chimera/ChimeraAppClassifier;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Lcom/android/server/chimera/ChimeraAppClassifier;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const-string/jumbo v0, "persist.sys.chimera_cem_pkg_protected_interval_ms"

    .line 48
    .line 49
    .line 50
    sget-object v1, Lcom/android/server/chimera/ChimeraAppManager;->CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    .line 61
    .line 62
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    const-class v0, Landroid/app/usage/UsageStatsManager;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroid/app/usage/UsageStatsManager;

    .line 71
    .line 72
    if-nez p1, :cond_0

    .line 73
    .line 74
    new-instance p1, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBuckets()Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_0
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;Ljava/util/List;)Ljava/util/List;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string/jumbo v9, "getAppsToKill() - protectedLruCount: "

    .line 8
    .line 9
    .line 10
    move/from16 v10, p2

    .line 11
    .line 12
    invoke-static {v10, v9}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v9

    .line 16
    iget-object v11, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 17
    .line 18
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v12, "ChimeraAppManager"

    .line 22
    .line 23
    invoke-static {v12, v9}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v9, Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v13, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v14, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v11}, Lcom/android/server/chimera/SystemRepository;->getAccessibilityServicePackages()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v15

    .line 45
    sget-object v16, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 46
    .line 47
    const-string/jumbo v3, "persist.sys.bub_onoff"

    .line 48
    .line 49
    .line 50
    const-string/jumbo v4, "on"

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-static {}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    new-instance v6, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    .line 71
    .line 72
    check-cast v5, Landroid/util/ArrayMap;

    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 75
    .line 76
    .line 77
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    .line 78
    .line 79
    check-cast v5, Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 82
    .line 83
    .line 84
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const/16 v20, -0x1

    .line 89
    .line 90
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v21

    .line 94
    sget-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 95
    .line 96
    move-object/from16 v22, v9

    .line 97
    .line 98
    const/high16 v23, 0x20000

    .line 99
    .line 100
    const-string v9, "/"

    .line 101
    .line 102
    if-eqz v21, :cond_15

    .line 103
    .line 104
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v21

    .line 108
    move-object/from16 v8, v21

    .line 109
    .line 110
    check-cast v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 111
    .line 112
    move-object/from16 v27, v5

    .line 113
    .line 114
    const/16 v21, 0x1

    .line 115
    .line 116
    add-int/lit8 v5, v20, 0x1

    .line 117
    .line 118
    move-object/from16 v20, v14

    .line 119
    .line 120
    iget v14, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 121
    .line 122
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    iget-object v14, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 130
    .line 131
    if-eqz v14, :cond_13

    .line 132
    .line 133
    move-object/from16 v21, v6

    .line 134
    .line 135
    array-length v6, v14

    .line 136
    if-gtz v6, :cond_0

    .line 137
    .line 138
    move-object/from16 v29, v4

    .line 139
    .line 140
    move/from16 v26, v5

    .line 141
    .line 142
    :goto_1
    move/from16 p2, v10

    .line 143
    .line 144
    move-object/from16 v30, v11

    .line 145
    .line 146
    move-object/from16 v31, v12

    .line 147
    .line 148
    :goto_2
    move-object/from16 v9, v20

    .line 149
    .line 150
    move-object/from16 v5, v22

    .line 151
    .line 152
    move/from16 v22, v3

    .line 153
    .line 154
    move-object/from16 v20, v13

    .line 155
    .line 156
    goto/16 :goto_e

    .line 157
    .line 158
    :cond_0
    const/4 v6, 0x0

    .line 159
    aget-object v14, v14, v6

    .line 160
    .line 161
    iget v6, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 162
    .line 163
    move-object/from16 v28, v9

    .line 164
    .line 165
    const/16 v9, 0x11

    .line 166
    .line 167
    if-ne v6, v9, :cond_1

    .line 168
    .line 169
    iget v6, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 170
    .line 171
    sget-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACC:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 172
    .line 173
    invoke-virtual {v1, v6, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 174
    .line 175
    .line 176
    :goto_3
    move-object/from16 v29, v4

    .line 177
    .line 178
    move/from16 v26, v5

    .line 179
    .line 180
    :goto_4
    move v4, v10

    .line 181
    :goto_5
    move-object/from16 v30, v11

    .line 182
    .line 183
    move-object v6, v12

    .line 184
    :goto_6
    const/4 v5, 0x0

    .line 185
    goto/16 :goto_9

    .line 186
    .line 187
    :cond_1
    invoke-static {v14, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-eqz v6, :cond_2

    .line 192
    .line 193
    :goto_7
    goto :goto_3

    .line 194
    :cond_2
    invoke-interface {v15, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-eqz v6, :cond_3

    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_3
    sget-object v6, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 202
    .line 203
    if-eq v2, v6, :cond_4

    .line 204
    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 206
    .line 207
    .line 208
    move-result-wide v29

    .line 209
    move-object v9, v4

    .line 210
    move/from16 v26, v5

    .line 211
    .line 212
    iget-wide v4, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 213
    .line 214
    sub-long v29, v29, v4

    .line 215
    .line 216
    const-wide/16 v4, 0x1388

    .line 217
    .line 218
    cmp-long v4, v29, v4

    .line 219
    .line 220
    if-gez v4, :cond_5

    .line 221
    .line 222
    move-object/from16 v29, v9

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_4
    move-object v9, v4

    .line 226
    move/from16 v26, v5

    .line 227
    .line 228
    :cond_5
    iget v4, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 229
    .line 230
    iget v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    .line 231
    .line 232
    move-object/from16 v29, v9

    .line 233
    .line 234
    const/16 v9, 0x13

    .line 235
    .line 236
    if-ne v4, v9, :cond_6

    .line 237
    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 239
    .line 240
    .line 241
    move-result-wide v30

    .line 242
    move v4, v10

    .line 243
    iget-wide v9, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 244
    .line 245
    sub-long v30, v30, v9

    .line 246
    .line 247
    int-to-long v9, v5

    .line 248
    cmp-long v9, v30, v9

    .line 249
    .line 250
    if-gez v9, :cond_7

    .line 251
    .line 252
    iget v5, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 253
    .line 254
    sget-object v6, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACHED_EMPTY:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 255
    .line 256
    invoke-virtual {v1, v5, v6}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 257
    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_6
    move v4, v10

    .line 261
    :cond_7
    iget v9, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 262
    .line 263
    const/16 v10, 0xa

    .line 264
    .line 265
    if-ne v9, v10, :cond_8

    .line 266
    .line 267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 268
    .line 269
    .line 270
    move-result-wide v9

    .line 271
    move-object/from16 v30, v11

    .line 272
    .line 273
    move-object/from16 v31, v12

    .line 274
    .line 275
    iget-wide v11, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 276
    .line 277
    sub-long/2addr v9, v11

    .line 278
    int-to-long v11, v5

    .line 279
    cmp-long v5, v9, v11

    .line 280
    .line 281
    if-gez v5, :cond_9

    .line 282
    .line 283
    iget v5, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 284
    .line 285
    sget-object v6, Lcom/android/server/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 286
    .line 287
    invoke-virtual {v1, v5, v6}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 288
    .line 289
    .line 290
    :goto_8
    move-object/from16 v6, v31

    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_8
    move-object/from16 v30, v11

    .line 294
    .line 295
    move-object/from16 v31, v12

    .line 296
    .line 297
    :cond_9
    iget v5, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 298
    .line 299
    const/4 v9, 0x1

    .line 300
    if-gt v5, v9, :cond_a

    .line 301
    .line 302
    iget v5, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 303
    .line 304
    invoke-virtual {v1, v5, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 305
    .line 306
    .line 307
    goto :goto_8

    .line 308
    :cond_a
    if-eq v2, v6, :cond_b

    .line 309
    .line 310
    if-nez v3, :cond_b

    .line 311
    .line 312
    iget-boolean v5, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->isProtectedInPicked:Z

    .line 313
    .line 314
    if-eqz v5, :cond_b

    .line 315
    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string/jumbo v6, "getAppsToKill() - Protected by Picked "

    .line 319
    .line 320
    .line 321
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    move-object/from16 v6, v31

    .line 332
    .line 333
    invoke-static {v6, v5}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget v5, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 337
    .line 338
    sget-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PICKED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 339
    .line 340
    invoke-virtual {v1, v5, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 341
    .line 342
    .line 343
    goto/16 :goto_6

    .line 344
    .line 345
    :cond_b
    move-object/from16 v6, v31

    .line 346
    .line 347
    invoke-virtual {v13, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    const/4 v7, 0x1

    .line 352
    xor-int/2addr v5, v7

    .line 353
    :goto_9
    if-nez v5, :cond_c

    .line 354
    .line 355
    invoke-virtual {v13, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move/from16 p2, v4

    .line 359
    .line 360
    move-object/from16 v31, v6

    .line 361
    .line 362
    goto/16 :goto_2

    .line 363
    .line 364
    :cond_c
    iget v5, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    .line 365
    .line 366
    const/4 v7, 0x4

    .line 367
    and-int/2addr v5, v7

    .line 368
    if-gtz v5, :cond_e

    .line 369
    .line 370
    iget v5, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 371
    .line 372
    const/16 v7, 0x12

    .line 373
    .line 374
    if-ne v5, v7, :cond_d

    .line 375
    .line 376
    goto :goto_a

    .line 377
    :cond_d
    move-object/from16 v5, v22

    .line 378
    .line 379
    goto :goto_b

    .line 380
    :cond_e
    :goto_a
    if-lez v4, :cond_d

    .line 381
    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    const-string/jumbo v7, "getAppsToKill() - Protected by LRU : "

    .line 385
    .line 386
    .line 387
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    invoke-static {v6, v5}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    const/4 v5, -0x1

    .line 401
    add-int/lit8 v10, v4, -0x1

    .line 402
    .line 403
    invoke-virtual {v13, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    iget v4, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 407
    .line 408
    sget-object v5, Lcom/android/server/chimera/SkipReasonLogger$Reason;->LRU:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 409
    .line 410
    invoke-virtual {v1, v4, v5}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 411
    .line 412
    .line 413
    move-object v12, v6

    .line 414
    move-object/from16 v14, v20

    .line 415
    .line 416
    move-object/from16 v6, v21

    .line 417
    .line 418
    move-object/from16 v9, v22

    .line 419
    .line 420
    move/from16 v20, v26

    .line 421
    .line 422
    move-object/from16 v5, v27

    .line 423
    .line 424
    move-object/from16 v4, v29

    .line 425
    .line 426
    move-object/from16 v11, v30

    .line 427
    .line 428
    goto/16 :goto_0

    .line 429
    .line 430
    :goto_b
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v7

    .line 434
    check-cast v7, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 435
    .line 436
    if-nez v7, :cond_10

    .line 437
    .line 438
    new-instance v7, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 439
    .line 440
    iget v9, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 441
    .line 442
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 443
    .line 444
    .line 445
    const/4 v10, 0x0

    .line 446
    iput v10, v7, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 447
    .line 448
    const/4 v10, -0x1

    .line 449
    iput v10, v7, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 450
    .line 451
    iput v10, v7, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 452
    .line 453
    iput v10, v7, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    .line 454
    .line 455
    const-wide/16 v11, 0x0

    .line 456
    .line 457
    iput-wide v11, v7, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 458
    .line 459
    iput-wide v11, v7, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    .line 460
    .line 461
    iput v10, v7, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 462
    .line 463
    new-instance v11, Ljava/util/ArrayList;

    .line 464
    .line 465
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .line 467
    .line 468
    iput-object v11, v7, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 469
    .line 470
    iput-object v14, v7, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 471
    .line 472
    iput v9, v7, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 473
    .line 474
    move/from16 v11, v26

    .line 475
    .line 476
    iput v11, v7, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 477
    .line 478
    iget-object v12, v0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    .line 479
    .line 480
    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v12

    .line 484
    check-cast v12, Ljava/lang/Integer;

    .line 485
    .line 486
    if-eqz v12, :cond_f

    .line 487
    .line 488
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 489
    .line 490
    .line 491
    move-result v9

    .line 492
    iput v9, v7, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 493
    .line 494
    move/from16 v22, v3

    .line 495
    .line 496
    move/from16 v26, v11

    .line 497
    .line 498
    move-object/from16 v12, v30

    .line 499
    .line 500
    goto :goto_c

    .line 501
    :cond_f
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 502
    .line 503
    .line 504
    move-result v9

    .line 505
    move/from16 v26, v11

    .line 506
    .line 507
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 508
    .line 509
    .line 510
    move-result-wide v10

    .line 511
    move/from16 v22, v3

    .line 512
    .line 513
    move-object/from16 v12, v30

    .line 514
    .line 515
    iget-object v3, v12, Lcom/android/server/chimera/SystemRepository;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 516
    .line 517
    invoke-virtual {v3, v9, v14, v10, v11}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    iput v3, v7, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 522
    .line 523
    iget-object v9, v0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    .line 524
    .line 525
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    invoke-interface {v9, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    :goto_c
    iget v3, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 533
    .line 534
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 535
    .line 536
    .line 537
    move-result v3

    .line 538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 539
    .line 540
    .line 541
    move-result-wide v9

    .line 542
    iget-object v11, v12, Lcom/android/server/chimera/SystemRepository;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 543
    .line 544
    invoke-virtual {v11, v3, v14, v9, v10}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    .line 545
    .line 546
    .line 547
    move-result v3

    .line 548
    iput v3, v7, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    .line 549
    .line 550
    invoke-virtual {v5, v14, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    iget v3, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 554
    .line 555
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 556
    .line 557
    .line 558
    move-result v3

    .line 559
    new-instance v9, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    move-object/from16 v10, v28

    .line 568
    .line 569
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    iget v3, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 579
    .line 580
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    move-object/from16 v9, v20

    .line 588
    .line 589
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    goto :goto_d

    .line 593
    :cond_10
    move/from16 v22, v3

    .line 594
    .line 595
    move-object/from16 v9, v20

    .line 596
    .line 597
    move-object/from16 v12, v30

    .line 598
    .line 599
    :goto_d
    iget-wide v10, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    .line 600
    .line 601
    const-wide/16 v24, 0x0

    .line 602
    .line 603
    cmp-long v3, v10, v24

    .line 604
    .line 605
    if-gtz v3, :cond_11

    .line 606
    .line 607
    iget v3, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 608
    .line 609
    const/4 v11, 0x0

    .line 610
    invoke-static {v3, v11, v11}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 611
    .line 612
    .line 613
    move-result-wide v10

    .line 614
    :cond_11
    iget v3, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 615
    .line 616
    iget-object v14, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 617
    .line 618
    move-object/from16 v30, v12

    .line 619
    .line 620
    move-object/from16 v20, v13

    .line 621
    .line 622
    iget-wide v12, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    .line 623
    .line 624
    iget-wide v1, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastSwapPss:J

    .line 625
    .line 626
    move/from16 p2, v4

    .line 627
    .line 628
    iget v4, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->importance:I

    .line 629
    .line 630
    move-object/from16 v31, v6

    .line 631
    .line 632
    new-instance v6, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 633
    .line 634
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 635
    .line 636
    .line 637
    iput v3, v6, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 638
    .line 639
    iput-object v14, v6, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 640
    .line 641
    iput-wide v10, v6, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    .line 642
    .line 643
    iput-wide v12, v6, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->avgPss:J

    .line 644
    .line 645
    iput v4, v6, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->importance:I

    .line 646
    .line 647
    iget-object v3, v7, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 648
    .line 649
    check-cast v3, Ljava/util/ArrayList;

    .line 650
    .line 651
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    iget-wide v3, v7, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 655
    .line 656
    add-long/2addr v3, v10

    .line 657
    iput-wide v3, v7, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 658
    .line 659
    iget-wide v3, v7, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    .line 660
    .line 661
    add-long/2addr v3, v1

    .line 662
    iput-wide v3, v7, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    .line 663
    .line 664
    iget v1, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    .line 665
    .line 666
    const/16 v2, 0x8

    .line 667
    .line 668
    and-int/lit8 v3, v1, 0x8

    .line 669
    .line 670
    if-lez v3, :cond_12

    .line 671
    .line 672
    iget v2, v7, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 673
    .line 674
    or-int v2, v2, v23

    .line 675
    .line 676
    iput v2, v7, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 677
    .line 678
    :cond_12
    const/4 v2, 0x4

    .line 679
    and-int/2addr v1, v2

    .line 680
    if-lez v1, :cond_14

    .line 681
    .line 682
    iget v1, v7, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 683
    .line 684
    const/high16 v2, 0x1000000

    .line 685
    .line 686
    or-int/2addr v1, v2

    .line 687
    iput v1, v7, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 688
    .line 689
    goto :goto_e

    .line 690
    :cond_13
    move-object/from16 v29, v4

    .line 691
    .line 692
    move/from16 v26, v5

    .line 693
    .line 694
    move-object/from16 v21, v6

    .line 695
    .line 696
    goto/16 :goto_1

    .line 697
    .line 698
    :cond_14
    :goto_e
    move-object/from16 v1, p1

    .line 699
    .line 700
    move/from16 v10, p2

    .line 701
    .line 702
    move-object/from16 v2, p3

    .line 703
    .line 704
    move-object v14, v9

    .line 705
    move-object/from16 v13, v20

    .line 706
    .line 707
    move-object/from16 v6, v21

    .line 708
    .line 709
    move/from16 v3, v22

    .line 710
    .line 711
    move/from16 v20, v26

    .line 712
    .line 713
    move-object/from16 v4, v29

    .line 714
    .line 715
    move-object/from16 v11, v30

    .line 716
    .line 717
    move-object/from16 v12, v31

    .line 718
    .line 719
    move-object v9, v5

    .line 720
    move-object/from16 v5, v27

    .line 721
    .line 722
    goto/16 :goto_0

    .line 723
    .line 724
    :cond_15
    move-object/from16 v21, v6

    .line 725
    .line 726
    move-object v10, v9

    .line 727
    move-object v9, v14

    .line 728
    move-object/from16 v5, v22

    .line 729
    .line 730
    const/4 v11, 0x0

    .line 731
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 732
    .line 733
    .line 734
    move-result v1

    .line 735
    if-lez v1, :cond_45

    .line 736
    .line 737
    iget-object v1, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    .line 738
    .line 739
    move-object/from16 v2, p3

    .line 740
    .line 741
    iput-object v2, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 742
    .line 743
    iget-object v2, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    .line 744
    .line 745
    check-cast v2, Ljava/util/HashMap;

    .line 746
    .line 747
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 748
    .line 749
    .line 750
    iget-object v2, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    .line 751
    .line 752
    check-cast v2, Ljava/util/ArrayList;

    .line 753
    .line 754
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 755
    .line 756
    .line 757
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 762
    .line 763
    .line 764
    move-result-object v2

    .line 765
    new-instance v3, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda1;

    .line 766
    .line 767
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    new-instance v3, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda2;

    .line 775
    .line 776
    invoke-direct {v3, v1}, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/chimera/ChimeraAppClassifier;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 780
    .line 781
    .line 782
    iget-object v2, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    .line 783
    .line 784
    check-cast v2, Landroid/util/ArrayMap;

    .line 785
    .line 786
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 787
    .line 788
    .line 789
    iget-object v2, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 790
    .line 791
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    .line 793
    .line 794
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 795
    .line 796
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 797
    .line 798
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 799
    .line 800
    .line 801
    sget-boolean v3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 802
    .line 803
    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 804
    .line 805
    invoke-virtual {v3}, Lcom/android/server/am/FreecessController;->updateRunningLocationPackages()V

    .line 806
    .line 807
    .line 808
    sget-object v3, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 809
    .line 810
    invoke-virtual {v3}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 811
    .line 812
    .line 813
    new-instance v3, Ljava/util/ArrayList;

    .line 814
    .line 815
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 819
    .line 820
    .line 821
    move-result-object v4

    .line 822
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 823
    .line 824
    .line 825
    move-result v6

    .line 826
    const-string v8, "NumberFormatException!"

    .line 827
    .line 828
    if-eqz v6, :cond_1b

    .line 829
    .line 830
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v6

    .line 834
    check-cast v6, Ljava/lang/String;

    .line 835
    .line 836
    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v6

    .line 840
    if-eqz v6, :cond_1a

    .line 841
    .line 842
    const/4 v9, 0x0

    .line 843
    aget-object v11, v6, v9

    .line 844
    .line 845
    const/4 v9, 0x1

    .line 846
    :try_start_0
    aget-object v12, v6, v9

    .line 847
    .line 848
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 849
    .line 850
    .line 851
    move-result v9

    .line 852
    const/4 v12, 0x2

    .line 853
    aget-object v6, v6, v12

    .line 854
    .line 855
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 856
    .line 857
    .line 858
    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    sget-object v8, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 860
    .line 861
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 862
    .line 863
    .line 864
    const/4 v8, 0x0

    .line 865
    const/4 v12, 0x2

    .line 866
    :goto_10
    const/16 v13, 0x22

    .line 867
    .line 868
    if-ge v12, v13, :cond_19

    .line 869
    .line 870
    const/16 v13, 0x8

    .line 871
    .line 872
    if-ne v12, v13, :cond_17

    .line 873
    .line 874
    :cond_16
    const/4 v13, 0x1

    .line 875
    const/16 v14, 0x11

    .line 876
    .line 877
    goto :goto_11

    .line 878
    :cond_17
    sget-object v13, Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterFactory;

    .line 879
    .line 880
    invoke-virtual {v13, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 881
    .line 882
    .line 883
    move-result-object v13

    .line 884
    if-eqz v13, :cond_16

    .line 885
    .line 886
    const/16 v14, 0x11

    .line 887
    .line 888
    invoke-interface {v13, v9, v6, v14, v11}, Lcom/android/server/am/mars/filter/IFilter;->filter(IIILjava/lang/String;)I

    .line 889
    .line 890
    .line 891
    move-result v13

    .line 892
    if-eqz v13, :cond_18

    .line 893
    .line 894
    const/4 v13, 0x1

    .line 895
    add-int/lit8 v15, v12, -0x1

    .line 896
    .line 897
    shl-int v15, v13, v15

    .line 898
    .line 899
    or-int/2addr v8, v15

    .line 900
    goto :goto_11

    .line 901
    :cond_18
    const/4 v13, 0x1

    .line 902
    :goto_11
    add-int/2addr v12, v13

    .line 903
    goto :goto_10

    .line 904
    :cond_19
    const/16 v14, 0x11

    .line 905
    .line 906
    new-instance v6, Ljava/lang/StringBuilder;

    .line 907
    .line 908
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v6

    .line 930
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    .line 932
    .line 933
    goto :goto_f

    .line 934
    :catch_0
    const/16 v14, 0x11

    .line 935
    .line 936
    const-string v6, "MARsPolicyManager"

    .line 937
    .line 938
    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    .line 940
    .line 941
    goto :goto_f

    .line 942
    :cond_1a
    const/16 v14, 0x11

    .line 943
    .line 944
    goto :goto_f

    .line 945
    :cond_1b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 946
    .line 947
    .line 948
    move-result v4

    .line 949
    const-string v6, "ChimeraAppClassifier"

    .line 950
    .line 951
    if-lez v4, :cond_1d

    .line 952
    .line 953
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 954
    .line 955
    .line 956
    move-result-object v3

    .line 957
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 958
    .line 959
    .line 960
    move-result v4

    .line 961
    if-eqz v4, :cond_1d

    .line 962
    .line 963
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 964
    .line 965
    .line 966
    move-result-object v4

    .line 967
    check-cast v4, Ljava/lang/String;

    .line 968
    .line 969
    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v4

    .line 973
    if-eqz v4, :cond_1c

    .line 974
    .line 975
    const/4 v9, 0x0

    .line 976
    :try_start_1
    aget-object v11, v4, v9

    .line 977
    .line 978
    const/4 v12, 0x1

    .line 979
    aget-object v13, v4, v12

    .line 980
    .line 981
    const/4 v12, 0x2

    .line 982
    aget-object v4, v4, v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 983
    .line 984
    iget-object v12, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    .line 985
    .line 986
    invoke-static {v11, v10, v13}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v11

    .line 990
    check-cast v12, Landroid/util/ArrayMap;

    .line 991
    .line 992
    invoke-virtual {v12, v11, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    goto :goto_12

    .line 996
    :catch_1
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    .line 998
    .line 999
    goto :goto_12

    .line 1000
    :cond_1c
    const/4 v9, 0x0

    .line 1001
    goto :goto_12

    .line 1002
    :cond_1d
    const/4 v9, 0x0

    .line 1003
    new-instance v8, Ljava/util/ArrayList;

    .line 1004
    .line 1005
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v3

    .line 1012
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v3

    .line 1016
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1017
    .line 1018
    .line 1019
    move-result v4

    .line 1020
    if-eqz v4, :cond_46

    .line 1021
    .line 1022
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v4

    .line 1026
    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1027
    .line 1028
    iget-wide v11, v4, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 1029
    .line 1030
    iput-wide v11, v4, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 1031
    .line 1032
    iget v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 1033
    .line 1034
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 1035
    .line 1036
    .line 1037
    move-result v11

    .line 1038
    iget v12, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 1039
    .line 1040
    invoke-virtual {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    .line 1041
    .line 1042
    .line 1043
    iget-object v13, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1044
    .line 1045
    if-eqz v13, :cond_2b

    .line 1046
    .line 1047
    iget-object v14, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    .line 1048
    .line 1049
    check-cast v14, Landroid/util/ArrayMap;

    .line 1050
    .line 1051
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    .line 1052
    .line 1053
    .line 1054
    move-result v14

    .line 1055
    if-lez v14, :cond_2b

    .line 1056
    .line 1057
    iget-object v14, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    .line 1058
    .line 1059
    invoke-static {v11, v13, v10}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v15

    .line 1063
    check-cast v14, Landroid/util/ArrayMap;

    .line 1064
    .line 1065
    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v14

    .line 1069
    check-cast v14, Ljava/lang/String;

    .line 1070
    .line 1071
    if-eqz v14, :cond_1e

    .line 1072
    .line 1073
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1074
    .line 1075
    .line 1076
    move-result v14

    .line 1077
    goto :goto_14

    .line 1078
    :cond_1e
    move v14, v9

    .line 1079
    :goto_14
    and-int/lit16 v15, v14, 0x400

    .line 1080
    .line 1081
    if-lez v15, :cond_1f

    .line 1082
    .line 1083
    const/16 v15, 0x10

    .line 1084
    .line 1085
    goto :goto_15

    .line 1086
    :cond_1f
    move v15, v9

    .line 1087
    :goto_15
    and-int/lit16 v9, v14, 0x200

    .line 1088
    .line 1089
    if-lez v9, :cond_20

    .line 1090
    .line 1091
    or-int/lit16 v15, v15, 0x4000

    .line 1092
    .line 1093
    :cond_20
    const/16 v9, 0x10

    .line 1094
    .line 1095
    and-int/lit8 v16, v14, 0x10

    .line 1096
    .line 1097
    if-lez v16, :cond_21

    .line 1098
    .line 1099
    or-int v15, v15, v23

    .line 1100
    .line 1101
    :cond_21
    const v16, 0x30120

    .line 1102
    .line 1103
    .line 1104
    and-int v16, v14, v16

    .line 1105
    .line 1106
    if-lez v16, :cond_22

    .line 1107
    .line 1108
    const/high16 v16, 0x40000

    .line 1109
    .line 1110
    or-int v15, v15, v16

    .line 1111
    .line 1112
    :cond_22
    and-int/lit16 v9, v14, 0x1000

    .line 1113
    .line 1114
    if-lez v9, :cond_23

    .line 1115
    .line 1116
    const/high16 v9, 0x800000

    .line 1117
    .line 1118
    or-int/2addr v15, v9

    .line 1119
    :cond_23
    and-int/lit8 v9, v14, 0x40

    .line 1120
    .line 1121
    if-lez v9, :cond_24

    .line 1122
    .line 1123
    or-int/lit16 v15, v15, 0x80

    .line 1124
    .line 1125
    :cond_24
    and-int/lit16 v9, v14, 0x80

    .line 1126
    .line 1127
    if-lez v9, :cond_25

    .line 1128
    .line 1129
    or-int/lit8 v15, v15, 0x20

    .line 1130
    .line 1131
    :cond_25
    and-int/lit16 v9, v14, 0x4000

    .line 1132
    .line 1133
    if-lez v9, :cond_26

    .line 1134
    .line 1135
    or-int/lit8 v15, v15, 0x40

    .line 1136
    .line 1137
    :cond_26
    const/16 v9, 0x8

    .line 1138
    .line 1139
    and-int/lit8 v18, v14, 0x8

    .line 1140
    .line 1141
    if-lez v18, :cond_27

    .line 1142
    .line 1143
    or-int/lit16 v15, v15, 0x800

    .line 1144
    .line 1145
    :cond_27
    const/16 v18, 0x4

    .line 1146
    .line 1147
    and-int/lit8 v19, v14, 0x4

    .line 1148
    .line 1149
    if-lez v19, :cond_28

    .line 1150
    .line 1151
    or-int/2addr v15, v9

    .line 1152
    :cond_28
    and-int/lit16 v9, v14, 0x2000

    .line 1153
    .line 1154
    if-lez v9, :cond_29

    .line 1155
    .line 1156
    const/4 v9, 0x2

    .line 1157
    or-int/2addr v15, v9

    .line 1158
    goto :goto_16

    .line 1159
    :cond_29
    const/4 v9, 0x2

    .line 1160
    :goto_16
    if-eqz v14, :cond_2a

    .line 1161
    .line 1162
    if-nez v15, :cond_2c

    .line 1163
    .line 1164
    :cond_2a
    const/4 v14, 0x1

    .line 1165
    or-int/2addr v15, v14

    .line 1166
    goto :goto_17

    .line 1167
    :cond_2b
    const/4 v9, 0x2

    .line 1168
    const/4 v15, 0x0

    .line 1169
    :cond_2c
    :goto_17
    sget-boolean v14, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1170
    .line 1171
    sget-object v14, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1172
    .line 1173
    invoke-virtual {v14}, Lcom/android/server/am/MARsPolicyManager;->getMARsEnabled()Z

    .line 1174
    .line 1175
    .line 1176
    move-result v17

    .line 1177
    if-eqz v17, :cond_2d

    .line 1178
    .line 1179
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 1180
    .line 1181
    .line 1182
    move-result v17

    .line 1183
    if-eqz v17, :cond_2d

    .line 1184
    .line 1185
    invoke-virtual {v14, v11, v13}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    .line 1186
    .line 1187
    .line 1188
    move-result v14

    .line 1189
    if-eqz v14, :cond_2d

    .line 1190
    .line 1191
    or-int/lit16 v15, v15, 0x1000

    .line 1192
    .line 1193
    :cond_2d
    iget-object v14, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    .line 1194
    .line 1195
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v11

    .line 1199
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    new-instance v9, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda0;

    .line 1203
    .line 1204
    invoke-direct {v9, v2}, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 1205
    .line 1206
    .line 1207
    check-cast v14, Ljava/util/HashMap;

    .line 1208
    .line 1209
    invoke-virtual {v14, v11, v9}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v9

    .line 1213
    check-cast v9, Ljava/util/List;

    .line 1214
    .line 1215
    if-eqz v9, :cond_2f

    .line 1216
    .line 1217
    invoke-interface {v9, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1218
    .line 1219
    .line 1220
    move-result v9

    .line 1221
    if-eqz v9, :cond_2f

    .line 1222
    .line 1223
    const-string/jumbo v9, "isLongLiveApp: "

    .line 1224
    .line 1225
    .line 1226
    invoke-static {v9, v13, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    .line 1228
    .line 1229
    :cond_2e
    :goto_18
    const/4 v9, 0x1

    .line 1230
    goto :goto_19

    .line 1231
    :cond_2f
    sget-boolean v9, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    .line 1232
    .line 1233
    sget-object v9, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    .line 1234
    .line 1235
    iget-boolean v9, v9, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    .line 1236
    .line 1237
    if-eqz v9, :cond_30

    .line 1238
    .line 1239
    sget-object v9, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_WHILE_DOCKING:Ljava/util/List;

    .line 1240
    .line 1241
    check-cast v9, Ljava/util/ArrayList;

    .line 1242
    .line 1243
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1244
    .line 1245
    .line 1246
    move-result v9

    .line 1247
    if-eqz v9, :cond_30

    .line 1248
    .line 1249
    goto :goto_18

    .line 1250
    :cond_30
    if-eqz v13, :cond_31

    .line 1251
    .line 1252
    const-string/jumbo v9, "com.android.cts."

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual {v13, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1256
    .line 1257
    .line 1258
    move-result v9

    .line 1259
    if-eqz v9, :cond_31

    .line 1260
    .line 1261
    goto :goto_18

    .line 1262
    :cond_31
    iget-object v9, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 1263
    .line 1264
    sget-object v11, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 1265
    .line 1266
    if-ne v9, v11, :cond_32

    .line 1267
    .line 1268
    sget-object v9, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    .line 1269
    .line 1270
    check-cast v9, Ljava/util/ArrayList;

    .line 1271
    .line 1272
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1273
    .line 1274
    .line 1275
    move-result v9

    .line 1276
    goto :goto_19

    .line 1277
    :cond_32
    sget-object v9, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    .line 1278
    .line 1279
    check-cast v9, Ljava/util/ArrayList;

    .line 1280
    .line 1281
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1282
    .line 1283
    .line 1284
    move-result v9

    .line 1285
    if-nez v9, :cond_2e

    .line 1286
    .line 1287
    sget-object v9, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_EXCEPT_FOR_PMM_TRIGGER:Ljava/util/List;

    .line 1288
    .line 1289
    check-cast v9, Ljava/util/ArrayList;

    .line 1290
    .line 1291
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1292
    .line 1293
    .line 1294
    move-result v9

    .line 1295
    if-eqz v9, :cond_33

    .line 1296
    .line 1297
    goto :goto_18

    .line 1298
    :cond_33
    const/4 v9, 0x0

    .line 1299
    :goto_19
    if-eqz v9, :cond_34

    .line 1300
    .line 1301
    const/high16 v9, 0x100000

    .line 1302
    .line 1303
    or-int/2addr v15, v9

    .line 1304
    :cond_34
    iget-object v9, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    .line 1305
    .line 1306
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v11

    .line 1310
    check-cast v9, Ljava/util/ArrayList;

    .line 1311
    .line 1312
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1313
    .line 1314
    .line 1315
    move-result v9

    .line 1316
    if-eqz v9, :cond_35

    .line 1317
    .line 1318
    const/high16 v9, 0x200000

    .line 1319
    .line 1320
    or-int/2addr v15, v9

    .line 1321
    :cond_35
    sget-object v9, Lcom/android/server/chimera/ChimeraAppClassifier;->mProtectOnBubDisabledList:Ljava/util/List;

    .line 1322
    .line 1323
    check-cast v9, Ljava/util/ArrayList;

    .line 1324
    .line 1325
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1326
    .line 1327
    .line 1328
    move-result v9

    .line 1329
    if-eqz v9, :cond_36

    .line 1330
    .line 1331
    const/high16 v9, 0x400000

    .line 1332
    .line 1333
    or-int/2addr v15, v9

    .line 1334
    :cond_36
    or-int v9, v12, v15

    .line 1335
    .line 1336
    iput v9, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 1337
    .line 1338
    const v11, 0xb55030

    .line 1339
    .line 1340
    .line 1341
    const/16 v12, 0xec0

    .line 1342
    .line 1343
    const v13, 0x2800c

    .line 1344
    .line 1345
    .line 1346
    const/4 v14, 0x3

    .line 1347
    filled-new-array {v11, v12, v13, v14}, [I

    .line 1348
    .line 1349
    .line 1350
    move-result-object v11

    .line 1351
    const/4 v12, 0x0

    .line 1352
    :goto_1a
    const/4 v13, 0x4

    .line 1353
    if-ge v12, v13, :cond_38

    .line 1354
    .line 1355
    aget v15, v11, v12

    .line 1356
    .line 1357
    and-int/2addr v15, v9

    .line 1358
    if-lez v15, :cond_37

    .line 1359
    .line 1360
    rsub-int/lit8 v9, v12, 0x4

    .line 1361
    .line 1362
    const/4 v13, 0x1

    .line 1363
    goto :goto_1b

    .line 1364
    :cond_37
    const/4 v13, 0x1

    .line 1365
    add-int/2addr v12, v13

    .line 1366
    goto :goto_1a

    .line 1367
    :cond_38
    const/4 v13, 0x1

    .line 1368
    const/4 v9, 0x0

    .line 1369
    :goto_1b
    iput v9, v4, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 1370
    .line 1371
    if-ne v9, v14, :cond_3c

    .line 1372
    .line 1373
    sget-object v9, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1374
    .line 1375
    invoke-virtual {v9, v5}, Lcom/android/server/am/MARsPolicyManager;->getForegroundServiceStartTime(I)J

    .line 1376
    .line 1377
    .line 1378
    move-result-wide v11

    .line 1379
    const-wide/16 v14, 0x0

    .line 1380
    .line 1381
    cmp-long v5, v11, v14

    .line 1382
    .line 1383
    if-eqz v5, :cond_39

    .line 1384
    .line 1385
    move v5, v13

    .line 1386
    goto :goto_1c

    .line 1387
    :cond_39
    const/4 v5, 0x0

    .line 1388
    :goto_1c
    if-eqz v5, :cond_3c

    .line 1389
    .line 1390
    iget-object v4, v4, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 1391
    .line 1392
    check-cast v4, Ljava/util/ArrayList;

    .line 1393
    .line 1394
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v4

    .line 1398
    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1399
    .line 1400
    .line 1401
    move-result v5

    .line 1402
    if-eqz v5, :cond_3a

    .line 1403
    .line 1404
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v5

    .line 1408
    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 1409
    .line 1410
    iget v9, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 1411
    .line 1412
    move-object/from16 v11, p1

    .line 1413
    .line 1414
    invoke-virtual {v11, v9, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 1415
    .line 1416
    .line 1417
    iget-object v9, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    .line 1418
    .line 1419
    iget v5, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 1420
    .line 1421
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v5

    .line 1425
    check-cast v9, Ljava/util/HashSet;

    .line 1426
    .line 1427
    invoke-virtual {v9, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1428
    .line 1429
    .line 1430
    goto :goto_1d

    .line 1431
    :cond_3a
    move-object/from16 v11, p1

    .line 1432
    .line 1433
    :cond_3b
    :goto_1e
    const/4 v9, 0x0

    .line 1434
    goto/16 :goto_13

    .line 1435
    .line 1436
    :cond_3c
    move-object/from16 v11, p1

    .line 1437
    .line 1438
    iget v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 1439
    .line 1440
    if-ltz v5, :cond_3e

    .line 1441
    .line 1442
    iget v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 1443
    .line 1444
    if-ltz v5, :cond_3e

    .line 1445
    .line 1446
    iget-wide v14, v4, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 1447
    .line 1448
    const-wide/16 v19, 0x0

    .line 1449
    .line 1450
    cmp-long v5, v14, v19

    .line 1451
    .line 1452
    if-lez v5, :cond_3f

    .line 1453
    .line 1454
    iget v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 1455
    .line 1456
    if-gez v5, :cond_3d

    .line 1457
    .line 1458
    goto :goto_1f

    .line 1459
    :cond_3d
    const/4 v5, 0x0

    .line 1460
    goto :goto_20

    .line 1461
    :cond_3e
    const-wide/16 v19, 0x0

    .line 1462
    .line 1463
    :cond_3f
    :goto_1f
    move v5, v13

    .line 1464
    :goto_20
    if-nez v5, :cond_44

    .line 1465
    .line 1466
    iget v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 1467
    .line 1468
    const/4 v9, 0x4

    .line 1469
    if-ne v5, v9, :cond_40

    .line 1470
    .line 1471
    move v5, v13

    .line 1472
    goto :goto_21

    .line 1473
    :cond_40
    const/4 v5, 0x0

    .line 1474
    :goto_21
    if-eqz v5, :cond_41

    .line 1475
    .line 1476
    goto :goto_23

    .line 1477
    :cond_41
    iget-object v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 1478
    .line 1479
    check-cast v5, Ljava/util/ArrayList;

    .line 1480
    .line 1481
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v5

    .line 1485
    :cond_42
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1486
    .line 1487
    .line 1488
    move-result v12

    .line 1489
    if-eqz v12, :cond_43

    .line 1490
    .line 1491
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v12

    .line 1495
    check-cast v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 1496
    .line 1497
    iget-object v14, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    .line 1498
    .line 1499
    iget v15, v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 1500
    .line 1501
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v15

    .line 1505
    check-cast v14, Ljava/util/HashSet;

    .line 1506
    .line 1507
    invoke-virtual {v14, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1508
    .line 1509
    .line 1510
    move-result v14

    .line 1511
    if-eqz v14, :cond_42

    .line 1512
    .line 1513
    iget v5, v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 1514
    .line 1515
    invoke-virtual {v11, v5, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 1516
    .line 1517
    .line 1518
    move v5, v13

    .line 1519
    goto :goto_22

    .line 1520
    :cond_43
    const/4 v5, 0x0

    .line 1521
    :goto_22
    if-nez v5, :cond_3b

    .line 1522
    .line 1523
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    .line 1525
    .line 1526
    goto :goto_1e

    .line 1527
    :cond_44
    const/4 v9, 0x4

    .line 1528
    :goto_23
    iget-object v4, v4, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 1529
    .line 1530
    check-cast v4, Ljava/util/ArrayList;

    .line 1531
    .line 1532
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v4

    .line 1536
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1537
    .line 1538
    .line 1539
    move-result v5

    .line 1540
    if-eqz v5, :cond_3b

    .line 1541
    .line 1542
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v5

    .line 1546
    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 1547
    .line 1548
    iget v5, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 1549
    .line 1550
    invoke-virtual {v11, v5, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 1551
    .line 1552
    .line 1553
    goto :goto_24

    .line 1554
    :cond_45
    move-object v8, v11

    .line 1555
    :cond_46
    new-instance v1, Ljava/util/ArrayList;

    .line 1556
    .line 1557
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1558
    .line 1559
    .line 1560
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    .line 1561
    .line 1562
    check-cast v2, Ljava/util/HashSet;

    .line 1563
    .line 1564
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v2

    .line 1568
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1569
    .line 1570
    .line 1571
    move-result v3

    .line 1572
    if-eqz v3, :cond_48

    .line 1573
    .line 1574
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v3

    .line 1578
    check-cast v3, Ljava/lang/Integer;

    .line 1579
    .line 1580
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1581
    .line 1582
    .line 1583
    move-object/from16 v4, v21

    .line 1584
    .line 1585
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1586
    .line 1587
    .line 1588
    move-result v5

    .line 1589
    if-nez v5, :cond_47

    .line 1590
    .line 1591
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    .line 1593
    .line 1594
    :cond_47
    move-object/from16 v21, v4

    .line 1595
    .line 1596
    goto :goto_25

    .line 1597
    :cond_48
    iget-object v0, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    .line 1598
    .line 1599
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1600
    .line 1601
    .line 1602
    return-object v8
.end method

.method public final logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget v1, p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 8
    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string p0, "ChimeraAppManager"

    .line 30
    .line 31
    invoke-static {p0, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
