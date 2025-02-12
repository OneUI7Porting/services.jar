.class public final Lcom/android/server/chimera/RepositoryFactory;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field static sInstance:Lcom/android/server/chimera/RepositoryFactory;


# instance fields
.field mSettingRepository:Lcom/android/server/chimera/SettingRepository;

.field mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public static declared-synchronized getInstance()Lcom/android/server/chimera/RepositoryFactory;
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/chimera/RepositoryFactory;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/chimera/RepositoryFactory;->sInstance:Lcom/android/server/chimera/RepositoryFactory;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/chimera/RepositoryFactory;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-object v2, v1, Lcom/android/server/chimera/RepositoryFactory;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 15
    .line 16
    iput-object v2, v1, Lcom/android/server/chimera/RepositoryFactory;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 17
    .line 18
    sput-object v1, Lcom/android/server/chimera/RepositoryFactory;->sInstance:Lcom/android/server/chimera/RepositoryFactory;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/chimera/RepositoryFactory;->sInstance:Lcom/android/server/chimera/RepositoryFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object v1

    .line 27
    :goto_1
    monitor-exit v0

    .line 28
    throw v1
.end method
