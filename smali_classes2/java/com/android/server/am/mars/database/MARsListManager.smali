.class public final Ljava/com/android/server/am/mars/database/MARsListManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mAdjustRestrictionDefault:Ljava/util/ArrayList;

.field public final mCalmModeDefaultList:Ljava/util/Set;

.field public final mCalmModeFilterList:Ljava/util/Set;

.field public final mCtsGtsList:Ljava/util/Set;

.field public final mExcludePackageDefault:Ljava/util/ArrayList;

.field public final mFastOlafUfzList:Ljava/util/Set;

.field public final mFgsExemptionPackages:Ljava/util/Set;

.field public final mFilterList:Ljava/util/Set;

.field public final mFreezeExcludeList:Ljava/util/Set;

.field public final mGoogleFreezerExemptionList:Ljava/util/Set;

.field public final mListFile:Ljava/io/File;

.field public final mLocationPackages:Ljava/util/Set;

.field public final mOLAFAllowPackageGlobal:Ljava/util/Set;

.field public final mOLAFAllowPackages:Ljava/util/Set;

.field public final mOlafUfzList:Ljava/util/Set;

.field public final mPendingBlocklistForGPS:Ljava/util/ArrayList;

.field public final mPendingIntentIdleList:Ljava/util/ArrayList;

.field public final mPendingIntentList:Ljava/util/ArrayList;

.field public final mSsrmAllowPackages:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFgsExemptionPackages:Ljava/util/Set;

    .line 12
    .line 13
    new-instance v2, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mSsrmAllowPackages:Ljava/util/Set;

    .line 19
    .line 20
    new-instance v3, Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v3, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mOLAFAllowPackages:Ljava/util/Set;

    .line 26
    .line 27
    new-instance v4, Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v4, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mOLAFAllowPackageGlobal:Ljava/util/Set;

    .line 33
    .line 34
    new-instance v5, Ljava/util/HashSet;

    .line 35
    .line 36
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v5, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFreezeExcludeList:Ljava/util/Set;

    .line 40
    .line 41
    new-instance v6, Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v6, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFilterList:Ljava/util/Set;

    .line 47
    .line 48
    new-instance v7, Ljava/util/HashSet;

    .line 49
    .line 50
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v7, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mOlafUfzList:Ljava/util/Set;

    .line 54
    .line 55
    new-instance v8, Ljava/util/HashSet;

    .line 56
    .line 57
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v8, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFastOlafUfzList:Ljava/util/Set;

    .line 61
    .line 62
    new-instance v9, Ljava/util/HashSet;

    .line 63
    .line 64
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v9, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mCalmModeFilterList:Ljava/util/Set;

    .line 68
    .line 69
    new-instance v10, Ljava/util/HashSet;

    .line 70
    .line 71
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v10, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mCalmModeDefaultList:Ljava/util/Set;

    .line 75
    .line 76
    new-instance v11, Ljava/util/HashSet;

    .line 77
    .line 78
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v11, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mLocationPackages:Ljava/util/Set;

    .line 82
    .line 83
    new-instance v12, Ljava/util/HashSet;

    .line 84
    .line 85
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v12, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mCtsGtsList:Ljava/util/Set;

    .line 89
    .line 90
    new-instance v13, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v13, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingIntentList:Ljava/util/ArrayList;

    .line 96
    .line 97
    new-instance v13, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v13, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingIntentIdleList:Ljava/util/ArrayList;

    .line 103
    .line 104
    new-instance v13, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v13, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 110
    .line 111
    new-instance v13, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v13, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mExcludePackageDefault:Ljava/util/ArrayList;

    .line 117
    .line 118
    new-instance v14, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v14, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mAdjustRestrictionDefault:Ljava/util/ArrayList;

    .line 124
    .line 125
    new-instance v15, Ljava/util/HashSet;

    .line 126
    .line 127
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v15, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    .line 131
    .line 132
    new-instance v15, Ljava/io/File;

    .line 133
    .line 134
    move-object/from16 v16, v12

    .line 135
    .line 136
    const-string v12, "/system/etc/mars/mars_list.xml"

    .line 137
    .line 138
    invoke-direct {v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iput-object v15, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mListFile:Ljava/io/File;

    .line 142
    .line 143
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    move-object/from16 v17, v14

    .line 148
    .line 149
    const-string v14, "MARsListManager"

    .line 150
    .line 151
    if-nez v12, :cond_0

    .line 152
    .line 153
    const-string v0, "No xml file exists."

    .line 154
    .line 155
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    goto/16 :goto_2

    .line 159
    .line 160
    :cond_0
    sget-boolean v12, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 161
    .line 162
    if-eqz v12, :cond_1

    .line 163
    .line 164
    new-instance v12, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v0, "Reading config from "

    .line 167
    .line 168
    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v15}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v10}, Ljava/util/HashSet;->clear()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v11}, Ljava/util/HashSet;->clear()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 219
    .line 220
    .line 221
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 222
    .line 223
    .line 224
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->clear()V

    .line 225
    .line 226
    .line 227
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 228
    .line 229
    invoke-direct {v1, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 231
    .line 232
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    move-object/from16 v2, p0

    .line 246
    .line 247
    invoke-virtual {v2, v0}, Ljava/com/android/server/am/mars/database/MARsListManager;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    .line 249
    .line 250
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :catch_0
    move-exception v0

    .line 255
    goto :goto_1

    .line 256
    :catchall_0
    move-exception v0

    .line 257
    move-object v2, v0

    .line 258
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 259
    .line 260
    .line 261
    goto :goto_0

    .line 262
    :catchall_1
    move-exception v0

    .line 263
    move-object v1, v0

    .line 264
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 265
    .line 266
    .line 267
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 268
    :goto_1
    const-string/jumbo v1, "parsing config file error"

    .line 269
    .line 270
    .line 271
    invoke-static {v0, v1, v14}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :goto_2
    return-void
.end method

.method public static parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    sget-boolean p3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    const-string p3, "<"

    .line 16
    .line 17
    const-string v0, "> "

    .line 18
    .line 19
    const-string v1, "MARsListManager"

    .line 20
    .line 21
    invoke-static {p3, p2, v0, p1, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method


# virtual methods
.method public final readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x2

    .line 9
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 10
    .line 11
    .line 12
    move-result v6

    .line 13
    if-eq v6, v5, :cond_0

    .line 14
    .line 15
    if-eq v6, v4, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const-string/jumbo v7, "mars-list"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_2e

    .line 30
    .line 31
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eq v7, v4, :cond_2d

    .line 40
    .line 41
    if-ne v7, v3, :cond_2

    .line 42
    .line 43
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-ge v8, v6, :cond_2d

    .line 48
    .line 49
    :cond_2
    if-eq v7, v3, :cond_1

    .line 50
    .line 51
    if-ne v7, v2, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const-string v8, "action"

    .line 62
    .line 63
    const-string v9, "isAllowed"

    .line 64
    .line 65
    const-string v10, "callee"

    .line 66
    .line 67
    const-string/jumbo v11, "matchType"

    .line 68
    .line 69
    .line 70
    const-string v12, "> "

    .line 71
    .line 72
    const-string v13, "<"

    .line 73
    .line 74
    const-string v14, "filter"

    .line 75
    .line 76
    const-string v15, "MARsListManager"

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    const-string/jumbo v3, "package"

    .line 80
    .line 81
    .line 82
    const/16 v16, -0x1

    .line 83
    .line 84
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 85
    .line 86
    .line 87
    move-result v17

    .line 88
    sparse-switch v17, :sswitch_data_0

    .line 89
    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :sswitch_0
    const-string/jumbo v4, "olaf-allow-global-list"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-nez v4, :cond_4

    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_4
    const/16 v16, 0x23

    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :sswitch_1
    const-string v4, "fast-olaf-ufz-list"

    .line 109
    .line 110
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-nez v4, :cond_5

    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :cond_5
    const/16 v16, 0x22

    .line 119
    .line 120
    goto/16 :goto_2

    .line 121
    .line 122
    :sswitch_2
    const-string v4, "block-associated-activity"

    .line 123
    .line 124
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_6

    .line 129
    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :cond_6
    const/16 v16, 0x21

    .line 133
    .line 134
    goto/16 :goto_2

    .line 135
    .line 136
    :sswitch_3
    const-string v4, "allow-china-app"

    .line 137
    .line 138
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-nez v4, :cond_7

    .line 143
    .line 144
    goto/16 :goto_2

    .line 145
    .line 146
    :cond_7
    const/16 v16, 0x20

    .line 147
    .line 148
    goto/16 :goto_2

    .line 149
    .line 150
    :sswitch_4
    const-string v4, "block-instrument-app"

    .line 151
    .line 152
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-nez v4, :cond_8

    .line 157
    .line 158
    goto/16 :goto_2

    .line 159
    .line 160
    :cond_8
    const/16 v16, 0x1f

    .line 161
    .line 162
    goto/16 :goto_2

    .line 163
    .line 164
    :sswitch_5
    const-string v4, "allow-in-fgs"

    .line 165
    .line 166
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-nez v4, :cond_9

    .line 171
    .line 172
    goto/16 :goto_2

    .line 173
    .line 174
    :cond_9
    const/16 v16, 0x1e

    .line 175
    .line 176
    goto/16 :goto_2

    .line 177
    .line 178
    :sswitch_6
    const-string v4, "allow-setwindow-alarm-app"

    .line 179
    .line 180
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-nez v4, :cond_a

    .line 185
    .line 186
    goto/16 :goto_2

    .line 187
    .line 188
    :cond_a
    const/16 v16, 0x1d

    .line 189
    .line 190
    goto/16 :goto_2

    .line 191
    .line 192
    :sswitch_7
    const-string v4, "allow-alarm-app"

    .line 193
    .line 194
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-nez v4, :cond_b

    .line 199
    .line 200
    goto/16 :goto_2

    .line 201
    .line 202
    :cond_b
    const/16 v16, 0x1c

    .line 203
    .line 204
    goto/16 :goto_2

    .line 205
    .line 206
    :sswitch_8
    const-string v4, "location-app-list"

    .line 207
    .line 208
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-nez v4, :cond_c

    .line 213
    .line 214
    goto/16 :goto_2

    .line 215
    .line 216
    :cond_c
    const/16 v16, 0x1b

    .line 217
    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :sswitch_9
    const-string v4, "block-china-app"

    .line 221
    .line 222
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    if-nez v4, :cond_d

    .line 227
    .line 228
    goto/16 :goto_2

    .line 229
    .line 230
    :cond_d
    const/16 v16, 0x1a

    .line 231
    .line 232
    goto/16 :goto_2

    .line 233
    .line 234
    :sswitch_a
    const-string v4, "allow-alarm-wakeup-app"

    .line 235
    .line 236
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-nez v4, :cond_e

    .line 241
    .line 242
    goto/16 :goto_2

    .line 243
    .line 244
    :cond_e
    const/16 v16, 0x19

    .line 245
    .line 246
    goto/16 :goto_2

    .line 247
    .line 248
    :sswitch_b
    const-string v4, "freezer-exemption-list"

    .line 249
    .line 250
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-nez v4, :cond_f

    .line 255
    .line 256
    goto/16 :goto_2

    .line 257
    .line 258
    :cond_f
    const/16 v16, 0x18

    .line 259
    .line 260
    goto/16 :goto_2

    .line 261
    .line 262
    :sswitch_c
    const-string/jumbo v4, "ssrm-allow-list"

    .line 263
    .line 264
    .line 265
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-nez v4, :cond_10

    .line 270
    .line 271
    goto/16 :goto_2

    .line 272
    .line 273
    :cond_10
    const/16 v16, 0x17

    .line 274
    .line 275
    goto/16 :goto_2

    .line 276
    .line 277
    :sswitch_d
    const-string v4, "allow-bgaudio-app"

    .line 278
    .line 279
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-nez v4, :cond_11

    .line 284
    .line 285
    goto/16 :goto_2

    .line 286
    .line 287
    :cond_11
    const/16 v16, 0x16

    .line 288
    .line 289
    goto/16 :goto_2

    .line 290
    .line 291
    :sswitch_e
    const-string v4, "force-block-chinese-app"

    .line 292
    .line 293
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    if-nez v4, :cond_12

    .line 298
    .line 299
    goto/16 :goto_2

    .line 300
    .line 301
    :cond_12
    const/16 v16, 0x15

    .line 302
    .line 303
    goto/16 :goto_2

    .line 304
    .line 305
    :sswitch_f
    const-string v4, "block-alarm-app"

    .line 306
    .line 307
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    if-nez v4, :cond_13

    .line 312
    .line 313
    goto/16 :goto_2

    .line 314
    .line 315
    :cond_13
    const/16 v16, 0x14

    .line 316
    .line 317
    goto/16 :goto_2

    .line 318
    .line 319
    :sswitch_10
    const-string v4, "except-mars-policy"

    .line 320
    .line 321
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    if-nez v4, :cond_14

    .line 326
    .line 327
    goto/16 :goto_2

    .line 328
    .line 329
    :cond_14
    const/16 v16, 0x13

    .line 330
    .line 331
    goto/16 :goto_2

    .line 332
    .line 333
    :sswitch_11
    const-string v4, "block-faketop-app"

    .line 334
    .line 335
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    if-nez v4, :cond_15

    .line 340
    .line 341
    goto/16 :goto_2

    .line 342
    .line 343
    :cond_15
    const/16 v16, 0x12

    .line 344
    .line 345
    goto/16 :goto_2

    .line 346
    .line 347
    :sswitch_12
    const-string v4, "cts-gts-app-list"

    .line 348
    .line 349
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    if-nez v4, :cond_16

    .line 354
    .line 355
    goto/16 :goto_2

    .line 356
    .line 357
    :cond_16
    const/16 v16, 0x11

    .line 358
    .line 359
    goto/16 :goto_2

    .line 360
    .line 361
    :sswitch_13
    const-string v4, "allow-foreground-app"

    .line 362
    .line 363
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    if-nez v4, :cond_17

    .line 368
    .line 369
    goto/16 :goto_2

    .line 370
    .line 371
    :cond_17
    const/16 v16, 0x10

    .line 372
    .line 373
    goto/16 :goto_2

    .line 374
    .line 375
    :sswitch_14
    const-string v4, "block-deepsleep-app"

    .line 376
    .line 377
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    if-nez v4, :cond_18

    .line 382
    .line 383
    goto/16 :goto_2

    .line 384
    .line 385
    :cond_18
    const/16 v16, 0xf

    .line 386
    .line 387
    goto/16 :goto_2

    .line 388
    .line 389
    :sswitch_15
    const-string v4, "allow-async-binder-callee"

    .line 390
    .line 391
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    if-nez v4, :cond_19

    .line 396
    .line 397
    goto/16 :goto_2

    .line 398
    .line 399
    :cond_19
    const/16 v16, 0xe

    .line 400
    .line 401
    goto/16 :goto_2

    .line 402
    .line 403
    :sswitch_16
    const-string/jumbo v4, "pending-gps-app"

    .line 404
    .line 405
    .line 406
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    if-nez v4, :cond_1a

    .line 411
    .line 412
    goto/16 :goto_2

    .line 413
    .line 414
    :cond_1a
    const/16 v16, 0xd

    .line 415
    .line 416
    goto/16 :goto_2

    .line 417
    .line 418
    :sswitch_17
    const-string v4, "block-foregroundservice-app"

    .line 419
    .line 420
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    if-nez v4, :cond_1b

    .line 425
    .line 426
    goto/16 :goto_2

    .line 427
    .line 428
    :cond_1b
    const/16 v16, 0xc

    .line 429
    .line 430
    goto/16 :goto_2

    .line 431
    .line 432
    :sswitch_18
    const-string/jumbo v4, "olaf-ufz-list"

    .line 433
    .line 434
    .line 435
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    if-nez v4, :cond_1c

    .line 440
    .line 441
    goto/16 :goto_2

    .line 442
    .line 443
    :cond_1c
    const/16 v16, 0xb

    .line 444
    .line 445
    goto/16 :goto_2

    .line 446
    .line 447
    :sswitch_19
    const-string v4, "allow-asyncbinder-fgs-app"

    .line 448
    .line 449
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v4

    .line 453
    if-nez v4, :cond_1d

    .line 454
    .line 455
    goto/16 :goto_2

    .line 456
    .line 457
    :cond_1d
    const/16 v16, 0xa

    .line 458
    .line 459
    goto/16 :goto_2

    .line 460
    .line 461
    :sswitch_1a
    const-string v4, "freeze-exclude-list"

    .line 462
    .line 463
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v4

    .line 467
    if-nez v4, :cond_1e

    .line 468
    .line 469
    goto/16 :goto_2

    .line 470
    .line 471
    :cond_1e
    const/16 v16, 0x9

    .line 472
    .line 473
    goto/16 :goto_2

    .line 474
    .line 475
    :sswitch_1b
    const-string v4, "filter-list"

    .line 476
    .line 477
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v4

    .line 481
    if-nez v4, :cond_1f

    .line 482
    .line 483
    goto/16 :goto_2

    .line 484
    .line 485
    :cond_1f
    const/16 v16, 0x8

    .line 486
    .line 487
    goto/16 :goto_2

    .line 488
    .line 489
    :sswitch_1c
    const-string v4, "block-top-activity"

    .line 490
    .line 491
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v4

    .line 495
    if-nez v4, :cond_20

    .line 496
    .line 497
    goto :goto_2

    .line 498
    :cond_20
    const/16 v16, 0x7

    .line 499
    .line 500
    goto :goto_2

    .line 501
    :sswitch_1d
    const-string v4, "calm-mode-default-list"

    .line 502
    .line 503
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v4

    .line 507
    if-nez v4, :cond_21

    .line 508
    .line 509
    goto :goto_2

    .line 510
    :cond_21
    const/16 v16, 0x6

    .line 511
    .line 512
    goto :goto_2

    .line 513
    :sswitch_1e
    const-string v4, "calm-mode-filter-list"

    .line 514
    .line 515
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result v4

    .line 519
    if-nez v4, :cond_22

    .line 520
    .line 521
    goto :goto_2

    .line 522
    :cond_22
    const/16 v16, 0x5

    .line 523
    .line 524
    goto :goto_2

    .line 525
    :sswitch_1f
    const-string/jumbo v4, "pending-broadcast"

    .line 526
    .line 527
    .line 528
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v4

    .line 532
    if-nez v4, :cond_23

    .line 533
    .line 534
    goto :goto_2

    .line 535
    :cond_23
    const/16 v16, 0x4

    .line 536
    .line 537
    goto :goto_2

    .line 538
    :sswitch_20
    const-string v4, "allow-async-binder"

    .line 539
    .line 540
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v4

    .line 544
    if-nez v4, :cond_24

    .line 545
    .line 546
    goto :goto_2

    .line 547
    :cond_24
    const/16 v16, 0x3

    .line 548
    .line 549
    goto :goto_2

    .line 550
    :sswitch_21
    const-string v4, "allow-essential-intent"

    .line 551
    .line 552
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    move-result v4

    .line 556
    if-nez v4, :cond_25

    .line 557
    .line 558
    goto :goto_2

    .line 559
    :cond_25
    move/from16 v16, v5

    .line 560
    .line 561
    goto :goto_2

    .line 562
    :sswitch_22
    const-string v4, "block-alarm-wakeup-app"

    .line 563
    .line 564
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v4

    .line 568
    if-nez v4, :cond_26

    .line 569
    .line 570
    goto :goto_2

    .line 571
    :cond_26
    const/16 v16, 0x1

    .line 572
    .line 573
    goto :goto_2

    .line 574
    :sswitch_23
    const-string/jumbo v4, "olaf-allow-list"

    .line 575
    .line 576
    .line 577
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v4

    .line 581
    if-nez v4, :cond_27

    .line 582
    .line 583
    goto :goto_2

    .line 584
    :cond_27
    const/16 v16, 0x0

    .line 585
    .line 586
    :goto_2
    packed-switch v16, :pswitch_data_0

    .line 587
    .line 588
    .line 589
    const-string v2, "Unknown element under <config>: "

    .line 590
    .line 591
    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    .line 597
    .line 598
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 599
    .line 600
    .line 601
    goto/16 :goto_4

    .line 602
    .line 603
    :pswitch_0
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mOLAFAllowPackageGlobal:Ljava/util/Set;

    .line 604
    .line 605
    invoke-static {v1, v3, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 606
    .line 607
    .line 608
    goto/16 :goto_4

    .line 609
    .line 610
    :pswitch_1
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFastOlafUfzList:Ljava/util/Set;

    .line 611
    .line 612
    invoke-static {v1, v14, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 613
    .line 614
    .line 615
    goto/16 :goto_4

    .line 616
    .line 617
    :pswitch_2
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFgsExemptionPackages:Ljava/util/Set;

    .line 618
    .line 619
    invoke-static {v1, v3, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_4

    .line 623
    .line 624
    :pswitch_3
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mLocationPackages:Ljava/util/Set;

    .line 625
    .line 626
    invoke-static {v1, v3, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 627
    .line 628
    .line 629
    goto/16 :goto_4

    .line 630
    .line 631
    :pswitch_4
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    .line 632
    .line 633
    const-string/jumbo v3, "process"

    .line 634
    .line 635
    .line 636
    invoke-static {v1, v3, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 637
    .line 638
    .line 639
    goto/16 :goto_4

    .line 640
    .line 641
    :pswitch_5
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mSsrmAllowPackages:Ljava/util/Set;

    .line 642
    .line 643
    invoke-static {v1, v3, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_4

    .line 647
    .line 648
    :pswitch_6
    const-string/jumbo v4, "policynum"

    .line 649
    .line 650
    .line 651
    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v4

    .line 655
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 656
    .line 657
    .line 658
    move-result v4

    .line 659
    const-string v8, "condition"

    .line 660
    .line 661
    invoke-interface {v1, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v8

    .line 665
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 666
    .line 667
    .line 668
    move-result v8

    .line 669
    invoke-interface {v1, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v9

    .line 673
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v2

    .line 677
    if-eqz v2, :cond_28

    .line 678
    .line 679
    new-instance v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    .line 680
    .line 681
    sget-object v10, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 682
    .line 683
    sget-object v10, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 684
    .line 685
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    invoke-direct {v3, v4, v8, v9, v2}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mExcludePackageDefault:Ljava/util/ArrayList;

    .line 692
    .line 693
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 697
    .line 698
    if-eqz v2, :cond_28

    .line 699
    .line 700
    new-instance v2, Ljava/lang/StringBuilder;

    .line 701
    .line 702
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v2

    .line 718
    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .line 720
    .line 721
    :cond_28
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 722
    .line 723
    .line 724
    goto/16 :goto_4

    .line 725
    .line 726
    :pswitch_7
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mCtsGtsList:Ljava/util/Set;

    .line 727
    .line 728
    invoke-static {v1, v3, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 729
    .line 730
    .line 731
    goto/16 :goto_4

    .line 732
    .line 733
    :pswitch_8
    invoke-interface {v1, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    iget-object v3, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 738
    .line 739
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    .line 741
    .line 742
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 743
    .line 744
    if-eqz v3, :cond_29

    .line 745
    .line 746
    invoke-static {v13, v7, v12, v2, v15}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    :cond_29
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 750
    .line 751
    .line 752
    goto/16 :goto_4

    .line 753
    .line 754
    :pswitch_9
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mOlafUfzList:Ljava/util/Set;

    .line 755
    .line 756
    invoke-static {v1, v14, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 757
    .line 758
    .line 759
    goto/16 :goto_4

    .line 760
    .line 761
    :pswitch_a
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFreezeExcludeList:Ljava/util/Set;

    .line 762
    .line 763
    invoke-static {v1, v3, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 764
    .line 765
    .line 766
    goto/16 :goto_4

    .line 767
    .line 768
    :pswitch_b
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFilterList:Ljava/util/Set;

    .line 769
    .line 770
    invoke-static {v1, v14, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 771
    .line 772
    .line 773
    goto/16 :goto_4

    .line 774
    .line 775
    :pswitch_c
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mCalmModeDefaultList:Ljava/util/Set;

    .line 776
    .line 777
    invoke-static {v1, v3, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 778
    .line 779
    .line 780
    goto/16 :goto_4

    .line 781
    .line 782
    :pswitch_d
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mCalmModeFilterList:Ljava/util/Set;

    .line 783
    .line 784
    invoke-static {v1, v14, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 785
    .line 786
    .line 787
    goto/16 :goto_4

    .line 788
    .line 789
    :pswitch_e
    invoke-interface {v1, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v3

    .line 793
    invoke-interface {v1, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v2

    .line 797
    const-string v4, "idle"

    .line 798
    .line 799
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    move-result v3

    .line 803
    if-eqz v3, :cond_2a

    .line 804
    .line 805
    iget-object v3, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingIntentIdleList:Ljava/util/ArrayList;

    .line 806
    .line 807
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    .line 809
    .line 810
    goto :goto_3

    .line 811
    :cond_2a
    iget-object v3, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingIntentList:Ljava/util/ArrayList;

    .line 812
    .line 813
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    :goto_3
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 817
    .line 818
    if-eqz v3, :cond_2b

    .line 819
    .line 820
    invoke-static {v13, v7, v12, v2, v15}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    :cond_2b
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 824
    .line 825
    .line 826
    goto :goto_4

    .line 827
    :pswitch_f
    new-instance v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    .line 828
    .line 829
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 830
    .line 831
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 832
    .line 833
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    const-string/jumbo v4, "restrictionType"

    .line 837
    .line 838
    .line 839
    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v4

    .line 843
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 844
    .line 845
    .line 846
    move-result v24

    .line 847
    invoke-interface {v1, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v19

    .line 851
    invoke-interface {v1, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v20

    .line 855
    const-string v4, "caller"

    .line 856
    .line 857
    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v21

    .line 861
    invoke-interface {v1, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v22

    .line 865
    invoke-interface {v1, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v23

    .line 869
    move-object/from16 v18, v3

    .line 870
    .line 871
    invoke-direct/range {v18 .. v24}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 872
    .line 873
    .line 874
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mAdjustRestrictionDefault:Ljava/util/ArrayList;

    .line 875
    .line 876
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    .line 878
    .line 879
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 880
    .line 881
    if-eqz v2, :cond_2c

    .line 882
    .line 883
    new-instance v2, Ljava/lang/StringBuilder;

    .line 884
    .line 885
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v2

    .line 901
    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    .line 903
    .line 904
    :cond_2c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 905
    .line 906
    .line 907
    goto :goto_4

    .line 908
    :pswitch_10
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mOLAFAllowPackages:Ljava/util/Set;

    .line 909
    .line 910
    invoke-static {v1, v3, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 911
    .line 912
    .line 913
    :goto_4
    const/4 v2, 0x4

    .line 914
    const/4 v3, 0x3

    .line 915
    const/4 v4, 0x1

    .line 916
    goto/16 :goto_1

    .line 917
    .line 918
    :cond_2d
    return-void

    .line 919
    :cond_2e
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 920
    .line 921
    new-instance v3, Ljava/lang/StringBuilder;

    .line 922
    .line 923
    const-string v4, "Unexpected start tag in "

    .line 924
    .line 925
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    iget-object v0, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mListFile:Ljava/io/File;

    .line 929
    .line 930
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    const-string v0, ": found "

    .line 934
    .line 935
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    .line 944
    .line 945
    const-string v0, ", expected \'mars-list\'"

    .line 946
    .line 947
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    .line 949
    .line 950
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    throw v2

    .line 958
    nop

    .line 959
    :sswitch_data_0
    .sparse-switch
        -0x76684373 -> :sswitch_23
        -0x6e66af31 -> :sswitch_22
        -0x589d4801 -> :sswitch_21
        -0x535525e1 -> :sswitch_20
        -0x45b67bf5 -> :sswitch_1f
        -0x40aee9a9 -> :sswitch_1e
        -0x3c92575a -> :sswitch_1d
        -0x3c8bae39 -> :sswitch_1c
        -0x37cf8e2d -> :sswitch_1b
        -0x2b0d5bd9 -> :sswitch_1a
        -0x276b4285 -> :sswitch_19
        -0x25caed73 -> :sswitch_18
        -0x1f78735a -> :sswitch_17
        -0x142affb8 -> :sswitch_16
        -0x107dd914 -> :sswitch_15
        -0xdac9e81 -> :sswitch_14
        -0xc881265 -> :sswitch_13
        -0x989f4a4 -> :sswitch_12
        -0x828688c -> :sswitch_11
        0x283d876 -> :sswitch_10
        0x1559f365 -> :sswitch_f
        0x1797b99f -> :sswitch_e
        0x1f02b081 -> :sswitch_d
        0x2aa4dd14 -> :sswitch_c
        0x2c9f6374 -> :sswitch_b
        0x2f014193 -> :sswitch_a
        0x3e137b6b -> :sswitch_9
        0x3f9f43e2 -> :sswitch_8
        0x47019721 -> :sswitch_7
        0x58c9f6e6 -> :sswitch_6
        0x62e8262e -> :sswitch_5
        0x64e1a47b -> :sswitch_4
        0x6fbb1f27 -> :sswitch_3
        0x759992b6 -> :sswitch_2
        0x7ca18adc -> :sswitch_1
        0x7e3515b9 -> :sswitch_0
    .end sparse-switch

    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_a
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_8
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_7
        :pswitch_f
        :pswitch_6
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_5
        :pswitch_4
        :pswitch_f
        :pswitch_f
        :pswitch_3
        :pswitch_f
        :pswitch_f
        :pswitch_2
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
