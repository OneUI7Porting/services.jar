.class public final Lcom/android/server/connectivity/Vpn$Dependencies$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/net/DnsResolver$Callback;


# instance fields
.field public final synthetic val$endpoint:Ljava/lang/String;

.field public final synthetic val$result:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$endpoint:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnswer(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-lez p2, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/net/InetAddress;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    .line 23
    .line 24
    new-instance p2, Ljava/net/UnknownHostException;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$endpoint:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public final onError(Landroid/net/DnsResolver$DnsException;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Async dns resolver error : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "Vpn"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    .line 21
    .line 22
    new-instance v0, Ljava/net/UnknownHostException;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$endpoint:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
