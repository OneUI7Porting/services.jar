.class public final synthetic Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {p1, v0, p0}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroid/net/LinkAddress;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {p1, p0, v0}, Landroid/net/INetworkManagementEventObserver;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroid/net/LinkAddress;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {p1, p0, v0}, Landroid/net/INetworkManagementEventObserver;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
