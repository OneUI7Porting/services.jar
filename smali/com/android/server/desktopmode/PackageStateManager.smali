.class public final Lcom/android/server/desktopmode/PackageStateManager;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/IPackageManager;

.field public final mPackageState:Ljava/util/Map;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;


# direct methods
.method public static -$$Nest$msetComponent(Lcom/android/server/desktopmode/PackageStateManager;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 5
    .line 6
    const-string v1, "[DMS]PackageStateManager"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "setComponent(component= "

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", enabled="

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ")"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 42
    .line 43
    const-string/jumbo v0, "com.sec.android.desktopmode.uiservice"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    :goto_0
    move v4, p1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 p1, 0x2

    .line 56
    goto :goto_0

    .line 57
    :goto_1
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 58
    .line 59
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    iget v6, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 66
    .line 67
    const-string v7, ""

    .line 68
    .line 69
    const/4 v5, 0x1

    .line 70
    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catch_0
    const-string p0, "Failed to setComponent"

    .line 75
    .line 76
    invoke-static {v1, p0}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/desktopmode/PackageStateManager;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/ServiceThread;Landroid/content/pm/IPackageManager;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v1, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 21
    .line 22
    new-instance v2, Lcom/android/server/desktopmode/PackageStateManager$StateListener;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/PackageStateManager$StateListener;-><init>(Lcom/android/server/desktopmode/PackageStateManager;)V

    .line 25
    .line 26
    .line 27
    check-cast p2, Lcom/android/server/desktopmode/StateManager;

    .line 28
    .line 29
    invoke-virtual {p2, v2}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 30
    .line 31
    .line 32
    iput-object p4, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 39
    .line 40
    monitor-enter v0

    .line 41
    :try_start_0
    const-string/jumbo p1, "com.sec.android.app.desktoplauncher"

    .line 42
    .line 43
    .line 44
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const-string/jumbo p1, "com.sec.android.desktopmode.uiservice"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    new-instance p1, Landroid/os/Handler;

    .line 57
    .line 58
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    .line 64
    .line 65
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    .line 66
    .line 67
    const-string p3, "android.intent.action.PACKAGE_REMOVED"

    .line 68
    .line 69
    const-string p4, "android.intent.action.PACKAGE_CHANGED"

    .line 70
    .line 71
    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 72
    .line 73
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    .line 74
    .line 75
    invoke-static {p2, p3, p4, v2, v3}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    const-string p2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 80
    .line 81
    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string/jumbo p2, "package"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    monitor-enter v0

    .line 91
    :try_start_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    if-eqz p3, :cond_0

    .line 104
    .line 105
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    check-cast p3, Ljava/lang/String;

    .line 110
    .line 111
    const/4 p4, 0x0

    .line 112
    invoke-virtual {v5, p3, p4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_1

    .line 118
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    iget-object v2, p0, Lcom/android/server/desktopmode/PackageStateManager;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 122
    .line 123
    const/4 v6, 0x0

    .line 124
    const/4 v8, 0x2

    .line 125
    move-object v3, p0

    .line 126
    move-object v4, p2

    .line 127
    move-object v7, p1

    .line 128
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    const-string/jumbo p3, "com.samsung.android.knox.intent.action.ADD_PACKAGE_PREVENT_START_BLACKLIST_CHANGED_INTERNAL"

    .line 132
    .line 133
    .line 134
    invoke-static {p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    iget-object v2, p0, Lcom/android/server/desktopmode/PackageStateManager;->mContext:Landroid/content/Context;

    .line 139
    .line 140
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    throw p0

    .line 146
    :catchall_1
    move-exception p0

    .line 147
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    throw p0
.end method


# virtual methods
.method public final isPackageAvailable(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v0, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 16
    .line 17
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 24
    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/android/server/desktopmode/PackageStateManager;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    .line 50
    .line 51
    .line 52
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    xor-int/lit8 p0, p0, 0x1

    .line 54
    .line 55
    return p0

    .line 56
    :cond_1
    return v2

    .line 57
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string/jumbo v0, "isPackageAvailable failed: unknown package "

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string p1, "[DMS]PackageStateManager"

    .line 73
    .line 74
    invoke-static {p1, p0}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return v1
.end method

.method public final onPackageDataCleared(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string/jumbo p2, "com.sec.android.app.desktoplauncher"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v0, "onPackageDataCleared(), packageName="

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "[DMS]PackageStateManager"

    .line 30
    .line 31
    invoke-static {p2, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 35
    .line 36
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->setSettingsComponent(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->notifyLauncherPackageReplaced(Z)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public final onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string/jumbo p2, "com.sec.android.app.desktoplauncher"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v0, "onPackageUpdateFinished(), packageName="

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "[DMS]PackageStateManager"

    .line 30
    .line 31
    invoke-static {p2, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 35
    .line 36
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->setSettingsComponent(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->notifyLauncherPackageReplaced(Z)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.ADD_PACKAGE_PREVENT_START_BLACKLIST_CHANGED_INTERNAL"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const-string p1, "[DMS]PackageStateManager"

    .line 19
    .line 20
    const-string/jumbo p2, "onReceive(), action=com.samsung.android.knox.intent.action.ADD_PACKAGE_PREVENT_START_BLACKLIST_CHANGED_INTERNAL"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/PackageStateManager;->onSomePackagesChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final onSomePackagesChanged()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]PackageStateManager"

    .line 6
    .line 7
    const-string/jumbo v1, "onSomePackagesChanged()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/PackageStateManager;->updatePackageState()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setSettingsComponent(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 2
    .line 3
    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 16
    :goto_1
    iget-object v1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const v3, 0x107003f

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    array-length v9, v1

    .line 30
    :goto_2
    if-ge v2, v9, :cond_4

    .line 31
    .line 32
    aget-object v3, v1, v2

    .line 33
    .line 34
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    :try_start_0
    iget-object v3, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iget v6, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 47
    .line 48
    invoke-interface {v3, v5, v6}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_2
    iget-object v3, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 56
    .line 57
    iget v7, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 58
    .line 59
    const-string v8, ""

    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    move v5, v0

    .line 63
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :catch_0
    move-exception v3

    .line 68
    const-string v4, "[DMS]PackageStateManager"

    .line 69
    .line 70
    const-string v5, "Failed to enable/disable components"

    .line 71
    .line 72
    invoke-static {v4, v5, v3}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    return-void
.end method

.method public final updatePackageState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/PackageStateManager;->updatePackageState(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    if-eqz v2, :cond_2

    .line 4
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 6
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "[DMS]StateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setPackageState(packageState="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_1
    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    iput-object v1, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    .line 10
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;

    const/16 v4, 0x9

    invoke-direct {v3, p0, v1, v4}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_4
    :goto_2
    return-void

    .line 13
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final updatePackageState(Ljava/lang/String;)Z
    .locals 4

    .line 14
    const-string/jumbo v0, "updatePackageState(), packageName="

    iget-object v1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v2

    .line 16
    iget-object v3, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 17
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "[DMS]PackageStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", available="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    .line 20
    :cond_1
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    .line 21
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
