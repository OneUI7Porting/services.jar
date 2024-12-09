.class public final Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onVrStateChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    .line 4
    .line 5
    return-void
.end method
