.class public final Lcom/android/server/integrity/AppIntegrityManagerService;
.super Lcom/android/server/SystemService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 9

    .line 1
    iget-object v1, p0, Lcom/android/server/integrity/AppIntegrityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->PACKAGE_INSTALLER:Ljava/util/Set;

    .line 4
    .line 5
    const-string v0, "AppIntegrityManagerServiceHandler"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v7, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    .line 12
    .line 13
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 20
    .line 21
    new-instance v3, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    const-class v4, Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    .line 27
    .line 28
    monitor-enter v4

    .line 29
    :try_start_0
    new-instance v5, Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    .line 30
    .line 31
    invoke-static {}, Lcom/android/server/integrity/IntegrityFileManager;->getInstance()Lcom/android/server/integrity/IntegrityFileManager;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-direct {v5, v6}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;-><init>(Lcom/android/server/integrity/IntegrityFileManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit v4

    .line 39
    invoke-static {}, Lcom/android/server/integrity/IntegrityFileManager;->getInstance()Lcom/android/server/integrity/IntegrityFileManager;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    move-object v0, v7

    .line 48
    move-object v4, v5

    .line 49
    move-object v5, v6

    .line 50
    move-object v6, v8

    .line 51
    invoke-direct/range {v0 .. v6}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/integrity/engine/RuleEvaluationEngine;Lcom/android/server/integrity/IntegrityFileManager;Landroid/os/Handler;)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v0, "app_integrity"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0, v7}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    monitor-exit v4

    .line 63
    throw p0
.end method
