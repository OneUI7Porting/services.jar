.class public final Lcom/android/internal/util/jobs/ConcurrentUtils$1$1;
.super Ljava/lang/Thread;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/internal/util/jobs/ConcurrentUtils$1;

.field public final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/jobs/ConcurrentUtils$1;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/util/jobs/ConcurrentUtils$1$1;->this$0:Lcom/android/internal/util/jobs/ConcurrentUtils$1;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/internal/util/jobs/ConcurrentUtils$1$1;->val$r:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/jobs/ConcurrentUtils$1$1;->this$0:Lcom/android/internal/util/jobs/ConcurrentUtils$1;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/internal/util/jobs/ConcurrentUtils$1;->val$linuxThreadPriority:I

    .line 4
    .line 5
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/internal/util/jobs/ConcurrentUtils$1$1;->val$r:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
