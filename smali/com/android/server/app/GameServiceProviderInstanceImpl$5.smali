.class public final Lcom/android/server/app/GameServiceProviderInstanceImpl$5;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance p3, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p3, p0, p1, v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$5;II)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessDied(II)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$5;II)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
