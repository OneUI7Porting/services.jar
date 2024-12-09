.class public final synthetic Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    iget-boolean p0, p1, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 4
    .line 5
    return p0
.end method
