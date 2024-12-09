.class public final Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$MinAspectRatioOverrides;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mSystemOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$SystemUserMinAspectRatioOverrides;

.field public final mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$MinAspectRatioOverrides;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 5
    .line 6
    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 7
    .line 8
    sget-object v2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->ASPECT_RATIO_DIRECTORY:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v6, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$MinAspectRatioOverrides$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v6, p0}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$MinAspectRatioOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$MinAspectRatioOverrides;)V

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const-string v3, "FixedAspectRatioPackageMap"

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    move-object v0, v7

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;ZLcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$MinAspectRatioOverrides$$ExternalSyntheticLambda0;)V

    .line 23
    .line 24
    .line 25
    iput-object v7, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$MinAspectRatioOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$SystemUserMinAspectRatioOverrides;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$SystemUserMinAspectRatioOverrides;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$MinAspectRatioOverrides;->mSystemOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$SystemUserMinAspectRatioOverrides;

    .line 33
    .line 34
    return-void
.end method
