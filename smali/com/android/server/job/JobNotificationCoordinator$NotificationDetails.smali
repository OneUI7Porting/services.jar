.class public final Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final appPid:I

.field public final appUid:I

.field public final jobEndNotificationPolicy:I

.field public final notificationChannel:Ljava/lang/String;

.field public final notificationId:I

.field public final userPackage:Landroid/content/pm/UserPackage;


# direct methods
.method public constructor <init>(Landroid/content/pm/UserPackage;IIILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->userPackage:Landroid/content/pm/UserPackage;

    .line 5
    .line 6
    iput p4, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationId:I

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationChannel:Ljava/lang/String;

    .line 9
    .line 10
    iput p2, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appPid:I

    .line 11
    .line 12
    iput p3, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appUid:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->jobEndNotificationPolicy:I

    .line 15
    .line 16
    return-void
.end method
