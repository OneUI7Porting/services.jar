.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/server/pm/ScanPartition;

    .line 2
    .line 3
    check-cast p1, Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/android/server/pm/ScanPartition;-><init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
