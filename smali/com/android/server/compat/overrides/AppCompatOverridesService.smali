.class public final Lcom/android/server/compat/overrides/AppCompatOverridesService;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final SUPPORTED_NAMESPACES:Ljava/util/List;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDeviceConfigListeners:Ljava/util/List;

.field public final mOverridesParser:Lcom/android/server/compat/overrides/AppCompatOverridesParser;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageReceiver:Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;

.field public final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public final mSupportedNamespaces:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "app_compat_overrides"

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->SUPPORTED_NAMESPACES:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/compat/IPlatformCompat;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mSupportedNamespaces:Ljava/util/List;

    .line 15
    .line 16
    new-instance p2, Lcom/android/server/compat/overrides/AppCompatOverridesParser;

    .line 17
    .line 18
    invoke-direct {p2, v0}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;-><init>(Landroid/content/pm/PackageManager;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mOverridesParser:Lcom/android/server/compat/overrides/AppCompatOverridesParser;

    .line 22
    .line 23
    new-instance p2, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;

    .line 24
    .line 25
    invoke-direct {p2, p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;-><init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPackageReceiver:Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;

    .line 29
    .line 30
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mDeviceConfigListeners:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Ljava/lang/String;

    .line 52
    .line 53
    iget-object p3, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mDeviceConfigListeners:Ljava/util/List;

    .line 54
    .line 55
    new-instance v0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;-><init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    check-cast p3, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public static getOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;
    .locals 7

    .line 1
    const-string/jumbo v0, "owned_change_ids"

    .line 2
    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, ","

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    array-length v1, p0

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-ge v2, v1, :cond_1

    .line 37
    .line 38
    aget-object v3, p0, v2

    .line 39
    .line 40
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v4

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v6, "Invalid change ID in \'owned_change_ids\' flag: "

    .line 56
    .line 57
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v5, "AppCompatOverridesParser"

    .line 68
    .line 69
    invoke-static {v5, v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move-object p0, v0

    .line 76
    :goto_2
    return-object p0
.end method


# virtual methods
.method public final applyOverrides(Landroid/provider/DeviceConfig$Properties;Ljava/util/Set;Ljava/util/Map;)V
    .locals 11

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "owned_change_ids"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "remove_overrides"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v2, Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_5

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {p3, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    move-object v10, v4

    .line 57
    check-cast v10, Ljava/util/Set;

    .line 58
    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {p0, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    const-string v4, ""

    .line 70
    .line 71
    invoke-virtual {p1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v7

    .line 79
    iget-object v4, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mOverridesParser:Lcom/android/server/compat/overrides/AppCompatOverridesParser;

    .line 80
    .line 81
    move-object v5, v6

    .line 82
    move-object v6, v3

    .line 83
    move-object v9, v10

    .line 84
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->parsePackageOverrides(Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-nez v5, :cond_2

    .line 93
    .line 94
    new-instance v5, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 95
    .line 96
    invoke-direct {v5, v4}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_2
    new-instance v5, Landroid/util/ArraySet;

    .line 103
    .line 104
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-eqz v7, :cond_4

    .line 116
    .line 117
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    check-cast v7, Ljava/lang/Long;

    .line 122
    .line 123
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-nez v8, :cond_3

    .line 128
    .line 129
    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-nez v8, :cond_3

    .line 134
    .line 135
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-nez v4, :cond_0

    .line 144
    .line 145
    new-instance v4, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 146
    .line 147
    invoke-direct {v4, v5}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;-><init>(Ljava/util/Set;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_5
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_6

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_6
    new-instance p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;

    .line 162
    .line 163
    invoke-direct {p1, v1}, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;-><init>(Ljava/util/Map;)V

    .line 164
    .line 165
    .line 166
    :try_start_0
    iget-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 167
    .line 168
    invoke-interface {p2, p1}, Lcom/android/internal/compat/IPlatformCompat;->putAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :catch_0
    move-exception p1

    .line 173
    const-string p2, "AppCompatOverridesService"

    .line 174
    .line 175
    const-string p3, "Failed to call IPlatformCompat#putAllOverridesOnReleaseBuilds"

    .line 176
    .line 177
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .line 179
    .line 180
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->removeAllPackageOverrides(Ljava/util/Map;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method public final finalize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mDeviceConfigListeners:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPackageReceiver:Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final getOverridesToRemove(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;
    .locals 17

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    const-string/jumbo v0, "remove_overrides"

    .line 4
    .line 5
    .line 6
    const-string v2, ""

    .line 7
    .line 8
    move-object/from16 v3, p1

    .line 9
    .line 10
    invoke-static {v3, v0, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    move-object/from16 v0, p0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mOverridesParser:Lcom/android/server/compat/overrides/AppCompatOverridesParser;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_0
    new-instance v4, Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v5, "*"

    .line 39
    .line 40
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    const-string v7, "Wildcard can\'t be used in \'remove_overrides\' flag with an empty owned_change_ids\' flag"

    .line 45
    .line 46
    const-string v8, "AppCompatOverridesParser"

    .line 47
    .line 48
    if-eqz v6, :cond_3

    .line 49
    .line 50
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :cond_1
    iget-object v0, v0, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    .line 67
    const/high16 v2, 0x400000

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 88
    .line 89
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    move-object v0, v4

    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_3
    new-instance v6, Landroid/util/KeyValueListParser;

    .line 99
    .line 100
    const/16 v0, 0x2c

    .line 101
    .line 102
    invoke-direct {v6, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 103
    .line 104
    .line 105
    :try_start_0
    invoke-virtual {v6, v3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .line 107
    .line 108
    const/4 v9, 0x0

    .line 109
    :goto_1
    invoke-virtual {v6}, Landroid/util/KeyValueListParser;->size()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-ge v9, v0, :cond_2

    .line 114
    .line 115
    invoke-virtual {v6, v9}, Landroid/util/KeyValueListParser;->keyAt(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    invoke-virtual {v6, v10, v2}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    if-eqz v11, :cond_5

    .line 128
    .line 129
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_4
    invoke-virtual {v4, v10, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_5
    const-string v11, ":"

    .line 144
    .line 145
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    array-length v12, v11

    .line 150
    const/4 v13, 0x0

    .line 151
    :goto_2
    if-ge v13, v12, :cond_6

    .line 152
    .line 153
    aget-object v14, v11, v13

    .line 154
    .line 155
    :try_start_1
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v15

    .line 159
    new-instance v0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$$ExternalSyntheticLambda0;

    .line 160
    .line 161
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-interface {v4, v10, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Ljava/util/Set;

    .line 169
    .line 170
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 171
    .line 172
    .line 173
    move-result-object v15

    .line 174
    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :catch_0
    move-exception v0

    .line 179
    new-instance v15, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v3, "Invalid change ID in \'remove_overrides\' flag: "

    .line 182
    .line 183
    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-static {v8, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .line 195
    .line 196
    :goto_3
    add-int/lit8 v13, v13, 0x1

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_6
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :catch_1
    move-exception v0

    .line 203
    move-object v1, v0

    .line 204
    const-string v0, "Invalid format in \'remove_overrides\' flag: "

    .line 205
    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v8, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .line 212
    .line 213
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    :goto_5
    return-object v0
.end method

.method public final getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    const/high16 v0, 0x400000

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-wide p0, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 10
    .line 11
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public registerDeviceConfigListeners()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mDeviceConfigListeners:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->mNamespace:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, v0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public registerPackageReceiver()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPackageReceiver:Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p0, v1, v2, v2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final removeAllPackageOverrides(Ljava/util/Map;)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroid/util/ArrayMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;-><init>(Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 17
    .line 18
    invoke-interface {p0, v0}, Lcom/android/internal/compat/IPlatformCompat;->removeAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-string p1, "AppCompatOverridesService"

    .line 24
    .line 25
    const-string v0, "Failed to call IPlatformCompat#removeAllOverridesOnReleaseBuilds"

    .line 26
    .line 27
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
