.class public final Lcom/android/server/location/contexthub/ContextHubService$8;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;

.field public final synthetic val$contextHubId:I

.field public final synthetic val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;ILandroid/hardware/location/NanoAppBinary;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$8;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$8;->val$contextHubId:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubService$8;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onQueryResponse(ILjava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTransactionComplete(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$8;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$8;->val$contextHubId:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService$8;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "ContextHubService"

    .line 13
    .line 14
    const-string p1, "Nanoapp binary field was null for a load transaction"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x5

    .line 21
    new-array v2, v2, [B

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    int-to-byte p1, p1

    .line 25
    aput-byte p1, v2, v3

    .line 26
    .line 27
    iget-object p1, v0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppHandle(IJ)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    const/4 p1, 0x1

    .line 38
    const/4 v3, 0x4

    .line 39
    invoke-static {v2, p1, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x3

    .line 55
    const/4 p1, -0x1

    .line 56
    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/android/server/location/contexthub/ContextHubService;->onMessageReceiptOldApi(III[B)I

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method