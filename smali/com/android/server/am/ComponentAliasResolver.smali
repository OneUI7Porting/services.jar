.class public final Lcom/android/server/am/ComponentAliasResolver;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnabledByDeviceConfig:Z

.field public final mFromTo:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public mOverrideString:Ljava/lang/String;

.field public final mPackageMonitor:Lcom/android/server/am/ComponentAliasResolver$1;

.field public mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public static -$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabledByDeviceConfig:Z

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mOverrideString:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/ComponentAliasResolver;->update(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/am/ComponentAliasResolver$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/am/ComponentAliasResolver$1;-><init>(Lcom/android/server/am/ComponentAliasResolver;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "ACTIVITY MANAGER COMPONENT-ALIAS (dumpsys activity component-alias)"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "  Enabled: "

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 16
    .line 17
    .line 18
    const-string v2, "  Aliases:"

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ge v1, v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/content/ComponentName;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroid/content/ComponentName;

    .line 46
    .line 47
    const-string v4, "    "

    .line 48
    .line 49
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v2, " -> "

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 80
    .line 81
    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method public final onSystemReady(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "platform_compat"

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/server/compat/PlatformCompat;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const-string v0, "ComponentAliasResolver"

    .line 17
    .line 18
    const-string v1, "Compat listener set."

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ComponentAliasResolver;->update(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p0
.end method

.method public final update(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-boolean p2, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabledByDeviceConfig:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/am/ComponentAliasResolver;->mOverrideString:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method
