.class public final synthetic Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/app/role/RoleManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/role/RoleManager;

    .line 10
    .line 11
    const-string v0, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/lang/String;

    .line 31
    .line 32
    :goto_0
    return-object p0
.end method