.class public final synthetic Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/ProxyManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/ProxyManager;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/accessibility/ProxyManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/accessibility/ProxyManager;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;->f$2:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    new-instance v3, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;

    .line 11
    .line 12
    invoke-direct {v3, v1, p0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;-><init>(II)V

    .line 13
    .line 14
    .line 15
    invoke-static {v3}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v2

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method
