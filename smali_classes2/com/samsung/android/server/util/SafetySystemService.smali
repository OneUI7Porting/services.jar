.class public abstract Lcom/samsung/android/server/util/SafetySystemService;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public static getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/util/SafetySystemService$LazyHolder;->sSingleton:Lcom/samsung/android/server/util/SafetySystemService$Manager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mSystemContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, " should be called after system ready."

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "SafetySystemService"

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0

    .line 33
    throw p0
.end method
