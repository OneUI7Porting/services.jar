.class public final Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/enterprise/license/IActivationKlmElmObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/plm/SystemStateTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;->this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUpdateContainerLicenseStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUpdateElm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUpdateKlm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isActivation()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x1

    .line 10
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;->this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 11
    .line 12
    invoke-static {p0, v0, p1, p2}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
