.class public Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 15
    .line 16
    return-void
.end method
