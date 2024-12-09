.class public abstract Lcom/samsung/android/server/packagefeature/core/PackageFeatureToOverride$LazyHolder;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final sInstance:Lcom/samsung/android/server/packagefeature/core/PackageFeatureToOverride;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureToOverride;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureToOverride;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureToOverride$LazyHolder;->sInstance:Lcom/samsung/android/server/packagefeature/core/PackageFeatureToOverride;

    .line 8
    .line 9
    return-void
.end method
