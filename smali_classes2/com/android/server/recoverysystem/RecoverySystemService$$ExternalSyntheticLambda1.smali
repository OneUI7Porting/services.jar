.class public final synthetic Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 2
    .line 3
    new-instance p0, Landroid/apex/CompressedApexInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/apex/CompressedApexInfo;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Landroid/apex/CompressedApexInfo;->moduleName:Ljava/lang/String;

    .line 11
    .line 12
    iget-wide v0, p1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->decompressedSize:J

    .line 13
    .line 14
    iput-wide v0, p0, Landroid/apex/CompressedApexInfo;->decompressedSize:J

    .line 15
    .line 16
    iget-wide v0, p1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->version:J

    .line 17
    .line 18
    iput-wide v0, p0, Landroid/apex/CompressedApexInfo;->versionCode:J

    .line 19
    .line 20
    return-object p0
.end method
