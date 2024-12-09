.class public final Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field public static final NUMBER_OF_CORES:I

.field public static final sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;


# instance fields
.field public mCallback:Lcom/samsung/android/localeoverlaymanager/ExtractionCompleteCallback;

.field public mContextRef:Ljava/lang/ref/WeakReference;

.field public final mExtractedLocales:Ljava/util/Set;

.field public mForceEnable:Z

.field public mLocalesToAdd:Ljava/util/Set;

.field public mShouldReplace:Z

.field public final mTargetPackages:Ljava/util/List;

.field public final mTasks:Ljava/util/Queue;

.field public final mTasksWorkQueue:Ljava/util/concurrent/BlockingQueue;

.field public final mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->NUMBER_OF_CORES:I

    .line 10
    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    sput-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mExtractedLocales:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 19
    .line 20
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v7, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasksWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasks:Ljava/util/Queue;

    .line 31
    .line 32
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    .line 34
    const-wide/16 v4, 0x1

    .line 35
    .line 36
    sget-object v6, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    sget v3, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->NUMBER_OF_CORES:I

    .line 39
    .line 40
    move-object v1, v0

    .line 41
    move v2, v3

    .line 42
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final extractLocaleApks(Ljava/util/Set;Ljava/util/Set;Landroid/content/Context;Z)V
    .locals 6

    .line 1
    const-string v0, "ApkExtractionManager"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "extractLocaleApks() called with: targetPackages = ["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "], context = ["

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "]"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    .line 34
    .line 35
    check-cast v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    const-string v0, "ApkExtractionManager"

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "Cancelling extraction for packages: "

    .line 49
    .line 50
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v0, v2}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 66
    .line 67
    iget-object v2, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasksWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 68
    .line 69
    check-cast v2, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    new-array v3, v2, [Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;

    .line 76
    .line 77
    iget-object v4, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasksWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 78
    .line 79
    check-cast v4, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 80
    .line 81
    invoke-virtual {v4, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    monitor-enter v0

    .line 85
    move v4, v1

    .line 86
    :goto_0
    if-ge v4, v2, :cond_0

    .line 87
    .line 88
    :try_start_0
    aget-object v5, v3, v4

    .line 89
    .line 90
    iget-object v5, v5, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget-object v5, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 96
    .line 97
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :try_start_1
    monitor-exit v5

    .line 99
    add-int/lit8 v4, v4, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    throw p0

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    goto :goto_1

    .line 107
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    .line 109
    .line 110
    check-cast v0, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    throw p0

    .line 118
    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 119
    .line 120
    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 124
    .line 125
    iget-object p3, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    .line 126
    .line 127
    check-cast p3, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
    .line 131
    .line 132
    iget-object p3, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mExtractedLocales:Ljava/util/Set;

    .line 133
    .line 134
    check-cast p3, Ljava/util/HashSet;

    .line 135
    .line 136
    invoke-virtual {p3}, Ljava/util/HashSet;->clear()V

    .line 137
    .line 138
    .line 139
    iput-object p2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mLocalesToAdd:Ljava/util/Set;

    .line 140
    .line 141
    iput-boolean p4, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mShouldReplace:Z

    .line 142
    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mForceEnable:Z

    .line 144
    .line 145
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-eqz p2, :cond_5

    .line 154
    .line 155
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Ljava/lang/String;

    .line 160
    .line 161
    const-string/jumbo p3, "startExtraction() called with: targetPackage = ["

    .line 162
    .line 163
    .line 164
    const-string p4, "]"

    .line 165
    .line 166
    const-string v0, "ApkExtractionManager"

    .line 167
    .line 168
    invoke-static {p3, p2, p4, v0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sget-object p3, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 172
    .line 173
    iget-object p4, p3, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasks:Ljava/util/Queue;

    .line 174
    .line 175
    check-cast p4, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 176
    .line 177
    invoke-virtual {p4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p4

    .line 181
    check-cast p4, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 182
    .line 183
    if-nez p4, :cond_2

    .line 184
    .line 185
    new-instance p4, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 186
    .line 187
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 188
    .line 189
    .line 190
    new-instance v1, Ljava/util/HashSet;

    .line 191
    .line 192
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 193
    .line 194
    .line 195
    iput-object v1, p4, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractedLocaleApks:Ljava/util/Set;

    .line 196
    .line 197
    new-instance v1, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;

    .line 198
    .line 199
    new-instance v2, Lcom/samsung/android/localeoverlaymanager/SevenZFileCopier;

    .line 200
    .line 201
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-direct {v1, p4, v2}, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;-><init>(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;Lcom/samsung/android/localeoverlaymanager/SevenZFileCopier;)V

    .line 205
    .line 206
    .line 207
    iput-object v1, p4, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractorRunnable:Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;

    .line 208
    .line 209
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 210
    .line 211
    if-eqz v1, :cond_3

    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, Landroid/content/Context;

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_3
    const/4 v1, 0x0

    .line 221
    :goto_4
    if-eqz v1, :cond_4

    .line 222
    .line 223
    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mLocalesToAdd:Ljava/util/Set;

    .line 224
    .line 225
    if-eqz v2, :cond_4

    .line 226
    .line 227
    iget-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mShouldReplace:Z

    .line 228
    .line 229
    iput-object p2, p4, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mTargetPackage:Ljava/lang/String;

    .line 230
    .line 231
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 232
    .line 233
    invoke-direct {p2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    iput-object p2, p4, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 237
    .line 238
    iput-object v2, p4, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mLocaleLanguages:Ljava/util/Set;

    .line 239
    .line 240
    iput-boolean v0, p4, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mShouldReplace:Z

    .line 241
    .line 242
    iget-object p2, p4, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractedLocaleApks:Ljava/util/Set;

    .line 243
    .line 244
    check-cast p2, Ljava/util/HashSet;

    .line 245
    .line 246
    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 247
    .line 248
    .line 249
    iget-object p2, p3, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 250
    .line 251
    iget-object p3, p4, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractorRunnable:Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;

    .line 252
    .line 253
    invoke-virtual {p2, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string/jumbo p3, "startExtraction: Context is "

    .line 260
    .line 261
    .line 262
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string p3, ", localesToAdd is "

    .line 269
    .line 270
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    iget-object p3, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mLocalesToAdd:Ljava/util/Set;

    .line 274
    .line 275
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    goto/16 :goto_3

    .line 286
    .line 287
    :cond_5
    return-void
.end method

.method public final declared-synchronized handleState(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;I)V
    .locals 3

    .line 1
    const-string v0, "handleState() called with: extractionTask = ["

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "ApkExtractionManager"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, "], state = ["

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "]"

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    if-ne p2, v0, :cond_0

    .line 36
    .line 37
    iget-object p2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mExtractedLocales:Ljava/util/Set;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractedLocaleApks:Ljava/util/Set;

    .line 40
    .line 41
    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->onFinishTask(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit p0

    .line 53
    throw p1
.end method

.method public final declared-synchronized onFinishTask(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mTargetPackage:Ljava/lang/String;

    .line 5
    .line 6
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    .line 12
    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mCallback:Lcom/samsung/android/localeoverlaymanager/ExtractionCompleteCallback;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mExtractedLocales:Ljava/util/Set;

    .line 26
    .line 27
    iget-boolean v2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mForceEnable:Z

    .line 28
    .line 29
    check-cast v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->onExtractionComplete(Ljava/util/Set;Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasks:Ljava/util/Queue;

    .line 38
    .line 39
    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit p0

    .line 47
    throw p1
.end method
