.class public final synthetic Lcom/android/server/backup/remote/RemoteCall$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/remote/RemoteCall;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/remote/RemoteCall;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/remote/RemoteCall$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/remote/RemoteCall;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/remote/RemoteCall$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/remote/RemoteCall;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method