.class public final Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final iface:Ljava/lang/String;

.field public final limit:J

.field public final warning:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->warning:J

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->limit:J

    .line 9
    .line 10
    return-void
.end method
