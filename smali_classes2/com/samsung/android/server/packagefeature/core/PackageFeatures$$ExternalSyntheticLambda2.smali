.class public final synthetic Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/Consumer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/Consumer;

    .line 2
    .line 3
    check-cast p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
