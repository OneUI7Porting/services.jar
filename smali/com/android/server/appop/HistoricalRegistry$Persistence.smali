.class public final Lcom/android/server/appop/HistoricalRegistry$Persistence;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;


# instance fields
.field public final mBaseSnapshotInterval:J

.field public final mIntervalCompressionMultiplier:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/internal/os/AtomicDirectory;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    new-instance v2, Ljava/io/File;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string/jumbo v4, "appops"

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v3, "history"

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicDirectory;-><init>(Ljava/io/File;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    .line 7
    .line 8
    return-void
.end method

.method public static clearHistoryDLocked$1()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 13
    .line 14
    array-length v1, p0

    .line 15
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 16
    .line 17
    .line 18
    array-length v1, p0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_1

    .line 21
    .line 22
    aget-object v3, p0, v2

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-object v0
.end method

.method public static getLastPersistTimeMillisDLocked()J
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    sget-object v3, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 5
    .line 6
    invoke-virtual {v3}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    if-eqz v5, :cond_5

    .line 15
    .line 16
    array-length v6, v5

    .line 17
    if-lez v6, :cond_5

    .line 18
    .line 19
    array-length v3, v5

    .line 20
    const/4 v6, 0x0

    .line 21
    :goto_0
    if-ge v6, v3, :cond_3

    .line 22
    .line 23
    aget-object v7, v5, v6

    .line 24
    .line 25
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    const-string v9, ".xml"

    .line 30
    .line 31
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    if-nez v9, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    if-nez v2, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-ge v8, v9, :cond_2

    .line 54
    .line 55
    :goto_1
    move-object v2, v7

    .line 56
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v2

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    if-nez v2, :cond_4

    .line 62
    .line 63
    return-wide v0

    .line 64
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    return-wide v0

    .line 69
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :catchall_1
    move-exception v3

    .line 74
    move-object v4, v2

    .line 75
    move-object v2, v3

    .line 76
    :goto_3
    const-string v3, "Error reading historical app ops. Deleting history."

    .line 77
    .line 78
    invoke-static {v3, v2, v4}, Lcom/android/server/appop/HistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 79
    .line 80
    .line 81
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 84
    .line 85
    .line 86
    :goto_4
    return-wide v0
.end method

.method public static readeHistoricalOpsDLocked(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p6

    .line 4
    .line 5
    move-wide/from16 v3, p8

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const-string/jumbo v6, "beg"

    .line 9
    .line 10
    .line 11
    const-wide/16 v7, 0x0

    .line 12
    .line 13
    invoke-interface {v0, v5, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v9

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz p11, :cond_0

    .line 19
    .line 20
    aget-wide v11, p11, v6

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-wide v11, v7

    .line 24
    :goto_0
    add-long/2addr v9, v11

    .line 25
    const-string/jumbo v11, "end"

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v5, v11, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v11

    .line 32
    if-eqz p11, :cond_1

    .line 33
    .line 34
    aget-wide v13, p11, v6

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-wide v13, v7

    .line 38
    :goto_1
    add-long/2addr v11, v13

    .line 39
    cmp-long v6, v3, v9

    .line 40
    .line 41
    if-gez v6, :cond_2

    .line 42
    .line 43
    return-object v5

    .line 44
    :cond_2
    cmp-long v6, v1, v11

    .line 45
    .line 46
    if-lez v6, :cond_3

    .line 47
    .line 48
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 49
    .line 50
    invoke-direct {v0, v7, v8, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_3
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    sub-long v13, v3, v1

    .line 63
    .line 64
    long-to-double v13, v13

    .line 65
    sub-long/2addr v11, v9

    .line 66
    long-to-double v9, v11

    .line 67
    div-double/2addr v13, v9

    .line 68
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    move-object v9, v5

    .line 73
    :goto_2
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-eqz v10, :cond_24

    .line 78
    .line 79
    const-string/jumbo v10, "uid"

    .line 80
    .line 81
    .line 82
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-eqz v10, :cond_23

    .line 91
    .line 92
    const-string/jumbo v10, "na"

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    and-int/lit8 v12, p5, 0x1

    .line 100
    .line 101
    if-eqz v12, :cond_4

    .line 102
    .line 103
    move/from16 v12, p1

    .line 104
    .line 105
    if-eq v12, v11, :cond_5

    .line 106
    .line 107
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 108
    .line 109
    .line 110
    move-wide/from16 v30, v1

    .line 111
    .line 112
    move-wide/from16 v32, v3

    .line 113
    .line 114
    move-object v3, v5

    .line 115
    move-object/from16 v24, v3

    .line 116
    .line 117
    :goto_3
    move/from16 p7, v6

    .line 118
    .line 119
    move-wide v4, v7

    .line 120
    move-object v6, v9

    .line 121
    goto/16 :goto_12

    .line 122
    .line 123
    :cond_4
    move/from16 v12, p1

    .line 124
    .line 125
    :cond_5
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    move-object/from16 v24, v9

    .line 130
    .line 131
    :goto_4
    invoke-static {v0, v15}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 132
    .line 133
    .line 134
    move-result v16

    .line 135
    if-eqz v16, :cond_21

    .line 136
    .line 137
    const-string/jumbo v7, "pkg"

    .line 138
    .line 139
    .line 140
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eqz v7, :cond_20

    .line 149
    .line 150
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    and-int/lit8 v8, p5, 0x2

    .line 155
    .line 156
    if-eqz v8, :cond_6

    .line 157
    .line 158
    move-object/from16 v8, p2

    .line 159
    .line 160
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v16

    .line 164
    if-nez v16, :cond_7

    .line 165
    .line 166
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 167
    .line 168
    .line 169
    move-wide/from16 v30, v1

    .line 170
    .line 171
    move-wide/from16 v32, v3

    .line 172
    .line 173
    move-object v3, v5

    .line 174
    move-object/from16 v26, v3

    .line 175
    .line 176
    move/from16 p7, v6

    .line 177
    .line 178
    move-object v6, v9

    .line 179
    move-object/from16 p11, v10

    .line 180
    .line 181
    move/from16 v34, v15

    .line 182
    .line 183
    :goto_5
    const-wide/16 v4, 0x0

    .line 184
    .line 185
    goto/16 :goto_11

    .line 186
    .line 187
    :cond_6
    move-object/from16 v8, p2

    .line 188
    .line 189
    :cond_7
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    move-object/from16 v26, v24

    .line 194
    .line 195
    :goto_6
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 196
    .line 197
    .line 198
    move-result v16

    .line 199
    if-eqz v16, :cond_1e

    .line 200
    .line 201
    move/from16 p6, v5

    .line 202
    .line 203
    const-string/jumbo v5, "ftr"

    .line 204
    .line 205
    .line 206
    move/from16 p7, v6

    .line 207
    .line 208
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-eqz v5, :cond_1d

    .line 217
    .line 218
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    and-int/lit8 v6, p5, 0x4

    .line 223
    .line 224
    if-eqz v6, :cond_8

    .line 225
    .line 226
    move-object/from16 v6, p3

    .line 227
    .line 228
    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v16

    .line 232
    if-nez v16, :cond_9

    .line 233
    .line 234
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 235
    .line 236
    .line 237
    move-wide/from16 v30, v1

    .line 238
    .line 239
    move-wide/from16 v32, v3

    .line 240
    .line 241
    move-object v6, v9

    .line 242
    move-object/from16 p11, v10

    .line 243
    .line 244
    move/from16 v34, v15

    .line 245
    .line 246
    const/4 v3, 0x0

    .line 247
    const-wide/16 v4, 0x0

    .line 248
    .line 249
    const/16 v27, 0x0

    .line 250
    .line 251
    goto/16 :goto_f

    .line 252
    .line 253
    :cond_8
    move-object/from16 v6, p3

    .line 254
    .line 255
    :cond_9
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    move-object/from16 v27, v26

    .line 260
    .line 261
    :goto_7
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 262
    .line 263
    .line 264
    move-result v16

    .line 265
    if-eqz v16, :cond_1b

    .line 266
    .line 267
    move/from16 p8, v6

    .line 268
    .line 269
    const-string/jumbo v6, "op"

    .line 270
    .line 271
    .line 272
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    if-eqz v6, :cond_1a

    .line 281
    .line 282
    const/4 v6, 0x0

    .line 283
    invoke-interface {v0, v6, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    move-result v8

    .line 287
    and-int/lit8 v6, p5, 0x8

    .line 288
    .line 289
    if-eqz v6, :cond_a

    .line 290
    .line 291
    invoke-static {v8}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    move-object/from16 v12, p4

    .line 296
    .line 297
    invoke-static {v12, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    if-nez v6, :cond_b

    .line 302
    .line 303
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 304
    .line 305
    .line 306
    move-wide/from16 v30, v1

    .line 307
    .line 308
    move-wide/from16 v32, v3

    .line 309
    .line 310
    move-object/from16 v25, v5

    .line 311
    .line 312
    move-object v6, v9

    .line 313
    move-object/from16 p11, v10

    .line 314
    .line 315
    move/from16 v34, v15

    .line 316
    .line 317
    const/4 v3, 0x0

    .line 318
    const-wide/16 v4, 0x0

    .line 319
    .line 320
    const/16 v28, 0x0

    .line 321
    .line 322
    goto/16 :goto_e

    .line 323
    .line 324
    :cond_a
    move-object/from16 v12, p4

    .line 325
    .line 326
    :cond_b
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 327
    .line 328
    .line 329
    move-result v6

    .line 330
    move-object/from16 v28, v27

    .line 331
    .line 332
    :goto_8
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 333
    .line 334
    .line 335
    move-result v16

    .line 336
    if-eqz v16, :cond_18

    .line 337
    .line 338
    move/from16 p9, v6

    .line 339
    .line 340
    const-string/jumbo v6, "st"

    .line 341
    .line 342
    .line 343
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v12

    .line 347
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    if-eqz v6, :cond_17

    .line 352
    .line 353
    const/4 v6, 0x0

    .line 354
    invoke-interface {v0, v6, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 355
    .line 356
    .line 357
    move-result-wide v16

    .line 358
    invoke-static/range {v16 .. v17}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    .line 359
    .line 360
    .line 361
    move-result v12

    .line 362
    and-int v12, v12, p10

    .line 363
    .line 364
    if-nez v12, :cond_d

    .line 365
    .line 366
    move-wide/from16 v30, v1

    .line 367
    .line 368
    move-wide/from16 v32, v3

    .line 369
    .line 370
    move-object/from16 v25, v5

    .line 371
    .line 372
    move-object v1, v6

    .line 373
    move-object v3, v1

    .line 374
    move-object v6, v9

    .line 375
    move-object/from16 p11, v10

    .line 376
    .line 377
    move/from16 v34, v15

    .line 378
    .line 379
    :cond_c
    const-wide/16 v4, 0x0

    .line 380
    .line 381
    goto/16 :goto_d

    .line 382
    .line 383
    :cond_d
    invoke-static/range {v16 .. v17}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    .line 384
    .line 385
    .line 386
    move-result v29

    .line 387
    move-object/from16 p11, v10

    .line 388
    .line 389
    const-string v10, "ac"

    .line 390
    .line 391
    move-wide/from16 v30, v1

    .line 392
    .line 393
    move-wide/from16 v32, v3

    .line 394
    .line 395
    const-wide/16 v1, 0x0

    .line 396
    .line 397
    invoke-interface {v0, v6, v10, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 398
    .line 399
    .line 400
    move-result-wide v3

    .line 401
    cmp-long v6, v3, v1

    .line 402
    .line 403
    if-lez v6, :cond_10

    .line 404
    .line 405
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-nez v1, :cond_e

    .line 410
    .line 411
    long-to-double v1, v3

    .line 412
    mul-double/2addr v1, v13

    .line 413
    invoke-static {v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    .line 414
    .line 415
    .line 416
    move-result-wide v1

    .line 417
    double-to-long v1, v1

    .line 418
    move-wide/from16 v22, v1

    .line 419
    .line 420
    goto :goto_9

    .line 421
    :cond_e
    move-wide/from16 v22, v3

    .line 422
    .line 423
    :goto_9
    if-nez v28, :cond_f

    .line 424
    .line 425
    new-instance v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 426
    .line 427
    const-wide/16 v2, 0x0

    .line 428
    .line 429
    invoke-direct {v1, v2, v3, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 430
    .line 431
    .line 432
    move v2, v15

    .line 433
    goto :goto_a

    .line 434
    :cond_f
    move v2, v15

    .line 435
    move-object/from16 v1, v28

    .line 436
    .line 437
    :goto_a
    move-object v15, v1

    .line 438
    move/from16 v16, v8

    .line 439
    .line 440
    move/from16 v17, v11

    .line 441
    .line 442
    move-object/from16 v18, v7

    .line 443
    .line 444
    move-object/from16 v19, v5

    .line 445
    .line 446
    move/from16 v20, v29

    .line 447
    .line 448
    move/from16 v21, v12

    .line 449
    .line 450
    invoke-virtual/range {v15 .. v23}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 451
    .line 452
    .line 453
    goto :goto_b

    .line 454
    :cond_10
    move v2, v15

    .line 455
    move-object/from16 v1, v28

    .line 456
    .line 457
    :goto_b
    const-string/jumbo v3, "rc"

    .line 458
    .line 459
    .line 460
    move/from16 v34, v2

    .line 461
    .line 462
    move-object v6, v9

    .line 463
    const/4 v4, 0x0

    .line 464
    const-wide/16 v9, 0x0

    .line 465
    .line 466
    invoke-interface {v0, v4, v3, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 467
    .line 468
    .line 469
    move-result-wide v2

    .line 470
    cmp-long v4, v2, v9

    .line 471
    .line 472
    if-lez v4, :cond_13

    .line 473
    .line 474
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    .line 475
    .line 476
    .line 477
    move-result v4

    .line 478
    if-nez v4, :cond_11

    .line 479
    .line 480
    long-to-double v2, v2

    .line 481
    mul-double/2addr v2, v13

    .line 482
    invoke-static {v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    .line 483
    .line 484
    .line 485
    move-result-wide v2

    .line 486
    double-to-long v2, v2

    .line 487
    :cond_11
    move-wide/from16 v22, v2

    .line 488
    .line 489
    if-nez v1, :cond_12

    .line 490
    .line 491
    new-instance v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 492
    .line 493
    const-wide/16 v2, 0x0

    .line 494
    .line 495
    invoke-direct {v1, v2, v3, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 496
    .line 497
    .line 498
    :cond_12
    move-object v15, v1

    .line 499
    move/from16 v16, v8

    .line 500
    .line 501
    move/from16 v17, v11

    .line 502
    .line 503
    move-object/from16 v18, v7

    .line 504
    .line 505
    move-object/from16 v19, v5

    .line 506
    .line 507
    move/from16 v20, v29

    .line 508
    .line 509
    move/from16 v21, v12

    .line 510
    .line 511
    invoke-virtual/range {v15 .. v23}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 512
    .line 513
    .line 514
    :cond_13
    const-string/jumbo v2, "du"

    .line 515
    .line 516
    .line 517
    move-object/from16 v25, v5

    .line 518
    .line 519
    const/4 v3, 0x0

    .line 520
    const-wide/16 v9, 0x0

    .line 521
    .line 522
    invoke-interface {v0, v3, v2, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 523
    .line 524
    .line 525
    move-result-wide v4

    .line 526
    cmp-long v2, v4, v9

    .line 527
    .line 528
    if-lez v2, :cond_c

    .line 529
    .line 530
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    if-nez v2, :cond_14

    .line 535
    .line 536
    long-to-double v4, v4

    .line 537
    mul-double/2addr v4, v13

    .line 538
    invoke-static {v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    .line 539
    .line 540
    .line 541
    move-result-wide v4

    .line 542
    double-to-long v4, v4

    .line 543
    :cond_14
    move-wide/from16 v22, v4

    .line 544
    .line 545
    if-nez v1, :cond_15

    .line 546
    .line 547
    new-instance v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 548
    .line 549
    const-wide/16 v4, 0x0

    .line 550
    .line 551
    invoke-direct {v1, v4, v5, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 552
    .line 553
    .line 554
    goto :goto_c

    .line 555
    :cond_15
    const-wide/16 v4, 0x0

    .line 556
    .line 557
    :goto_c
    move-object v15, v1

    .line 558
    move/from16 v16, v8

    .line 559
    .line 560
    move/from16 v17, v11

    .line 561
    .line 562
    move-object/from16 v18, v7

    .line 563
    .line 564
    move-object/from16 v19, v25

    .line 565
    .line 566
    move/from16 v20, v29

    .line 567
    .line 568
    move/from16 v21, v12

    .line 569
    .line 570
    invoke-virtual/range {v15 .. v23}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 571
    .line 572
    .line 573
    :goto_d
    if-nez v28, :cond_16

    .line 574
    .line 575
    move-object/from16 v28, v1

    .line 576
    .line 577
    :cond_16
    move-object/from16 v12, p4

    .line 578
    .line 579
    move-object/from16 v10, p11

    .line 580
    .line 581
    move-object v9, v6

    .line 582
    move-object/from16 v5, v25

    .line 583
    .line 584
    move-wide/from16 v1, v30

    .line 585
    .line 586
    move-wide/from16 v3, v32

    .line 587
    .line 588
    move/from16 v15, v34

    .line 589
    .line 590
    move/from16 v6, p9

    .line 591
    .line 592
    goto/16 :goto_8

    .line 593
    .line 594
    :cond_17
    move-wide/from16 v32, v3

    .line 595
    .line 596
    const/4 v3, 0x0

    .line 597
    move-object/from16 v12, p4

    .line 598
    .line 599
    move/from16 v6, p9

    .line 600
    .line 601
    move-wide/from16 v3, v32

    .line 602
    .line 603
    goto/16 :goto_8

    .line 604
    .line 605
    :cond_18
    move-wide/from16 v30, v1

    .line 606
    .line 607
    move-wide/from16 v32, v3

    .line 608
    .line 609
    move-object/from16 v25, v5

    .line 610
    .line 611
    move-object v6, v9

    .line 612
    move-object/from16 p11, v10

    .line 613
    .line 614
    move/from16 v34, v15

    .line 615
    .line 616
    const/4 v3, 0x0

    .line 617
    const-wide/16 v4, 0x0

    .line 618
    .line 619
    :goto_e
    if-nez v27, :cond_19

    .line 620
    .line 621
    move-object/from16 v27, v28

    .line 622
    .line 623
    :cond_19
    move/from16 v12, p1

    .line 624
    .line 625
    move-object/from16 v8, p2

    .line 626
    .line 627
    move-object/from16 v10, p11

    .line 628
    .line 629
    move-object v9, v6

    .line 630
    move-object/from16 v5, v25

    .line 631
    .line 632
    move-wide/from16 v1, v30

    .line 633
    .line 634
    move-wide/from16 v3, v32

    .line 635
    .line 636
    move/from16 v15, v34

    .line 637
    .line 638
    move/from16 v6, p8

    .line 639
    .line 640
    goto/16 :goto_7

    .line 641
    .line 642
    :cond_1a
    move-wide/from16 v32, v3

    .line 643
    .line 644
    const/4 v3, 0x0

    .line 645
    move/from16 v12, p1

    .line 646
    .line 647
    move-object/from16 v8, p2

    .line 648
    .line 649
    move/from16 v6, p8

    .line 650
    .line 651
    move-wide/from16 v3, v32

    .line 652
    .line 653
    goto/16 :goto_7

    .line 654
    .line 655
    :cond_1b
    move-wide/from16 v30, v1

    .line 656
    .line 657
    move-wide/from16 v32, v3

    .line 658
    .line 659
    move-object v6, v9

    .line 660
    move-object/from16 p11, v10

    .line 661
    .line 662
    move/from16 v34, v15

    .line 663
    .line 664
    const/4 v3, 0x0

    .line 665
    const-wide/16 v4, 0x0

    .line 666
    .line 667
    :goto_f
    if-nez v26, :cond_1c

    .line 668
    .line 669
    move-object/from16 v26, v27

    .line 670
    .line 671
    :cond_1c
    move/from16 v12, p1

    .line 672
    .line 673
    move-object/from16 v8, p2

    .line 674
    .line 675
    move/from16 v5, p6

    .line 676
    .line 677
    move-object/from16 v10, p11

    .line 678
    .line 679
    move-object v9, v6

    .line 680
    move-wide/from16 v1, v30

    .line 681
    .line 682
    move-wide/from16 v3, v32

    .line 683
    .line 684
    move/from16 v15, v34

    .line 685
    .line 686
    :goto_10
    move/from16 v6, p7

    .line 687
    .line 688
    goto/16 :goto_6

    .line 689
    .line 690
    :cond_1d
    move-wide/from16 v32, v3

    .line 691
    .line 692
    move/from16 v12, p1

    .line 693
    .line 694
    move-object/from16 v8, p2

    .line 695
    .line 696
    move/from16 v5, p6

    .line 697
    .line 698
    goto :goto_10

    .line 699
    :cond_1e
    move-wide/from16 v30, v1

    .line 700
    .line 701
    move-wide/from16 v32, v3

    .line 702
    .line 703
    move/from16 p7, v6

    .line 704
    .line 705
    move-object v6, v9

    .line 706
    move-object/from16 p11, v10

    .line 707
    .line 708
    move/from16 v34, v15

    .line 709
    .line 710
    const/4 v3, 0x0

    .line 711
    goto/16 :goto_5

    .line 712
    .line 713
    :goto_11
    if-nez v24, :cond_1f

    .line 714
    .line 715
    move-object/from16 v24, v26

    .line 716
    .line 717
    :cond_1f
    move/from16 v12, p1

    .line 718
    .line 719
    move-object/from16 v10, p11

    .line 720
    .line 721
    move-wide v7, v4

    .line 722
    move-object v9, v6

    .line 723
    move-wide/from16 v1, v30

    .line 724
    .line 725
    move/from16 v15, v34

    .line 726
    .line 727
    move/from16 v6, p7

    .line 728
    .line 729
    move-object v5, v3

    .line 730
    move-wide/from16 v3, v32

    .line 731
    .line 732
    goto/16 :goto_4

    .line 733
    .line 734
    :cond_20
    move-wide/from16 v32, v3

    .line 735
    .line 736
    move/from16 p7, v6

    .line 737
    .line 738
    move/from16 v12, p1

    .line 739
    .line 740
    const-wide/16 v7, 0x0

    .line 741
    .line 742
    goto/16 :goto_4

    .line 743
    .line 744
    :cond_21
    move-wide/from16 v30, v1

    .line 745
    .line 746
    move-wide/from16 v32, v3

    .line 747
    .line 748
    move-object v3, v5

    .line 749
    goto/16 :goto_3

    .line 750
    .line 751
    :goto_12
    if-nez v6, :cond_22

    .line 752
    .line 753
    move-object/from16 v9, v24

    .line 754
    .line 755
    goto :goto_13

    .line 756
    :cond_22
    move-object v9, v6

    .line 757
    :goto_13
    move/from16 v6, p7

    .line 758
    .line 759
    move-wide v7, v4

    .line 760
    move-wide/from16 v1, v30

    .line 761
    .line 762
    move-object v5, v3

    .line 763
    move-wide/from16 v3, v32

    .line 764
    .line 765
    goto/16 :goto_2

    .line 766
    .line 767
    :cond_23
    move-wide/from16 v32, v3

    .line 768
    .line 769
    move/from16 p7, v6

    .line 770
    .line 771
    move-object v6, v9

    .line 772
    move/from16 v6, p7

    .line 773
    .line 774
    goto/16 :goto_2

    .line 775
    .line 776
    :cond_24
    move-wide/from16 v30, v1

    .line 777
    .line 778
    move-wide/from16 v32, v3

    .line 779
    .line 780
    move-object v6, v9

    .line 781
    move-object v5, v6

    .line 782
    if-eqz v6, :cond_25

    .line 783
    .line 784
    move-wide/from16 v0, v30

    .line 785
    .line 786
    move-wide/from16 v2, v32

    .line 787
    .line 788
    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 789
    .line 790
    .line 791
    :cond_25
    return-object v5
.end method

.method public static writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 36

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string/jumbo v2, "ops"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    const-string/jumbo v5, "beg"

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1, v5, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v3, "end"

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    invoke-interface {v0, v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v5, 0x0

    .line 35
    :goto_0
    if-ge v5, v3, :cond_a

    .line 36
    .line 37
    move-object/from16 v6, p0

    .line 38
    .line 39
    invoke-virtual {v6, v5}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const-string/jumbo v8, "uid"

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    const-string/jumbo v10, "na"

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1, v10, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    const/4 v11, 0x0

    .line 64
    :goto_1
    if-ge v11, v9, :cond_9

    .line 65
    .line 66
    invoke-virtual {v7, v11}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    const-string/jumbo v13, "pkg"

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v1, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v14

    .line 80
    invoke-interface {v0, v1, v10, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    const/4 v15, 0x0

    .line 88
    :goto_2
    if-ge v15, v14, :cond_8

    .line 89
    .line 90
    invoke-virtual {v12, v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    move/from16 v16, v3

    .line 95
    .line 96
    const-string/jumbo v3, "ftr"

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v0, v10, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    const/4 v6, 0x0

    .line 114
    :goto_3
    if-ge v6, v1, :cond_7

    .line 115
    .line 116
    move/from16 v17, v1

    .line 117
    .line 118
    invoke-virtual {v4, v6}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    move-object/from16 v18, v4

    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOp;->collectKeys()Landroid/util/LongSparseArray;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    if-eqz v4, :cond_0

    .line 129
    .line 130
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    .line 131
    .line 132
    .line 133
    move-result v19

    .line 134
    if-gtz v19, :cond_1

    .line 135
    .line 136
    :cond_0
    move-object/from16 v26, v2

    .line 137
    .line 138
    move-object/from16 v27, v3

    .line 139
    .line 140
    move/from16 v28, v5

    .line 141
    .line 142
    move/from16 v29, v6

    .line 143
    .line 144
    move-object/from16 v19, v7

    .line 145
    .line 146
    move-object/from16 v22, v8

    .line 147
    .line 148
    move/from16 v20, v9

    .line 149
    .line 150
    move/from16 v34, v11

    .line 151
    .line 152
    move-object/from16 v21, v12

    .line 153
    .line 154
    move-object/from16 v30, v13

    .line 155
    .line 156
    move/from16 v25, v14

    .line 157
    .line 158
    const/4 v11, 0x0

    .line 159
    goto/16 :goto_6

    .line 160
    .line 161
    :cond_1
    move-object/from16 v19, v7

    .line 162
    .line 163
    const-string/jumbo v7, "op"

    .line 164
    .line 165
    .line 166
    move/from16 v20, v9

    .line 167
    .line 168
    const/4 v9, 0x0

    .line 169
    invoke-interface {v0, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    .line 171
    .line 172
    move-object/from16 v21, v12

    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    invoke-interface {v0, v9, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    const/4 v12, 0x0

    .line 186
    :goto_4
    if-ge v12, v9, :cond_6

    .line 187
    .line 188
    move-object/from16 v22, v8

    .line 189
    .line 190
    move/from16 v23, v9

    .line 191
    .line 192
    invoke-virtual {v4, v12}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 193
    .line 194
    .line 195
    move-result-wide v8

    .line 196
    move-object/from16 v24, v4

    .line 197
    .line 198
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    move/from16 v25, v14

    .line 203
    .line 204
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    .line 205
    .line 206
    .line 207
    move-result v14

    .line 208
    move-object/from16 v26, v2

    .line 209
    .line 210
    move-object/from16 v27, v3

    .line 211
    .line 212
    invoke-virtual {v1, v4, v4, v14}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessCount(III)J

    .line 213
    .line 214
    .line 215
    move-result-wide v2

    .line 216
    move/from16 v28, v5

    .line 217
    .line 218
    move/from16 v29, v6

    .line 219
    .line 220
    invoke-virtual {v1, v4, v4, v14}, Landroid/app/AppOpsManager$HistoricalOp;->getRejectCount(III)J

    .line 221
    .line 222
    .line 223
    move-result-wide v5

    .line 224
    move-object/from16 v30, v13

    .line 225
    .line 226
    invoke-virtual {v1, v4, v4, v14}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessDuration(III)J

    .line 227
    .line 228
    .line 229
    move-result-wide v13

    .line 230
    const-wide/16 v31, 0x0

    .line 231
    .line 232
    cmp-long v4, v2, v31

    .line 233
    .line 234
    if-gtz v4, :cond_2

    .line 235
    .line 236
    cmp-long v33, v5, v31

    .line 237
    .line 238
    if-gtz v33, :cond_2

    .line 239
    .line 240
    cmp-long v33, v13, v31

    .line 241
    .line 242
    if-gtz v33, :cond_2

    .line 243
    .line 244
    move-object/from16 v33, v1

    .line 245
    .line 246
    move/from16 v34, v11

    .line 247
    .line 248
    const/4 v11, 0x0

    .line 249
    goto :goto_5

    .line 250
    :cond_2
    move-object/from16 v33, v1

    .line 251
    .line 252
    const-string/jumbo v1, "st"

    .line 253
    .line 254
    .line 255
    move/from16 v34, v11

    .line 256
    .line 257
    const/4 v11, 0x0

    .line 258
    invoke-interface {v0, v11, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    .line 260
    .line 261
    invoke-interface {v0, v11, v10, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    .line 263
    .line 264
    if-lez v4, :cond_3

    .line 265
    .line 266
    const-string v4, "ac"

    .line 267
    .line 268
    invoke-interface {v0, v11, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    .line 270
    .line 271
    :cond_3
    cmp-long v2, v5, v31

    .line 272
    .line 273
    if-lez v2, :cond_4

    .line 274
    .line 275
    const-string/jumbo v2, "rc"

    .line 276
    .line 277
    .line 278
    invoke-interface {v0, v11, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    .line 280
    .line 281
    :cond_4
    cmp-long v2, v13, v31

    .line 282
    .line 283
    if-lez v2, :cond_5

    .line 284
    .line 285
    const-string/jumbo v2, "du"

    .line 286
    .line 287
    .line 288
    invoke-interface {v0, v11, v2, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    .line 290
    .line 291
    :cond_5
    invoke-interface {v0, v11, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    .line 293
    .line 294
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 295
    .line 296
    move-object/from16 v8, v22

    .line 297
    .line 298
    move/from16 v9, v23

    .line 299
    .line 300
    move-object/from16 v4, v24

    .line 301
    .line 302
    move/from16 v14, v25

    .line 303
    .line 304
    move-object/from16 v2, v26

    .line 305
    .line 306
    move-object/from16 v3, v27

    .line 307
    .line 308
    move/from16 v5, v28

    .line 309
    .line 310
    move/from16 v6, v29

    .line 311
    .line 312
    move-object/from16 v13, v30

    .line 313
    .line 314
    move-object/from16 v1, v33

    .line 315
    .line 316
    move/from16 v11, v34

    .line 317
    .line 318
    goto/16 :goto_4

    .line 319
    .line 320
    :cond_6
    move-object/from16 v26, v2

    .line 321
    .line 322
    move-object/from16 v27, v3

    .line 323
    .line 324
    move/from16 v28, v5

    .line 325
    .line 326
    move/from16 v29, v6

    .line 327
    .line 328
    move-object/from16 v22, v8

    .line 329
    .line 330
    move/from16 v34, v11

    .line 331
    .line 332
    move-object/from16 v30, v13

    .line 333
    .line 334
    move/from16 v25, v14

    .line 335
    .line 336
    const/4 v11, 0x0

    .line 337
    invoke-interface {v0, v11, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    .line 339
    .line 340
    :goto_6
    add-int/lit8 v6, v29, 0x1

    .line 341
    .line 342
    move/from16 v1, v17

    .line 343
    .line 344
    move-object/from16 v4, v18

    .line 345
    .line 346
    move-object/from16 v7, v19

    .line 347
    .line 348
    move/from16 v9, v20

    .line 349
    .line 350
    move-object/from16 v12, v21

    .line 351
    .line 352
    move-object/from16 v8, v22

    .line 353
    .line 354
    move/from16 v14, v25

    .line 355
    .line 356
    move-object/from16 v2, v26

    .line 357
    .line 358
    move-object/from16 v3, v27

    .line 359
    .line 360
    move/from16 v5, v28

    .line 361
    .line 362
    move-object/from16 v13, v30

    .line 363
    .line 364
    move/from16 v11, v34

    .line 365
    .line 366
    goto/16 :goto_3

    .line 367
    .line 368
    :cond_7
    move-object/from16 v26, v2

    .line 369
    .line 370
    move-object v1, v3

    .line 371
    move/from16 v28, v5

    .line 372
    .line 373
    move-object/from16 v19, v7

    .line 374
    .line 375
    move-object/from16 v22, v8

    .line 376
    .line 377
    move/from16 v20, v9

    .line 378
    .line 379
    move/from16 v34, v11

    .line 380
    .line 381
    move-object/from16 v21, v12

    .line 382
    .line 383
    move-object/from16 v30, v13

    .line 384
    .line 385
    move/from16 v25, v14

    .line 386
    .line 387
    const/4 v11, 0x0

    .line 388
    invoke-interface {v0, v11, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    .line 390
    .line 391
    add-int/lit8 v15, v15, 0x1

    .line 392
    .line 393
    move-object/from16 v6, p0

    .line 394
    .line 395
    move-object v1, v11

    .line 396
    move/from16 v3, v16

    .line 397
    .line 398
    move-object/from16 v7, v19

    .line 399
    .line 400
    move/from16 v9, v20

    .line 401
    .line 402
    move-object/from16 v12, v21

    .line 403
    .line 404
    move-object/from16 v8, v22

    .line 405
    .line 406
    move/from16 v14, v25

    .line 407
    .line 408
    move-object/from16 v2, v26

    .line 409
    .line 410
    move/from16 v5, v28

    .line 411
    .line 412
    move-object/from16 v13, v30

    .line 413
    .line 414
    move/from16 v11, v34

    .line 415
    .line 416
    goto/16 :goto_2

    .line 417
    .line 418
    :cond_8
    move-object/from16 v26, v2

    .line 419
    .line 420
    move/from16 v16, v3

    .line 421
    .line 422
    move/from16 v28, v5

    .line 423
    .line 424
    move-object/from16 v19, v7

    .line 425
    .line 426
    move-object/from16 v22, v8

    .line 427
    .line 428
    move/from16 v20, v9

    .line 429
    .line 430
    move/from16 v34, v11

    .line 431
    .line 432
    move-object v11, v1

    .line 433
    move-object v1, v13

    .line 434
    invoke-interface {v0, v11, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 435
    .line 436
    .line 437
    add-int/lit8 v1, v34, 0x1

    .line 438
    .line 439
    move-object/from16 v6, p0

    .line 440
    .line 441
    move/from16 v3, v16

    .line 442
    .line 443
    move-object/from16 v7, v19

    .line 444
    .line 445
    move/from16 v9, v20

    .line 446
    .line 447
    move-object/from16 v8, v22

    .line 448
    .line 449
    move-object/from16 v2, v26

    .line 450
    .line 451
    move/from16 v5, v28

    .line 452
    .line 453
    move-object/from16 v35, v11

    .line 454
    .line 455
    move v11, v1

    .line 456
    move-object/from16 v1, v35

    .line 457
    .line 458
    goto/16 :goto_1

    .line 459
    .line 460
    :cond_9
    move-object v11, v1

    .line 461
    move-object/from16 v26, v2

    .line 462
    .line 463
    move/from16 v16, v3

    .line 464
    .line 465
    move/from16 v28, v5

    .line 466
    .line 467
    move-object v1, v8

    .line 468
    invoke-interface {v0, v11, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 469
    .line 470
    .line 471
    add-int/lit8 v5, v28, 0x1

    .line 472
    .line 473
    move-object v1, v11

    .line 474
    move/from16 v3, v16

    .line 475
    .line 476
    move-object/from16 v2, v26

    .line 477
    .line 478
    goto/16 :goto_0

    .line 479
    .line 480
    :cond_a
    move-object v11, v1

    .line 481
    move-object v1, v2

    .line 482
    invoke-interface {v0, v11, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    .line 484
    .line 485
    return-void
.end method


# virtual methods
.method public final collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;
    .locals 18

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-static/range {v17 .. v17}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v16

    .line 12
    const/4 v2, 0x1

    .line 13
    new-array v14, v2, [J

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    aput-wide v2, v14, v4

    .line 19
    .line 20
    const/4 v15, 0x0

    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    move-object/from16 v3, v17

    .line 24
    .line 25
    move/from16 v4, p1

    .line 26
    .line 27
    move-object/from16 v5, p2

    .line 28
    .line 29
    move-object/from16 v6, p3

    .line 30
    .line 31
    move-object/from16 v7, p4

    .line 32
    .line 33
    move/from16 v8, p5

    .line 34
    .line 35
    move-wide/from16 v9, p6

    .line 36
    .line 37
    move-wide/from16 v11, p8

    .line 38
    .line 39
    move/from16 v13, p10

    .line 40
    .line 41
    invoke-virtual/range {v2 .. v16}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/LinkedList;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    move-object/from16 v2, v17

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    move-object v2, v1

    .line 55
    :goto_0
    const-string v3, "Error reading historical app ops. Deleting history."

    .line 56
    .line 57
    invoke-static {v3, v0, v2}, Lcom/android/server/appop/HistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 63
    .line 64
    .line 65
    return-object v1
.end method

.method public final collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/LinkedList;
    .locals 30

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    move/from16 v4, p13

    .line 4
    .line 5
    move-object/from16 v0, p0

    .line 6
    .line 7
    move-object/from16 v1, p1

    .line 8
    .line 9
    move/from16 v6, p2

    .line 10
    .line 11
    move-object/from16 v7, p3

    .line 12
    .line 13
    move-object/from16 v8, p4

    .line 14
    .line 15
    move-object/from16 v9, p5

    .line 16
    .line 17
    move/from16 v10, p6

    .line 18
    .line 19
    move/from16 v15, p11

    .line 20
    .line 21
    move-object/from16 v16, p12

    .line 22
    .line 23
    move/from16 v17, p13

    .line 24
    .line 25
    move-object/from16 v18, p14

    .line 26
    .line 27
    iget-wide v2, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    .line 28
    .line 29
    long-to-double v11, v2

    .line 30
    int-to-double v2, v4

    .line 31
    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    double-to-long v2, v2

    .line 36
    move-object/from16 v19, v0

    .line 37
    .line 38
    move-object/from16 v20, v1

    .line 39
    .line 40
    iget-wide v0, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 41
    .line 42
    mul-long v21, v2, v0

    .line 43
    .line 44
    move-wide/from16 v2, v21

    .line 45
    .line 46
    add-int/lit8 v14, v4, 0x1

    .line 47
    .line 48
    int-to-double v4, v14

    .line 49
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    double-to-long v4, v4

    .line 54
    mul-long/2addr v0, v4

    .line 55
    move-wide v4, v0

    .line 56
    sub-long v11, p7, v21

    .line 57
    .line 58
    move-wide/from16 v23, v0

    .line 59
    .line 60
    const-wide/16 v0, 0x0

    .line 61
    .line 62
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 63
    .line 64
    .line 65
    move-result-wide v25

    .line 66
    move-wide/from16 v11, v25

    .line 67
    .line 68
    sub-long v21, p9, v21

    .line 69
    .line 70
    move/from16 v27, v14

    .line 71
    .line 72
    move-wide/from16 v13, v21

    .line 73
    .line 74
    move-object/from16 v0, v19

    .line 75
    .line 76
    move-object/from16 v1, v20

    .line 77
    .line 78
    move-wide/from16 v28, v23

    .line 79
    .line 80
    invoke-virtual/range {v0 .. v18}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v15

    .line 84
    if-eqz v15, :cond_0

    .line 85
    .line 86
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    return-object v0

    .line 94
    :cond_0
    move-object/from16 v0, p0

    .line 95
    .line 96
    move-object/from16 v1, p1

    .line 97
    .line 98
    move/from16 v2, p2

    .line 99
    .line 100
    move-object/from16 v3, p3

    .line 101
    .line 102
    move-object/from16 v4, p4

    .line 103
    .line 104
    move-object/from16 v5, p5

    .line 105
    .line 106
    move/from16 v6, p6

    .line 107
    .line 108
    move-wide/from16 v7, v25

    .line 109
    .line 110
    move-wide/from16 v9, v21

    .line 111
    .line 112
    move/from16 v11, p11

    .line 113
    .line 114
    move-object/from16 v12, p12

    .line 115
    .line 116
    move/from16 v13, v27

    .line 117
    .line 118
    move-object/from16 v14, p14

    .line 119
    .line 120
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/LinkedList;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_1

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    const/4 v2, 0x0

    .line 131
    :goto_0
    if-ge v2, v1, :cond_1

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 138
    .line 139
    move-wide/from16 v4, v28

    .line 140
    .line 141
    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 142
    .line 143
    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    if-eqz v15, :cond_3

    .line 148
    .line 149
    if-nez v0, :cond_2

    .line 150
    .line 151
    new-instance v0, Ljava/util/LinkedList;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 154
    .line 155
    .line 156
    :cond_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    add-int/lit8 v1, v1, -0x1

    .line 161
    .line 162
    :goto_1
    if-ltz v1, :cond_3

    .line 163
    .line 164
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    add-int/lit8 v1, v1, -0x1

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_3
    return-object v0
.end method

.method public final generateFile(Ljava/io/File;I)Ljava/io/File;
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 5
    .line 6
    if-ge v2, v3, :cond_0

    .line 7
    .line 8
    long-to-double v0, v0

    .line 9
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    .line 10
    .line 11
    long-to-double v3, v3

    .line 12
    int-to-double v5, v2

    .line 13
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    add-double/2addr v3, v0

    .line 18
    double-to-long v0, v3

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-wide v2, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 23
    .line 24
    mul-long/2addr v0, v2

    .line 25
    new-instance p0, Ljava/io/File;

    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ".xml"

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object p0
.end method

.method public final handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    move-object/from16 v6, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move/from16 v4, p5

    .line 10
    .line 11
    iget-wide v1, v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    .line 12
    .line 13
    long-to-double v1, v1

    .line 14
    int-to-double v7, v4

    .line 15
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 16
    .line 17
    .line 18
    move-result-wide v7

    .line 19
    double-to-long v7, v7

    .line 20
    iget-wide v9, v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 21
    .line 22
    mul-long v12, v7, v9

    .line 23
    .line 24
    add-int/lit8 v11, v4, 0x1

    .line 25
    .line 26
    int-to-double v7, v11

    .line 27
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    double-to-long v1, v1

    .line 32
    mul-long v20, v1, v9

    .line 33
    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    :cond_0
    move-object v13, v3

    .line 43
    move v12, v4

    .line 44
    move-object v8, v5

    .line 45
    move-object v5, v6

    .line 46
    move/from16 v23, v11

    .line 47
    .line 48
    goto/16 :goto_c

    .line 49
    .line 50
    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/16 v22, 0x0

    .line 55
    .line 56
    move/from16 v2, v22

    .line 57
    .line 58
    :goto_0
    if-ge v2, v1, :cond_2

    .line 59
    .line 60
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Landroid/app/AppOpsManager$HistoricalOps;

    .line 65
    .line 66
    neg-long v8, v12

    .line 67
    invoke-virtual {v7, v8, v9}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-wide v14, 0x7fffffffffffffffL

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    const/16 v16, 0x1f

    .line 79
    .line 80
    const/4 v7, -0x1

    .line 81
    const/4 v8, 0x0

    .line 82
    const/4 v9, 0x0

    .line 83
    const/4 v10, 0x0

    .line 84
    const/4 v1, 0x0

    .line 85
    move/from16 v23, v11

    .line 86
    .line 87
    move v11, v1

    .line 88
    const-wide/high16 v1, -0x8000000000000000L

    .line 89
    .line 90
    move-wide/from16 v24, v12

    .line 91
    .line 92
    move-wide v12, v1

    .line 93
    const/16 v17, 0x0

    .line 94
    .line 95
    const/16 v19, 0x0

    .line 96
    .line 97
    move-object/from16 v1, p0

    .line 98
    .line 99
    move-object/from16 v2, p2

    .line 100
    .line 101
    move-wide/from16 v3, v24

    .line 102
    .line 103
    move-wide/from16 v5, v20

    .line 104
    .line 105
    move/from16 v18, p5

    .line 106
    .line 107
    invoke-virtual/range {v1 .. v19}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/4 v2, 0x1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-lez v3, :cond_3

    .line 119
    .line 120
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    sub-int/2addr v4, v2

    .line 125
    move-object/from16 v5, p3

    .line 126
    .line 127
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 132
    .line 133
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 134
    .line 135
    .line 136
    move-result-wide v6

    .line 137
    move/from16 v4, v22

    .line 138
    .line 139
    :goto_1
    if-ge v4, v3, :cond_4

    .line 140
    .line 141
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    check-cast v8, Landroid/app/AppOpsManager$HistoricalOps;

    .line 146
    .line 147
    invoke-virtual {v8, v6, v7}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 148
    .line 149
    .line 150
    add-int/lit8 v4, v4, 0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    move-object/from16 v5, p3

    .line 154
    .line 155
    :cond_4
    new-instance v3, Ljava/util/LinkedList;

    .line 156
    .line 157
    invoke-direct {v3, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 158
    .line 159
    .line 160
    if-eqz v1, :cond_5

    .line 161
    .line 162
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 163
    .line 164
    .line 165
    :cond_5
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    const-wide/16 v4, 0x0

    .line 170
    .line 171
    move-wide v10, v4

    .line 172
    move/from16 v8, v22

    .line 173
    .line 174
    const/4 v7, 0x0

    .line 175
    const/4 v9, 0x0

    .line 176
    :goto_2
    if-ge v8, v1, :cond_d

    .line 177
    .line 178
    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    check-cast v12, Landroid/app/AppOpsManager$HistoricalOps;

    .line 183
    .line 184
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 185
    .line 186
    .line 187
    move-result-wide v13

    .line 188
    cmp-long v13, v13, v20

    .line 189
    .line 190
    if-gtz v13, :cond_7

    .line 191
    .line 192
    :cond_6
    const/4 v13, 0x0

    .line 193
    goto :goto_3

    .line 194
    :cond_7
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    .line 195
    .line 196
    .line 197
    move-result-wide v13

    .line 198
    cmp-long v13, v13, v20

    .line 199
    .line 200
    if-gez v13, :cond_8

    .line 201
    .line 202
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 203
    .line 204
    .line 205
    move-result-wide v10

    .line 206
    sub-long v10, v10, v20

    .line 207
    .line 208
    cmp-long v13, v10, v24

    .line 209
    .line 210
    if-lez v13, :cond_6

    .line 211
    .line 212
    long-to-double v10, v10

    .line 213
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    .line 214
    .line 215
    .line 216
    move-result-wide v13

    .line 217
    long-to-double v13, v13

    .line 218
    div-double/2addr v10, v13

    .line 219
    invoke-virtual {v12, v10, v11}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromEnd(D)Landroid/app/AppOpsManager$HistoricalOps;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 224
    .line 225
    .line 226
    move-result-wide v13

    .line 227
    sub-long v13, v13, v20

    .line 228
    .line 229
    move-wide/from16 v26, v13

    .line 230
    .line 231
    move-object v13, v10

    .line 232
    move-wide/from16 v10, v26

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_8
    move-object v13, v12

    .line 236
    const/4 v12, 0x0

    .line 237
    :goto_3
    if-eqz v12, :cond_a

    .line 238
    .line 239
    if-nez v9, :cond_9

    .line 240
    .line 241
    new-instance v9, Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .line 245
    .line 246
    :cond_9
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    :cond_a
    if-eqz v13, :cond_c

    .line 250
    .line 251
    if-nez v7, :cond_b

    .line 252
    .line 253
    new-instance v7, Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .line 257
    .line 258
    :cond_b
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_d
    move-object/from16 v8, p1

    .line 265
    .line 266
    move/from16 v12, p5

    .line 267
    .line 268
    invoke-virtual {v0, v8, v12}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    move-object/from16 v13, p4

    .line 277
    .line 278
    invoke-interface {v13, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    if-eqz v9, :cond_16

    .line 282
    .line 283
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    sub-int/2addr v3, v2

    .line 288
    :goto_4
    if-ltz v3, :cond_13

    .line 289
    .line 290
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v12

    .line 294
    check-cast v12, Landroid/app/AppOpsManager$HistoricalOps;

    .line 295
    .line 296
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 297
    .line 298
    .line 299
    move-result-wide v14

    .line 300
    sub-long v14, v14, v24

    .line 301
    .line 302
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 303
    .line 304
    .line 305
    move-result-wide v14

    .line 306
    add-int/lit8 v16, v3, -0x1

    .line 307
    .line 308
    move/from16 v6, v16

    .line 309
    .line 310
    :goto_5
    if-ltz v6, :cond_12

    .line 311
    .line 312
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v16

    .line 316
    move-object/from16 v2, v16

    .line 317
    .line 318
    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 319
    .line 320
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 321
    .line 322
    .line 323
    move-result-wide v18

    .line 324
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    .line 325
    .line 326
    .line 327
    move-result-wide v4

    .line 328
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 329
    .line 330
    .line 331
    move-result-wide v4

    .line 332
    sub-long v4, v18, v4

    .line 333
    .line 334
    const-wide/16 v18, 0x0

    .line 335
    .line 336
    cmp-long v16, v4, v18

    .line 337
    .line 338
    if-gtz v16, :cond_e

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_e
    long-to-float v4, v4

    .line 342
    move-wide/from16 v18, v14

    .line 343
    .line 344
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    .line 345
    .line 346
    .line 347
    move-result-wide v14

    .line 348
    long-to-float v5, v14

    .line 349
    div-float/2addr v4, v5

    .line 350
    const/high16 v5, 0x3f800000    # 1.0f

    .line 351
    .line 352
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-ltz v5, :cond_f

    .line 357
    .line 358
    invoke-interface {v9, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    add-int/lit8 v3, v3, -0x1

    .line 362
    .line 363
    invoke-virtual {v12, v2}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 364
    .line 365
    .line 366
    goto :goto_6

    .line 367
    :cond_f
    float-to-double v4, v4

    .line 368
    invoke-virtual {v2, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromEnd(D)Landroid/app/AppOpsManager$HistoricalOps;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    if-eqz v4, :cond_10

    .line 373
    .line 374
    invoke-virtual {v12, v4}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 375
    .line 376
    .line 377
    :cond_10
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-eqz v2, :cond_11

    .line 382
    .line 383
    invoke-interface {v9, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    add-int/lit8 v3, v3, -0x1

    .line 387
    .line 388
    :cond_11
    :goto_6
    add-int/lit8 v6, v6, -0x1

    .line 389
    .line 390
    move-wide/from16 v14, v18

    .line 391
    .line 392
    const/4 v2, 0x1

    .line 393
    const-wide/16 v4, 0x0

    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_12
    :goto_7
    add-int/lit8 v3, v3, -0x1

    .line 397
    .line 398
    const/4 v2, 0x1

    .line 399
    const-wide/16 v4, 0x0

    .line 400
    .line 401
    goto :goto_4

    .line 402
    :cond_13
    const-string/jumbo v2, "history"

    .line 403
    .line 404
    .line 405
    sget-object v3, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 406
    .line 407
    invoke-virtual {v3, v1}, Lcom/android/internal/os/AtomicDirectory;->openWrite(Ljava/io/File;)Ljava/io/FileOutputStream;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    :try_start_0
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 416
    .line 417
    .line 418
    const/4 v5, 0x1

    .line 419
    invoke-interface {v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 420
    .line 421
    .line 422
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 423
    .line 424
    const/4 v5, 0x0

    .line 425
    invoke-interface {v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 426
    .line 427
    .line 428
    invoke-interface {v3, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    .line 430
    .line 431
    const-string/jumbo v4, "ver"

    .line 432
    .line 433
    .line 434
    const/4 v6, 0x2

    .line 435
    invoke-interface {v3, v5, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    .line 437
    .line 438
    const-wide/16 v14, 0x0

    .line 439
    .line 440
    cmp-long v4, v10, v14

    .line 441
    .line 442
    if-eqz v4, :cond_14

    .line 443
    .line 444
    const-string/jumbo v4, "ov"

    .line 445
    .line 446
    .line 447
    invoke-interface {v3, v5, v4, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    .line 449
    .line 450
    goto :goto_8

    .line 451
    :catch_0
    move-exception v0

    .line 452
    goto :goto_a

    .line 453
    :cond_14
    :goto_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 454
    .line 455
    .line 456
    move-result v4

    .line 457
    move/from16 v5, v22

    .line 458
    .line 459
    :goto_9
    if-ge v5, v4, :cond_15

    .line 460
    .line 461
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v6

    .line 465
    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    .line 466
    .line 467
    invoke-static {v6, v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 468
    .line 469
    .line 470
    add-int/lit8 v5, v5, 0x1

    .line 471
    .line 472
    goto :goto_9

    .line 473
    :cond_15
    const/4 v4, 0x0

    .line 474
    invoke-interface {v3, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    .line 476
    .line 477
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 478
    .line 479
    .line 480
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 481
    .line 482
    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicDirectory;->closeWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .line 484
    .line 485
    goto :goto_b

    .line 486
    :goto_a
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 487
    .line 488
    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicDirectory;->failWrite(Ljava/io/FileOutputStream;)V

    .line 489
    .line 490
    .line 491
    throw v0

    .line 492
    :cond_16
    :goto_b
    move-object/from16 v1, p0

    .line 493
    .line 494
    move-object/from16 v2, p1

    .line 495
    .line 496
    move-object/from16 v3, p2

    .line 497
    .line 498
    move-object v4, v7

    .line 499
    move-object/from16 v5, p4

    .line 500
    .line 501
    move/from16 v6, v23

    .line 502
    .line 503
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 504
    .line 505
    .line 506
    return-void

    .line 507
    :goto_c
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->isEmpty()Z

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    if-nez v1, :cond_18

    .line 512
    .line 513
    move-object/from16 v3, p2

    .line 514
    .line 515
    invoke-virtual {v0, v3, v12}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-interface {v13, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v2

    .line 527
    if-eqz v2, :cond_17

    .line 528
    .line 529
    invoke-virtual {v0, v8, v12}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-static {v2, v1}, Ljava/nio/file/Files;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 542
    .line 543
    .line 544
    :cond_17
    move-object/from16 v1, p0

    .line 545
    .line 546
    move-object/from16 v2, p1

    .line 547
    .line 548
    move-object/from16 v3, p2

    .line 549
    .line 550
    move-object/from16 v4, p3

    .line 551
    .line 552
    move-object/from16 v5, p4

    .line 553
    .line 554
    move/from16 v6, v23

    .line 555
    .line 556
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 557
    .line 558
    .line 559
    :cond_18
    return-void
.end method

.method public final persistHistoricalOpsDLocked(Ljava/util/List;)V
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startWrite()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->getBackupDirectory()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v1, p0

    .line 17
    move-object v4, p1

    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->finishWrite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    const-string p1, "Failed to write historical app ops, restoring backup"

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-static {p1, p0, v0}, Lcom/android/server/appop/HistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/internal/os/AtomicDirectory;->failWrite()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p17

    .line 6
    .line 7
    move-object/from16 v3, p18

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v12

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    cmp-long v1, p11, p13

    .line 23
    .line 24
    if-gez v1, :cond_e

    .line 25
    .line 26
    cmp-long v1, p13, p2

    .line 27
    .line 28
    if-gez v1, :cond_1

    .line 29
    .line 30
    goto/16 :goto_9

    .line 31
    .line 32
    :cond_1
    sub-long v1, p4, p2

    .line 33
    .line 34
    iget-wide v4, v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    .line 35
    .line 36
    div-long/2addr v1, v4

    .line 37
    add-long v1, v1, p4

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    const/4 v13, 0x0

    .line 42
    if-eqz p16, :cond_2

    .line 43
    .line 44
    aget-wide v6, p16, v13

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-wide v6, v4

    .line 48
    :goto_0
    add-long/2addr v1, v6

    .line 49
    cmp-long v0, p11, v1

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    if-gez v0, :cond_b

    .line 53
    .line 54
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    goto/16 :goto_7

    .line 61
    .line 62
    :cond_3
    const-string v0, "Dropping unsupported history version 1 for file:"

    .line 63
    .line 64
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    .line 65
    .line 66
    invoke-direct {v14, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    :try_start_1
    invoke-static {v14}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 70
    .line 71
    .line 72
    move-result-object v15

    .line 73
    const-string/jumbo v2, "history"

    .line 74
    .line 75
    .line 76
    invoke-static {v15, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v2, "ver"

    .line 80
    .line 81
    .line 82
    invoke-interface {v15, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/4 v3, 0x2

    .line 87
    if-lt v2, v3, :cond_a

    .line 88
    .line 89
    const-string/jumbo v0, "ov"

    .line 90
    .line 91
    .line 92
    invoke-interface {v15, v1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v16

    .line 96
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    move-object/from16 v18, v1

    .line 101
    .line 102
    :goto_1
    invoke-static {v15, v11}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_8

    .line 107
    .line 108
    const-string/jumbo v0, "ops"

    .line 109
    .line 110
    .line 111
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    move-object v0, v15

    .line 122
    move/from16 v1, p6

    .line 123
    .line 124
    move-object/from16 v2, p7

    .line 125
    .line 126
    move-object/from16 v3, p8

    .line 127
    .line 128
    move-object/from16 v4, p9

    .line 129
    .line 130
    move/from16 v5, p10

    .line 131
    .line 132
    move-wide/from16 v6, p11

    .line 133
    .line 134
    move-wide/from16 v8, p13

    .line 135
    .line 136
    move/from16 v10, p15

    .line 137
    .line 138
    move/from16 v19, v11

    .line 139
    .line 140
    move-object/from16 v11, p16

    .line 141
    .line 142
    invoke-static/range {v0 .. v11}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readeHistoricalOpsDLocked(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Landroid/app/AppOpsManager$HistoricalOps;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-nez v0, :cond_4

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_4
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_5

    .line 154
    .line 155
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    move-object v1, v0

    .line 161
    goto :goto_4

    .line 162
    :cond_5
    if-nez v18, :cond_6

    .line 163
    .line 164
    new-instance v1, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    move-object/from16 v1, v18

    .line 171
    .line 172
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-object/from16 v18, v1

    .line 176
    .line 177
    :goto_3
    move/from16 v11, v19

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_7
    move/from16 v19, v11

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_8
    if-eqz p16, :cond_9

    .line 184
    .line 185
    aget-wide v0, p16, v13

    .line 186
    .line 187
    add-long v0, v0, v16

    .line 188
    .line 189
    aput-wide v0, p16, v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .line 191
    :cond_9
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_a
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 196
    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    :goto_4
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 214
    .line 215
    .line 216
    goto :goto_5

    .line 217
    :catchall_1
    move-exception v0

    .line 218
    move-object v2, v0

    .line 219
    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 220
    .line 221
    .line 222
    :goto_5
    throw v1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 223
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v1, "No history file: "

    .line 226
    .line 227
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    const-string v1, "HistoricalRegistry$Persistence"

    .line 242
    .line 243
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object v18

    .line 250
    :goto_6
    return-object v18

    .line 251
    :cond_b
    :goto_7
    if-eqz v3, :cond_d

    .line 252
    .line 253
    invoke-interface/range {p18 .. p18}, Ljava/util/Set;->isEmpty()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_c

    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_c
    return-object v1

    .line 261
    :cond_d
    :goto_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    return-object v0

    .line 266
    :cond_e
    :goto_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    return-object v0
.end method

.method public final readHistoryDLocked()Ljava/util/List;
    .locals 11

    .line 1
    const/4 v5, 0x0

    .line 2
    const-wide/16 v6, 0x0

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const-wide v8, 0x7fffffffffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/16 v10, 0x1f

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 34
    .line 35
    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 36
    .line 37
    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-object v0
.end method
