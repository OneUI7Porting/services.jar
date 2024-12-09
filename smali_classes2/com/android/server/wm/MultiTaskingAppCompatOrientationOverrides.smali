.class public final Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final SUPPORTS_DEFAULT_ENABLED:Z


# instance fields
.field public mDefaultDisabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public mDefaultEnabled:Z

.field public mDefaultEnabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mDumpInterface:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$$ExternalSyntheticLambda0;

.field public mTabletRotationCompatList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mUserOverride:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->SUPPORTS_DEFAULT_ENABLED:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v4, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 10
    .line 11
    sget-object v2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->PACKAGE_SETTINGS_DIRECTORY:Ljava/lang/String;

    .line 12
    .line 13
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LANDSCAPE_VIEW_FOR_PORTRAIT_APPS:Z

    .line 14
    .line 15
    const/16 v1, 0x40

    .line 16
    .line 17
    const-string v3, "OrientationControlPackageMap"

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v0, v7

    .line 21
    move v5, v8

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;ZLcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$MinAspectRatioOverrides$$ExternalSyntheticLambda0;)V

    .line 23
    .line 24
    .line 25
    iput-object v7, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mUserOverride:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 26
    .line 27
    if-eqz v8, :cond_0

    .line 28
    .line 29
    sget-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->SUPPORTS_DEFAULT_ENABLED:Z

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->setDefaultEnabled(Z)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public final getRespectOrientationRequest(ILjava/lang/String;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-static {p1, v1, v0}, Lcom/android/server/wm/MultiTaskingAppCompatUtils;->getAdjustedUserId(IILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    sget-object v1, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    .line 11
    .line 12
    new-instance v2, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v2, p2, v3}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 28
    :goto_1
    const/4 v2, -0x1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mUserOverride:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 34
    .line 35
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Integer;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    goto :goto_2

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto/16 :goto_8

    .line 50
    .line 51
    :cond_3
    move v1, v2

    .line 52
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    const/16 v3, 0x1f

    .line 54
    .line 55
    if-eq v1, v2, :cond_4

    .line 56
    .line 57
    goto :goto_5

    .line 58
    :cond_4
    monitor-enter p0

    .line 59
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabled:Z

    .line 60
    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultDisabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 64
    .line 65
    if-eqz v1, :cond_5

    .line 66
    .line 67
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    monitor-exit p0

    .line 74
    move v1, v0

    .line 75
    goto :goto_4

    .line 76
    :catchall_1
    move-exception p1

    .line 77
    goto :goto_7

    .line 78
    :cond_5
    sget-object v1, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    .line 79
    .line 80
    new-instance v4, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    const/4 v5, 0x1

    .line 83
    invoke-direct {v4, p2, v5}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v4, p1}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_6

    .line 91
    .line 92
    new-instance v4, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    .line 93
    .line 94
    const/4 v5, 0x3

    .line 95
    invoke-direct {v4, p2, v5}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v4, p1}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_6

    .line 103
    .line 104
    monitor-exit p0

    .line 105
    :goto_3
    move v1, v3

    .line 106
    goto :goto_4

    .line 107
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 108
    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_7

    .line 116
    .line 117
    monitor-exit p0

    .line 118
    goto :goto_3

    .line 119
    :cond_7
    monitor-exit p0

    .line 120
    move v1, v2

    .line 121
    :goto_4
    if-eq v1, v2, :cond_8

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_8
    move v1, v2

    .line 125
    :goto_5
    if-ne v1, v2, :cond_9

    .line 126
    .line 127
    move v0, v2

    .line 128
    goto :goto_6

    .line 129
    :cond_9
    and-int/lit16 p0, v1, -0xc1

    .line 130
    .line 131
    if-eqz p0, :cond_b

    .line 132
    .line 133
    const/4 p1, 0x7

    .line 134
    if-eq p0, p1, :cond_b

    .line 135
    .line 136
    if-eq p0, v3, :cond_b

    .line 137
    .line 138
    const/16 p2, 0x20

    .line 139
    .line 140
    if-eq p0, p2, :cond_b

    .line 141
    .line 142
    and-int/lit8 p0, v1, 0x7

    .line 143
    .line 144
    if-eqz p0, :cond_c

    .line 145
    .line 146
    and-int/lit8 p0, v1, 0x18

    .line 147
    .line 148
    if-eqz p0, :cond_a

    .line 149
    .line 150
    move v0, v3

    .line 151
    goto :goto_6

    .line 152
    :cond_a
    move v0, p1

    .line 153
    goto :goto_6

    .line 154
    :cond_b
    move v0, p0

    .line 155
    :cond_c
    :goto_6
    return v0

    .line 156
    :goto_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    throw p1

    .line 158
    :goto_8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    throw p1
.end method

.method public final setDefaultEnabled(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setDefaultEnabled: "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    const-string v1, "MultiTaskingAppCompat"

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabled:Z

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " to "

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabled:Z

    .line 33
    .line 34
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LANDSCAPE_VIEW_FOR_PORTRAIT_APPS:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    new-instance p1, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 41
    .line 42
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION_DISABLED:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 43
    .line 44
    invoke-direct {p1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultDisabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    new-instance p1, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 53
    .line 54
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 55
    .line 56
    invoke-direct {p1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 60
    .line 61
    :goto_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    new-instance p1, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 66
    .line 67
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->TABLET_APP_ROTATION_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 68
    .line 69
    invoke-direct {p1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mTabletRotationCompatList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 73
    .line 74
    :cond_1
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p1
.end method
