.class public final Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public enqueuedNotifications:Ljava/util/Set;

.field public isFirstTTLNoti:Z

.field public mContext:Landroid/content/Context;


# direct methods
.method public static makeNotiKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const-string/jumbo v3, "|"

    .line 5
    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    new-array p2, v2, [Ljava/lang/CharSequence;

    .line 10
    .line 11
    aput-object p1, p2, v1

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    aput-object p0, p2, v0

    .line 18
    .line 19
    invoke-static {v3, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v4, 0x3

    .line 25
    new-array v4, v4, [Ljava/lang/CharSequence;

    .line 26
    .line 27
    aput-object p1, v4, v1

    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    aput-object p0, v4, v0

    .line 34
    .line 35
    aput-object p2, v4, v2

    .line 36
    .line 37
    invoke-static {v3, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final createAppSearchSession(Ljava/util/concurrent/ExecutorService;)Landroid/app/appsearch/AppSearchSession;
    .locals 5

    .line 1
    const-string v0, "TimeToLeaveHelper"

    .line 2
    .line 3
    const-string v1, "Create AppSearchSession"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-class v1, Landroid/app/appsearch/AppSearchManager;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/app/appsearch/AppSearchManager;

    .line 17
    .line 18
    new-instance v1, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    .line 19
    .line 20
    const-string v2, "ai-suggestion"

    .line 21
    .line 22
    invoke-direct {v1, v2}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v3, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-direct {v3, p0, v2, v4}, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;Ljava/util/concurrent/CompletableFuture;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, p1, v3}, Landroid/app/appsearch/AppSearchManager;->createSearchSession(Landroid/app/appsearch/AppSearchManager$SearchContext;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 41
    .line 42
    .line 43
    const-wide/16 p0, 0xa

    .line 44
    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    .line 47
    invoke-virtual {v2, p0, p1, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Landroid/app/appsearch/AppSearchSession;

    .line 52
    .line 53
    return-object p0
.end method

.method public final deleteDocument(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "TimeToLeaveHelper"

    .line 2
    .line 3
    const-string v1, "[DELETE]"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2, p3}, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;->makeNotiKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p0, p2}, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;->createAppSearchSession(Ljava/util/concurrent/ExecutorService;)Landroid/app/appsearch/AppSearchSession;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    const-string v1, "Remove document"

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    .line 26
    .line 27
    const-string v1, "ContextualInsightData"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    filled-new-array {p1}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/RemoveByDocumentIdRequest;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v2, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;Ljava/util/concurrent/CompletableFuture;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, v0, p2, v2}, Landroid/app/appsearch/AppSearchSession;->remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 56
    .line 57
    .line 58
    const-wide/16 v2, 0xa

    .line 59
    .line 60
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 61
    .line 62
    invoke-virtual {v1, v2, v3, p2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;->enqueuedNotifications:Ljava/util/Set;

    .line 66
    .line 67
    check-cast p0, Ljava/util/HashSet;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Landroid/app/appsearch/AppSearchSession;->close()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final insertDocument(Ljava/lang/String;ILjava/lang/String;ILandroid/os/Bundle;[Landroid/app/Notification$Action;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move-object/from16 v5, p6

    .line 12
    .line 13
    const/4 v6, 0x2

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    const-string v9, "TimeToLeaveHelper"

    .line 17
    .line 18
    const-string v10, "[INSERT]"

    .line 19
    .line 20
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-object/from16 v10, p3

    .line 24
    .line 25
    invoke-static {v2, v0, v10}, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;->makeNotiKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v10

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    .line 32
    move-result-object v11

    .line 33
    invoke-virtual {v1, v11}, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;->createAppSearchSession(Ljava/util/concurrent/ExecutorService;)Landroid/app/appsearch/AppSearchSession;

    .line 34
    .line 35
    .line 36
    move-result-object v12

    .line 37
    const-string v13, "Set Schema"

    .line 38
    .line 39
    invoke-static {v9, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    new-instance v13, Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 43
    .line 44
    invoke-direct {v13}, Landroid/app/appsearch/SetSchemaRequest$Builder;-><init>()V

    .line 45
    .line 46
    .line 47
    const/4 v14, 0x4

    .line 48
    new-array v14, v14, [Landroid/app/appsearch/AppSearchSchema;

    .line 49
    .line 50
    sget-object v15, Lcom/samsung/android/sdk/aisuggestion/schema/google/TimeToLeaveSuggestionDataDocument;->schema:Landroid/app/appsearch/AppSearchSchema;

    .line 51
    .line 52
    aput-object v15, v14, v7

    .line 53
    .line 54
    sget-object v15, Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument;->schema:Landroid/app/appsearch/AppSearchSchema;

    .line 55
    .line 56
    aput-object v15, v14, v8

    .line 57
    .line 58
    sget-object v15, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument;->schema:Landroid/app/appsearch/AppSearchSchema;

    .line 59
    .line 60
    aput-object v15, v14, v6

    .line 61
    .line 62
    const/4 v15, 0x3

    .line 63
    sget-object v16, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument;->schema:Landroid/app/appsearch/AppSearchSchema;

    .line 64
    .line 65
    aput-object v16, v14, v15

    .line 66
    .line 67
    invoke-virtual {v13, v14}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addSchemas([Landroid/app/appsearch/AppSearchSchema;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    invoke-virtual {v13, v8}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setVersion(I)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    invoke-virtual {v13, v8}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setForceOverride(Z)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    new-instance v14, Landroid/app/appsearch/PackageIdentifier;

    .line 80
    .line 81
    new-instance v15, Landroid/content/pm/Signature;

    .line 82
    .line 83
    const-string v7, "C8A2E9BCCF597C2FB6DC66BEE293FC13F2FC47EC77BC6B2B0D52C11F51192AB8"

    .line 84
    .line 85
    invoke-direct {v15, v7}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v15}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    const-string v15, "com.samsung.android.smartsuggestions"

    .line 93
    .line 94
    invoke-direct {v14, v15, v7}, Landroid/app/appsearch/PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    .line 95
    .line 96
    .line 97
    const-string v7, "ContextualInsightData:ContextualInsight"

    .line 98
    .line 99
    invoke-virtual {v13, v7, v8, v14}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setSchemaTypeVisibilityForPackage(Ljava/lang/String;ZLandroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    new-instance v14, Landroid/app/appsearch/PackageIdentifier;

    .line 104
    .line 105
    new-instance v6, Landroid/content/pm/Signature;

    .line 106
    .line 107
    const-string v8, "34DF0E7A9F1CF1892E45C056B4973CD81CCF148A4050D11AEA4AC5A65F900A42"

    .line 108
    .line 109
    invoke-direct {v6, v8}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-direct {v14, v15, v6}, Landroid/app/appsearch/PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    .line 117
    .line 118
    .line 119
    const/4 v6, 0x1

    .line 120
    invoke-virtual {v13, v7, v6, v14}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setSchemaTypeVisibilityForPackage(Ljava/lang/String;ZLandroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-virtual {v8}, Landroid/app/appsearch/SetSchemaRequest$Builder;->build()Landroid/app/appsearch/SetSchemaRequest;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    new-instance v8, Ljava/util/concurrent/CompletableFuture;

    .line 129
    .line 130
    invoke-direct {v8}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 131
    .line 132
    .line 133
    new-instance v13, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    const/4 v14, 0x2

    .line 136
    invoke-direct {v13, v1, v8, v14}, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;Ljava/util/concurrent/CompletableFuture;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v12, v6, v11, v11, v13}, Landroid/app/appsearch/AppSearchSession;->setSchema(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 140
    .line 141
    .line 142
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 143
    .line 144
    const-wide/16 v13, 0xa

    .line 145
    .line 146
    invoke-virtual {v8, v13, v14, v6}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    iget-boolean v6, v1, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;->isFirstTTLNoti:Z

    .line 150
    .line 151
    const-string v8, ""

    .line 152
    .line 153
    if-eqz v6, :cond_0

    .line 154
    .line 155
    const-string v6, "Clear documents"

    .line 156
    .line 157
    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    new-instance v6, Ljava/util/concurrent/CompletableFuture;

    .line 161
    .line 162
    invoke-direct {v6}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 163
    .line 164
    .line 165
    new-instance v15, Landroid/app/appsearch/SearchSpec$Builder;

    .line 166
    .line 167
    invoke-direct {v15}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v15}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    .line 171
    .line 172
    .line 173
    move-result-object v15

    .line 174
    new-instance v13, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;

    .line 175
    .line 176
    const/4 v14, 0x1

    .line 177
    invoke-direct {v13, v1, v6, v14}, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;Ljava/util/concurrent/CompletableFuture;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v12, v8, v15, v11, v13}, Landroid/app/appsearch/AppSearchSession;->remove(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 181
    .line 182
    .line 183
    const/4 v6, 0x0

    .line 184
    iput-boolean v6, v1, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;->isFirstTTLNoti:Z

    .line 185
    .line 186
    :cond_0
    const-string v6, "Put document"

    .line 187
    .line 188
    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    const-string v6, "android.title"

    .line 192
    .line 193
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    const-string v13, "android.text"

    .line 198
    .line 199
    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    const-string v14, "android.ongoingActivityNoti.primaryInfo"

    .line 204
    .line 205
    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 206
    .line 207
    .line 208
    move-result-object v14

    .line 209
    const-string v15, "android.ongoingActivityNoti.secondaryInfo"

    .line 210
    .line 211
    invoke-virtual {v4, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 212
    .line 213
    .line 214
    move-result-object v15

    .line 215
    move-object/from16 p3, v11

    .line 216
    .line 217
    const-string v11, "android.ongoingActivityNoti.tertiaryInfo"

    .line 218
    .line 219
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 220
    .line 221
    .line 222
    move-result-object v11

    .line 223
    move-object/from16 v17, v12

    .line 224
    .line 225
    const-string v12, "android.ongoingActivityNoti.nowbarPrimaryInfo"

    .line 226
    .line 227
    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 228
    .line 229
    .line 230
    move-result-object v12

    .line 231
    move-object/from16 v18, v7

    .line 232
    .line 233
    const-string v7, "android.ongoingActivityNoti.nowbarSecondaryInfo"

    .line 234
    .line 235
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    move-object/from16 v19, v10

    .line 240
    .line 241
    const-string v10, "android.ongoingActivityNoti.nowbarIcon"

    .line 242
    .line 243
    const-class v1, Landroid/graphics/drawable/Icon;

    .line 244
    .line 245
    invoke-virtual {v4, v10, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    check-cast v1, Landroid/graphics/drawable/Icon;

    .line 250
    .line 251
    array-length v4, v5

    .line 252
    if-lez v4, :cond_2

    .line 253
    .line 254
    const/4 v4, 0x0

    .line 255
    aget-object v10, v5, v4

    .line 256
    .line 257
    if-nez v10, :cond_1

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_1
    if-eqz v14, :cond_2

    .line 261
    .line 262
    if-eqz v15, :cond_2

    .line 263
    .line 264
    if-eqz v11, :cond_2

    .line 265
    .line 266
    if-eqz v12, :cond_2

    .line 267
    .line 268
    if-eqz v7, :cond_2

    .line 269
    .line 270
    if-nez v1, :cond_3

    .line 271
    .line 272
    :cond_2
    :goto_0
    move-object/from16 v8, p0

    .line 273
    .line 274
    move-object/from16 v5, v17

    .line 275
    .line 276
    move-object/from16 v3, v19

    .line 277
    .line 278
    goto/16 :goto_3

    .line 279
    .line 280
    :cond_3
    const-string/jumbo v4, "pkg="

    .line 281
    .line 282
    .line 283
    const-string v10, " id="

    .line 284
    .line 285
    move-object/from16 v20, v8

    .line 286
    .line 287
    const-string v8, " userId="

    .line 288
    .line 289
    invoke-static {v2, v4, v0, v10, v8}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    const-string/jumbo v8, "title="

    .line 306
    .line 307
    .line 308
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v6, " text="

    .line 315
    .line 316
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    const-string v6, "ONGOING primary="

    .line 332
    .line 333
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v6, " secondary="

    .line 340
    .line 341
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string v8, " tertiary="

    .line 348
    .line 349
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    const-string v8, "NOWBAR primary="

    .line 365
    .line 366
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string v6, "NOWBAR icon="

    .line 388
    .line 389
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v6

    .line 396
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    const/4 v4, 0x0

    .line 407
    aget-object v6, v5, v4

    .line 408
    .line 409
    iget-object v6, v6, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 410
    .line 411
    if-eqz v6, :cond_4

    .line 412
    .line 413
    new-instance v6, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    const-string v7, "ACTION title="

    .line 416
    .line 417
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    aget-object v7, v5, v4

    .line 421
    .line 422
    iget-object v7, v7, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 423
    .line 424
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    const-string v7, " actionIntent="

    .line 428
    .line 429
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    aget-object v7, v5, v4

    .line 433
    .line 434
    iget-object v4, v7, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 435
    .line 436
    invoke-virtual {v4}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    :cond_4
    new-instance v4, Landroid/content/Intent;

    .line 451
    .line 452
    const-string v6, "br.ttl.start.navigation"

    .line 453
    .line 454
    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    const-string v6, "android"

    .line 458
    .line 459
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    .line 461
    .line 462
    const-string/jumbo v6, "ttl-noti-pkg"

    .line 463
    .line 464
    .line 465
    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    .line 467
    .line 468
    const-string/jumbo v0, "ttl-noti-id"

    .line 469
    .line 470
    .line 471
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 472
    .line 473
    .line 474
    const-string/jumbo v0, "ttl-noti-userid"

    .line 475
    .line 476
    .line 477
    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 478
    .line 479
    .line 480
    const/4 v2, 0x1

    .line 481
    invoke-virtual {v4, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    new-instance v2, Landroid/net/Uri$Builder;

    .line 486
    .line 487
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 488
    .line 489
    .line 490
    const-string v3, "contextualinsight"

    .line 491
    .line 492
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    const-string v3, "invoke.broadcast"

    .line 497
    .line 498
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    const-string v3, "intent"

    .line 503
    .line 504
    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    const-string/jumbo v2, "receiverPermission"

    .line 509
    .line 510
    .line 511
    const/4 v3, 0x0

    .line 512
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    const/4 v2, 0x0

    .line 524
    aget-object v0, v5, v2

    .line 525
    .line 526
    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 527
    .line 528
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    const/4 v2, 0x1

    .line 533
    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    .line 538
    .line 539
    const-string/jumbo v3, "translatedUriString="

    .line 540
    .line 541
    .line 542
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    const-string v3, "Nowbar Icon uri="

    .line 562
    .line 563
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .line 575
    .line 576
    new-instance v2, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument$Builder;

    .line 577
    .line 578
    invoke-direct {v2}, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument$Builder;-><init>()V

    .line 579
    .line 580
    .line 581
    filled-new-array {v1}, [Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    const-string/jumbo v3, "url"

    .line 586
    .line 587
    .line 588
    invoke-virtual {v2, v3, v1}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v2}, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument$Builder;->build()Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    new-instance v2, Lcom/samsung/android/sdk/aisuggestion/schema/google/TimeToLeaveSuggestionDataDocument$Builder;

    .line 596
    .line 597
    const-string v4, "ContextualInsightData:TimeToLeaveSuggestion"

    .line 598
    .line 599
    const-string v6, "ContextualInsightData"

    .line 600
    .line 601
    move-object/from16 v7, v20

    .line 602
    .line 603
    invoke-direct {v2, v6, v7, v4}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v4

    .line 610
    const-string v8, "insightMessageTitle"

    .line 611
    .line 612
    filled-new-array {v4}, [Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v4

    .line 616
    invoke-virtual {v2, v8, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 617
    .line 618
    .line 619
    const-string v4, "insight message description"

    .line 620
    .line 621
    filled-new-array {v4}, [Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    const-string v8, "insightMessageDescription"

    .line 626
    .line 627
    invoke-virtual {v2, v8, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 628
    .line 629
    .line 630
    const-string/jumbo v4, "reason description"

    .line 631
    .line 632
    .line 633
    filled-new-array {v4}, [Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    const-string/jumbo v8, "reasonDescription"

    .line 638
    .line 639
    .line 640
    invoke-virtual {v2, v8, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 641
    .line 642
    .line 643
    const-wide/16 v12, 0x3

    .line 644
    .line 645
    const/4 v4, 0x1

    .line 646
    new-array v8, v4, [J

    .line 647
    .line 648
    const/4 v4, 0x0

    .line 649
    aput-wide v12, v8, v4

    .line 650
    .line 651
    const-string/jumbo v4, "schemaVersion"

    .line 652
    .line 653
    .line 654
    invoke-virtual {v2, v4, v8}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyLong(Ljava/lang/String;[J)Landroid/app/appsearch/GenericDocument$Builder;

    .line 655
    .line 656
    .line 657
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v8

    .line 661
    const-string/jumbo v10, "scheduleName"

    .line 662
    .line 663
    .line 664
    filled-new-array {v8}, [Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v8

    .line 668
    invoke-virtual {v2, v10, v8}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 669
    .line 670
    .line 671
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v8

    .line 675
    const-string/jumbo v10, "ttlInfo"

    .line 676
    .line 677
    .line 678
    filled-new-array {v8}, [Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v8

    .line 682
    invoke-virtual {v2, v10, v8}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 683
    .line 684
    .line 685
    new-instance v8, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument$Builder;

    .line 686
    .line 687
    invoke-direct {v8}, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument$Builder;-><init>()V

    .line 688
    .line 689
    .line 690
    const/4 v10, 0x0

    .line 691
    aget-object v5, v5, v10

    .line 692
    .line 693
    iget-object v5, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 694
    .line 695
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v5

    .line 699
    filled-new-array {v5}, [Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v5

    .line 703
    const-string/jumbo v10, "name"

    .line 704
    .line 705
    .line 706
    invoke-virtual {v8, v10, v5}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 707
    .line 708
    .line 709
    filled-new-array {v0}, [Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    const-string/jumbo v5, "uri"

    .line 714
    .line 715
    .line 716
    invoke-virtual {v8, v5, v0}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 717
    .line 718
    .line 719
    const/4 v11, 0x1

    .line 720
    new-array v0, v11, [Landroid/app/appsearch/GenericDocument;

    .line 721
    .line 722
    const/4 v14, 0x0

    .line 723
    aput-object v1, v0, v14

    .line 724
    .line 725
    const-string v1, "icon"

    .line 726
    .line 727
    invoke-virtual {v8, v1, v0}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v8}, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument$Builder;->build()Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    new-array v8, v11, [Landroid/app/appsearch/GenericDocument;

    .line 735
    .line 736
    aput-object v0, v8, v14

    .line 737
    .line 738
    const-string v0, "directionsAction"

    .line 739
    .line 740
    invoke-virtual {v2, v0, v8}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v2}, Lcom/samsung/android/sdk/aisuggestion/schema/google/TimeToLeaveSuggestionDataDocument$Builder;->build()Lcom/samsung/android/sdk/aisuggestion/schema/google/TimeToLeaveSuggestionDataDocument;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    move-object/from16 v8, p0

    .line 748
    .line 749
    :try_start_0
    iget-object v0, v8, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;->mContext:Landroid/content/Context;

    .line 750
    .line 751
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    const/4 v11, 0x0

    .line 764
    invoke-virtual {v0, v11}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    move-object v11, v0

    .line 773
    goto :goto_1

    .line 774
    :catch_0
    move-exception v0

    .line 775
    new-instance v11, Ljava/lang/StringBuilder;

    .line 776
    .line 777
    const-string v14, "Exception occurred while setting currentLocale: "

    .line 778
    .line 779
    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    .line 791
    .line 792
    move-object v11, v7

    .line 793
    :goto_1
    new-instance v14, Landroid/content/Intent;

    .line 794
    .line 795
    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 796
    .line 797
    .line 798
    const-string v0, "android.intent.action.MAIN"

    .line 799
    .line 800
    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    .line 802
    .line 803
    const-string v0, "com.google.android.apps.maps"

    .line 804
    .line 805
    invoke-virtual {v14, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    .line 807
    .line 808
    const-string/jumbo v15, "what"

    .line 809
    .line 810
    .line 811
    const-string/jumbo v12, "some value"

    .line 812
    .line 813
    .line 814
    invoke-virtual {v14, v15, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    .line 816
    .line 817
    :try_start_1
    iget-object v12, v8, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;->mContext:Landroid/content/Context;

    .line 818
    .line 819
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 820
    .line 821
    .line 822
    move-result-object v12

    .line 823
    const/4 v13, 0x0

    .line 824
    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 825
    .line 826
    .line 827
    move-result-object v12

    .line 828
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 829
    .line 830
    const-string v13, "android.resource://%s/%d"

    .line 831
    .line 832
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 833
    .line 834
    .line 835
    move-result-object v12

    .line 836
    filled-new-array {v0, v12}, [Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 844
    goto :goto_2

    .line 845
    :catch_1
    move-exception v0

    .line 846
    new-instance v12, Ljava/lang/StringBuilder;

    .line 847
    .line 848
    const-string v13, "Exception occurred while setting appIconResource: "

    .line 849
    .line 850
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    .line 862
    .line 863
    move-object v0, v7

    .line 864
    :goto_2
    new-instance v7, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument$Builder;

    .line 865
    .line 866
    invoke-direct {v7}, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument$Builder;-><init>()V

    .line 867
    .line 868
    .line 869
    filled-new-array {v0}, [Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    invoke-virtual {v7, v3, v0}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v7}, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument$Builder;->build()Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    new-instance v3, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument$Builder;

    .line 881
    .line 882
    invoke-direct {v3}, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument$Builder;-><init>()V

    .line 883
    .line 884
    .line 885
    const-string v7, "Tap Action"

    .line 886
    .line 887
    filled-new-array {v7}, [Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v7

    .line 891
    invoke-virtual {v3, v10, v7}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 892
    .line 893
    .line 894
    const/4 v7, 0x1

    .line 895
    new-array v9, v7, [Landroid/app/appsearch/GenericDocument;

    .line 896
    .line 897
    const/4 v10, 0x0

    .line 898
    aput-object v0, v9, v10

    .line 899
    .line 900
    invoke-virtual {v3, v1, v9}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 901
    .line 902
    .line 903
    invoke-virtual {v14, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    filled-new-array {v0}, [Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    invoke-virtual {v3, v5, v0}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 912
    .line 913
    .line 914
    invoke-virtual {v3}, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument$Builder;->build()Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    new-instance v1, Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument$Builder;

    .line 919
    .line 920
    move-object/from16 v5, v18

    .line 921
    .line 922
    move-object/from16 v3, v19

    .line 923
    .line 924
    invoke-direct {v1, v6, v3, v5}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    .line 926
    .line 927
    new-array v5, v7, [J

    .line 928
    .line 929
    const-wide/16 v6, 0x3

    .line 930
    .line 931
    const/4 v9, 0x0

    .line 932
    aput-wide v6, v5, v9

    .line 933
    .line 934
    invoke-virtual {v1, v4, v5}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyLong(Ljava/lang/String;[J)Landroid/app/appsearch/GenericDocument$Builder;

    .line 935
    .line 936
    .line 937
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 938
    .line 939
    .line 940
    move-result-wide v4

    .line 941
    invoke-virtual {v1, v4, v5}, Landroid/app/appsearch/GenericDocument$Builder;->setCreationTimestampMillis(J)Landroid/app/appsearch/GenericDocument$Builder;

    .line 942
    .line 943
    .line 944
    move-result-object v1

    .line 945
    check-cast v1, Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument$Builder;

    .line 946
    .line 947
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 948
    .line 949
    const-wide/16 v5, 0xa

    .line 950
    .line 951
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 952
    .line 953
    .line 954
    move-result-wide v9

    .line 955
    invoke-virtual {v1, v9, v10}, Landroid/app/appsearch/GenericDocument$Builder;->setTtlMillis(J)Landroid/app/appsearch/GenericDocument$Builder;

    .line 956
    .line 957
    .line 958
    move-result-object v1

    .line 959
    check-cast v1, Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument$Builder;

    .line 960
    .line 961
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 962
    .line 963
    .line 964
    const/4 v4, 0x1

    .line 965
    new-array v5, v4, [Landroid/app/appsearch/GenericDocument;

    .line 966
    .line 967
    const/4 v6, 0x0

    .line 968
    aput-object v2, v5, v6

    .line 969
    .line 970
    const-string v2, "appDomain"

    .line 971
    .line 972
    invoke-virtual {v1, v2, v5}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 973
    .line 974
    .line 975
    const-string v2, "currentLocale"

    .line 976
    .line 977
    filled-new-array {v11}, [Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v5

    .line 981
    invoke-virtual {v1, v2, v5}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 982
    .line 983
    .line 984
    new-array v2, v4, [Landroid/app/appsearch/GenericDocument;

    .line 985
    .line 986
    aput-object v0, v2, v6

    .line 987
    .line 988
    const-string/jumbo v0, "tapAction"

    .line 989
    .line 990
    .line 991
    invoke-virtual {v1, v0, v2}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 992
    .line 993
    .line 994
    invoke-virtual {v1}, Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument$Builder;->build()Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument;

    .line 995
    .line 996
    .line 997
    move-result-object v0

    .line 998
    new-instance v1, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    .line 999
    .line 1000
    invoke-direct {v1}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    .line 1001
    .line 1002
    .line 1003
    new-array v2, v4, [Landroid/app/appsearch/GenericDocument;

    .line 1004
    .line 1005
    aput-object v0, v2, v6

    .line 1006
    .line 1007
    invoke-virtual {v1, v2}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments([Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v0

    .line 1011
    invoke-virtual {v0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v0

    .line 1015
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    .line 1016
    .line 1017
    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1018
    .line 1019
    .line 1020
    new-instance v2, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda1;

    .line 1021
    .line 1022
    invoke-direct {v2, v8, v1, v4}, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;Ljava/util/concurrent/CompletableFuture;I)V

    .line 1023
    .line 1024
    .line 1025
    move-object/from16 v4, p3

    .line 1026
    .line 1027
    move-object/from16 v5, v17

    .line 1028
    .line 1029
    invoke-virtual {v5, v0, v4, v2}, Landroid/app/appsearch/AppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 1030
    .line 1031
    .line 1032
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1033
    .line 1034
    const-wide/16 v6, 0xa

    .line 1035
    .line 1036
    invoke-virtual {v1, v6, v7, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    :goto_3
    iget-object v0, v8, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;->enqueuedNotifications:Ljava/util/Set;

    .line 1040
    .line 1041
    check-cast v0, Ljava/util/HashSet;

    .line 1042
    .line 1043
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v5}, Landroid/app/appsearch/AppSearchSession;->close()V

    .line 1047
    .line 1048
    .line 1049
    return-void
.end method

.method public final searchDocument()V
    .locals 6

    .line 1
    const-string v0, "TimeToLeaveHelper"

    .line 2
    .line 3
    const-string v1, "[SEARCH]"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper;->createAppSearchSession(Ljava/util/concurrent/ExecutorService;)Landroid/app/appsearch/AppSearchSession;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v2, "Searching documents"

    .line 17
    .line 18
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v3, Landroid/app/appsearch/SearchSpec$Builder;

    .line 27
    .line 28
    invoke-direct {v3}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v4, "ContextualInsightData"

    .line 32
    .line 33
    filled-new-array {v4}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterNamespaces([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-virtual {v3, v4}, Landroid/app/appsearch/SearchSpec$Builder;->setNumericSearchEnabled(Z)Landroid/app/appsearch/SearchSpec$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/16 v4, 0xa

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Landroid/app/appsearch/SearchSpec$Builder;->setSnippetCount(I)Landroid/app/appsearch/SearchSpec$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    .line 57
    .line 58
    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v5, ""

    .line 62
    .line 63
    invoke-virtual {p0, v5, v3}, Landroid/app/appsearch/AppSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    new-instance v5, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda4;

    .line 68
    .line 69
    invoke-direct {v5, v4}, Lcom/android/server/notification/sec/timetoleave/TimeToLeaveHelper$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v1, v5}, Landroid/app/appsearch/SearchResults;->getNextPage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/util/List;

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-ge v3, v4, :cond_0

    .line 87
    .line 88
    const-string v4, "index: "

    .line 89
    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v4, ", "

    .line 97
    .line 98
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Landroid/app/appsearch/SearchResult;

    .line 106
    .line 107
    invoke-virtual {v4}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v4, "\n"

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    const-string v1, "Finish searching documents"

    .line 123
    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v3, "SEARCH RESULT = "

    .line 130
    .line 131
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSession;->close()V

    .line 149
    .line 150
    .line 151
    return-void
.end method
