.class public final Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;
.super Lcom/android/server/SystemService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final ANALYTICS_SERVICE:Ljava/lang/String; = "knox_analytics"

.field public static final EVENT_FEATURE:Ljava/lang/String; = "KNOX_ANALYTICS"

.field public static final EVENT_SCHEMA_VERSION:I = 0x1

.field public static final KNOX_ANALYTICS_SYSTEM_SERVICE_VERSION:Ljava/lang/String; = "v1.0.0"

.field public static final ONE_MINUTE_IN_MS:I = 0xea60

.field public static final PACKAGE_NAME_PARAMETER_NAME:Ljava/lang/String; = "pN"

.field public static final PERMISSION_TYPE_PARAMETER_NAME:Ljava/lang/String; = "prm"

.field public static final PUB_KEY_MD5_PARAMETER_NAME:Ljava/lang/String; = "pkMD5"

.field public static final PUB_KEY_SHA256_PARAMETER_NAME:Ljava/lang/String; = "pkSHA256"

.field public static final SERVICE_ACTIVATION_EVENT_NAME:Ljava/lang/String; = "activationChanged"

.field public static final STATUS_CHANGED_EVENT_NAME:Ljava/lang/String; = "statusChanged"

.field public static final STATUS_PARAMETER_NAME:Ljava/lang/String; = "st"

.field public static final TAG:Ljava/lang/String; = "[KnoxAnalytics] KnoxAnalyticsSystemService"

.field public static final TRIGGER_ELM:I = 0x0

.field public static final TRIGGER_EVENT_NAME:Ljava/lang/String; = "serviceChanged"

.field public static final TRIGGER_PARAMETER_NAME:Ljava/lang/String; = "srv"


# instance fields
.field public mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

.field public mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

.field public final mBootCompletedLock:Ljava/lang/Object;

.field public mBootPhase:I

.field public mContext:Landroid/content/Context;

.field public mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

.field public mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

.field public mImpl:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

.field public mIsSystemServiceRunning:Z

.field public final mSystemServiceRunningLock:Ljava/lang/Object;

.field public mUserManager:Landroid/os/UserManager;

.field public final mUserUnlockStatusLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    .line 6
    .line 7
    const/16 v0, 0x3e8

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootPhase:I

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootCompletedLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mSystemServiceRunningLock:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/Object;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserUnlockStatusLock:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    .line 38
    .line 39
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "Constructor()"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const-string/jumbo v0, "user"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/os/UserManager;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserManager:Landroid/os/UserManager;

    .line 58
    .line 59
    return-void
.end method

.method public static runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$8;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$8;-><init>(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Void;

    .line 10
    .line 11
    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method


# virtual methods
.method public final broadcastAnalyticsStatus(ZZ)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "broadcastAnalyticsStatus()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserManager:Landroid/os/UserManager;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p0, p1, p2}, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->broadcastAnalyticsStatus(Landroid/content/Context;ZZ)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;ZZ)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final broadcastKAStatusToMDM(ZZZ)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "broadcastKAStatusToMDM()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserManager:Landroid/os/UserManager;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->broadcastKAStatusToMDM(Landroid/content/Context;ZZZ)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;ZZZ)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final checkVersioningBlobWhenBootCompleted()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkVersioningBlobWhenBootCompleted()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final deinitializeDatabaseSizeObserver()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "deinitializeDatabaseSizeObserver()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->stop()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final initializeDatabaseSizeObserver()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "initializeDatabaseSizeObserver()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->start()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final initializeEventQueue()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "initializeEventQueue()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/analytics/service/EventQueue;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->start()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final logActivationEventAfterStart()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "logActivationEventAfterStart()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$7;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$7;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final logActivationUpdateEvent(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "logActivationUpdateEvent("

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ")"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-boolean v1, v1, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 39
    .line 40
    const-string v1, "KNOX_ANALYTICS"

    .line 41
    .line 42
    const-string v2, "activationChanged"

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v1, "st"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v3, 0x2

    .line 60
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    :goto_1
    const-string p0, "logActivationUpdateEvent(): EventQueue not started!"

    .line 65
    .line 66
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final logDeactivationEvent()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "Won\'t log deactivation because it is already off!"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logActivationUpdateEvent(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final logStatusChangedEvent(IZLjava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "logStatusChangedEvent( "

    .line 4
    .line 5
    const-string v2, ", "

    .line 6
    .line 7
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v3, ")"

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 31
    .line 32
    const-string/jumbo v1, "statusChanged"

    .line 33
    .line 34
    .line 35
    const-string v4, "KNOX_ANALYTICS"

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    invoke-direct {v0, v4, v5, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v1, "srv"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v1, "st"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    if-eqz p3, :cond_4

    .line 54
    .line 55
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_4

    .line 60
    .line 61
    const-string/jumbo p2, "pN"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/utils/Utils;->standardPermissions:[Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p2, p3, v4}, Lcom/android/server/enterprise/utils/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    sget-object v6, Lcom/android/server/enterprise/utils/Utils;->customPermissions:[Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {p2, p3, v6}, Lcom/android/server/enterprise/utils/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    sget-object v7, Lcom/android/server/enterprise/utils/Utils;->premiumPermissions:[Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {p2, p3, v7}, Lcom/android/server/enterprise/utils/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    if-eqz v4, :cond_3

    .line 89
    .line 90
    if-nez v6, :cond_1

    .line 91
    .line 92
    if-nez p2, :cond_0

    .line 93
    .line 94
    move v1, v5

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    const/4 v1, 0x2

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    if-nez p2, :cond_2

    .line 99
    .line 100
    const/4 v1, 0x3

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const/4 v1, 0x4

    .line 103
    goto :goto_0

    .line 104
    :catch_0
    const-string p2, "EnterpriseUtils"

    .line 105
    .line 106
    const-string v4, "NameNotFoundException"

    .line 107
    .line 108
    invoke-static {p2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_0
    const-string/jumbo p2, "prm"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    const/4 p2, 0x0

    .line 118
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    invoke-static {v1, p3}, Lcom/android/server/enterprise/utils/Utils;->getApplicationPubKeyMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 121
    .line 122
    .line 123
    move-result-object v1
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    .line 124
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    invoke-static {v4, p3}, Lcom/android/server/enterprise/utils/Utils;->getApplicationSignaturesSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 127
    .line 128
    .line 129
    move-result-object p2
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    goto :goto_2

    .line 131
    :catch_1
    move-exception v4

    .line 132
    goto :goto_1

    .line 133
    :catch_2
    move-exception v4

    .line 134
    move-object v1, p2

    .line 135
    :goto_1
    sget-object v6, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 136
    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v8, "Exception "

    .line 140
    .line 141
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-static {v6, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :goto_2
    if-eqz v1, :cond_4

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-lez v4, :cond_4

    .line 165
    .line 166
    if-eqz p2, :cond_4

    .line 167
    .line 168
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-lez v4, :cond_4

    .line 173
    .line 174
    sget-object v4, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 175
    .line 176
    const-string v6, "log pubkey( "

    .line 177
    .line 178
    invoke-static {p1, v6, v2, p3, v2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {v4, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string/jumbo p1, "pkMD5"

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p3

    .line 208
    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-string/jumbo p1, "pkSHA256"

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 222
    .line 223
    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method public final logStatusChangedEventAfterStart(IZLjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "logStatusChangedEventAfterStart()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logStatusChangedEvent(IZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final logTriggerEvent(IZLjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "logTriggerEvent( "

    .line 4
    .line 5
    const-string v2, ", "

    .line 6
    .line 7
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ")"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 31
    .line 32
    const-string/jumbo v1, "serviceChanged"

    .line 33
    .line 34
    .line 35
    const-string v2, "KNOX_ANALYTICS"

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v1, "srv"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v1, "st"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    if-eqz p3, :cond_0

    .line 54
    .line 55
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_0

    .line 60
    .line 61
    if-nez p1, :cond_0

    .line 62
    .line 63
    const-string/jumbo p1, "pN"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 70
    .line 71
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final logTriggerEventAfterStart(IZLjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "logTriggerEventAfterStart()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logTriggerEvent(IZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$5;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$5;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootPhase:I

    .line 2
    .line 3
    const/16 v0, 0x1f4

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x3e8

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string/jumbo v1, "onBootPhase(PHASE_BOOT_COMPLETED)"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootCompletedLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootCompletedLock:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0

    .line 33
    :cond_1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string/jumbo v1, "onBootPhase(PHASE_SYSTEM_SERVICES_READY)"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->onBootPhase(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "onStart() knox_analytics"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->registerObserver(Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, " onUserUnlocking()"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserUnlockStatusLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserUnlockStatusLock:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 14
    .line 15
    .line 16
    monitor-exit p1

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final startSystemService()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "startSystemService()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "startSystemService(): can\'t start, already running!"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->initializeEventQueue()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mImpl:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string/jumbo v1, "startSystemService(): new Impl"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 42
    .line 43
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mImpl:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    .line 47
    .line 48
    const-string v1, "knox_analytics"

    .line 49
    .line 50
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    const-string v1, "knox_analytics_proxy"

    .line 63
    .line 64
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->checkVersioningBlobWhenBootCompleted()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->notifyVersioningCompleted()V

    .line 74
    .line 75
    .line 76
    :goto_0
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->initializeDatabaseSizeObserver()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final stopSystemService()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "stopSystemService()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "stopSystemService(): can\'t stop, already stopped!"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->deinitializeDatabaseSizeObserver()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logDeactivationEvent()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    .line 28
    .line 29
    return-void
.end method
