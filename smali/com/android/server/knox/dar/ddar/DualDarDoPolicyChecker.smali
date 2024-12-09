.class public final Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static sContext:Landroid/content/Context;

.field public static sInstance:Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;


# instance fields
.field public skippedPackages:Ljava/util/List;


# direct methods
.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->sContext:Landroid/content/Context;

    .line 5
    .line 6
    sget-object p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->sInstance:Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    new-instance p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->skippedPackages:Ljava/util/List;

    .line 21
    .line 22
    sput-object p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->sInstance:Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->sInstance:Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-object p0

    .line 31
    :goto_1
    monitor-exit v0

    .line 32
    throw p0
.end method
