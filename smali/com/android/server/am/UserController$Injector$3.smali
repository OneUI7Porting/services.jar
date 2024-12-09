.class public final Lcom/android/server/am/UserController$Injector$3;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector$3;->val$runnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismissCancelled()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector$3;->val$runnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onDismissError()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector$3;->val$runnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onDismissSucceeded()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector$3;->val$runnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
