.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/android/server/devicepolicy/CallerIdentity;

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Intent;Lcom/android/server/devicepolicy/CallerIdentity;Landroid/os/IBinder;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda2;->f$1:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda2;->f$3:Landroid/os/IBinder;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda2;->f$4:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 2
    .line 3
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda2;->f$1:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda2;->f$3:Landroid/os/IBinder;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda2;->f$4:Z

    .line 10
    .line 11
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iget v1, v1, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 14
    .line 15
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    new-instance v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;

    .line 20
    .line 21
    invoke-direct {v5, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/IBinder;)V

    .line 22
    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v0, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, -0x1

    .line 29
    move-object v1, v3

    .line 30
    move-object v2, v10

    .line 31
    move-object v3, v4

    .line 32
    move-object v4, v0

    .line 33
    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    const/16 v0, 0x16

    .line 37
    .line 38
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 55
    .line 56
    .line 57
    return-void
.end method
