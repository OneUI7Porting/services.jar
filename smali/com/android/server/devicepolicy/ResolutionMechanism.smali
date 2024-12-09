.class public abstract Lcom/android/server/devicepolicy/ResolutionMechanism;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public abstract getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
.end method

.method public abstract resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;
.end method

.method public resolve(Ljava/util/List;)Landroid/app/admin/PolicyValue;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
