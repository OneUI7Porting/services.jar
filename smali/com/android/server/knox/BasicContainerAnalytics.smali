.class public final Lcom/android/server/knox/BasicContainerAnalytics;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final CONTAINER_DO:I

.field public static final CONTAINER_WPCOD:I

.field public static final DEBUG:Z


# instance fields
.field public final context:Landroid/content/Context;

.field public final ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.build.type"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "eng"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/android/server/knox/BasicContainerAnalytics;->DEBUG:Z

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    sput v0, Lcom/android/server/knox/BasicContainerAnalytics;->CONTAINER_DO:I

    .line 19
    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    sput v0, Lcom/android/server/knox/BasicContainerAnalytics;->CONTAINER_WPCOD:I

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/knox/BasicContainerAnalytics;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getContainerType(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string/jumbo p0, "userId = "

    .line 11
    .line 12
    .line 13
    const-string v0, " is not an enterprise user."

    .line 14
    .line 15
    const-string v2, "BasicContainerAnalytics"

    .line 16
    .line 17
    invoke-static {p1, p0, v0, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    move v1, v2

    .line 29
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    sget v1, Lcom/android/server/knox/BasicContainerAnalytics;->CONTAINER_DO:I

    .line 36
    .line 37
    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/BasicContainerAnalytics;->context:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string/jumbo v0, "user_setup_complete"

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    const/4 v0, 0x1

    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    move p0, v0

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move p0, v2

    .line 56
    :goto_0
    const-string/jumbo v3, "ro.organization_owned"

    .line 57
    .line 58
    .line 59
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const-string/jumbo v4, "true"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_4

    .line 77
    .line 78
    move v2, v0

    .line 79
    :cond_4
    if-nez v2, :cond_5

    .line 80
    .line 81
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    if-nez p0, :cond_5

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    move v0, v2

    .line 91
    :goto_1
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_6

    .line 98
    .line 99
    sget v1, Lcom/android/server/knox/BasicContainerAnalytics;->CONTAINER_WPCOD:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    :cond_6
    :goto_2
    return v1
.end method

.method public final logActivityChange(IILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v2, "cTp"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v2, "pN"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move p1, v2

    .line 36
    :goto_0
    const-string v3, "OToE"

    .line 37
    .line 38
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    invoke-static {p2, p3}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 46
    .line 47
    const-string/jumbo p3, "pV"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p2}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getProfileOwnerPackage(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getDeviceOwnerPackage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-static {p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->hasKnoxPermission(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move p3, v2

    .line 69
    :goto_1
    if-eqz p2, :cond_2

    .line 70
    .line 71
    invoke-static {p2}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->hasKnoxPermission(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v3, "["

    .line 78
    .line 79
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p1, "] = "

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p1, " , ["

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, "] : "

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const-string p2, "IFKnoxAnalyticsContainer"

    .line 114
    .line 115
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    and-int p1, p3, v2

    .line 119
    .line 120
    const-string/jumbo p2, "cM"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    const-string p1, "ACTIVITY_STAMP"

    .line 127
    .line 128
    invoke-virtual {p0, v1, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    return-void
.end method

.method public final logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->personaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 13
    .line 14
    const-string v1, "KNOX_CONTAINER"

    .line 15
    .line 16
    const/4 v2, 0x6

    .line 17
    invoke-direct {v0, v1, v2, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_5

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    instance-of v4, v3, Ljava/lang/Integer;

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    check-cast v3, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    instance-of v4, v3, Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v4, :cond_3

    .line 57
    .line 58
    check-cast v3, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    instance-of v4, v3, Ljava/lang/Long;

    .line 65
    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    check-cast v3, Ljava/lang/Long;

    .line 69
    .line 70
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    instance-of v4, v3, [Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    check-cast v3, [Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->sendAnalyticsLog(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 88
    .line 89
    .line 90
    sget-boolean p0, Lcom/android/server/knox/BasicContainerAnalytics;->DEBUG:Z

    .line 91
    .line 92
    if-eqz p0, :cond_6

    .line 93
    .line 94
    const-string p0, " / "

    .line 95
    .line 96
    invoke-static {p2, p0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    const-string p1, "BasicContainerAnalytics"

    .line 112
    .line 113
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_6
    return-void
.end method

.method public final logWorkAppUsgae(IIJLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "cTp"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo p1, "pN"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo p1, "usgT"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 34
    .line 35
    .line 36
    const-string/jumbo p1, "cnt"

    .line 37
    .line 38
    .line 39
    int-to-long p2, p2

    .line 40
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 41
    .line 42
    .line 43
    const-string p1, "WORKAPP_USAGE"

    .line 44
    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method
