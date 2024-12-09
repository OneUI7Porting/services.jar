.class public final Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mListener:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

.field public final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method public constructor <init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->this$0:Lcom/android/server/VcnManagementService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->mListener:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/VcnManagementService;->RESTRICTED_TRANSPORTS_DEFAULT:Ljava/util/Set;

    .line 2
    .line 3
    const-string v0, "VcnManagementService"

    .line 4
    .line 5
    const-string/jumbo v1, "app died without removing VcnUnderlyingNetworkPolicyListener"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->this$0:Lcom/android/server/VcnManagementService;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->mListener:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/android/server/VcnManagementService;->removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
