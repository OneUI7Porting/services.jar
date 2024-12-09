.class public final Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;
.super Landroid/database/ContentObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final URI_PACKAGE_POLICY_DISABLED:Landroid/net/Uri;


# instance fields
.field public final mCallback:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;

.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "package_policy_disabled"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->URI_PACKAGE_POLICY_DISABLED:Landroid/net/Uri;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mCallback:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    const-string/jumbo p3, "package_policy_disabled"

    .line 10
    .line 11
    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object p4

    .line 18
    invoke-static {p4, p3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const/4 p4, -0x1

    .line 30
    invoke-virtual {p1, p3, p2, p0, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    sget-object p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->URI_PACKAGE_POLICY_DISABLED:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mCallback:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;

    .line 13
    .line 14
    check-cast p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 15
    .line 16
    const-string/jumbo p1, "onSettingsChanged, mAllFeaturesDisabled="

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mSettings:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string/jumbo v0, "package_policy_disabled"

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const/4 v0, 0x1

    .line 36
    if-ne p2, v0, :cond_1

    .line 37
    .line 38
    move v1, v0

    .line 39
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter p2

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    .line 43
    .line 44
    iget-boolean v2, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mAllFeaturesDisabled:Z

    .line 45
    .line 46
    if-ne v2, v1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iput-boolean v1, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mAllFeaturesDisabled:Z

    .line 50
    .line 51
    new-instance v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {v2, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->forAllGroups(Ljava/util/function/Consumer;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const/4 v0, 0x0

    .line 74
    const/4 v1, 0x3

    .line 75
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    monitor-exit p2

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0

    .line 83
    :cond_3
    :goto_1
    return-void
.end method
