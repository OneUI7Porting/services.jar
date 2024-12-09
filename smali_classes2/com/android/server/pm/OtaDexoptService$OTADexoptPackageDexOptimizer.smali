.class public final Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;
.super Lcom/android/server/pm/PackageDexOptimizer;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public final adjustDexoptFlags(I)I
    .locals 0

    .line 1
    or-int/lit8 p0, p1, 0x40

    .line 2
    .line 3
    return p0
.end method

.method public final adjustDexoptNeeded(I)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, -0x3

    .line 4
    return p0

    .line 5
    :cond_0
    return p1
.end method
