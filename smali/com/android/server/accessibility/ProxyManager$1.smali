.class public final Lcom/android/server/accessibility/ProxyManager$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/ProxyManager;

.field public final synthetic val$client:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/ProxyManager;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$1;->this$0:Lcom/android/server/accessibility/ProxyManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/ProxyManager$1;->val$client:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/accessibility/ProxyManager$1;->val$displayId:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$1;->val$client:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$1;->this$0:Lcom/android/server/accessibility/ProxyManager;

    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$1;->val$displayId:I

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/ProxyManager;->clearConnectionAndUpdateState(I)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
