.class public final Lcom/android/server/credentials/RemoteCredentialService$3;
.super Landroid/service/credentials/IClearCredentialStateCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/credentials/RemoteCredentialService;

.field public final synthetic val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic val$clearCredentialFuture:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->this$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->val$clearCredentialFuture:Ljava/util/concurrent/CompletableFuture;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/service/credentials/IClearCredentialStateCallback$Stub;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onCancellable(Landroid/os/ICancellationSignal;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isCancelled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->this$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 18
    .line 19
    sget v0, Lcom/android/server/credentials/RemoteCredentialService;->$r8$clinit:I

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/android/server/credentials/RemoteCredentialService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->this$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/android/server/credentials/RemoteCredentialService;->-$$Nest$fgetmCallback(Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->this$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 42
    .line 43
    invoke-static {p0}, Lcom/android/server/credentials/RemoteCredentialService;->-$$Nest$fgetmCallback(Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0, p1}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderCancellable(Landroid/os/ICancellationSignal;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method public final onFailure(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p2, ""

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :goto_0
    const-string v0, "Clear credential errorMsg="

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "CredentialManager"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->val$clearCredentialFuture:Ljava/util/concurrent/CompletableFuture;

    .line 22
    .line 23
    new-instance v0, Landroid/credentials/ClearCredentialStateException;

    .line 24
    .line 25
    invoke-direct {v0, p1, p2}, Landroid/credentials/ClearCredentialStateException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onSuccess()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->val$clearCredentialFuture:Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method