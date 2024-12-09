.class public final Lcom/android/server/am/BaseRestrictionMgr;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mRestrictActivityTheme:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/am/BaseRestrictionMgr$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/am/BaseRestrictionMgr$1;-><init>(Lcom/android/server/am/BaseRestrictionMgr;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mRestrictActivityTheme:Ljava/util/ArrayList;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "android.intent.action.MAIN"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "android.intent.category.INFO"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "android.intent.category.LAUNCHER"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    :cond_1
    if-eqz v3, :cond_3

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance p0, Landroid/content/Intent;

    .line 60
    .line 61
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 62
    .line 63
    .line 64
    const/high16 p1, 0x10000000

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 74
    .line 75
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 76
    .line 77
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 84
    .line 85
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 86
    .line 87
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    return-object p0

    .line 93
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 94
    return-object p0
.end method

.method public final isBlockAssociatedActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mRestrictActivityTheme:Ljava/util/ArrayList;

    .line 20
    .line 21
    iget v0, p1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    sget-object p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 34
    .line 35
    sget-object p0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 36
    .line 37
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 38
    .line 39
    const/16 v2, 0x1b

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p0, v2, v0, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v4, 0x1

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    return v4

    .line 50
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 51
    .line 52
    const-string v5, ":"

    .line 53
    .line 54
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    array-length v5, v0

    .line 59
    if-gt v5, v4, :cond_1

    .line 60
    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v0, "Failed to analyze taskAffinity: ["

    .line 64
    .line 65
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, "]"

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string p1, "BaseRestrictionMgr"

    .line 83
    .line 84
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return v1

    .line 88
    :cond_1
    aget-object p1, v0, v4

    .line 89
    .line 90
    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_2

    .line 95
    .line 96
    return v4

    .line 97
    :cond_2
    return v1
.end method

.method public final isLauncherableApp(ILjava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "BaseRestrictionMgr"

    .line 2
    .line 3
    const-string v1, "AutoRun Policy isLauncherableApp -- Not launcherable system package:"

    .line 4
    .line 5
    const-string v2, "AutoRun Policy isLauncherableApp -- Not launcherable 3rd party package:"

    .line 6
    .line 7
    const-string/jumbo v3, "com.baidu.searchbox_samsung"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    if-nez v3, :cond_4

    .line 16
    .line 17
    const-string/jumbo v3, "com.bst.floatingmsgproxy"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/BaseRestrictionMgr;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-nez p0, :cond_4

    .line 32
    .line 33
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 34
    .line 35
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    return v4

    .line 66
    :cond_2
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 67
    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    :cond_3
    const/4 p0, 0x0

    .line 86
    return p0

    .line 87
    :goto_1
    const-string/jumbo p1, "isLaucherableApp exception="

    .line 88
    .line 89
    .line 90
    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_2
    return v4
.end method

.method public final isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move/from16 v6, p7

    .line 14
    .line 15
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    const/4 v9, -0x1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const-string v0, "BaseRestrictionMgr"

    .line 31
    .line 32
    const-string v1, "Blocked by policy:"

    .line 33
    .line 34
    const-string v2, " -- Caller is null!!"

    .line 35
    .line 36
    invoke-static {v6, v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return v9

    .line 40
    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    const/4 v11, 0x1

    .line 45
    if-eqz v10, :cond_2

    .line 46
    .line 47
    sget-boolean v10, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 48
    .line 49
    sget-object v10, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 50
    .line 51
    iget-boolean v10, v10, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 52
    .line 53
    if-nez v10, :cond_2

    .line 54
    .line 55
    return v11

    .line 56
    :cond_2
    const/4 v10, 0x4

    .line 57
    if-eq v6, v10, :cond_4

    .line 58
    .line 59
    sget-boolean v12, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 60
    .line 61
    sget-object v12, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 62
    .line 63
    iget-boolean v12, v12, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 64
    .line 65
    if-nez v12, :cond_4

    .line 66
    .line 67
    sget-boolean v12, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 68
    .line 69
    sget-object v12, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 70
    .line 71
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    sget-boolean v12, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 75
    .line 76
    if-eqz v12, :cond_3

    .line 77
    .line 78
    sget-object v12, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 79
    .line 80
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v13

    .line 84
    iget-object v12, v12, Lcom/android/server/am/mars/util/UidStateMgr;->mUidGoneList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 85
    .line 86
    invoke-virtual {v12, v13}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    if-nez v12, :cond_3

    .line 91
    .line 92
    return v11

    .line 93
    :cond_3
    sget-boolean v12, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 94
    .line 95
    if-nez v12, :cond_4

    .line 96
    .line 97
    sget-object v12, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 98
    .line 99
    move/from16 v13, p6

    .line 100
    .line 101
    invoke-virtual {v12, v13}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    if-eqz v12, :cond_4

    .line 106
    .line 107
    return v11

    .line 108
    :cond_4
    const-string/jumbo v12, "startService"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    if-nez v12, :cond_5

    .line 116
    .line 117
    const-string/jumbo v12, "bindService"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    if-eqz v12, :cond_a

    .line 125
    .line 126
    :cond_5
    if-eqz v5, :cond_6

    .line 127
    .line 128
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    if-eqz v12, :cond_6

    .line 133
    .line 134
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    goto :goto_0

    .line 139
    :cond_6
    const/4 v12, 0x0

    .line 140
    :goto_0
    const-string v14, "android"

    .line 141
    .line 142
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v14

    .line 146
    if-eqz v14, :cond_8

    .line 147
    .line 148
    if-nez v12, :cond_8

    .line 149
    .line 150
    sget-object v14, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$AccessibilityAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    .line 151
    .line 152
    iget-object v15, v14, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 153
    .line 154
    monitor-enter v15

    .line 155
    :try_start_0
    iget-object v14, v14, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v14

    .line 161
    if-eqz v14, :cond_7

    .line 162
    .line 163
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    const-string v0, "BaseRestrictionMgr"

    .line 165
    .line 166
    const-string/jumbo v1, "isShouldSkipCase: Enable AccessibilityService callee = "

    .line 167
    .line 168
    .line 169
    invoke-static {v1, v7, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    goto :goto_1

    .line 175
    :cond_7
    :try_start_1
    monitor-exit v15

    .line 176
    goto :goto_2

    .line 177
    :goto_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    throw v0

    .line 179
    :cond_8
    :goto_2
    sget-boolean v14, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 180
    .line 181
    sget-object v14, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 182
    .line 183
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 187
    .line 188
    .line 189
    move-result v15

    .line 190
    if-eqz v15, :cond_9

    .line 191
    .line 192
    sget-object v15, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 193
    .line 194
    sget-object v15, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 195
    .line 196
    invoke-virtual {v15, v11, v7, v1, v12}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v15

    .line 200
    if-eqz v15, :cond_9

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_9
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 204
    .line 205
    .line 206
    move-result v15

    .line 207
    if-eqz v15, :cond_a

    .line 208
    .line 209
    sget-object v15, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 210
    .line 211
    sget-object v15, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 212
    .line 213
    const/4 v13, 0x7

    .line 214
    invoke-virtual {v15, v13, v7, v1, v12}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    if-eqz v12, :cond_a

    .line 219
    .line 220
    invoke-virtual {v14, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(ILjava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    if-eqz v12, :cond_a

    .line 225
    .line 226
    const-string v0, "BaseRestrictionMgr"

    .line 227
    .line 228
    const-string/jumbo v1, "isShouldSkipCase: Foreground caller and callee = "

    .line 229
    .line 230
    .line 231
    invoke-static {v1, v7, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :goto_3
    return v11

    .line 235
    :cond_a
    const-string/jumbo v12, "com.sec.android.app.samsungapps"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v12

    .line 242
    if-eqz v12, :cond_b

    .line 243
    .line 244
    return v11

    .line 245
    :cond_b
    invoke-virtual {v0, v8, v7}, Lcom/android/server/am/BaseRestrictionMgr;->isLauncherableApp(ILjava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result v12

    .line 249
    const/4 v13, 0x0

    .line 250
    if-eqz v12, :cond_15

    .line 251
    .line 252
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/BaseRestrictionMgr;->isLauncherableApp(ILjava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result v12

    .line 256
    if-eqz v12, :cond_15

    .line 257
    .line 258
    const-string/jumbo v12, "system"

    .line 259
    .line 260
    .line 261
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v12

    .line 265
    const-string v14, "BaseRestrictionMgr"

    .line 266
    .line 267
    if-nez v12, :cond_12

    .line 268
    .line 269
    const-string/jumbo v12, "com.sec."

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v12

    .line 276
    if-nez v12, :cond_12

    .line 277
    .line 278
    const-string/jumbo v12, "com.samsung."

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v12

    .line 285
    if-eqz v12, :cond_c

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_c
    const-string/jumbo v12, "com.baidu.BaiduMap"

    .line 289
    .line 290
    .line 291
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v12

    .line 295
    if-nez v12, :cond_10

    .line 296
    .line 297
    const-string/jumbo v12, "com.baidu.searchbox_samsung"

    .line 298
    .line 299
    .line 300
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v12

    .line 304
    if-nez v12, :cond_10

    .line 305
    .line 306
    const-string/jumbo v12, "com.baidu.netdisk_ss"

    .line 307
    .line 308
    .line 309
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v12

    .line 313
    if-eqz v12, :cond_d

    .line 314
    .line 315
    goto :goto_4

    .line 316
    :cond_d
    :try_start_2
    iget-object v12, v0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    .line 317
    .line 318
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 319
    .line 320
    .line 321
    move-result-object v12

    .line 322
    invoke-virtual {v12, v1, v13, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    if-nez v2, :cond_e

    .line 327
    .line 328
    goto :goto_4

    .line 329
    :cond_e
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 330
    .line 331
    and-int/2addr v2, v11

    .line 332
    if-nez v2, :cond_f

    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_f
    iget-object v0, v0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    .line 336
    .line 337
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    const-string v2, "android"

    .line 342
    .line 343
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    move-result v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 347
    if-ltz v0, :cond_10

    .line 348
    .line 349
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 350
    .line 351
    if-eqz v0, :cond_13

    .line 352
    .line 353
    const-string/jumbo v0, "isSamsungService -- SystemPackage:"

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    goto :goto_6

    .line 364
    :catch_0
    move-exception v0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    const-string/jumbo v2, "isSystemPackage exception="

    .line 368
    .line 369
    .line 370
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    const-string v1, "BaseRestrictionMgr"

    .line 381
    .line 382
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    :cond_10
    :goto_4
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 386
    .line 387
    if-eqz v0, :cond_11

    .line 388
    .line 389
    const-string v0, "BaseRestrictionMgr"

    .line 390
    .line 391
    const-string/jumbo v1, "is Blocked by Policy:"

    .line 392
    .line 393
    .line 394
    const-string v2, " -- Caller is not samsung!!"

    .line 395
    .line 396
    invoke-static {v6, v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    :cond_11
    return v9

    .line 400
    :cond_12
    :goto_5
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 401
    .line 402
    if-eqz v0, :cond_13

    .line 403
    .line 404
    const-string/jumbo v0, "isSamsungService -- SamsungService:"

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    :cond_13
    :goto_6
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 415
    .line 416
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 417
    .line 418
    iget-boolean v0, v0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 419
    .line 420
    if-eqz v0, :cond_15

    .line 421
    .line 422
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 423
    .line 424
    if-eqz v0, :cond_14

    .line 425
    .line 426
    const-string v0, "BaseRestrictionMgr"

    .line 427
    .line 428
    const-string/jumbo v1, "is Blocked by Policy:"

    .line 429
    .line 430
    .line 431
    const-string v2, " -- isCalmMode!!"

    .line 432
    .line 433
    invoke-static {v6, v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    :cond_14
    return v9

    .line 437
    :cond_15
    if-eqz v5, :cond_16

    .line 438
    .line 439
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    if-eqz v0, :cond_16

    .line 444
    .line 445
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    goto :goto_7

    .line 450
    :cond_16
    const/4 v0, 0x0

    .line 451
    :goto_7
    const-string v2, "android"

    .line 452
    .line 453
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    if-eqz v2, :cond_1a

    .line 458
    .line 459
    const-string v2, "android.accounts.AccountAuthenticator"

    .line 460
    .line 461
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v2

    .line 465
    if-nez v2, :cond_17

    .line 466
    .line 467
    const-string v2, "android.media.MediaRoute2ProviderService"

    .line 468
    .line 469
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    if-eqz v2, :cond_1a

    .line 474
    .line 475
    :cond_17
    const-string/jumbo v2, "binderCallingUid"

    .line 476
    .line 477
    .line 478
    const/16 v12, 0x3e8

    .line 479
    .line 480
    invoke-virtual {v5, v2, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    const-string v14, "BaseRestrictionMgr"

    .line 485
    .line 486
    if-ne v2, v12, :cond_19

    .line 487
    .line 488
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 489
    .line 490
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 491
    .line 492
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    sget-boolean v12, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 496
    .line 497
    if-eqz v12, :cond_18

    .line 498
    .line 499
    invoke-virtual {v2, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    if-eqz v2, :cond_18

    .line 504
    .line 505
    goto :goto_8

    .line 506
    :cond_18
    const-string/jumbo v2, "isShouldBlockCase: not block AccountAuthenticator"

    .line 507
    .line 508
    .line 509
    invoke-static {v14, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .line 511
    .line 512
    goto :goto_9

    .line 513
    :cond_19
    :goto_8
    const-string/jumbo v0, "isShouldBlockCase: block AccountAuthenticator"

    .line 514
    .line 515
    .line 516
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    goto :goto_a

    .line 520
    :cond_1a
    :goto_9
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 521
    .line 522
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 523
    .line 524
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    const/4 v12, 0x2

    .line 532
    if-eqz v2, :cond_1c

    .line 533
    .line 534
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 535
    .line 536
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 537
    .line 538
    invoke-virtual {v2, v12, v7, v1, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    if-eqz v0, :cond_1c

    .line 543
    .line 544
    :goto_a
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 545
    .line 546
    if-eqz v0, :cond_1b

    .line 547
    .line 548
    const-string v0, "BaseRestrictionMgr"

    .line 549
    .line 550
    const-string v1, "Blocked by policy:"

    .line 551
    .line 552
    const-string v2, " -- should Block cases!!"

    .line 553
    .line 554
    invoke-static {v6, v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    :cond_1b
    return v9

    .line 558
    :cond_1c
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    if-eqz v0, :cond_26

    .line 563
    .line 564
    const-string/jumbo v0, "bindService"

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    if-eqz v0, :cond_26

    .line 572
    .line 573
    const-wide/16 v14, 0x0

    .line 574
    .line 575
    if-eq v6, v10, :cond_1f

    .line 576
    .line 577
    const-string v2, "BaseRestrictionMgr"

    .line 578
    .line 579
    const-string v0, "AutoRun Policy isJobSchedulerPackage -- package = "

    .line 580
    .line 581
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 582
    .line 583
    .line 584
    move-result-object v4

    .line 585
    if-eqz v4, :cond_1d

    .line 586
    .line 587
    :try_start_3
    invoke-interface {v4, v3, v14, v15, v8}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    if-eqz v4, :cond_1d

    .line 592
    .line 593
    const-string v7, "android.permission.BIND_JOB_SERVICE"

    .line 594
    .line 595
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 596
    .line 597
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v4

    .line 601
    if-eqz v4, :cond_1d

    .line 602
    .line 603
    const-string v4, "android"

    .line 604
    .line 605
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 609
    if-eqz v4, :cond_1d

    .line 610
    .line 611
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 628
    .line 629
    .line 630
    move v0, v11

    .line 631
    goto :goto_c

    .line 632
    :catch_1
    move-exception v0

    .line 633
    move-object v4, v0

    .line 634
    move v0, v11

    .line 635
    goto :goto_b

    .line 636
    :catch_2
    move-exception v0

    .line 637
    move-object v4, v0

    .line 638
    move v0, v13

    .line 639
    :goto_b
    const-string/jumbo v7, "isJobSchedulerPackage exception="

    .line 640
    .line 641
    .line 642
    invoke-static {v7, v4, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    goto :goto_c

    .line 646
    :cond_1d
    move v0, v13

    .line 647
    :goto_c
    if-eqz v0, :cond_1f

    .line 648
    .line 649
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 650
    .line 651
    if-eqz v0, :cond_1e

    .line 652
    .line 653
    const-string v0, "BaseRestrictionMgr"

    .line 654
    .line 655
    const-string v1, "Blocked by policy:"

    .line 656
    .line 657
    const-string v2, " -- JobSchedulerPackage!!"

    .line 658
    .line 659
    invoke-static {v6, v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    :cond_1e
    return v9

    .line 663
    :cond_1f
    const-string v2, "BaseRestrictionMgr"

    .line 664
    .line 665
    const-string v0, "AutoRun Policy isSyncManagerPackage -- package = "

    .line 666
    .line 667
    :try_start_5
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    if-eqz v4, :cond_20

    .line 672
    .line 673
    const-string v4, "android"

    .line 674
    .line 675
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v4

    .line 679
    if-eqz v4, :cond_20

    .line 680
    .line 681
    const-string v4, "android.content.SyncAdapter"

    .line 682
    .line 683
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v5

    .line 687
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 691
    if-eqz v4, :cond_20

    .line 692
    .line 693
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 694
    .line 695
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 710
    .line 711
    .line 712
    move v0, v11

    .line 713
    goto :goto_e

    .line 714
    :catch_3
    move-exception v0

    .line 715
    move-object v4, v0

    .line 716
    move v0, v11

    .line 717
    goto :goto_d

    .line 718
    :catch_4
    move-exception v0

    .line 719
    move-object v4, v0

    .line 720
    move v0, v13

    .line 721
    goto :goto_d

    .line 722
    :cond_20
    move v0, v13

    .line 723
    goto :goto_e

    .line 724
    :goto_d
    const-string/jumbo v5, "isSyncManagerPackage exception="

    .line 725
    .line 726
    .line 727
    invoke-static {v4, v5, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    :goto_e
    if-eqz v0, :cond_22

    .line 731
    .line 732
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 733
    .line 734
    if-eqz v0, :cond_21

    .line 735
    .line 736
    const-string v0, "BaseRestrictionMgr"

    .line 737
    .line 738
    const-string v1, "Blocked by policy:"

    .line 739
    .line 740
    const-string v2, " -- SyncManagerPackage!!"

    .line 741
    .line 742
    invoke-static {v6, v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    :cond_21
    return v9

    .line 746
    :cond_22
    const-string v2, "BaseRestrictionMgr"

    .line 747
    .line 748
    const-string v0, "AutoRun Policy isBindNotificationListenerPackage -- package = "

    .line 749
    .line 750
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 751
    .line 752
    .line 753
    move-result-object v4

    .line 754
    if-eqz v4, :cond_24

    .line 755
    .line 756
    :try_start_7
    invoke-interface {v4, v3, v14, v15, v8}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 757
    .line 758
    .line 759
    move-result-object v4

    .line 760
    if-eqz v4, :cond_23

    .line 761
    .line 762
    const-string v5, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 763
    .line 764
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 765
    .line 766
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 767
    .line 768
    .line 769
    move-result v4

    .line 770
    if-eqz v4, :cond_23

    .line 771
    .line 772
    const-string v4, "android"

    .line 773
    .line 774
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 775
    .line 776
    .line 777
    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    .line 778
    if-eqz v1, :cond_23

    .line 779
    .line 780
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 781
    .line 782
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    .line 797
    .line 798
    .line 799
    goto :goto_f

    .line 800
    :catch_5
    move-exception v0

    .line 801
    goto :goto_10

    .line 802
    :catch_6
    move-exception v0

    .line 803
    move v11, v13

    .line 804
    goto :goto_10

    .line 805
    :cond_23
    move v11, v13

    .line 806
    :goto_f
    move v13, v11

    .line 807
    goto :goto_11

    .line 808
    :goto_10
    const-string/jumbo v1, "isBindNotificationListenerPackage exception="

    .line 809
    .line 810
    .line 811
    invoke-static {v1, v0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    goto :goto_f

    .line 815
    :cond_24
    :goto_11
    if-eqz v13, :cond_26

    .line 816
    .line 817
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 818
    .line 819
    if-eqz v0, :cond_25

    .line 820
    .line 821
    const-string v0, "BaseRestrictionMgr"

    .line 822
    .line 823
    const-string v1, "Blocked by policy:"

    .line 824
    .line 825
    const-string v2, " -- isBindNotificationListenerPackage!!"

    .line 826
    .line 827
    invoke-static {v6, v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    :cond_25
    return v9

    .line 831
    :cond_26
    return v12
.end method

.method public final isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    move/from16 v10, p3

    .line 6
    .line 7
    move-object/from16 v11, p4

    .line 8
    .line 9
    move/from16 v1, p6

    .line 10
    .line 11
    const/4 v12, 0x1

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v13

    .line 16
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 17
    .line 18
    const/4 v14, 0x0

    .line 19
    if-eqz p5, :cond_0

    .line 20
    .line 21
    const-string/jumbo v3, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const-string/jumbo v3, "com.samsung.android.game.gos"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    xor-int/2addr v3, v12

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v3, v14

    .line 44
    :goto_0
    if-eqz v3, :cond_1

    .line 45
    .line 46
    return v12

    .line 47
    :cond_1
    const-string/jumbo v3, "com.google.android.projection.gearhead"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    const-string/jumbo v3, "bindService"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 66
    .line 67
    invoke-virtual {v3, v1, v13, v14}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(ILjava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    :cond_2
    if-eqz p5, :cond_4

    .line 71
    .line 72
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    .line 73
    .line 74
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_4

    .line 83
    .line 84
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 90
    .line 91
    monitor-enter v4

    .line 92
    :try_start_0
    iget-object v5, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 93
    .line 94
    invoke-static {v5, v13, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-eqz v5, :cond_3

    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v6

    .line 104
    iput-wide v6, v5, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 105
    .line 106
    invoke-virtual {v3, v5, v14}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;Z)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    goto :goto_2

    .line 112
    :cond_3
    :goto_1
    monitor-exit v4

    .line 113
    goto :goto_3

    .line 114
    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    throw v0

    .line 116
    :cond_4
    :goto_3
    sget-object v15, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 117
    .line 118
    monitor-enter v15

    .line 119
    :try_start_1
    sget-object v3, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 120
    .line 121
    iget-boolean v3, v3, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 122
    .line 123
    if-eqz v3, :cond_5

    .line 124
    .line 125
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 126
    .line 127
    iget-object v4, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 128
    .line 129
    if-eqz v4, :cond_5

    .line 130
    .line 131
    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 132
    .line 133
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_5

    .line 138
    .line 139
    iget-object v3, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 140
    .line 141
    invoke-static {v3, v13, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :catchall_1
    move-exception v0

    .line 146
    goto/16 :goto_3d

    .line 147
    .line 148
    :cond_5
    :goto_4
    sget-boolean v3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 149
    .line 150
    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 151
    .line 152
    iget-boolean v4, v3, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 153
    .line 154
    const/4 v6, -0x1

    .line 155
    if-eqz v4, :cond_a

    .line 156
    .line 157
    iget-object v3, v3, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 158
    .line 159
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 160
    .line 161
    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Landroid/util/SparseArray;

    .line 166
    .line 167
    if-eqz v3, :cond_a

    .line 168
    .line 169
    move v4, v14

    .line 170
    const/4 v7, 0x0

    .line 171
    :goto_5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-ge v4, v8, :cond_9

    .line 176
    .line 177
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    check-cast v7, Lcom/android/server/am/FreecessPkgStatus;

    .line 182
    .line 183
    iget-object v8, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 184
    .line 185
    if-nez v8, :cond_6

    .line 186
    .line 187
    const-string v8, "BaseRestrictionMgr"

    .line 188
    .line 189
    const-string v5, "Abnomal case in isRestrictedPackage package name is null"

    .line 190
    .line 191
    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_6
    iget v5, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 196
    .line 197
    if-eq v1, v5, :cond_8

    .line 198
    .line 199
    if-ne v1, v6, :cond_7

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_7
    :goto_6
    add-int/2addr v4, v12

    .line 203
    goto :goto_5

    .line 204
    :cond_8
    :goto_7
    iget v3, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 205
    .line 206
    move v4, v12

    .line 207
    :goto_8
    move/from16 v17, v4

    .line 208
    .line 209
    goto :goto_9

    .line 210
    :cond_9
    move v3, v6

    .line 211
    move v5, v3

    .line 212
    move v4, v14

    .line 213
    goto :goto_8

    .line 214
    :cond_a
    move v3, v6

    .line 215
    move v5, v3

    .line 216
    move v4, v14

    .line 217
    move/from16 v17, v4

    .line 218
    .line 219
    const/4 v7, 0x0

    .line 220
    :goto_9
    if-nez v4, :cond_e

    .line 221
    .line 222
    sget-object v8, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 223
    .line 224
    iget-object v2, v8, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 225
    .line 226
    if-eqz v2, :cond_e

    .line 227
    .line 228
    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 229
    .line 230
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-eqz v2, :cond_e

    .line 235
    .line 236
    iget-object v2, v8, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 237
    .line 238
    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 239
    .line 240
    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    check-cast v2, Landroid/util/SparseArray;

    .line 245
    .line 246
    if-eqz v2, :cond_e

    .line 247
    .line 248
    move v8, v14

    .line 249
    :goto_a
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 250
    .line 251
    .line 252
    move-result v14

    .line 253
    if-ge v8, v14, :cond_e

    .line 254
    .line 255
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v14

    .line 259
    check-cast v14, Lcom/android/server/am/MARsPackageInfo;

    .line 260
    .line 261
    iget-object v12, v14, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 262
    .line 263
    if-nez v12, :cond_c

    .line 264
    .line 265
    const-string v12, "BaseRestrictionMgr"

    .line 266
    .line 267
    const-string v14, "Abnomal case in isRestrictedPackage package name is null"

    .line 268
    .line 269
    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    :cond_b
    const/16 v18, 0x1

    .line 273
    .line 274
    goto :goto_b

    .line 275
    :cond_c
    iget v12, v14, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 276
    .line 277
    if-eq v1, v12, :cond_d

    .line 278
    .line 279
    if-ne v1, v6, :cond_b

    .line 280
    .line 281
    :cond_d
    const/16 v18, 0x1

    .line 282
    .line 283
    goto :goto_c

    .line 284
    :goto_b
    add-int/lit8 v8, v8, 0x1

    .line 285
    .line 286
    move/from16 v12, v18

    .line 287
    .line 288
    goto :goto_a

    .line 289
    :goto_c
    iget v3, v14, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 290
    .line 291
    iget-boolean v1, v14, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 292
    .line 293
    xor-int/lit8 v6, v1, 0x1

    .line 294
    .line 295
    move-object v8, v14

    .line 296
    const/4 v4, 0x1

    .line 297
    move v14, v12

    .line 298
    move v12, v3

    .line 299
    goto :goto_d

    .line 300
    :cond_e
    move v12, v3

    .line 301
    move v14, v5

    .line 302
    const/4 v8, 0x0

    .line 303
    :goto_d
    if-nez v4, :cond_11

    .line 304
    .line 305
    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 306
    .line 307
    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 308
    .line 309
    if-eqz v0, :cond_10

    .line 310
    .line 311
    if-eqz p5, :cond_f

    .line 312
    .line 313
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    :goto_e
    move-object v4, v0

    .line 318
    goto :goto_f

    .line 319
    :cond_f
    const-string v0, ""

    .line 320
    .line 321
    goto :goto_e

    .line 322
    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 323
    .line 324
    .line 325
    move-object v0, v13

    .line 326
    move-object/from16 v1, p2

    .line 327
    .line 328
    move-object/from16 v2, p4

    .line 329
    .line 330
    move/from16 v3, p11

    .line 331
    .line 332
    move/from16 v5, p10

    .line 333
    .line 334
    move-object/from16 v6, p9

    .line 335
    .line 336
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :cond_10
    monitor-exit v15

    .line 340
    const/4 v0, 0x0

    .line 341
    return v0

    .line 342
    :cond_11
    if-eqz p7, :cond_14

    .line 343
    .line 344
    if-eqz v8, :cond_14

    .line 345
    .line 346
    if-nez v17, :cond_14

    .line 347
    .line 348
    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 349
    .line 350
    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 351
    .line 352
    if-eqz v0, :cond_13

    .line 353
    .line 354
    if-eqz p5, :cond_12

    .line 355
    .line 356
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    :goto_10
    move-object v4, v0

    .line 361
    goto :goto_11

    .line 362
    :cond_12
    const-string v0, ""

    .line 363
    .line 364
    goto :goto_10

    .line 365
    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 366
    .line 367
    .line 368
    move-object v0, v13

    .line 369
    move-object/from16 v1, p2

    .line 370
    .line 371
    move-object/from16 v2, p4

    .line 372
    .line 373
    move/from16 v3, p11

    .line 374
    .line 375
    move/from16 v5, p10

    .line 376
    .line 377
    move-object/from16 v6, p9

    .line 378
    .line 379
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 380
    .line 381
    .line 382
    :cond_13
    monitor-exit v15

    .line 383
    const/4 v0, 0x0

    .line 384
    return v0

    .line 385
    :cond_14
    if-eqz v8, :cond_17

    .line 386
    .line 387
    iget-object v1, v8, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 388
    .line 389
    if-nez v1, :cond_17

    .line 390
    .line 391
    if-nez v7, :cond_17

    .line 392
    .line 393
    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 394
    .line 395
    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 396
    .line 397
    if-eqz v0, :cond_16

    .line 398
    .line 399
    if-eqz p5, :cond_15

    .line 400
    .line 401
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    :goto_12
    move-object v4, v0

    .line 406
    goto :goto_13

    .line 407
    :cond_15
    const-string v0, ""

    .line 408
    .line 409
    goto :goto_12

    .line 410
    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 411
    .line 412
    .line 413
    move-object v0, v13

    .line 414
    move-object/from16 v1, p2

    .line 415
    .line 416
    move-object/from16 v2, p4

    .line 417
    .line 418
    move/from16 v3, p11

    .line 419
    .line 420
    move/from16 v5, p10

    .line 421
    .line 422
    move-object/from16 v6, p9

    .line 423
    .line 424
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 425
    .line 426
    .line 427
    :cond_16
    monitor-exit v15

    .line 428
    const/4 v0, 0x0

    .line 429
    return v0

    .line 430
    :cond_17
    if-eqz v17, :cond_18

    .line 431
    .line 432
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 433
    .line 434
    invoke-virtual {v1, v14, v13}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(ILjava/lang/String;)I

    .line 435
    .line 436
    .line 437
    move-result v6

    .line 438
    :cond_18
    if-eqz v8, :cond_19

    .line 439
    .line 440
    iget-object v2, v8, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 441
    .line 442
    if-eqz v2, :cond_19

    .line 443
    .line 444
    iget v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 445
    .line 446
    move v5, v2

    .line 447
    goto :goto_14

    .line 448
    :cond_19
    if-eqz v17, :cond_1a

    .line 449
    .line 450
    const/4 v5, 0x4

    .line 451
    goto :goto_14

    .line 452
    :cond_1a
    const/4 v5, 0x0

    .line 453
    :goto_14
    if-eqz v8, :cond_1b

    .line 454
    .line 455
    iget v2, v8, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 456
    .line 457
    goto :goto_15

    .line 458
    :cond_1b
    if-eqz v17, :cond_1c

    .line 459
    .line 460
    if-nez v6, :cond_1c

    .line 461
    .line 462
    const/4 v2, 0x2

    .line 463
    goto :goto_15

    .line 464
    :cond_1c
    const/4 v2, 0x1

    .line 465
    :goto_15
    if-eqz v7, :cond_1d

    .line 466
    .line 467
    iget-boolean v3, v7, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 468
    .line 469
    if-eqz v3, :cond_1d

    .line 470
    .line 471
    const/16 v2, 0x8

    .line 472
    .line 473
    :cond_1d
    if-eqz v17, :cond_1e

    .line 474
    .line 475
    if-eqz v7, :cond_1e

    .line 476
    .line 477
    iget-object v3, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 478
    .line 479
    iget-boolean v3, v3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 480
    .line 481
    if-eqz v3, :cond_1e

    .line 482
    .line 483
    const/4 v3, 0x1

    .line 484
    goto :goto_16

    .line 485
    :cond_1e
    const/4 v3, 0x0

    .line 486
    :goto_16
    const/4 v7, 0x3

    .line 487
    const v19, 0x20000008

    .line 488
    .line 489
    .line 490
    const/4 v1, 0x1

    .line 491
    if-eq v2, v1, :cond_26

    .line 492
    .line 493
    const/4 v1, 0x2

    .line 494
    if-eq v2, v1, :cond_25

    .line 495
    .line 496
    if-eq v2, v7, :cond_23

    .line 497
    .line 498
    const/4 v1, 0x4

    .line 499
    if-eq v2, v1, :cond_21

    .line 500
    .line 501
    const/4 v1, 0x7

    .line 502
    if-eq v2, v1, :cond_20

    .line 503
    .line 504
    const/16 v1, 0x8

    .line 505
    .line 506
    if-eq v2, v1, :cond_1f

    .line 507
    .line 508
    const/4 v3, 0x0

    .line 509
    goto :goto_19

    .line 510
    :cond_1f
    const v1, 0x501c0888

    .line 511
    .line 512
    .line 513
    :goto_17
    move v3, v1

    .line 514
    goto :goto_19

    .line 515
    :cond_20
    const v1, 0x1000112

    .line 516
    .line 517
    .line 518
    goto :goto_17

    .line 519
    :cond_21
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 520
    .line 521
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 522
    .line 523
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 524
    .line 525
    .line 526
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    if-nez v1, :cond_22

    .line 531
    .line 532
    const/16 v1, 0x2220

    .line 533
    .line 534
    goto :goto_17

    .line 535
    :cond_22
    const v1, 0x401c0888

    .line 536
    .line 537
    .line 538
    goto :goto_17

    .line 539
    :cond_23
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 540
    .line 541
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 542
    .line 543
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 547
    .line 548
    .line 549
    move-result v1

    .line 550
    if-nez v1, :cond_24

    .line 551
    .line 552
    const v1, 0x14148110

    .line 553
    .line 554
    .line 555
    goto :goto_17

    .line 556
    :cond_24
    const v3, -0x2fe3f778

    .line 557
    .line 558
    .line 559
    goto :goto_19

    .line 560
    :cond_25
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 561
    .line 562
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 563
    .line 564
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    if-nez v2, :cond_27

    .line 572
    .line 573
    :cond_26
    :goto_18
    move/from16 v3, v19

    .line 574
    .line 575
    goto :goto_19

    .line 576
    :cond_27
    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    .line 577
    .line 578
    .line 579
    move-result v1

    .line 580
    if-eqz v1, :cond_24

    .line 581
    .line 582
    if-eqz v3, :cond_24

    .line 583
    .line 584
    goto :goto_18

    .line 585
    :goto_19
    const/high16 v1, 0x4000000

    .line 586
    .line 587
    and-int/2addr v1, v3

    .line 588
    if-eqz v1, :cond_28

    .line 589
    .line 590
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 591
    .line 592
    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    .line 593
    .line 594
    .line 595
    move-result v1

    .line 596
    if-eqz v1, :cond_28

    .line 597
    .line 598
    const/4 v4, 0x0

    .line 599
    :cond_28
    const/high16 v1, 0x10000000

    .line 600
    .line 601
    and-int/2addr v1, v3

    .line 602
    if-eqz v1, :cond_29

    .line 603
    .line 604
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 605
    .line 606
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 607
    :try_start_2
    iget-boolean v2, v1, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 608
    .line 609
    :try_start_3
    monitor-exit v1

    .line 610
    if-eqz v2, :cond_29

    .line 611
    .line 612
    const/4 v4, 0x0

    .line 613
    goto :goto_1a

    .line 614
    :catchall_2
    move-exception v0

    .line 615
    move-object v2, v0

    .line 616
    monitor-exit v1

    .line 617
    throw v2

    .line 618
    :cond_29
    :goto_1a
    if-eqz v4, :cond_56

    .line 619
    .line 620
    const-string v1, "activity"

    .line 621
    .line 622
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    if-eqz v1, :cond_33

    .line 627
    .line 628
    const/4 v1, 0x2

    .line 629
    and-int/2addr v1, v3

    .line 630
    if-eqz v1, :cond_2b

    .line 631
    .line 632
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 633
    .line 634
    invoke-virtual {v1, v10, v9}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(ILjava/lang/String;)Z

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    if-eqz v1, :cond_2a

    .line 639
    .line 640
    const/4 v1, 0x1

    .line 641
    :goto_1b
    const/4 v2, 0x1

    .line 642
    :goto_1c
    const/16 v4, 0x8

    .line 643
    .line 644
    goto :goto_1d

    .line 645
    :cond_2a
    const/4 v1, 0x0

    .line 646
    goto :goto_1b

    .line 647
    :cond_2b
    const/4 v1, 0x0

    .line 648
    const/4 v2, 0x0

    .line 649
    goto :goto_1c

    .line 650
    :goto_1d
    and-int/2addr v3, v4

    .line 651
    if-eqz v3, :cond_30

    .line 652
    .line 653
    if-eqz v13, :cond_2d

    .line 654
    .line 655
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v3

    .line 659
    if-eqz v3, :cond_2d

    .line 660
    .line 661
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 662
    .line 663
    if-eqz v3, :cond_2c

    .line 664
    .line 665
    const-string/jumbo v3, "isSelfIntent :"

    .line 666
    .line 667
    .line 668
    invoke-virtual {v3, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v3

    .line 672
    const-string v4, "BaseRestrictionMgr"

    .line 673
    .line 674
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .line 676
    .line 677
    :cond_2c
    const/4 v3, 0x1

    .line 678
    goto :goto_1e

    .line 679
    :cond_2d
    const/4 v3, 0x0

    .line 680
    :goto_1e
    if-nez v3, :cond_30

    .line 681
    .line 682
    move-object/from16 v3, p8

    .line 683
    .line 684
    invoke-virtual {v0, v3}, Lcom/android/server/am/BaseRestrictionMgr;->isBlockAssociatedActivity(Landroid/content/pm/ActivityInfo;)Z

    .line 685
    .line 686
    .line 687
    move-result v4

    .line 688
    if-nez v4, :cond_2e

    .line 689
    .line 690
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 691
    .line 692
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 693
    .line 694
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v7

    .line 698
    move/from16 p3, v1

    .line 699
    .line 700
    const/16 v1, 0x8

    .line 701
    .line 702
    const/4 v10, 0x0

    .line 703
    invoke-virtual {v4, v1, v7, v10, v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 704
    .line 705
    .line 706
    move-result v1

    .line 707
    if-eqz v1, :cond_31

    .line 708
    .line 709
    goto :goto_1f

    .line 710
    :cond_2e
    move/from16 p3, v1

    .line 711
    .line 712
    :goto_1f
    const-string v1, "BaseRestrictionMgr"

    .line 713
    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    .line 715
    .line 716
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 717
    .line 718
    .line 719
    const-string v4, "Block activity: "

    .line 720
    .line 721
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v3

    .line 728
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    const-string v3, " --- isBlockAssociatedActivity which is not started by itself."

    .line 732
    .line 733
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    .line 742
    .line 743
    move/from16 v16, p3

    .line 744
    .line 745
    move/from16 p6, v5

    .line 746
    .line 747
    move/from16 v20, v6

    .line 748
    .line 749
    move-object/from16 v21, v8

    .line 750
    .line 751
    :cond_2f
    :goto_20
    const/4 v1, 0x0

    .line 752
    :goto_21
    const/4 v2, 0x1

    .line 753
    goto/16 :goto_33

    .line 754
    .line 755
    :cond_30
    move/from16 p3, v1

    .line 756
    .line 757
    :cond_31
    move/from16 v16, p3

    .line 758
    .line 759
    move/from16 p6, v5

    .line 760
    .line 761
    move/from16 v20, v6

    .line 762
    .line 763
    move-object/from16 v21, v8

    .line 764
    .line 765
    :cond_32
    :goto_22
    const/4 v1, 0x0

    .line 766
    goto/16 :goto_33

    .line 767
    .line 768
    :cond_33
    const-string/jumbo v1, "startService"

    .line 769
    .line 770
    .line 771
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    move-result v1

    .line 775
    if-nez v1, :cond_34

    .line 776
    .line 777
    const-string/jumbo v1, "bindService"

    .line 778
    .line 779
    .line 780
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-result v1

    .line 784
    if-eqz v1, :cond_35

    .line 785
    .line 786
    :cond_34
    move v0, v3

    .line 787
    move/from16 p6, v5

    .line 788
    .line 789
    move/from16 v20, v6

    .line 790
    .line 791
    move-object/from16 v21, v8

    .line 792
    .line 793
    goto/16 :goto_2f

    .line 794
    .line 795
    :cond_35
    const-string/jumbo v1, "provider"

    .line 796
    .line 797
    .line 798
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 799
    .line 800
    .line 801
    move-result v1

    .line 802
    if-eqz v1, :cond_3b

    .line 803
    .line 804
    and-int/lit16 v1, v3, 0x100

    .line 805
    .line 806
    if-eqz v1, :cond_36

    .line 807
    .line 808
    move-object/from16 v1, p0

    .line 809
    .line 810
    move-object/from16 v2, p2

    .line 811
    .line 812
    move v7, v3

    .line 813
    move/from16 v3, p3

    .line 814
    .line 815
    move-object/from16 v4, p1

    .line 816
    .line 817
    move/from16 p6, v5

    .line 818
    .line 819
    move-object/from16 v5, p4

    .line 820
    .line 821
    move/from16 v20, v6

    .line 822
    .line 823
    move-object/from16 v6, p5

    .line 824
    .line 825
    move v0, v7

    .line 826
    move v7, v12

    .line 827
    move-object/from16 v21, v8

    .line 828
    .line 829
    move/from16 v8, p6

    .line 830
    .line 831
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    .line 832
    .line 833
    .line 834
    move-result v1

    .line 835
    if-lez v1, :cond_37

    .line 836
    .line 837
    const/4 v1, 0x1

    .line 838
    goto :goto_23

    .line 839
    :cond_36
    move v0, v3

    .line 840
    move/from16 p6, v5

    .line 841
    .line 842
    move/from16 v20, v6

    .line 843
    .line 844
    move-object/from16 v21, v8

    .line 845
    .line 846
    :cond_37
    const/4 v1, 0x0

    .line 847
    :goto_23
    and-int/lit16 v2, v0, 0x200

    .line 848
    .line 849
    if-eqz v2, :cond_39

    .line 850
    .line 851
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 852
    .line 853
    invoke-virtual {v2, v10, v9}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(ILjava/lang/String;)Z

    .line 854
    .line 855
    .line 856
    move-result v2

    .line 857
    if-eqz v2, :cond_38

    .line 858
    .line 859
    const/4 v1, 0x1

    .line 860
    const/16 v16, 0x1

    .line 861
    .line 862
    goto :goto_24

    .line 863
    :cond_38
    move/from16 v16, v1

    .line 864
    .line 865
    const/4 v1, 0x1

    .line 866
    goto :goto_24

    .line 867
    :cond_39
    move/from16 v16, v1

    .line 868
    .line 869
    const/4 v1, 0x0

    .line 870
    :goto_24
    and-int/lit16 v0, v0, 0x800

    .line 871
    .line 872
    if-eqz v0, :cond_3a

    .line 873
    .line 874
    move-object/from16 v1, p0

    .line 875
    .line 876
    move-object/from16 v2, p2

    .line 877
    .line 878
    move/from16 v3, p3

    .line 879
    .line 880
    move-object/from16 v4, p1

    .line 881
    .line 882
    move-object/from16 v5, p4

    .line 883
    .line 884
    move-object/from16 v6, p5

    .line 885
    .line 886
    move v7, v12

    .line 887
    move/from16 v8, p6

    .line 888
    .line 889
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    .line 890
    .line 891
    .line 892
    move-result v0

    .line 893
    if-lez v0, :cond_2f

    .line 894
    .line 895
    :goto_25
    const/16 v16, 0x1

    .line 896
    .line 897
    goto/16 :goto_20

    .line 898
    .line 899
    :cond_3a
    move v2, v1

    .line 900
    goto/16 :goto_22

    .line 901
    .line 902
    :cond_3b
    move v0, v3

    .line 903
    move/from16 p6, v5

    .line 904
    .line 905
    move/from16 v20, v6

    .line 906
    .line 907
    move-object/from16 v21, v8

    .line 908
    .line 909
    const-string/jumbo v1, "broadcast"

    .line 910
    .line 911
    .line 912
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    move-result v1

    .line 916
    if-eqz v1, :cond_4d

    .line 917
    .line 918
    if-eqz p5, :cond_4c

    .line 919
    .line 920
    and-int/lit16 v1, v0, 0x2000

    .line 921
    .line 922
    if-eqz v1, :cond_3d

    .line 923
    .line 924
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 925
    .line 926
    invoke-virtual {v1, v10, v9}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(ILjava/lang/String;)Z

    .line 927
    .line 928
    .line 929
    move-result v1

    .line 930
    if-eqz v1, :cond_3c

    .line 931
    .line 932
    const/4 v1, 0x1

    .line 933
    :goto_26
    const/4 v2, 0x1

    .line 934
    goto :goto_27

    .line 935
    :cond_3c
    const/4 v1, 0x0

    .line 936
    goto :goto_26

    .line 937
    :cond_3d
    const/4 v1, 0x0

    .line 938
    const/4 v2, 0x0

    .line 939
    :goto_27
    const v3, 0x8000

    .line 940
    .line 941
    .line 942
    and-int/2addr v3, v0

    .line 943
    if-eqz v3, :cond_3f

    .line 944
    .line 945
    const-string/jumbo v2, "com.google.android.c2dm.intent.RECEIVE"

    .line 946
    .line 947
    .line 948
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v3

    .line 952
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 953
    .line 954
    .line 955
    move-result v2

    .line 956
    if-eqz v2, :cond_3e

    .line 957
    .line 958
    const/4 v1, 0x1

    .line 959
    const/4 v2, 0x1

    .line 960
    :goto_28
    const/4 v3, 0x1

    .line 961
    goto :goto_29

    .line 962
    :cond_3e
    move v2, v1

    .line 963
    const/4 v1, 0x0

    .line 964
    goto :goto_28

    .line 965
    :cond_3f
    move v3, v2

    .line 966
    move v2, v1

    .line 967
    const/4 v1, 0x0

    .line 968
    :goto_29
    const/high16 v4, 0x80000

    .line 969
    .line 970
    and-int/2addr v4, v0

    .line 971
    if-eqz v4, :cond_43

    .line 972
    .line 973
    if-eqz v13, :cond_41

    .line 974
    .line 975
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 976
    .line 977
    .line 978
    move-result v3

    .line 979
    if-eqz v3, :cond_41

    .line 980
    .line 981
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 982
    .line 983
    if-eqz v3, :cond_40

    .line 984
    .line 985
    const-string/jumbo v3, "isSelfIntent :"

    .line 986
    .line 987
    .line 988
    invoke-virtual {v3, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v3

    .line 992
    const-string v4, "BaseRestrictionMgr"

    .line 993
    .line 994
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    .line 996
    .line 997
    :cond_40
    const/4 v3, 0x1

    .line 998
    goto :goto_2a

    .line 999
    :cond_41
    const/4 v3, 0x0

    .line 1000
    :goto_2a
    if-eqz v3, :cond_42

    .line 1001
    .line 1002
    const/4 v2, 0x1

    .line 1003
    :cond_42
    const/4 v3, 0x1

    .line 1004
    :cond_43
    const/high16 v4, 0x100000

    .line 1005
    .line 1006
    and-int/2addr v4, v0

    .line 1007
    if-eqz v4, :cond_45

    .line 1008
    .line 1009
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v3

    .line 1013
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 1014
    .line 1015
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1016
    .line 1017
    invoke-virtual {v4, v7, v13, v9, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1018
    .line 1019
    .line 1020
    move-result v3

    .line 1021
    if-eqz v3, :cond_44

    .line 1022
    .line 1023
    const/4 v2, 0x1

    .line 1024
    :cond_44
    const/4 v3, 0x1

    .line 1025
    :cond_45
    const/high16 v4, 0x40000

    .line 1026
    .line 1027
    and-int/2addr v4, v0

    .line 1028
    if-eqz v4, :cond_48

    .line 1029
    .line 1030
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1031
    .line 1032
    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    .line 1033
    .line 1034
    .line 1035
    move-result v3

    .line 1036
    if-eqz v3, :cond_47

    .line 1037
    .line 1038
    if-eqz v9, :cond_46

    .line 1039
    .line 1040
    sget-object v3, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 1041
    .line 1042
    iget-object v3, v3, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    .line 1043
    .line 1044
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1045
    .line 1046
    .line 1047
    move-result v3

    .line 1048
    if-eqz v3, :cond_46

    .line 1049
    .line 1050
    const-string v3, "Call from Current Launcher app :"

    .line 1051
    .line 1052
    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v3

    .line 1056
    const-string v4, "BaseRestrictionMgr"

    .line 1057
    .line 1058
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    .line 1060
    .line 1061
    const/4 v3, 0x1

    .line 1062
    goto :goto_2b

    .line 1063
    :cond_46
    const/4 v3, 0x0

    .line 1064
    :goto_2b
    if-eqz v3, :cond_47

    .line 1065
    .line 1066
    const/4 v2, 0x1

    .line 1067
    :cond_47
    const/4 v3, 0x1

    .line 1068
    :cond_48
    const/high16 v4, 0x40000000    # 2.0f

    .line 1069
    .line 1070
    and-int/2addr v0, v4

    .line 1071
    if-eqz v0, :cond_4b

    .line 1072
    .line 1073
    if-eqz v9, :cond_49

    .line 1074
    .line 1075
    const-string/jumbo v0, "com.samsung.android.app.spage"

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1079
    .line 1080
    .line 1081
    move-result v0

    .line 1082
    if-eqz v0, :cond_49

    .line 1083
    .line 1084
    const-string v0, "Call from spage app :"

    .line 1085
    .line 1086
    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    const-string v3, "BaseRestrictionMgr"

    .line 1091
    .line 1092
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    .line 1094
    .line 1095
    const/4 v0, 0x1

    .line 1096
    goto :goto_2c

    .line 1097
    :cond_49
    const/4 v0, 0x0

    .line 1098
    :goto_2c
    if-eqz v0, :cond_4a

    .line 1099
    .line 1100
    const/4 v2, 0x1

    .line 1101
    const/16 v16, 0x1

    .line 1102
    .line 1103
    goto/16 :goto_33

    .line 1104
    .line 1105
    :cond_4a
    move/from16 v16, v2

    .line 1106
    .line 1107
    goto/16 :goto_21

    .line 1108
    .line 1109
    :cond_4b
    move/from16 v16, v2

    .line 1110
    .line 1111
    move v2, v3

    .line 1112
    goto/16 :goto_33

    .line 1113
    .line 1114
    :cond_4c
    :goto_2d
    const/4 v1, 0x0

    .line 1115
    const/4 v2, 0x1

    .line 1116
    :goto_2e
    const/16 v16, 0x0

    .line 1117
    .line 1118
    goto/16 :goto_33

    .line 1119
    .line 1120
    :cond_4d
    const-string/jumbo v1, "backup"

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v1

    .line 1127
    if-eqz v1, :cond_4e

    .line 1128
    .line 1129
    const/high16 v1, 0x1000000

    .line 1130
    .line 1131
    and-int/2addr v0, v1

    .line 1132
    if-eqz v0, :cond_50

    .line 1133
    .line 1134
    goto :goto_2d

    .line 1135
    :cond_4e
    const-string/jumbo v1, "job"

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1139
    .line 1140
    .line 1141
    move-result v1

    .line 1142
    if-nez v1, :cond_4f

    .line 1143
    .line 1144
    const-string v1, "alarm"

    .line 1145
    .line 1146
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1147
    .line 1148
    .line 1149
    move-result v1

    .line 1150
    if-eqz v1, :cond_50

    .line 1151
    .line 1152
    :cond_4f
    const/high16 v1, -0x80000000

    .line 1153
    .line 1154
    and-int/2addr v0, v1

    .line 1155
    if-eqz v0, :cond_50

    .line 1156
    .line 1157
    goto :goto_2d

    .line 1158
    :cond_50
    const/4 v1, 0x0

    .line 1159
    const/4 v2, 0x0

    .line 1160
    goto :goto_2e

    .line 1161
    :goto_2f
    and-int/lit8 v1, v0, 0x10

    .line 1162
    .line 1163
    if-eqz v1, :cond_52

    .line 1164
    .line 1165
    move-object/from16 v1, p0

    .line 1166
    .line 1167
    move-object/from16 v2, p2

    .line 1168
    .line 1169
    move/from16 v3, p3

    .line 1170
    .line 1171
    move-object/from16 v4, p1

    .line 1172
    .line 1173
    move-object/from16 v5, p4

    .line 1174
    .line 1175
    move-object/from16 v6, p5

    .line 1176
    .line 1177
    move v7, v12

    .line 1178
    move/from16 v8, p6

    .line 1179
    .line 1180
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    .line 1181
    .line 1182
    .line 1183
    move-result v1

    .line 1184
    if-lez v1, :cond_51

    .line 1185
    .line 1186
    const/4 v1, 0x1

    .line 1187
    :goto_30
    const/4 v2, 0x1

    .line 1188
    goto :goto_31

    .line 1189
    :cond_51
    const/4 v1, 0x0

    .line 1190
    goto :goto_30

    .line 1191
    :cond_52
    const/4 v1, 0x0

    .line 1192
    const/4 v2, 0x0

    .line 1193
    :goto_31
    and-int/lit8 v3, v0, 0x20

    .line 1194
    .line 1195
    if-eqz v3, :cond_54

    .line 1196
    .line 1197
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1198
    .line 1199
    invoke-virtual {v2, v10, v9}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(ILjava/lang/String;)Z

    .line 1200
    .line 1201
    .line 1202
    move-result v2

    .line 1203
    if-eqz v2, :cond_53

    .line 1204
    .line 1205
    const/4 v2, 0x1

    .line 1206
    const/16 v16, 0x1

    .line 1207
    .line 1208
    goto :goto_32

    .line 1209
    :cond_53
    move/from16 v16, v1

    .line 1210
    .line 1211
    const/4 v2, 0x1

    .line 1212
    goto :goto_32

    .line 1213
    :cond_54
    move/from16 v16, v1

    .line 1214
    .line 1215
    :goto_32
    and-int/lit16 v0, v0, 0x80

    .line 1216
    .line 1217
    if-eqz v0, :cond_32

    .line 1218
    .line 1219
    move-object/from16 v1, p0

    .line 1220
    .line 1221
    move-object/from16 v2, p2

    .line 1222
    .line 1223
    move/from16 v3, p3

    .line 1224
    .line 1225
    move-object/from16 v4, p1

    .line 1226
    .line 1227
    move-object/from16 v5, p4

    .line 1228
    .line 1229
    move-object/from16 v6, p5

    .line 1230
    .line 1231
    move v7, v12

    .line 1232
    move/from16 v8, p6

    .line 1233
    .line 1234
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    .line 1235
    .line 1236
    .line 1237
    move-result v0

    .line 1238
    if-lez v0, :cond_2f

    .line 1239
    .line 1240
    goto/16 :goto_25

    .line 1241
    .line 1242
    :goto_33
    if-nez v2, :cond_55

    .line 1243
    .line 1244
    const/4 v0, 0x1

    .line 1245
    const/16 v18, 0x1

    .line 1246
    .line 1247
    goto :goto_34

    .line 1248
    :cond_55
    move/from16 v18, v16

    .line 1249
    .line 1250
    const/4 v0, 0x1

    .line 1251
    :goto_34
    xor-int/lit8 v4, v18, 0x1

    .line 1252
    .line 1253
    move v7, v4

    .line 1254
    goto :goto_35

    .line 1255
    :cond_56
    move/from16 p6, v5

    .line 1256
    .line 1257
    move/from16 v20, v6

    .line 1258
    .line 1259
    move-object/from16 v21, v8

    .line 1260
    .line 1261
    move v7, v4

    .line 1262
    const/4 v1, 0x0

    .line 1263
    :goto_35
    if-nez v7, :cond_57

    .line 1264
    .line 1265
    if-eqz v1, :cond_57

    .line 1266
    .line 1267
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1268
    .line 1269
    const/4 v1, 0x0

    .line 1270
    const/4 v2, 0x1

    .line 1271
    invoke-virtual {v0, v2, v14, v13, v1}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(IILjava/lang/String;Z)V

    .line 1272
    .line 1273
    .line 1274
    :cond_57
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1275
    .line 1276
    iget-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 1277
    .line 1278
    if-eqz v1, :cond_5b

    .line 1279
    .line 1280
    invoke-virtual {v0, v14, v13}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    .line 1281
    .line 1282
    .line 1283
    move-result v1

    .line 1284
    if-eqz v1, :cond_5b

    .line 1285
    .line 1286
    if-nez v7, :cond_5b

    .line 1287
    .line 1288
    const-string/jumbo v1, "broadcast"

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1292
    .line 1293
    .line 1294
    move-result v1

    .line 1295
    if-eqz v1, :cond_58

    .line 1296
    .line 1297
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v1

    .line 1301
    if-eqz v1, :cond_58

    .line 1302
    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1304
    .line 1305
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    .line 1310
    .line 1311
    const-string v2, "-"

    .line 1312
    .line 1313
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v2

    .line 1320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v1

    .line 1327
    goto :goto_36

    .line 1328
    :cond_58
    move-object v1, v11

    .line 1329
    :goto_36
    invoke-virtual {v0, v14, v13, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 1330
    .line 1331
    .line 1332
    const-string v0, "BaseRestrictionMgr"

    .line 1333
    .line 1334
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1335
    .line 1336
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1337
    .line 1338
    .line 1339
    const-string v2, "Package: "

    .line 1340
    .line 1341
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    .line 1346
    .line 1347
    const-string v2, ", userid: "

    .line 1348
    .line 1349
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    .line 1351
    .line 1352
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1353
    .line 1354
    .line 1355
    const-string v2, ", hostingType: "

    .line 1356
    .line 1357
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    .line 1362
    .line 1363
    const-string v2, " is allowed by freecess, caller is: "

    .line 1364
    .line 1365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v1

    .line 1375
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    .line 1377
    .line 1378
    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 1379
    .line 1380
    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 1381
    .line 1382
    if-eqz v0, :cond_5a

    .line 1383
    .line 1384
    if-eqz p5, :cond_59

    .line 1385
    .line 1386
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v0

    .line 1390
    :goto_37
    move-object v4, v0

    .line 1391
    goto :goto_38

    .line 1392
    :cond_59
    const-string v0, ""

    .line 1393
    .line 1394
    goto :goto_37

    .line 1395
    :goto_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1396
    .line 1397
    .line 1398
    move-object v0, v13

    .line 1399
    move-object/from16 v1, p2

    .line 1400
    .line 1401
    move-object/from16 v2, p4

    .line 1402
    .line 1403
    move/from16 v3, p11

    .line 1404
    .line 1405
    move/from16 v5, p10

    .line 1406
    .line 1407
    move-object/from16 v6, p9

    .line 1408
    .line 1409
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 1410
    .line 1411
    .line 1412
    :cond_5a
    monitor-exit v15

    .line 1413
    const/4 v0, 0x0

    .line 1414
    return v0

    .line 1415
    :cond_5b
    if-nez v7, :cond_5c

    .line 1416
    .line 1417
    move-object/from16 v0, v21

    .line 1418
    .line 1419
    if-eqz v0, :cond_5c

    .line 1420
    .line 1421
    iget-boolean v1, v0, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    .line 1422
    .line 1423
    if-nez v1, :cond_5c

    .line 1424
    .line 1425
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1426
    .line 1427
    const/16 v2, 0x1000

    .line 1428
    .line 1429
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 1430
    .line 1431
    .line 1432
    :cond_5c
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 1433
    .line 1434
    if-eqz v0, :cond_5d

    .line 1435
    .line 1436
    if-eqz v7, :cond_5d

    .line 1437
    .line 1438
    const-string v0, "BaseRestrictionMgr"

    .line 1439
    .line 1440
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1441
    .line 1442
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1443
    .line 1444
    .line 1445
    const-string v2, "Package: "

    .line 1446
    .line 1447
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    .line 1452
    .line 1453
    const-string v2, ", userid: "

    .line 1454
    .line 1455
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    .line 1457
    .line 1458
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1459
    .line 1460
    .line 1461
    const-string v2, ", hostingType: "

    .line 1462
    .line 1463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    .line 1465
    .line 1466
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    .line 1468
    .line 1469
    const-string v2, " is Restricted by policy: "

    .line 1470
    .line 1471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    .line 1473
    .line 1474
    move/from16 v2, p6

    .line 1475
    .line 1476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1477
    .line 1478
    .line 1479
    const-string v2, " caller is: "

    .line 1480
    .line 1481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    .line 1486
    .line 1487
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v1

    .line 1491
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    .line 1493
    .line 1494
    :cond_5d
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1495
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1496
    .line 1497
    monitor-enter v1

    .line 1498
    :try_start_4
    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1499
    .line 1500
    monitor-exit v1

    .line 1501
    if-nez v0, :cond_64

    .line 1502
    .line 1503
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 1504
    .line 1505
    if-eqz v0, :cond_64

    .line 1506
    .line 1507
    move-object/from16 v0, p0

    .line 1508
    .line 1509
    iget-object v0, v0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    .line 1510
    .line 1511
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 1512
    .line 1513
    .line 1514
    move-result v0

    .line 1515
    if-ne v0, v14, :cond_64

    .line 1516
    .line 1517
    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 1518
    .line 1519
    const-string v0, "activity"

    .line 1520
    .line 1521
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1522
    .line 1523
    .line 1524
    move-result v0

    .line 1525
    if-eqz v0, :cond_5e

    .line 1526
    .line 1527
    goto/16 :goto_3a

    .line 1528
    .line 1529
    :cond_5e
    move/from16 v6, v20

    .line 1530
    .line 1531
    const/4 v0, 0x1

    .line 1532
    if-ne v6, v0, :cond_5f

    .line 1533
    .line 1534
    if-eqz v17, :cond_5f

    .line 1535
    .line 1536
    goto :goto_3a

    .line 1537
    :cond_5f
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1538
    .line 1539
    .line 1540
    move-result v0

    .line 1541
    if-nez v0, :cond_64

    .line 1542
    .line 1543
    sget-object v0, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 1544
    .line 1545
    invoke-virtual {v0, v12}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    .line 1546
    .line 1547
    .line 1548
    move-result v0

    .line 1549
    if-eqz v0, :cond_60

    .line 1550
    .line 1551
    goto :goto_3a

    .line 1552
    :cond_60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1553
    .line 1554
    .line 1555
    move-result-wide v14

    .line 1556
    if-eqz v7, :cond_61

    .line 1557
    .line 1558
    if-nez v6, :cond_64

    .line 1559
    .line 1560
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 1561
    .line 1562
    .line 1563
    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 1564
    .line 1565
    move-object v1, v13

    .line 1566
    move v2, v7

    .line 1567
    move-object/from16 v3, p2

    .line 1568
    .line 1569
    move-wide v4, v14

    .line 1570
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateAppStartUpInfoMsgToDBHandler(Ljava/lang/String;ZLjava/lang/String;J)V

    .line 1571
    .line 1572
    .line 1573
    goto :goto_3a

    .line 1574
    :cond_61
    if-eqz v6, :cond_62

    .line 1575
    .line 1576
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 1577
    .line 1578
    .line 1579
    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 1580
    .line 1581
    move-object v1, v13

    .line 1582
    move v2, v7

    .line 1583
    move-object/from16 v3, p2

    .line 1584
    .line 1585
    move-wide v4, v14

    .line 1586
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateAppStartUpInfoMsgToDBHandler(Ljava/lang/String;ZLjava/lang/String;J)V

    .line 1587
    .line 1588
    .line 1589
    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1590
    .line 1591
    const-string/jumbo v1, "markAppStartUpResult: auto run "

    .line 1592
    .line 1593
    .line 1594
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1595
    .line 1596
    .line 1597
    if-nez v6, :cond_63

    .line 1598
    .line 1599
    const-string/jumbo v1, "off"

    .line 1600
    .line 1601
    .line 1602
    goto :goto_39

    .line 1603
    :cond_63
    const-string/jumbo v1, "on"

    .line 1604
    .line 1605
    .line 1606
    :goto_39
    const-string v2, " case : "

    .line 1607
    .line 1608
    const-string v3, " start process "

    .line 1609
    .line 1610
    invoke-static {v0, v1, v2, v9, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    .line 1612
    .line 1613
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    .line 1615
    .line 1616
    const-string v1, " at "

    .line 1617
    .line 1618
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    .line 1620
    .line 1621
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v0

    .line 1628
    const-string v1, "MARsComponentTracker"

    .line 1629
    .line 1630
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    .line 1632
    .line 1633
    :cond_64
    :goto_3a
    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 1634
    .line 1635
    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 1636
    .line 1637
    if-eqz v0, :cond_66

    .line 1638
    .line 1639
    if-nez v7, :cond_66

    .line 1640
    .line 1641
    if-eqz p5, :cond_65

    .line 1642
    .line 1643
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v0

    .line 1647
    :goto_3b
    move-object v4, v0

    .line 1648
    goto :goto_3c

    .line 1649
    :cond_65
    const-string v0, ""

    .line 1650
    .line 1651
    goto :goto_3b

    .line 1652
    :goto_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1653
    .line 1654
    .line 1655
    move-object v0, v13

    .line 1656
    move-object/from16 v1, p2

    .line 1657
    .line 1658
    move-object/from16 v2, p4

    .line 1659
    .line 1660
    move/from16 v3, p11

    .line 1661
    .line 1662
    move/from16 v5, p10

    .line 1663
    .line 1664
    move-object/from16 v6, p9

    .line 1665
    .line 1666
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 1667
    .line 1668
    .line 1669
    :cond_66
    return v7

    .line 1670
    :catchall_3
    move-exception v0

    .line 1671
    move-object v2, v0

    .line 1672
    monitor-exit v1

    .line 1673
    throw v2

    .line 1674
    :goto_3d
    :try_start_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1675
    throw v0
.end method
