.class public final synthetic Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
