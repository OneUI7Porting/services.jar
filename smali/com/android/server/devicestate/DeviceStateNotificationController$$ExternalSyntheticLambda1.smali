.class public final synthetic Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicestate/DeviceStateNotificationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateNotificationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicestate/DeviceStateNotificationController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicestate/DeviceStateNotificationController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 4
    .line 5
    const-string v0, "DeviceStateManager"

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
