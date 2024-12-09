.class public final Lcom/android/server/cocktailbar/settings/CocktailOrderManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mCocktailOrderedList:Ljava/util/ArrayList;

.field public mContext:Landroid/content/Context;

.field public mLock:Ljava/lang/Object;


# direct methods
.method public static savedStateFile()Landroid/util/AtomicFile;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Ljava/io/File;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v3, "cocktail_order.xml"

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v3, "CocktailOrderManager"

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const-string/jumbo v0, "savedStateFile Failed mkdirs"

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 45
    .line 46
    const-string v1, "/data/system/cocktail_order.xml"

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    const-string v0, "Failed rename to setting file."

    .line 58
    .line 59
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_1
    new-instance v0, Landroid/util/AtomicFile;

    .line 63
    .line 64
    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method


# virtual methods
.method public final dump()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[CocktailOrderManager]: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_0

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    .line 29
    .line 30
    iget v4, v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mCocktailId:I

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    const-string v4, " "

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    const-string p0, "\n"

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const-string/jumbo p0, "null\n"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw p0
.end method

.method public final readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .locals 14

    .line 1
    const-string/jumbo v0, "failed parsing "

    .line 2
    .line 3
    .line 4
    const-string v1, "UTF-8"

    .line 5
    .line 6
    const-string/jumbo v2, "failed to close stream "

    .line 7
    .line 8
    .line 9
    const-string v3, "CocktailOrderManager"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    invoke-interface {v6, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    const/4 v8, 0x2

    .line 30
    if-ne v7, v8, :cond_2

    .line 31
    .line 32
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    const-string/jumbo v9, "cocktail_order"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-eqz v9, :cond_1

    .line 44
    .line 45
    const-string/jumbo v8, "version"

    .line 46
    .line 47
    .line 48
    invoke-interface {v6, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto/16 :goto_20

    .line 58
    .line 59
    :catch_0
    move-exception p0

    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :catch_1
    move-exception p0

    .line 63
    goto/16 :goto_6

    .line 64
    .line 65
    :catch_2
    move-exception p0

    .line 66
    goto/16 :goto_b

    .line 67
    .line 68
    :catch_3
    move-exception p0

    .line 69
    goto/16 :goto_10

    .line 70
    .line 71
    :catch_4
    move-exception p0

    .line 72
    goto/16 :goto_1a

    .line 73
    .line 74
    :catch_5
    move-exception p0

    .line 75
    goto/16 :goto_15

    .line 76
    .line 77
    :cond_1
    :try_start_2
    const-string/jumbo v9, "provider"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_2

    .line 85
    .line 86
    const-string/jumbo v8, "order"

    .line 87
    .line 88
    .line 89
    invoke-interface {v6, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    const-string/jumbo v9, "user_id"

    .line 98
    .line 99
    .line 100
    invoke-interface {v6, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    const-string/jumbo v10, "cocktail_id"

    .line 109
    .line 110
    .line 111
    invoke-interface {v6, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    new-instance v11, Landroid/content/ComponentName;

    .line 120
    .line 121
    const-string/jumbo v12, "package"

    .line 122
    .line 123
    .line 124
    invoke-interface {v6, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    const-string/jumbo v13, "class_name"

    .line 129
    .line 130
    .line 131
    invoke-interface {v6, v4, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v12, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    .line 139
    .line 140
    invoke-direct {v12, v10, v9, v8, v11}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;-><init>(IIILandroid/content/ComponentName;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .line 145
    .line 146
    :catch_6
    :cond_2
    :goto_0
    const/4 v8, 0x1

    .line 147
    if-ne v7, v8, :cond_0

    .line 148
    .line 149
    :try_start_3
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    .line 150
    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string/jumbo v5, "readStateFromFileLocked: orderList="

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    .line 177
    .line 178
    goto/16 :goto_1f

    .line 179
    .line 180
    :catchall_1
    move-exception p0

    .line 181
    move v5, v8

    .line 182
    goto/16 :goto_20

    .line 183
    .line 184
    :catch_7
    move-exception p0

    .line 185
    move v5, v8

    .line 186
    goto :goto_1

    .line 187
    :catch_8
    move-exception p0

    .line 188
    move v5, v8

    .line 189
    goto/16 :goto_6

    .line 190
    .line 191
    :catch_9
    move-exception p0

    .line 192
    move v5, v8

    .line 193
    goto/16 :goto_b

    .line 194
    .line 195
    :catch_a
    move-exception p0

    .line 196
    move v5, v8

    .line 197
    goto/16 :goto_10

    .line 198
    .line 199
    :catch_b
    move-exception p0

    .line 200
    move v5, v8

    .line 201
    goto/16 :goto_15

    .line 202
    .line 203
    :catch_c
    move-exception p0

    .line 204
    move v5, v8

    .line 205
    goto/16 :goto_1a

    .line 206
    .line 207
    :goto_1
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 223
    .line 224
    .line 225
    if-nez v5, :cond_f

    .line 226
    .line 227
    :try_start_5
    invoke-static {}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    new-instance p1, Ljava/io/BufferedReader;

    .line 232
    .line 233
    new-instance v0, Ljava/io/InputStreamReader;

    .line 234
    .line 235
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 243
    .line 244
    .line 245
    :try_start_6
    new-instance p0, Ljava/lang/StringBuffer;

    .line 246
    .line 247
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 248
    .line 249
    .line 250
    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    if-eqz v0, :cond_3

    .line 255
    .line 256
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :catchall_2
    move-exception p0

    .line 261
    move-object v4, p1

    .line 262
    goto :goto_4

    .line 263
    :catch_d
    move-exception p0

    .line 264
    move-object v4, p1

    .line 265
    goto :goto_3

    .line 266
    :cond_3
    :try_start_7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e

    .line 267
    .line 268
    .line 269
    goto/16 :goto_1f

    .line 270
    .line 271
    :catch_e
    move-exception p0

    .line 272
    invoke-static {v2, p0, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_1f

    .line 276
    .line 277
    :catchall_3
    move-exception p0

    .line 278
    goto :goto_4

    .line 279
    :catch_f
    move-exception p0

    .line 280
    :goto_3
    :try_start_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 296
    .line 297
    .line 298
    if-eqz v4, :cond_f

    .line 299
    .line 300
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e

    .line 301
    .line 302
    .line 303
    goto/16 :goto_1f

    .line 304
    .line 305
    :goto_4
    if-eqz v4, :cond_4

    .line 306
    .line 307
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :catch_10
    move-exception p1

    .line 312
    invoke-static {v2, p1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :cond_4
    :goto_5
    throw p0

    .line 316
    :goto_6
    :try_start_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 332
    .line 333
    .line 334
    if-nez v5, :cond_f

    .line 335
    .line 336
    :try_start_c
    invoke-static {}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    new-instance p1, Ljava/io/BufferedReader;

    .line 341
    .line 342
    new-instance v0, Ljava/io/InputStreamReader;

    .line 343
    .line 344
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_12
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 352
    .line 353
    .line 354
    :try_start_d
    new-instance p0, Ljava/lang/StringBuffer;

    .line 355
    .line 356
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 357
    .line 358
    .line 359
    :goto_7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    if-eqz v0, :cond_5

    .line 364
    .line 365
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 366
    .line 367
    .line 368
    goto :goto_7

    .line 369
    :catchall_4
    move-exception p0

    .line 370
    move-object v4, p1

    .line 371
    goto :goto_9

    .line 372
    :catch_11
    move-exception p0

    .line 373
    move-object v4, p1

    .line 374
    goto :goto_8

    .line 375
    :cond_5
    :try_start_e
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    .line 376
    .line 377
    .line 378
    goto/16 :goto_1f

    .line 379
    .line 380
    :catchall_5
    move-exception p0

    .line 381
    goto :goto_9

    .line 382
    :catch_12
    move-exception p0

    .line 383
    :goto_8
    :try_start_f
    new-instance p1, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p0

    .line 398
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 399
    .line 400
    .line 401
    if-eqz v4, :cond_f

    .line 402
    .line 403
    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 404
    .line 405
    .line 406
    goto/16 :goto_1f

    .line 407
    .line 408
    :goto_9
    if-eqz v4, :cond_6

    .line 409
    .line 410
    :try_start_11
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_13

    .line 411
    .line 412
    .line 413
    goto :goto_a

    .line 414
    :catch_13
    move-exception p1

    .line 415
    invoke-static {v2, p1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    :cond_6
    :goto_a
    throw p0

    .line 419
    :goto_b
    :try_start_12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p0

    .line 434
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 435
    .line 436
    .line 437
    if-nez v5, :cond_f

    .line 438
    .line 439
    :try_start_13
    invoke-static {}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    .line 440
    .line 441
    .line 442
    move-result-object p0

    .line 443
    new-instance p1, Ljava/io/BufferedReader;

    .line 444
    .line 445
    new-instance v0, Ljava/io/InputStreamReader;

    .line 446
    .line 447
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 448
    .line 449
    .line 450
    move-result-object p0

    .line 451
    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_15
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 455
    .line 456
    .line 457
    :try_start_14
    new-instance p0, Ljava/lang/StringBuffer;

    .line 458
    .line 459
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 460
    .line 461
    .line 462
    :goto_c
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    if-eqz v0, :cond_7

    .line 467
    .line 468
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 469
    .line 470
    .line 471
    goto :goto_c

    .line 472
    :catchall_6
    move-exception p0

    .line 473
    move-object v4, p1

    .line 474
    goto :goto_e

    .line 475
    :catch_14
    move-exception p0

    .line 476
    move-object v4, p1

    .line 477
    goto :goto_d

    .line 478
    :cond_7
    :try_start_15
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    .line 479
    .line 480
    .line 481
    goto/16 :goto_1f

    .line 482
    .line 483
    :catchall_7
    move-exception p0

    .line 484
    goto :goto_e

    .line 485
    :catch_15
    move-exception p0

    .line 486
    :goto_d
    :try_start_16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .line 490
    .line 491
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object p0

    .line 501
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 502
    .line 503
    .line 504
    if-eqz v4, :cond_f

    .line 505
    .line 506
    :try_start_17
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    .line 507
    .line 508
    .line 509
    goto/16 :goto_1f

    .line 510
    .line 511
    :goto_e
    if-eqz v4, :cond_8

    .line 512
    .line 513
    :try_start_18
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_16

    .line 514
    .line 515
    .line 516
    goto :goto_f

    .line 517
    :catch_16
    move-exception p1

    .line 518
    invoke-static {v2, p1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    :cond_8
    :goto_f
    throw p0

    .line 522
    :goto_10
    :try_start_19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .line 526
    .line 527
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object p0

    .line 537
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 538
    .line 539
    .line 540
    if-nez v5, :cond_f

    .line 541
    .line 542
    :try_start_1a
    invoke-static {}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    .line 543
    .line 544
    .line 545
    move-result-object p0

    .line 546
    new-instance p1, Ljava/io/BufferedReader;

    .line 547
    .line 548
    new-instance v0, Ljava/io/InputStreamReader;

    .line 549
    .line 550
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 551
    .line 552
    .line 553
    move-result-object p0

    .line 554
    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_18
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    .line 558
    .line 559
    .line 560
    :try_start_1b
    new-instance p0, Ljava/lang/StringBuffer;

    .line 561
    .line 562
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 563
    .line 564
    .line 565
    :goto_11
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    if-eqz v0, :cond_9

    .line 570
    .line 571
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_17
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .line 572
    .line 573
    .line 574
    goto :goto_11

    .line 575
    :catchall_8
    move-exception p0

    .line 576
    move-object v4, p1

    .line 577
    goto :goto_13

    .line 578
    :catch_17
    move-exception p0

    .line 579
    move-object v4, p1

    .line 580
    goto :goto_12

    .line 581
    :cond_9
    :try_start_1c
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_e

    .line 582
    .line 583
    .line 584
    goto/16 :goto_1f

    .line 585
    .line 586
    :catchall_9
    move-exception p0

    .line 587
    goto :goto_13

    .line 588
    :catch_18
    move-exception p0

    .line 589
    :goto_12
    :try_start_1d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object p0

    .line 604
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 605
    .line 606
    .line 607
    if-eqz v4, :cond_f

    .line 608
    .line 609
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_e

    .line 610
    .line 611
    .line 612
    goto/16 :goto_1f

    .line 613
    .line 614
    :goto_13
    if-eqz v4, :cond_a

    .line 615
    .line 616
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_19

    .line 617
    .line 618
    .line 619
    goto :goto_14

    .line 620
    :catch_19
    move-exception p1

    .line 621
    invoke-static {v2, p1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    :cond_a
    :goto_14
    throw p0

    .line 625
    :goto_15
    :try_start_20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 626
    .line 627
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    .line 629
    .line 630
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object p0

    .line 640
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 641
    .line 642
    .line 643
    if-nez v5, :cond_f

    .line 644
    .line 645
    :try_start_21
    invoke-static {}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    .line 646
    .line 647
    .line 648
    move-result-object p0

    .line 649
    new-instance p1, Ljava/io/BufferedReader;

    .line 650
    .line 651
    new-instance v0, Ljava/io/InputStreamReader;

    .line 652
    .line 653
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 654
    .line 655
    .line 656
    move-result-object p0

    .line 657
    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1b
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    .line 661
    .line 662
    .line 663
    :try_start_22
    new-instance p0, Ljava/lang/StringBuffer;

    .line 664
    .line 665
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 666
    .line 667
    .line 668
    :goto_16
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    if-eqz v0, :cond_b

    .line 673
    .line 674
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1a
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    .line 675
    .line 676
    .line 677
    goto :goto_16

    .line 678
    :catchall_a
    move-exception p0

    .line 679
    move-object v4, p1

    .line 680
    goto :goto_18

    .line 681
    :catch_1a
    move-exception p0

    .line 682
    move-object v4, p1

    .line 683
    goto :goto_17

    .line 684
    :cond_b
    :try_start_23
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_e

    .line 685
    .line 686
    .line 687
    goto/16 :goto_1f

    .line 688
    .line 689
    :catchall_b
    move-exception p0

    .line 690
    goto :goto_18

    .line 691
    :catch_1b
    move-exception p0

    .line 692
    :goto_17
    :try_start_24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 693
    .line 694
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .line 696
    .line 697
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object p0

    .line 707
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    .line 708
    .line 709
    .line 710
    if-eqz v4, :cond_f

    .line 711
    .line 712
    :try_start_25
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_e

    .line 713
    .line 714
    .line 715
    goto/16 :goto_1f

    .line 716
    .line 717
    :goto_18
    if-eqz v4, :cond_c

    .line 718
    .line 719
    :try_start_26
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1c

    .line 720
    .line 721
    .line 722
    goto :goto_19

    .line 723
    :catch_1c
    move-exception p1

    .line 724
    invoke-static {v2, p1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    :cond_c
    :goto_19
    throw p0

    .line 728
    :goto_1a
    :try_start_27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 729
    .line 730
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    .line 732
    .line 733
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object p0

    .line 743
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 744
    .line 745
    .line 746
    if-nez v5, :cond_f

    .line 747
    .line 748
    :try_start_28
    invoke-static {}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    .line 749
    .line 750
    .line 751
    move-result-object p0

    .line 752
    new-instance p1, Ljava/io/BufferedReader;

    .line 753
    .line 754
    new-instance v0, Ljava/io/InputStreamReader;

    .line 755
    .line 756
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 757
    .line 758
    .line 759
    move-result-object p0

    .line 760
    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1e
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    .line 764
    .line 765
    .line 766
    :try_start_29
    new-instance p0, Ljava/lang/StringBuffer;

    .line 767
    .line 768
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 769
    .line 770
    .line 771
    :goto_1b
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    if-eqz v0, :cond_d

    .line 776
    .line 777
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_1d
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    .line 778
    .line 779
    .line 780
    goto :goto_1b

    .line 781
    :catchall_c
    move-exception p0

    .line 782
    move-object v4, p1

    .line 783
    goto :goto_1d

    .line 784
    :catch_1d
    move-exception p0

    .line 785
    move-object v4, p1

    .line 786
    goto :goto_1c

    .line 787
    :cond_d
    :try_start_2a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_e

    .line 788
    .line 789
    .line 790
    goto :goto_1f

    .line 791
    :catchall_d
    move-exception p0

    .line 792
    goto :goto_1d

    .line 793
    :catch_1e
    move-exception p0

    .line 794
    :goto_1c
    :try_start_2b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 795
    .line 796
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 797
    .line 798
    .line 799
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object p0

    .line 809
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    .line 810
    .line 811
    .line 812
    if-eqz v4, :cond_f

    .line 813
    .line 814
    :try_start_2c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_e

    .line 815
    .line 816
    .line 817
    goto :goto_1f

    .line 818
    :goto_1d
    if-eqz v4, :cond_e

    .line 819
    .line 820
    :try_start_2d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_1f

    .line 821
    .line 822
    .line 823
    goto :goto_1e

    .line 824
    :catch_1f
    move-exception p1

    .line 825
    invoke-static {v2, p1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    :cond_e
    :goto_1e
    throw p0

    .line 829
    :cond_f
    :goto_1f
    return-void

    .line 830
    :goto_20
    if-nez v5, :cond_12

    .line 831
    .line 832
    :try_start_2e
    invoke-static {}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    .line 833
    .line 834
    .line 835
    move-result-object p1

    .line 836
    new-instance v0, Ljava/io/BufferedReader;

    .line 837
    .line 838
    new-instance v5, Ljava/io/InputStreamReader;

    .line 839
    .line 840
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 841
    .line 842
    .line 843
    move-result-object p1

    .line 844
    invoke-direct {v5, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_22
    .catchall {:try_start_2e .. :try_end_2e} :catchall_f

    .line 848
    .line 849
    .line 850
    :try_start_2f
    new-instance p1, Ljava/lang/StringBuffer;

    .line 851
    .line 852
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 853
    .line 854
    .line 855
    :goto_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    if-eqz v1, :cond_10

    .line 860
    .line 861
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_20
    .catchall {:try_start_2f .. :try_end_2f} :catchall_e

    .line 862
    .line 863
    .line 864
    goto :goto_21

    .line 865
    :catchall_e
    move-exception p0

    .line 866
    move-object v4, v0

    .line 867
    goto :goto_23

    .line 868
    :catch_20
    move-exception p1

    .line 869
    move-object v4, v0

    .line 870
    goto :goto_22

    .line 871
    :cond_10
    :try_start_30
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_21

    .line 872
    .line 873
    .line 874
    goto :goto_25

    .line 875
    :catch_21
    move-exception p1

    .line 876
    invoke-static {v2, p1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    goto :goto_25

    .line 880
    :catchall_f
    move-exception p0

    .line 881
    goto :goto_23

    .line 882
    :catch_22
    move-exception p1

    .line 883
    :goto_22
    :try_start_31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 884
    .line 885
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object p1

    .line 898
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_f

    .line 899
    .line 900
    .line 901
    if-eqz v4, :cond_12

    .line 902
    .line 903
    :try_start_32
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_21

    .line 904
    .line 905
    .line 906
    goto :goto_25

    .line 907
    :goto_23
    if-eqz v4, :cond_11

    .line 908
    .line 909
    :try_start_33
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_23

    .line 910
    .line 911
    .line 912
    goto :goto_24

    .line 913
    :catch_23
    move-exception p1

    .line 914
    invoke-static {v2, p1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    :cond_11
    :goto_24
    throw p0

    .line 918
    :cond_12
    :goto_25
    throw p0
.end method

.method public final writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .locals 11

    .line 1
    const-string/jumbo v0, "provider"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "cocktail_order"

    .line 5
    .line 6
    .line 7
    const-string v2, "CocktailOrderManager"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    const-string p0, "Failed to write state: no order info"

    .line 15
    .line 16
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return v3

    .line 20
    :catch_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    .line 23
    .line 24
    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v5, "utf-8"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, p1, v5}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-virtual {v4, v5, p1}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v5, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    move v6, v3

    .line 49
    :goto_0
    if-ge v6, p1, :cond_2

    .line 50
    .line 51
    iget-object v7, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    .line 58
    .line 59
    iget-object v8, v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mComponentName:Landroid/content/ComponentName;

    .line 60
    .line 61
    if-eqz v8, :cond_1

    .line 62
    .line 63
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    .line 65
    .line 66
    const-string/jumbo v9, "order"

    .line 67
    .line 68
    .line 69
    iget v10, v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mOrder:I

    .line 70
    .line 71
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-virtual {v4, v5, v9, v10}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    .line 77
    .line 78
    const-string/jumbo v9, "user_id"

    .line 79
    .line 80
    .line 81
    iget v10, v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mUserId:I

    .line 82
    .line 83
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    invoke-virtual {v4, v5, v9, v10}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    .line 89
    .line 90
    const-string/jumbo v9, "cocktail_id"

    .line 91
    .line 92
    .line 93
    iget v7, v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mCocktailId:I

    .line 94
    .line 95
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v4, v5, v9, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    .line 101
    .line 102
    const-string/jumbo v7, "package"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-virtual {v4, v5, v7, v9}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    .line 111
    .line 112
    const-string/jumbo v7, "class_name"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-virtual {v4, v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    .line 124
    .line 125
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v4, v5, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    const/4 p0, 0x1

    .line 135
    return p0

    .line 136
    :goto_1
    const-string p1, "Failed to write state: "

    .line 137
    .line 138
    invoke-static {p1, p0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return v3
.end method
