.class public final Lcom/android/server/companion/association/AssociationDiskStore;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/companion/association/AssociationDiskStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    .line 11
    return-void
.end method

.method public static readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;
    .locals 34

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "persistence-version"

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    new-instance v4, Lcom/android/server/companion/association/Associations;

    .line 19
    .line 20
    invoke-direct {v4}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    const-wide/16 v6, 0x0

    .line 25
    .line 26
    const-string/jumbo v8, "time_approved"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v9, "notify_device_nearby"

    .line 30
    .line 31
    .line 32
    const-string/jumbo v10, "tag"

    .line 33
    .line 34
    .line 35
    const-string/jumbo v11, "package"

    .line 36
    .line 37
    .line 38
    const-string/jumbo v12, "profile"

    .line 39
    .line 40
    .line 41
    const-string/jumbo v13, "association"

    .line 42
    .line 43
    .line 44
    const-string/jumbo v14, "associations"

    .line 45
    .line 46
    .line 47
    if-eqz v2, :cond_6

    .line 48
    .line 49
    if-eq v2, v5, :cond_0

    .line 50
    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_0
    :goto_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v14}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_4

    .line 61
    .line 62
    invoke-static {v1, v14}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string/jumbo v2, "max-id"

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    new-instance v15, Lcom/android/server/companion/association/Associations;

    .line 73
    .line 74
    invoke-direct {v15}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 75
    .line 76
    .line 77
    iput v5, v15, Lcom/android/server/companion/association/Associations;->mVersion:I

    .line 78
    .line 79
    :goto_1
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v14}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_1

    .line 87
    .line 88
    iput v2, v15, Lcom/android/server/companion/association/Associations;->mMaxId:I

    .line 89
    .line 90
    move-object v4, v15

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-static {v1, v13}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_2

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    invoke-static {v1, v13}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string/jumbo v4, "id"

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v17

    .line 109
    invoke-static {v1, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v23

    .line 113
    invoke-static {v1, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v19

    .line 117
    invoke-static {v1, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v20

    .line 121
    const-string/jumbo v4, "mac_address"

    .line 122
    .line 123
    .line 124
    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    if-eqz v4, :cond_3

    .line 129
    .line 130
    invoke-static {v4}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    :goto_2
    move-object/from16 v21, v4

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_3
    const/4 v4, 0x0

    .line 138
    goto :goto_2

    .line 139
    :goto_3
    const-string/jumbo v4, "display_name"

    .line 140
    .line 141
    .line 142
    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v22

    .line 146
    const-string/jumbo v4, "self_managed"

    .line 147
    .line 148
    .line 149
    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v25

    .line 153
    invoke-static {v1, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v26

    .line 157
    const-string/jumbo v4, "revoked"

    .line 158
    .line 159
    .line 160
    invoke-static {v1, v4, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    .line 161
    .line 162
    .line 163
    move-result v27

    .line 164
    const-string/jumbo v4, "pending"

    .line 165
    .line 166
    .line 167
    invoke-static {v1, v4, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    .line 168
    .line 169
    .line 170
    move-result v28

    .line 171
    invoke-static {v1, v8, v6, v7}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 172
    .line 173
    .line 174
    move-result-wide v29

    .line 175
    const-string/jumbo v4, "last_time_connected"

    .line 176
    .line 177
    .line 178
    const-wide v6, 0x7fffffffffffffffL

    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    invoke-static {v1, v4, v6, v7}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 184
    .line 185
    .line 186
    move-result-wide v31

    .line 187
    const-string/jumbo v4, "system_data_sync_flags"

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v4, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 191
    .line 192
    .line 193
    move-result v33

    .line 194
    new-instance v4, Landroid/companion/AssociationInfo;

    .line 195
    .line 196
    move-object/from16 v16, v4

    .line 197
    .line 198
    const/16 v24, 0x0

    .line 199
    .line 200
    move/from16 v18, p0

    .line 201
    .line 202
    invoke-direct/range {v16 .. v33}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJI)V

    .line 203
    .line 204
    .line 205
    iget-object v6, v15, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    .line 206
    .line 207
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getId()I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    const-wide/16 v6, 0x0

    .line 219
    .line 220
    goto/16 :goto_1

    .line 221
    .line 222
    :cond_4
    invoke-static {v1, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_5

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_5
    const-wide/16 v6, 0x0

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_6
    invoke-static {v1, v14}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const v0, 0x186a0

    .line 237
    .line 238
    .line 239
    mul-int v0, v0, p0

    .line 240
    .line 241
    add-int/2addr v0, v5

    .line 242
    new-instance v4, Lcom/android/server/companion/association/Associations;

    .line 243
    .line 244
    invoke-direct {v4}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 245
    .line 246
    .line 247
    iput v3, v4, Lcom/android/server/companion/association/Associations;->mVersion:I

    .line 248
    .line 249
    :goto_4
    move/from16 v16, v0

    .line 250
    .line 251
    :goto_5
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 252
    .line 253
    .line 254
    invoke-static {v1, v14}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_7

    .line 259
    .line 260
    add-int/lit8 v0, v16, -0x1

    .line 261
    .line 262
    iput v0, v4, Lcom/android/server/companion/association/Associations;->mMaxId:I

    .line 263
    .line 264
    :goto_6
    return-object v4

    .line 265
    :cond_7
    invoke-static {v1, v13}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-nez v0, :cond_8

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_8
    add-int/lit8 v0, v16, 0x1

    .line 273
    .line 274
    invoke-static {v1, v13}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-static {v1, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v18

    .line 281
    invoke-static {v1, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v19

    .line 285
    const-string/jumbo v2, "device"

    .line 286
    .line 287
    .line 288
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-static {v1, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v22

    .line 296
    invoke-static {v1, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v25

    .line 300
    const-wide/16 v6, 0x0

    .line 301
    .line 302
    invoke-static {v1, v8, v6, v7}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 303
    .line 304
    .line 305
    move-result-wide v28

    .line 306
    new-instance v3, Landroid/companion/AssociationInfo;

    .line 307
    .line 308
    move-object v15, v3

    .line 309
    invoke-static {v2}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    .line 310
    .line 311
    .line 312
    move-result-object v20

    .line 313
    const/16 v26, 0x0

    .line 314
    .line 315
    const/16 v27, 0x0

    .line 316
    .line 317
    const/16 v21, 0x0

    .line 318
    .line 319
    const/16 v23, 0x0

    .line 320
    .line 321
    const/16 v24, 0x0

    .line 322
    .line 323
    const-wide v30, 0x7fffffffffffffffL

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    const/16 v32, 0x0

    .line 329
    .line 330
    move/from16 v17, p0

    .line 331
    .line 332
    invoke-direct/range {v15 .. v32}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJI)V

    .line 333
    .line 334
    .line 335
    iget-object v2, v4, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    .line 336
    .line 337
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    goto :goto_4
.end method

.method public static requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 9
    .line 10
    const-string p1, "Should be at the start of \"associations\" tag"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method


# virtual methods
.method public final getStorageFileForUser(I)Landroid/util/AtomicFile;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationDiskStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda1;-><init>(I)V

    .line 10
    .line 11
    .line 12
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/util/AtomicFile;

    .line 19
    .line 20
    return-object p0
.end method

.method public final readAssociationsByUsers(Ljava/util/List;)Ljava/util/Map;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_6

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const-string v3, "CDM_AssociationDiskStore"

    .line 29
    .line 30
    const-string v4, "Reading associations for user "

    .line 31
    .line 32
    const-string v5, " from disk."

    .line 33
    .line 34
    invoke-static {v2, v4, v5, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lcom/android/server/companion/association/AssociationDiskStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    monitor-enter v3

    .line 42
    :try_start_0
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    new-instance v4, Ljava/io/File;

    .line 53
    .line 54
    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const-string/jumbo v6, "companion_device_manager_associations.xml"

    .line 59
    .line 60
    .line 61
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_0

    .line 69
    .line 70
    new-instance v2, Lcom/android/server/companion/association/Associations;

    .line 71
    .line 72
    invoke-direct {v2}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 73
    .line 74
    .line 75
    monitor-exit v3

    .line 76
    goto :goto_5

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_6

    .line 79
    :cond_0
    new-instance v5, Landroid/util/AtomicFile;

    .line 80
    .line 81
    invoke-direct {v5, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 82
    .line 83
    .line 84
    const-string/jumbo v6, "associations"

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const-string/jumbo v6, "state"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    move-object v5, v3

    .line 93
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 94
    .line 95
    .line 96
    move-result-object v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    invoke-static {v2, v5, v6}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;

    .line 98
    .line 99
    .line 100
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    if-eqz v5, :cond_3

    .line 102
    .line 103
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :catch_0
    move-exception v2

    .line 108
    goto :goto_3

    .line 109
    :catchall_1
    move-exception v2

    .line 110
    if-eqz v5, :cond_2

    .line 111
    .line 112
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catchall_2
    move-exception v5

    .line 117
    :try_start_5
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    :goto_2
    throw v2
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    :goto_3
    :try_start_6
    const-string v5, "CDM_AssociationDiskStore"

    .line 122
    .line 123
    const-string v6, "Error while reading associations file"

    .line 124
    .line 125
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .line 127
    .line 128
    new-instance v2, Lcom/android/server/companion/association/Associations;

    .line 129
    .line 130
    invoke-direct {v2}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_4
    if-nez v4, :cond_4

    .line 134
    .line 135
    iget v5, v2, Lcom/android/server/companion/association/Associations;->mVersion:I

    .line 136
    .line 137
    const/4 v6, 0x1

    .line 138
    if-ge v5, v6, :cond_5

    .line 139
    .line 140
    :cond_4
    new-instance v5, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    invoke-direct {v5, v2}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/association/Associations;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v3, v5}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 146
    .line 147
    .line 148
    if-eqz v4, :cond_5

    .line 149
    .line 150
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 151
    .line 152
    .line 153
    :cond_5
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 154
    :goto_5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :goto_6
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 160
    throw p0

    .line 161
    :cond_6
    return-object v0
.end method
