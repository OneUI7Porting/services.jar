.class public final Lcom/android/server/accessibility/ProxyManager$2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/ProxyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/ProxyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$2;->this$0:Lcom/android/server/accessibility/ProxyManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onVirtualDeviceClosed(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager$2;->this$0:Lcom/android/server/accessibility/ProxyManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnections(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method