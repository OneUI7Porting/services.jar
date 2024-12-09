.class public final Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFeatureUpdateComplete(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    iget-object p2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->abComment:Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput v1, v0, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->size:I

    .line 34
    .line 35
    iput v1, v0, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->front:I

    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    iput v1, v0, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->rear:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-boolean p2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    iget-object p2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->replaceParamInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    sget-boolean p2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 57
    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    iget-object p2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->loadParams(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-lez p2, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateFeature(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    return-void
.end method

.method public final onSignalFire(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHttpConnector:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatureServiceCallBack:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 6
    .line 7
    const-class v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    sget-object v2, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mCurrentBroadcastFeature:Lcom/samsung/android/server/dynamicfeature/DFeature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    const-string v1, "dynamicfeature_HttpConnector"

    .line 14
    .line 15
    iget-object v3, v0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    new-instance v4, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    invoke-direct {v4, v0, v2, p1}, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;Lcom/samsung/android/server/dynamicfeature/DFeature;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    const-string p1, "Fail to commit error log"

    .line 39
    .line 40
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string/jumbo v0, "requestSendErrorConnection error "

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p1, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_2
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v1

    .line 64
    throw p0
.end method
