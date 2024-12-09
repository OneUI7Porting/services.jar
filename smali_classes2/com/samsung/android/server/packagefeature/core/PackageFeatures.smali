.class public final Lcom/samsung/android/server/packagefeature/core/PackageFeatures;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mAllFeaturesDisabled:Z

.field public final mGroups:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->values()[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_0
    if-ge v3, v1, :cond_2

    .line 19
    .line 20
    aget-object v10, v0, v3

    .line 21
    .line 22
    iget-boolean v4, v10, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mEnabled:Z

    .line 23
    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v5, "PackageFeatureGroup("

    .line 29
    .line 30
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v5, v10, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 34
    .line 35
    const-string v6, ") is not enabled."

    .line 36
    .line 37
    invoke-static {v4, v5, v6}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x3

    .line 43
    invoke-virtual {p3, v6, v4, v5}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_0
    iget-boolean v4, v10, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mUnformatted:Z

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    new-instance v11, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;

    .line 52
    .line 53
    new-instance v9, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda1;

    .line 54
    .line 55
    invoke-direct {v9, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatures;)V

    .line 56
    .line 57
    .line 58
    move-object v4, v11

    .line 59
    move-object v5, p1

    .line 60
    move-object v6, p2

    .line 61
    move-object v7, p3

    .line 62
    move-object v8, v10

    .line 63
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda1;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    new-instance v11, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    .line 68
    .line 69
    new-instance v9, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda1;

    .line 70
    .line 71
    invoke-direct {v9, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatures;)V

    .line 72
    .line 73
    .line 74
    move-object v4, v11

    .line 75
    move-object v5, p1

    .line 76
    move-object v6, p2

    .line 77
    move-object v7, p3

    .line 78
    move-object v8, v10

    .line 79
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/util/function/Supplier;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    .line 83
    .line 84
    iget-object v5, v10, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 85
    .line 86
    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    .line 88
    invoke-virtual {v4, v5, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-static {}, Lcom/samsung/android/server/packagefeature/PackageFeature;->values()[Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    array-length p1, p0

    .line 99
    :goto_3
    if-ge v2, p1, :cond_3

    .line 100
    .line 101
    aget-object p2, p0, v2

    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_3
    return-void
.end method


# virtual methods
.method public final forAllGroups(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    .line 2
    .line 3
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
