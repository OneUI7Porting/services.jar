.class public final synthetic Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/companion/ISystemDataTransferCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;ILandroid/companion/ISystemDataTransferCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda3;->f$2:Landroid/companion/ISystemDataTransferCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda3;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda3;->f$2:Landroid/companion/ISystemDataTransferCallback;

    .line 6
    .line 7
    check-cast p1, [B

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget-object v0, v0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/server/companion/transport/Transport;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance p1, Ljava/io/IOException;

    .line 25
    .line 26
    const-string v0, "Missing transport"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    monitor-exit v2

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    const v1, 0x63826983

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(I[B)Ljava/util/concurrent/Future;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :goto_0
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 48
    .line 49
    const-wide/16 v1, 0xf

    .line 50
    .line 51
    invoke-interface {p1, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .line 53
    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    :try_start_2
    invoke-interface {p0}, Landroid/companion/ISystemDataTransferCallback;->onResult()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception p1

    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p0, p1}, Landroid/companion/ISystemDataTransferCallback;->onError(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 68
    .line 69
    .line 70
    :catch_1
    :cond_1
    :goto_1
    return-void

    .line 71
    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    throw p0
.end method
