.class public final synthetic Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda1;->f$0:Landroid/os/IBinder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda1;->f$0:Landroid/os/IBinder;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    .line 6
    .line 7
    if-ne p1, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method
