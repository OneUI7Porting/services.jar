.class final Lcom/android/server/attention/AttentionManagerService$AttentionCheck;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

.field public final mIAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;

.field public mIsDispatched:Z

.field public mIsFulfilled:Z


# direct methods
.method public constructor <init>(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;-><init>(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;

    .line 12
    .line 13
    return-void
.end method
