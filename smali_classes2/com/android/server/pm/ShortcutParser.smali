.class public abstract Lcom/android/server/pm/ShortcutParser;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field static final METADATA_KEY:Ljava/lang/String; = "android.app.shortcuts"


# direct methods
.method public static parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/android/internal/R$styleable;->Intent:[I

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x4

    .line 14
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string p1, "ShortcutService"

    .line 26
    .line 27
    const-string v0, "android:targetClass must be provided."

    .line 28
    .line 29
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/pm/ShareTargetInfo;

    .line 39
    .line 40
    invoke-direct {v0, v1, p1, v1}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public static parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const-string p1, "ShortcutService"

    .line 22
    .line 23
    const-string v0, "android:mimeType must be string literal."

    .line 24
    .line 25
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x1

    .line 36
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v0, 0x2

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const/4 v0, 0x4

    .line 50
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const/4 v0, 0x6

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const/4 v0, 0x5

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    new-instance p1, Lcom/android/server/pm/ShareTargetInfo$TargetData;

    .line 69
    .line 70
    move-object v2, p1

    .line 71
    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/ShareTargetInfo$TargetData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public static parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    const-string v1, "android:shortcutShortLabel must be provided. activity="

    .line 6
    .line 7
    const-string v2, "android:shortcutId must be provided. activity="

    .line 8
    .line 9
    const-string v3, "android:shortcutId must be string literal. activity="

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    sget-object v6, Lcom/android/internal/R$styleable;->Shortcut:[I

    .line 18
    .line 19
    move-object/from16 v7, p1

    .line 20
    .line 21
    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 22
    .line 23
    .line 24
    move-result-object v13

    .line 25
    const/4 v5, 0x2

    .line 26
    :try_start_0
    invoke-virtual {v13, v5}, Landroid/content/res/TypedArray;->getType(I)I

    .line 27
    .line 28
    .line 29
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const/4 v7, 0x3

    .line 31
    const-string v8, "ShortcutService"

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    if-eq v6, v7, :cond_0

    .line 35
    .line 36
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    .line 53
    .line 54
    return-object v9

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    move-object/from16 v34, v13

    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_0
    :try_start_2
    invoke-virtual {v13, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const/4 v5, 0x1

    .line 65
    invoke-virtual {v13, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    const/4 v10, 0x0

    .line 70
    invoke-virtual {v13, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 71
    .line 72
    .line 73
    move-result v22

    .line 74
    invoke-virtual {v13, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    const/4 v11, 0x4

    .line 79
    invoke-virtual {v13, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 80
    .line 81
    .line 82
    move-result v17

    .line 83
    const/4 v12, 0x5

    .line 84
    invoke-virtual {v13, v12, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 85
    .line 86
    .line 87
    move-result v19

    .line 88
    const/4 v12, 0x6

    .line 89
    invoke-virtual {v13, v12, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    if-eqz v12, :cond_1

    .line 94
    .line 95
    iget-object v14, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    move-object/from16 v29, v12

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    move-object/from16 v29, v9

    .line 109
    .line 110
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    if-eqz v12, :cond_2

    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .line 130
    .line 131
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    .line 133
    .line 134
    return-object v9

    .line 135
    :cond_2
    if-nez v7, :cond_3

    .line 136
    .line 137
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    .line 151
    .line 152
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    .line 154
    .line 155
    return-object v9

    .line 156
    :cond_3
    if-eqz v6, :cond_4

    .line 157
    .line 158
    const/16 v1, 0x20

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_4
    const/16 v1, 0x40

    .line 162
    .line 163
    :goto_1
    or-int/lit16 v1, v1, 0x100

    .line 164
    .line 165
    if-eqz v22, :cond_5

    .line 166
    .line 167
    move v10, v11

    .line 168
    :cond_5
    or-int v21, v1, v10

    .line 169
    .line 170
    xor-int/lit8 v26, v6, 0x1

    .line 171
    .line 172
    :try_start_4
    new-instance v31, Landroid/content/pm/ShortcutInfo;

    .line 173
    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    .line 175
    .line 176
    .line 177
    move-result-wide v32
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    const/16 v23, 0x0

    .line 179
    .line 180
    const/16 v24, 0x0

    .line 181
    .line 182
    const/16 v25, 0x0

    .line 183
    .line 184
    const/16 v27, 0x0

    .line 185
    .line 186
    const/16 v28, 0x0

    .line 187
    .line 188
    const/16 v30, 0x0

    .line 189
    .line 190
    const/4 v5, 0x0

    .line 191
    const/4 v6, 0x0

    .line 192
    const/4 v8, 0x0

    .line 193
    const/4 v9, 0x0

    .line 194
    const/4 v11, 0x0

    .line 195
    const/4 v12, 0x0

    .line 196
    const/4 v14, 0x0

    .line 197
    const/4 v15, 0x0

    .line 198
    const/16 v16, 0x0

    .line 199
    .line 200
    const/16 v18, 0x0

    .line 201
    .line 202
    move-object/from16 v0, v31

    .line 203
    .line 204
    move/from16 v1, p4

    .line 205
    .line 206
    move-object v2, v3

    .line 207
    move-object/from16 v3, p2

    .line 208
    .line 209
    move-object/from16 v4, p3

    .line 210
    .line 211
    move/from16 v10, v17

    .line 212
    .line 213
    move-object/from16 v34, v13

    .line 214
    .line 215
    move/from16 v13, v19

    .line 216
    .line 217
    move/from16 v17, p5

    .line 218
    .line 219
    move-wide/from16 v19, v32

    .line 220
    .line 221
    :try_start_5
    invoke-direct/range {v0 .. v30}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 222
    .line 223
    .line 224
    invoke-virtual/range {v34 .. v34}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    .line 226
    .line 227
    return-object v31

    .line 228
    :catchall_1
    move-exception v0

    .line 229
    :goto_2
    invoke-virtual/range {v34 .. v34}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    .line 231
    .line 232
    throw v0
.end method

.method public static parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/16 v2, 0xc

    .line 8
    .line 9
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v4, "android.intent.action.MAIN"

    .line 12
    .line 13
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v4, "android.intent.category.LAUNCHER"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {p0, v3, p1, v4, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 27
    .line 28
    .line 29
    if-eqz v3, :cond_5

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    goto :goto_4

    .line 38
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 39
    .line 40
    .line 41
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x0

    .line 46
    move-object v9, v4

    .line 47
    :goto_0
    if-ge v1, v0, :cond_4

    .line 48
    .line 49
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 54
    .line 55
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 56
    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/ShortcutService;->injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 71
    .line 72
    invoke-static {v5}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    move-object v6, v2

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move-object v6, v4

    .line 81
    :goto_1
    if-eqz v6, :cond_3

    .line 82
    .line 83
    move-object v5, p0

    .line 84
    move-object v7, p1

    .line 85
    move v8, p2

    .line 86
    move-object v10, p3

    .line 87
    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/ShortcutParser;->parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    goto :goto_2

    .line 92
    :catch_0
    move-exception p2

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    return-object v9

    .line 98
    :goto_3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v0, "Exception caught while parsing shortcut XML for package="

    .line 101
    .line 102
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_4
    return-object v4

    .line 116
    :catchall_0
    move-exception p1

    .line 117
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 118
    .line 119
    .line 120
    throw p1
.end method

.method public static parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    :try_start_0
    const-string v1, "android.app.shortcuts"

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v7, v2, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    .line 14
    .line 15
    .line 16
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 17
    if-nez v9, :cond_1

    .line 18
    .line 19
    if-eqz v9, :cond_0

    .line 20
    .line 21
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object p4

    .line 25
    :cond_1
    :try_start_1
    new-instance v10, Landroid/content/ComponentName;

    .line 26
    .line 27
    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 28
    .line 29
    move-object/from16 v11, p2

    .line 30
    .line 31
    invoke-direct {v10, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    iget v13, v0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    .line 39
    .line 40
    new-instance v14, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v15, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    move-object/from16 v5, p4

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    const/16 v16, 0x0

    .line 57
    .line 58
    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const/4 v6, 0x1

    .line 63
    if-eq v8, v6, :cond_2

    .line 64
    .line 65
    const/4 v6, 0x3

    .line 66
    if-ne v8, v6, :cond_3

    .line 67
    .line 68
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    .line 69
    .line 70
    .line 71
    move-result v17

    .line 72
    if-lez v17, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-object v11, v5

    .line 76
    goto/16 :goto_16

    .line 77
    .line 78
    :catchall_0
    move-exception v0

    .line 79
    move-object v8, v9

    .line 80
    goto/16 :goto_18

    .line 81
    .line 82
    :cond_3
    :goto_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    const-string/jumbo v11, "shortcut"

    .line 91
    .line 92
    .line 93
    const/4 v0, 0x2

    .line 94
    move-object/from16 v18, v10

    .line 95
    .line 96
    const-string v10, "ShortcutService"

    .line 97
    .line 98
    move-object/from16 v19, v12

    .line 99
    .line 100
    const/4 v12, 0x3

    .line 101
    if-ne v8, v12, :cond_a

    .line 102
    .line 103
    if-ne v6, v0, :cond_a

    .line 104
    .line 105
    :try_start_2
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    if-eqz v12, :cond_a

    .line 110
    .line 111
    if-nez v4, :cond_4

    .line 112
    .line 113
    move/from16 v20, v3

    .line 114
    .line 115
    goto/16 :goto_3

    .line 116
    .line 117
    :cond_4
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_6

    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v6, "Shortcut "

    .line 135
    .line 136
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v4, " has no intent. Skipping it."

    .line 147
    .line 148
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    const/4 v12, 0x0

    .line 159
    goto :goto_2

    .line 160
    :cond_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 161
    .line 162
    .line 163
    new-instance v0, Landroid/content/Intent;

    .line 164
    .line 165
    const-string v6, "android.intent.action.VIEW"

    .line 166
    .line 167
    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    :cond_6
    if-lt v3, v13, :cond_7

    .line 174
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v1, "More than "

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v1, " shortcuts found for "

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, ". Skipping the rest."

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    .line 211
    .line 212
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 213
    .line 214
    .line 215
    return-object v5

    .line 216
    :cond_7
    const/4 v12, 0x0

    .line 217
    :try_start_3
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Landroid/content/Intent;

    .line 222
    .line 223
    const v6, 0x1000c000

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    .line 228
    .line 229
    :try_start_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    new-array v0, v0, [Landroid/content/Intent;

    .line 234
    .line 235
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, [Landroid/content/Intent;

    .line 240
    .line 241
    invoke-virtual {v4, v0}, Landroid/content/pm/ShortcutInfo;->setIntents([Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    .line 243
    .line 244
    :try_start_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 245
    .line 246
    .line 247
    if-eqz v2, :cond_8

    .line 248
    .line 249
    invoke-virtual {v4, v2}, Landroid/content/pm/ShortcutInfo;->setCategories(Ljava/util/Set;)V

    .line 250
    .line 251
    .line 252
    const/4 v2, 0x0

    .line 253
    :cond_8
    if-nez v5, :cond_9

    .line 254
    .line 255
    new-instance v0, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .line 259
    .line 260
    move-object v5, v0

    .line 261
    :cond_9
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    add-int/lit8 v3, v3, 0x1

    .line 265
    .line 266
    add-int/lit8 v16, v16, 0x1

    .line 267
    .line 268
    :goto_2
    move-object/from16 v0, p0

    .line 269
    .line 270
    move-object/from16 v7, p1

    .line 271
    .line 272
    move-object/from16 v11, p2

    .line 273
    .line 274
    move-object/from16 v10, v18

    .line 275
    .line 276
    move-object/from16 v12, v19

    .line 277
    .line 278
    const/4 v4, 0x0

    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :catch_0
    const-string v0, "Shortcut\'s extras contain un-persistable values. Skipping it."

    .line 282
    .line 283
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 284
    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_a
    const-string/jumbo v12, "share-target"

    .line 288
    .line 289
    .line 290
    move/from16 v20, v3

    .line 291
    .line 292
    const/4 v3, 0x3

    .line 293
    if-ne v8, v3, :cond_e

    .line 294
    .line 295
    if-ne v6, v0, :cond_e

    .line 296
    .line 297
    :try_start_6
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    if-eqz v3, :cond_e

    .line 302
    .line 303
    if-nez v1, :cond_b

    .line 304
    .line 305
    :goto_3
    move-object/from16 v0, p0

    .line 306
    .line 307
    move-object/from16 v7, p1

    .line 308
    .line 309
    move-object/from16 v11, p2

    .line 310
    .line 311
    move-object/from16 v10, v18

    .line 312
    .line 313
    move-object/from16 v12, v19

    .line 314
    .line 315
    move/from16 v3, v20

    .line 316
    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    :cond_b
    if-eqz v2, :cond_c

    .line 320
    .line 321
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    if-nez v3, :cond_c

    .line 326
    .line 327
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-eqz v3, :cond_d

    .line 332
    .line 333
    :cond_c
    move-object/from16 v0, p5

    .line 334
    .line 335
    move-object/from16 v21, v4

    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_d
    new-instance v3, Lcom/android/server/pm/ShareTargetInfo;

    .line 339
    .line 340
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    new-array v0, v0, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    .line 345
    .line 346
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    check-cast v0, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    .line 351
    .line 352
    iget-object v1, v1, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    .line 353
    .line 354
    move-object/from16 v21, v4

    .line 355
    .line 356
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    new-array v4, v4, [Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    check-cast v2, [Ljava/lang/String;

    .line 367
    .line 368
    invoke-direct {v3, v0, v1, v2}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    move-object/from16 v0, p5

    .line 372
    .line 373
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 377
    .line 378
    .line 379
    const/4 v1, 0x2

    .line 380
    const/16 v22, 0x0

    .line 381
    .line 382
    const/16 v23, 0x0

    .line 383
    .line 384
    goto :goto_5

    .line 385
    :goto_4
    move-object/from16 v0, p0

    .line 386
    .line 387
    move-object/from16 v7, p1

    .line 388
    .line 389
    move-object/from16 v11, p2

    .line 390
    .line 391
    move-object/from16 v10, v18

    .line 392
    .line 393
    move-object/from16 v12, v19

    .line 394
    .line 395
    move/from16 v3, v20

    .line 396
    .line 397
    move-object/from16 v4, v21

    .line 398
    .line 399
    const/4 v1, 0x0

    .line 400
    goto/16 :goto_0

    .line 401
    .line 402
    :cond_e
    move-object/from16 v0, p5

    .line 403
    .line 404
    move-object/from16 v21, v4

    .line 405
    .line 406
    move-object/from16 v22, v1

    .line 407
    .line 408
    move-object/from16 v23, v2

    .line 409
    .line 410
    const/4 v1, 0x2

    .line 411
    :goto_5
    if-eq v8, v1, :cond_f

    .line 412
    .line 413
    :goto_6
    move-object/from16 v1, p0

    .line 414
    .line 415
    move-object v11, v5

    .line 416
    move-object/from16 v4, v18

    .line 417
    .line 418
    move-object/from16 v2, v19

    .line 419
    .line 420
    const/4 v8, 0x0

    .line 421
    goto/16 :goto_15

    .line 422
    .line 423
    :cond_f
    const/4 v8, 0x1

    .line 424
    if-ne v6, v8, :cond_10

    .line 425
    .line 426
    const-string/jumbo v1, "shortcuts"

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-eqz v1, :cond_10

    .line 434
    .line 435
    goto :goto_6

    .line 436
    :cond_10
    const/4 v1, 0x2

    .line 437
    if-ne v6, v1, :cond_15

    .line 438
    .line 439
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    if-eqz v1, :cond_14

    .line 444
    .line 445
    move-object/from16 v1, p0

    .line 446
    .line 447
    move-object/from16 v2, v19

    .line 448
    .line 449
    move-object/from16 v3, p2

    .line 450
    .line 451
    move-object/from16 v4, v18

    .line 452
    .line 453
    move-object v11, v5

    .line 454
    move/from16 v5, p3

    .line 455
    .line 456
    move v7, v8

    .line 457
    const/4 v8, 0x0

    .line 458
    move/from16 v6, v16

    .line 459
    .line 460
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/ShortcutParser;->parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    if-nez v4, :cond_11

    .line 465
    .line 466
    :goto_7
    move-object/from16 v1, p0

    .line 467
    .line 468
    move-object/from16 v4, v18

    .line 469
    .line 470
    move-object/from16 v2, v19

    .line 471
    .line 472
    goto/16 :goto_15

    .line 473
    .line 474
    :cond_11
    if-eqz v11, :cond_13

    .line 475
    .line 476
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    sub-int/2addr v1, v7

    .line 481
    :goto_8
    if-ltz v1, :cond_13

    .line 482
    .line 483
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 492
    .line 493
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    if-eqz v2, :cond_12

    .line 502
    .line 503
    const-string v1, "Duplicate shortcut ID detected. Skipping it."

    .line 504
    .line 505
    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .line 507
    .line 508
    goto :goto_7

    .line 509
    :cond_12
    add-int/lit8 v1, v1, -0x1

    .line 510
    .line 511
    goto :goto_8

    .line 512
    :cond_13
    move-object/from16 v0, p0

    .line 513
    .line 514
    move-object/from16 v7, p1

    .line 515
    .line 516
    move-object v5, v11

    .line 517
    move-object/from16 v10, v18

    .line 518
    .line 519
    move-object/from16 v12, v19

    .line 520
    .line 521
    move/from16 v3, v20

    .line 522
    .line 523
    move-object/from16 v1, v22

    .line 524
    .line 525
    :goto_9
    const/4 v2, 0x0

    .line 526
    :goto_a
    move-object/from16 v11, p2

    .line 527
    .line 528
    goto/16 :goto_0

    .line 529
    .line 530
    :cond_14
    move-object v11, v5

    .line 531
    const/4 v8, 0x0

    .line 532
    const/4 v1, 0x2

    .line 533
    goto :goto_b

    .line 534
    :cond_15
    move-object v11, v5

    .line 535
    const/4 v8, 0x0

    .line 536
    :goto_b
    if-ne v6, v1, :cond_17

    .line 537
    .line 538
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    if-eqz v1, :cond_17

    .line 543
    .line 544
    move-object/from16 v1, p0

    .line 545
    .line 546
    move-object/from16 v2, v19

    .line 547
    .line 548
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    if-nez v3, :cond_16

    .line 553
    .line 554
    move-object/from16 v4, v18

    .line 555
    .line 556
    goto/16 :goto_15

    .line 557
    .line 558
    :cond_16
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 559
    .line 560
    .line 561
    move-object/from16 v7, p1

    .line 562
    .line 563
    move-object v0, v1

    .line 564
    move-object v12, v2

    .line 565
    move-object v1, v3

    .line 566
    move-object v5, v11

    .line 567
    move-object/from16 v10, v18

    .line 568
    .line 569
    move/from16 v3, v20

    .line 570
    .line 571
    move-object/from16 v4, v21

    .line 572
    .line 573
    goto :goto_9

    .line 574
    :cond_17
    move-object/from16 v1, p0

    .line 575
    .line 576
    move-object/from16 v2, v19

    .line 577
    .line 578
    const/4 v3, 0x3

    .line 579
    if-ne v6, v3, :cond_1b

    .line 580
    .line 581
    const-string v3, "intent"

    .line 582
    .line 583
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    if-eqz v3, :cond_1b

    .line 588
    .line 589
    if-eqz v21, :cond_18

    .line 590
    .line 591
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    if-nez v3, :cond_19

    .line 596
    .line 597
    :cond_18
    move-object/from16 v4, v18

    .line 598
    .line 599
    goto :goto_c

    .line 600
    :cond_19
    iget-object v3, v1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 601
    .line 602
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    invoke-static {v3, v9, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v4

    .line 614
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 615
    .line 616
    .line 617
    move-result v4

    .line 618
    if-eqz v4, :cond_1a

    .line 619
    .line 620
    new-instance v3, Ljava/lang/StringBuilder;

    .line 621
    .line 622
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    .line 624
    .line 625
    const-string v4, "Shortcut intent action must be provided. activity="

    .line 626
    .line 627
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    move-object/from16 v4, v18

    .line 631
    .line 632
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .line 641
    .line 642
    move-object/from16 v7, p1

    .line 643
    .line 644
    move-object v0, v1

    .line 645
    move-object v12, v2

    .line 646
    move-object v10, v4

    .line 647
    move-object v5, v11

    .line 648
    move/from16 v3, v20

    .line 649
    .line 650
    move-object/from16 v1, v22

    .line 651
    .line 652
    move-object/from16 v2, v23

    .line 653
    .line 654
    const/4 v4, 0x0

    .line 655
    goto/16 :goto_a

    .line 656
    .line 657
    :cond_1a
    move-object/from16 v4, v18

    .line 658
    .line 659
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    goto/16 :goto_15

    .line 663
    .line 664
    :goto_c
    const-string v3, "Ignoring excessive intent tag."

    .line 665
    .line 666
    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 667
    .line 668
    .line 669
    goto/16 :goto_15

    .line 670
    .line 671
    :cond_1b
    move-object/from16 v4, v18

    .line 672
    .line 673
    const-string v3, "Empty category found. activity="

    .line 674
    .line 675
    const/4 v5, 0x3

    .line 676
    if-ne v6, v5, :cond_21

    .line 677
    .line 678
    :try_start_7
    const-string v5, "categories"

    .line 679
    .line 680
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result v5

    .line 684
    if-eqz v5, :cond_20

    .line 685
    .line 686
    if-eqz v21, :cond_2b

    .line 687
    .line 688
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    .line 689
    .line 690
    .line 691
    move-result-object v5

    .line 692
    if-eqz v5, :cond_1c

    .line 693
    .line 694
    goto/16 :goto_15

    .line 695
    .line 696
    :cond_1c
    iget-object v5, v1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 697
    .line 698
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 699
    .line 700
    .line 701
    move-result-object v5

    .line 702
    sget-object v6, Lcom/android/internal/R$styleable;->ShortcutCategories:[I

    .line 703
    .line 704
    invoke-virtual {v5, v2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 705
    .line 706
    .line 707
    move-result-object v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 708
    :try_start_8
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getType(I)I

    .line 709
    .line 710
    .line 711
    move-result v6

    .line 712
    const/4 v7, 0x3

    .line 713
    if-ne v6, v7, :cond_1d

    .line 714
    .line 715
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 719
    :try_start_9
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 720
    .line 721
    .line 722
    goto :goto_d

    .line 723
    :catchall_1
    move-exception v0

    .line 724
    goto :goto_10

    .line 725
    :cond_1d
    :try_start_a
    const-string v6, "android:name for shortcut category must be string literal."

    .line 726
    .line 727
    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 728
    .line 729
    .line 730
    :try_start_b
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 731
    .line 732
    .line 733
    const/4 v6, 0x0

    .line 734
    :goto_d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 735
    .line 736
    .line 737
    move-result v5

    .line 738
    if-eqz v5, :cond_1e

    .line 739
    .line 740
    new-instance v5, Ljava/lang/StringBuilder;

    .line 741
    .line 742
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v3

    .line 755
    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    .line 757
    .line 758
    goto/16 :goto_15

    .line 759
    .line 760
    :cond_1e
    if-nez v23, :cond_1f

    .line 761
    .line 762
    new-instance v3, Landroid/util/ArraySet;

    .line 763
    .line 764
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 765
    .line 766
    .line 767
    goto :goto_e

    .line 768
    :cond_1f
    move-object/from16 v3, v23

    .line 769
    .line 770
    :goto_e
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    :goto_f
    move-object/from16 v7, p1

    .line 774
    .line 775
    move-object v0, v1

    .line 776
    move-object v12, v2

    .line 777
    move-object v2, v3

    .line 778
    move-object v10, v4

    .line 779
    move-object v5, v11

    .line 780
    move/from16 v3, v20

    .line 781
    .line 782
    move-object/from16 v4, v21

    .line 783
    .line 784
    move-object/from16 v1, v22

    .line 785
    .line 786
    goto/16 :goto_a

    .line 787
    .line 788
    :goto_10
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 789
    .line 790
    .line 791
    throw v0

    .line 792
    :cond_20
    const/4 v5, 0x3

    .line 793
    :cond_21
    if-ne v6, v5, :cond_27

    .line 794
    .line 795
    const-string v5, "category"

    .line 796
    .line 797
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    move-result v5

    .line 801
    if-eqz v5, :cond_26

    .line 802
    .line 803
    if-nez v22, :cond_22

    .line 804
    .line 805
    goto/16 :goto_15

    .line 806
    .line 807
    :cond_22
    iget-object v5, v1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 808
    .line 809
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 810
    .line 811
    .line 812
    move-result-object v5

    .line 813
    sget-object v6, Lcom/android/internal/R$styleable;->IntentCategory:[I

    .line 814
    .line 815
    invoke-virtual {v5, v2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 816
    .line 817
    .line 818
    move-result-object v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 819
    :try_start_c
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getType(I)I

    .line 820
    .line 821
    .line 822
    move-result v6

    .line 823
    const/4 v7, 0x3

    .line 824
    if-eq v6, v7, :cond_23

    .line 825
    .line 826
    const-string v6, "android:name must be string literal."

    .line 827
    .line 828
    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 829
    .line 830
    .line 831
    :try_start_d
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 832
    .line 833
    .line 834
    const/4 v6, 0x0

    .line 835
    goto :goto_11

    .line 836
    :catchall_2
    move-exception v0

    .line 837
    goto :goto_13

    .line 838
    :cond_23
    :try_start_e
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 842
    :try_start_f
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 843
    .line 844
    .line 845
    :goto_11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 846
    .line 847
    .line 848
    move-result v5

    .line 849
    if-eqz v5, :cond_24

    .line 850
    .line 851
    new-instance v5, Ljava/lang/StringBuilder;

    .line 852
    .line 853
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v3

    .line 866
    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    .line 868
    .line 869
    goto :goto_15

    .line 870
    :cond_24
    if-nez v23, :cond_25

    .line 871
    .line 872
    new-instance v3, Landroid/util/ArraySet;

    .line 873
    .line 874
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 875
    .line 876
    .line 877
    goto :goto_12

    .line 878
    :cond_25
    move-object/from16 v3, v23

    .line 879
    .line 880
    :goto_12
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 881
    .line 882
    .line 883
    goto :goto_f

    .line 884
    :goto_13
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 885
    .line 886
    .line 887
    throw v0

    .line 888
    :cond_26
    const/4 v3, 0x3

    .line 889
    goto :goto_14

    .line 890
    :cond_27
    move v3, v5

    .line 891
    :goto_14
    if-ne v6, v3, :cond_2a

    .line 892
    .line 893
    const-string v3, "data"

    .line 894
    .line 895
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 896
    .line 897
    .line 898
    move-result v3

    .line 899
    if-eqz v3, :cond_2a

    .line 900
    .line 901
    if-nez v22, :cond_28

    .line 902
    .line 903
    goto :goto_15

    .line 904
    :cond_28
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;

    .line 905
    .line 906
    .line 907
    move-result-object v3

    .line 908
    if-nez v3, :cond_29

    .line 909
    .line 910
    new-instance v3, Ljava/lang/StringBuilder;

    .line 911
    .line 912
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .line 914
    .line 915
    const-string v5, "Invalid data tag found. activity="

    .line 916
    .line 917
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v3

    .line 927
    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .line 929
    .line 930
    goto :goto_15

    .line 931
    :cond_29
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    .line 933
    .line 934
    goto :goto_15

    .line 935
    :cond_2a
    const-string v3, "Invalid tag \'%s\' found at depth %d"

    .line 936
    .line 937
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 938
    .line 939
    .line 940
    move-result-object v5

    .line 941
    filled-new-array {v7, v5}, [Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    move-result-object v5

    .line 945
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v3

    .line 949
    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 950
    .line 951
    .line 952
    :cond_2b
    :goto_15
    move-object/from16 v7, p1

    .line 953
    .line 954
    move-object v0, v1

    .line 955
    move-object v12, v2

    .line 956
    move-object v10, v4

    .line 957
    move-object v5, v11

    .line 958
    move/from16 v3, v20

    .line 959
    .line 960
    move-object/from16 v4, v21

    .line 961
    .line 962
    move-object/from16 v1, v22

    .line 963
    .line 964
    move-object/from16 v2, v23

    .line 965
    .line 966
    goto/16 :goto_a

    .line 967
    .line 968
    :goto_16
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 969
    .line 970
    .line 971
    return-object v11

    .line 972
    :goto_17
    const/4 v8, 0x0

    .line 973
    goto :goto_18

    .line 974
    :catchall_3
    move-exception v0

    .line 975
    goto :goto_17

    .line 976
    :goto_18
    if-eqz v8, :cond_2c

    .line 977
    .line 978
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 979
    .line 980
    .line 981
    :cond_2c
    throw v0
.end method
