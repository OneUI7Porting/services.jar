.class public final Lcom/android/server/audio/AudioService$RestorableParameters;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mMap:Ljava/util/Map;


# virtual methods
.method public final restoreAll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    .line 5
    .line 6
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda3;

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda3;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method
