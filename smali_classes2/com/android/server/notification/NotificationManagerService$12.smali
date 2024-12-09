.class public final Lcom/android/server/notification/NotificationManagerService$12;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAutomaticRuleStatusChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p3

    .line 6
    move-object v3, p4

    .line 7
    move v4, p2

    .line 8
    move v5, p1

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService$12;Ljava/lang/String;Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onConfigChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$12;Landroid/app/NotificationManager$Policy;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$12;Landroid/app/NotificationManager$Policy;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onZenModeChanged()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p0}, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
