.class public final Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final sigHashes:Ljava/util/ArrayList;

.field public final versionCode:J


# direct methods
.method public constructor <init>(JLjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method