.class public final Lcom/android/server/pm/PerPackageReadTimeouts;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final sha256certificate:[B

.field public final timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

.field public final versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PerPackageReadTimeouts;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PerPackageReadTimeouts;->sha256certificate:[B

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PerPackageReadTimeouts;->versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/PerPackageReadTimeouts;->timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    .line 11
    .line 12
    return-void
.end method
