.class public final synthetic Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;->f$1:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;->f$2:[Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;->f$1:J

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;->f$2:[Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p1, v0, v1, v2, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method