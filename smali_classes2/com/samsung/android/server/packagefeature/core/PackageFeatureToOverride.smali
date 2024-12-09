.class public Lcom/samsung/android/server/packagefeature/core/PackageFeatureToOverride;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureToOverride;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/server/packagefeature/core/PackageFeatureToOverride;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureToOverride$LazyHolder;->sInstance:Lcom/samsung/android/server/packagefeature/core/PackageFeatureToOverride;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getPlatformCompat()Lcom/android/server/compat/PlatformCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureToOverride;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "platform_compat"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/compat/PlatformCompat;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureToOverride;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureToOverride;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 17
    .line 18
    return-object p0
.end method
