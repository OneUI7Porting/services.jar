.class public final Lcom/android/server/health/HealthServiceWrapperHidl$Notification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/health/HealthServiceWrapperHidl;


# direct methods
.method public constructor <init>(Lcom/android/server/health/HealthServiceWrapperHidl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;->this$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    const-string p3, "android.hardware.health@2.0::IHealth"

    .line 2
    .line 3
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;->this$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;->this$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance p2, Lcom/android/server/health/HealthServiceWrapperHidl$Notification$1;

    .line 30
    .line 31
    invoke-direct {p2, p0}, Lcom/android/server/health/HealthServiceWrapperHidl$Notification$1;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl$Notification;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
