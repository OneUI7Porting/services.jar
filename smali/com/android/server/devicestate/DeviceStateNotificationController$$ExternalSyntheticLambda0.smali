.class public final synthetic Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicestate/DeviceStateNotificationController;

.field public final synthetic f$1:Landroid/app/NotificationChannel;

.field public final synthetic f$2:Landroid/app/Notification$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateNotificationController;Landroid/app/NotificationChannel;Landroid/app/Notification$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicestate/DeviceStateNotificationController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationChannel;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$2:Landroid/app/Notification$Builder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicestate/DeviceStateNotificationController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationChannel;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$2:Landroid/app/Notification$Builder;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v1, "DeviceStateManager"

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method