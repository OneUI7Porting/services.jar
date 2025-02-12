.class public final Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public final mBackgroundHandler:Landroid/os/Handler;

.field public final mBindingChecker:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;

.field public final mContext:Landroid/content/Context;

.field public mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

.field public final mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mPackageBroadcastReceiver:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;

.field public final mProxyAgentWrapperLock:Ljava/lang/Object;

.field public final mProxyAgentWrapperMap:Ljava/util/HashMap;

.field public final mRegisteredProxyAgents:Ljava/util/HashMap;

.field public final mRegisteredProxyAgentsLock:Ljava/lang/Object;

.field public final mUserBroadcastReceiver:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;


# direct methods
.method public static -$$Nest$mreConnectAgentsByPkgName(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "DualDARComnService"

    .line 5
    .line 6
    const-string/jumbo v1, "reConnectAgentsByPkgName:: package: "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    new-array v3, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/util/Map$Entry;

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Ljava/lang/String;

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 55
    .line 56
    iget-object v4, v3, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 57
    .line 58
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_0

    .line 67
    .line 68
    invoke-virtual {p0, v3}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string/jumbo v5, "enableReconnectionFlag: "

    .line 77
    .line 78
    .line 79
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    new-array v5, v2, [Ljava/lang/Object;

    .line 90
    .line 91
    const-string v6, "KnoxService::ProxyAgentWrapper"

    .line 92
    .line 93
    invoke-static {v6, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    const/4 v4, 0x1

    .line 97
    iput-boolean v4, v3, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    const-string v3, "DualDARComnService"

    .line 101
    .line 102
    const-string v4, "ProxyAgentWrapper is NULL !"

    .line 103
    .line 104
    new-array v5, v2, [Ljava/lang/Object;

    .line 105
    .line 106
    invoke-static {v3, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    monitor-exit v0

    .line 113
    return-void

    .line 114
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBackgroundHandler:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperLock:Ljava/lang/Object;

    .line 27
    .line 28
    new-instance v1, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 38
    .line 39
    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v1, p0, v2}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;I)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mUserBroadcastReceiver:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;

    .line 46
    .line 47
    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-direct {v1, p0, v2}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;I)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mPackageBroadcastReceiver:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    .line 58
    .line 59
    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 65
    .line 66
    const-string p1, "DualDARComnService"

    .line 67
    .line 68
    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Landroid/os/Looper;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    .line 82
    .line 83
    const-string p1, "DualDARComnService-bgThread"

    .line 84
    .line 85
    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance v1, Landroid/os/Handler;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBackgroundHandler:Landroid/os/Handler;

    .line 99
    .line 100
    new-instance p1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;

    .line 101
    .line 102
    invoke-direct {p1, p0, v0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;)V

    .line 103
    .line 104
    .line 105
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBindingChecker:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;

    .line 106
    .line 107
    const-class p1, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManagerInternal;

    .line 108
    .line 109
    new-instance v0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public static enforceCallingUser()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "DualDARComnService"

    .line 5
    .line 6
    const-string/jumbo v2, "enforceCallingUser"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v2, 0x1482

    .line 21
    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 37
    .line 38
    const-string v1, "Can only be called by system user"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public static findProxyAgentByMetaData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;
    .locals 7

    .line 1
    const-string/jumbo v0, "package:"

    .line 2
    .line 3
    .line 4
    const-string v1, " appInfo.uid:"

    .line 5
    .line 6
    const-string/jumbo v2, "package"

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-wide/16 v3, 0x80

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    :try_start_0
    invoke-interface {v2, p2, v3, v4, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-interface {v2, p2, p0}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    .line 25
    .line 26
    .line 27
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    const/4 v4, 0x0

    .line 29
    const-string v6, "DualDARComnService"

    .line 30
    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :try_start_1
    iget-object p2, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 37
    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    return-object v5

    .line 41
    :cond_1
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget v1, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 58
    .line 59
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    new-array v1, v4, [Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {v6, p3, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    new-instance p3, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 72
    .line 73
    new-instance v1, Landroid/content/ComponentName;

    .line 74
    .line 75
    invoke-direct {v1, v0, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p3, v1, p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;-><init>(Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object p3

    .line 82
    :catch_0
    move-exception p0

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    :goto_0
    return-object v5

    .line 85
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p2, " not found user:"

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    new-array p1, v4, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-static {v6, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    .line 109
    .line 110
    return-object v5

    .line 111
    :goto_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    return-object v5
.end method


# virtual methods
.method public final checkProxyAgentBound(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->findAgent(Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string p0, "DualDARComnService"

    .line 9
    .line 10
    const-string p1, "Registered agent not found"

    .line 11
    .line 12
    new-array v1, v0, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {p0, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 28
    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    const-string p0, "DualDARComnService"

    .line 33
    .line 34
    const-string p1, "Bound agent not found"

    .line 35
    .line 36
    new-array v1, v0, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {p0, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return v0

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isServiceConnected()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

.method public final connectProxyAgentASync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;
    .locals 7

    .line 1
    const-string v0, "Failed to bind to "

    .line 2
    .line 3
    const-string v1, "Proxy Agent is already bound or pending bound: Agent = "

    .line 4
    .line 5
    const-string v2, "DualDARComnService"

    .line 6
    .line 7
    const-string/jumbo v3, "connectProxyAgentASync"

    .line 8
    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    new-array v5, v4, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {v2, v3, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isServiceConnected()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_1

    .line 40
    .line 41
    iget-object v5, v3, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :try_start_1
    iget-boolean v6, v3, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 45
    .line 46
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    if-eqz v6, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->markStale()V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :try_start_4
    throw p0

    .line 64
    :cond_1
    :goto_0
    const-string p0, "DualDARComnService"

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-array v0, v4, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    monitor-exit v2

    .line 86
    return-object v3

    .line 87
    :cond_2
    :goto_1
    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 88
    .line 89
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    invoke-direct {v1, v3, p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->connectAsync()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_3

    .line 99
    .line 100
    const-string p0, "DualDARComnService"

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-array v0, v4, [Ljava/lang/Object;

    .line 111
    .line 112
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    monitor-exit v2

    .line 116
    const/4 p0, 0x0

    .line 117
    return-object p0

    .line 118
    :cond_3
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 119
    .line 120
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    monitor-exit v2

    .line 124
    return-object v1

    .line 125
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    throw p0
.end method

.method public final connectProxyAgentSync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;
    .locals 5

    .line 1
    const-string v0, "DualDARComnService"

    .line 2
    .line 3
    const-string/jumbo v1, "connectProxyAgentSync"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 24
    const/4 v0, 0x0

    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isServiceConnected()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    const-string p0, "DualDARComnService"

    .line 34
    .line 35
    const-string p1, "Proxy Agent is already bound. So Noop"

    .line 36
    .line 37
    new-array v0, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_0
    iget-object v3, v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v3

    .line 46
    :try_start_1
    iget-boolean v4, v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 47
    .line 48
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    const-string p0, "DualDARComnService"

    .line 52
    .line 53
    const-string v3, "Bind Pending. So just wait"

    .line 54
    .line 55
    new-array v4, v2, [Ljava/lang/Object;

    .line 56
    .line 57
    invoke-static {p0, v3, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->connectSync()Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_1

    .line 65
    .line 66
    const-string p0, "DualDARComnService"

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v1, "Failed to bind to "

    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-array v1, v2, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {p0, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_1
    return-object v1

    .line 85
    :cond_2
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperLock:Ljava/lang/Object;

    .line 86
    .line 87
    monitor-enter v4

    .line 88
    :try_start_2
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-ne v1, v3, :cond_3

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->markStale()V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 100
    .line 101
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    :goto_0
    monitor-exit v4

    .line 108
    goto :goto_2

    .line 109
    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    throw p0

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    throw p0

    .line 114
    :cond_4
    :goto_2
    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 115
    .line 116
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    invoke-direct {v1, v3, p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->connectSync()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-nez v3, :cond_5

    .line 126
    .line 127
    const-string p0, "DualDARComnService"

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const-string v1, "Failed to bind to "

    .line 134
    .line 135
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-array v1, v2, [Ljava/lang/Object;

    .line 140
    .line 141
    invoke-static {p0, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    return-object v0

    .line 145
    :cond_5
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperLock:Ljava/lang/Object;

    .line 146
    .line 147
    monitor-enter v2

    .line 148
    :try_start_4
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-eqz v0, :cond_7

    .line 155
    .line 156
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isServiceConnected()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_6

    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 171
    .line 172
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    move-object v1, p0

    .line 177
    check-cast v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :catchall_2
    move-exception p0

    .line 181
    goto :goto_4

    .line 182
    :cond_6
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 183
    .line 184
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_7
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 189
    .line 190
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    :goto_3
    monitor-exit v2

    .line 194
    return-object v1

    .line 195
    :goto_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 196
    throw p0

    .line 197
    :catchall_3
    move-exception p0

    .line 198
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 199
    throw p0
.end method

.method public final deregisterAgent(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "DualDARComnService"

    .line 2
    .line 3
    const-string/jumbo v1, "deregisterAgent"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->enforceCallingUser()V

    .line 13
    .line 14
    .line 15
    const-string v0, "Knox Proxy Agent Not Registered Agent = "

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    const-string p0, "DualDARComnService"

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, "No action taken"

    .line 41
    .line 42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-array v0, v2, [Ljava/lang/Object;

    .line 50
    .line 51
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    monitor-exit v1

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->disconnectProxyAgent(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    monitor-exit v1

    .line 69
    :goto_0
    return-void

    .line 70
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method

.method public final disconnectProxyAgent(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isServiceConnected()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->disconnect()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->markStale()V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_1
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final findAgent(Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final findProxyAgentByAction(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;
    .locals 5

    .line 1
    const-string v0, "Number of Apps with action = "

    .line 2
    .line 3
    const-string/jumbo v1, "findProxyAgentByAction : agent = "

    .line 4
    .line 5
    .line 6
    const-string v2, "User = "

    .line 7
    .line 8
    const-string v3, " packageName = "

    .line 9
    .line 10
    invoke-static {p1, v1, p2, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, " actionName = "

    .line 15
    .line 16
    invoke-static {v1, p3, v2, p4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    new-array v3, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    const-string v4, "DualDARComnService"

    .line 24
    .line 25
    invoke-static {v4, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    .line 30
    .line 31
    invoke-direct {v3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, v3, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, " = "

    .line 56
    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-array v3, v2, [Ljava/lang/Object;

    .line 76
    .line 77
    invoke-static {v4, v0, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-lez v0, :cond_1

    .line 85
    .line 86
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 101
    .line 102
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 103
    .line 104
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_0

    .line 111
    .line 112
    new-instance p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 113
    .line 114
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;-><init>(Landroid/content/ComponentName;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    move-object v1, p0

    .line 124
    goto :goto_0

    .line 125
    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 130
    .line 131
    const-string p0, "Knox Proxy Agent Not Found : for package:"

    .line 132
    .line 133
    const-string p2, " for action:"

    .line 134
    .line 135
    const-string v0, " for user:"

    .line 136
    .line 137
    invoke-static {p0, p3, p2, p4, v0}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    new-array p1, v2, [Ljava/lang/Object;

    .line 149
    .line 150
    invoke-static {v4, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string p1, "Knox Proxy Agent Found =   "

    .line 157
    .line 158
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    new-array p1, v2, [Ljava/lang/Object;

    .line 169
    .line 170
    invoke-static {v4, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :goto_1
    return-object v1
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final registerAgentByAction(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "DualDARComnService"

    .line 2
    .line 3
    const-string/jumbo v1, "registerAgentByAction"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->enforceCallingUser()V

    .line 13
    .line 14
    .line 15
    const-string v0, "Knox Proxy Agent Already Registered Agent = "

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    const-string p0, "DualDARComnService"

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p2, "No action taken"

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-array p2, v2, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    monitor-exit v1

    .line 56
    :goto_0
    move v2, v4

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->findProxyAgentByAction(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    const-string p0, "DualDARComnService"

    .line 67
    .line 68
    const-string p1, "Knox Proxy Agent Not found"

    .line 69
    .line 70
    new-array p2, v2, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    monitor-exit v1

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    .line 78
    .line 79
    iget-object p3, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :goto_1
    return v2

    .line 90
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    throw p0
.end method

.method public final registerAgentByMetadata(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "DualDARComnService"

    .line 2
    .line 3
    const-string/jumbo v1, "registerAgentByMetadata"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->enforceCallingUser()V

    .line 13
    .line 14
    .line 15
    const-string v0, "Knox Proxy Agent Already Registered Agent = "

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->findAgent(Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x1

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const-string p0, "DualDARComnService"

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p2, "No action taken"

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-array p2, v2, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    monitor-exit v1

    .line 52
    :goto_0
    move v2, v4

    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :cond_0
    invoke-static {p2, p1, p3, p4}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->findProxyAgentByMetaData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    const-string p0, "DualDARComnService"

    .line 63
    .line 64
    const-string p1, "Knox Proxy Agent Not found"

    .line 65
    .line 66
    new-array p2, v2, [Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    monitor-exit v1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    .line 74
    .line 75
    iget-object p3, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :goto_1
    return v2

    .line 86
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p0
.end method

.method public final relay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 1
    const-string v0, "SYSTEM_PROXY_AGENT"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->findAgent(Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    const-string v2, "DualDARComnService"

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string/jumbo p0, "relay: Agent not found, agent: "

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-array p1, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v2, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->connectProxyAgentSync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const-string p0, "ProxyAgentWrapper is NULL !"

    .line 62
    .line 63
    new-array p1, v1, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-static {v2, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    const/4 p0, 0x0

    .line 69
    :goto_1
    if-eqz p4, :cond_3

    .line 70
    .line 71
    invoke-virtual {p4}, Landroid/os/Bundle;->clear()V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-object p0
.end method

.method public final relayAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .line 1
    const-string v0, "SYSTEM_PROXY_AGENT"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const-string/jumbo v2, "dual_dar_response"

    .line 9
    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBackgroundHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v9, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;

    .line 16
    .line 17
    move-object v3, v9

    .line 18
    move-object v4, p0

    .line 19
    move-object v5, p1

    .line 20
    move-object v6, p2

    .line 21
    move-object v7, p3

    .line 22
    move-object v8, p4

    .line 23
    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    new-instance p0, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->findAgent(Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    if-nez v5, :cond_1

    .line 43
    .line 44
    const-string/jumbo p0, "relay: Agent not found, agent: "

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const/4 p1, 0x0

    .line 52
    new-array p1, p1, [Ljava/lang/Object;

    .line 53
    .line 54
    const-string p2, "DualDARComnService"

    .line 55
    .line 56
    invoke-static {p2, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return-object p0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBackgroundHandler:Landroid/os/Handler;

    .line 62
    .line 63
    new-instance v10, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    move-object v3, v10

    .line 66
    move-object v4, p0

    .line 67
    move-object v6, p1

    .line 68
    move-object v7, p2

    .line 69
    move-object v8, p3

    .line 70
    move-object v9, p4

    .line 71
    invoke-direct/range {v3 .. v9}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    new-instance p0, Landroid/os/Bundle;

    .line 78
    .line 79
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    return-object p0
.end method

.method public final setDeviceUnlockedForUserIfUnsecured(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/app/KeyguardManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/KeyguardManager;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string/jumbo v1, "trust"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/app/trust/TrustManager;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    new-array v0, p1, [Ljava/lang/Object;

    .line 40
    .line 41
    const-string v1, "DualDARComnService"

    .line 42
    .line 43
    const-string/jumbo v2, "setDeviceUnlockedForUserIfUnsecured"

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, p1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public final systemReady()V
    .locals 14

    .line 1
    const-string v0, "DualDARComnService"

    .line 2
    .line 3
    const-string/jumbo v1, "initialize"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v7, Landroid/content/IntentFilter;

    .line 13
    .line 14
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "android.intent.action.USER_STARTED"

    .line 18
    .line 19
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 23
    .line 24
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "android.intent.action.USER_ADDED"

    .line 28
    .line 29
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v5, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mUserBroadcastReceiver:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;

    .line 35
    .line 36
    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    move-object v6, v10

    .line 41
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    new-instance v11, Landroid/content/IntentFilter;

    .line 45
    .line 46
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 50
    .line 51
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 55
    .line 56
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 60
    .line 61
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 65
    .line 66
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string/jumbo v0, "package"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v8, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    iget-object v9, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mPackageBroadcastReceiver:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;

    .line 78
    .line 79
    const/4 v12, 0x0

    .line 80
    const/4 v13, 0x0

    .line 81
    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->onCreate()V

    .line 91
    .line 92
    .line 93
    const-string v1, "TA_PROXY_SERVICE"

    .line 94
    .line 95
    sget-object v3, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mInstance:Lcom/android/server/knox/dar/ddar/ta/TAProxy;

    .line 96
    .line 97
    const-class v3, Lcom/android/server/knox/dar/ddar/ta/TAProxy;

    .line 98
    .line 99
    monitor-enter v3

    .line 100
    :try_start_0
    sget-object v4, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mInstance:Lcom/android/server/knox/dar/ddar/ta/TAProxy;

    .line 101
    .line 102
    if-nez v4, :cond_0

    .line 103
    .line 104
    new-instance v4, Lcom/android/server/knox/dar/ddar/ta/TAProxy;

    .line 105
    .line 106
    invoke-direct {v4}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v5, Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v5, v4, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    .line 115
    .line 116
    new-array v5, v2, [Ljava/lang/Object;

    .line 117
    .line 118
    const-string v6, "TAProxy"

    .line 119
    .line 120
    const-string v7, "TAProxy() called updated"

    .line 121
    .line 122
    invoke-static {v6, v7, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    sput-object v4, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mInstance:Lcom/android/server/knox/dar/ddar/ta/TAProxy;

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catchall_0
    move-exception p0

    .line 129
    goto/16 :goto_7

    .line 130
    .line 131
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mInstance:Lcom/android/server/knox/dar/ddar/ta/TAProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    monitor-exit v3

    .line 134
    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;)Z

    .line 135
    .line 136
    .line 137
    const-string v1, "DAEMON_PROXY_SERVICE"

    .line 138
    .line 139
    iget-object v3, v0, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    .line 140
    .line 141
    invoke-static {v3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;)Z

    .line 146
    .line 147
    .line 148
    const-string v1, "STATE_MACHINE_SERVICE"

    .line 149
    .line 150
    iget-object v3, v0, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    .line 151
    .line 152
    sget-object v4, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->mInstance:Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;

    .line 153
    .line 154
    const-class v4, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;

    .line 155
    .line 156
    monitor-enter v4

    .line 157
    :try_start_1
    sget-object v5, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->mInstance:Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;

    .line 158
    .line 159
    if-nez v5, :cond_1

    .line 160
    .line 161
    new-instance v5, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;

    .line 162
    .line 163
    invoke-direct {v5, v3}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;-><init>(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    sput-object v5, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->mInstance:Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :catchall_1
    move-exception p0

    .line 170
    goto/16 :goto_6

    .line 171
    .line 172
    :cond_1
    :goto_1
    sget-object v3, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->mInstance:Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    .line 174
    monitor-exit v4

    .line 175
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;)Z

    .line 176
    .line 177
    .line 178
    const-string v1, "DDAR_LOG_SERVICE"

    .line 179
    .line 180
    sget-object v3, Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;->mInstance:Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;

    .line 181
    .line 182
    const-class v3, Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;

    .line 183
    .line 184
    monitor-enter v3

    .line 185
    :try_start_2
    sget-object v4, Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;->mInstance:Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;

    .line 186
    .line 187
    if-nez v4, :cond_3

    .line 188
    .line 189
    new-instance v4, Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;

    .line 190
    .line 191
    invoke-direct {v4}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v5, "DDLog"

    .line 195
    .line 196
    const-string v6, "Logger ready"

    .line 197
    .line 198
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    const-class v5, Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    .line 202
    .line 203
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 204
    :try_start_3
    sget-object v6, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->mInstance:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    .line 205
    .line 206
    if-nez v6, :cond_2

    .line 207
    .line 208
    new-instance v6, Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    .line 209
    .line 210
    invoke-direct {v6}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;-><init>()V

    .line 211
    .line 212
    .line 213
    sput-object v6, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->mInstance:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    .line 214
    .line 215
    invoke-virtual {v6}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :catchall_2
    move-exception p0

    .line 220
    goto :goto_3

    .line 221
    :cond_2
    :goto_2
    :try_start_4
    monitor-exit v5

    .line 222
    sput-object v4, Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;->mInstance:Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :catchall_3
    move-exception p0

    .line 226
    goto :goto_5

    .line 227
    :goto_3
    monitor-exit v5

    .line 228
    throw p0

    .line 229
    :cond_3
    :goto_4
    sget-object v4, Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;->mInstance:Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 230
    .line 231
    monitor-exit v3

    .line 232
    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;)Z

    .line 233
    .line 234
    .line 235
    const-string v1, "DDAR_CACHE_SERVICE"

    .line 236
    .line 237
    invoke-static {}, Lcom/android/server/knox/dar/ddar/DDCache;->getInstance()Lcom/android/server/knox/dar/ddar/DDCache;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;)Z

    .line 242
    .line 243
    .line 244
    const-string v1, "DDAR_PLATFORM_SERVICE"

    .line 245
    .line 246
    iget-object v3, v0, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    .line 247
    .line 248
    invoke-static {v3}, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;)Z

    .line 253
    .line 254
    .line 255
    const-string v1, "DDAR_MANAGER_SERVICE"

    .line 256
    .line 257
    iget-object v3, v0, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    .line 258
    .line 259
    invoke-static {v3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;)Z

    .line 264
    .line 265
    .line 266
    new-array v0, v2, [Ljava/lang/Object;

    .line 267
    .line 268
    const-string v1, "DualDARComnService"

    .line 269
    .line 270
    const-string/jumbo v3, "initKnownProxyAgents"

    .line 271
    .line 272
    .line 273
    invoke-static {v1, v3, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isDualDAREnabled()Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_4

    .line 281
    .line 282
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    .line 283
    .line 284
    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    const-string/jumbo v0, "proxyAgent.class"

    .line 289
    .line 290
    .line 291
    const-string v1, "KNOXCORE_PROXY_AGENT"

    .line 292
    .line 293
    const-string/jumbo v3, "com.samsung.android.knox.containercore"

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->registerAgentByMetadata(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    :cond_4
    return-void

    .line 300
    :goto_5
    monitor-exit v3

    .line 301
    throw p0

    .line 302
    :goto_6
    monitor-exit v4

    .line 303
    throw p0

    .line 304
    :goto_7
    monitor-exit v3

    .line 305
    throw p0
.end method
