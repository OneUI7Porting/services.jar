.class public final Lcom/android/server/selinux/SelinuxAuditLogsJob;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mAuditLogsCollector:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

.field public final mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsJob;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsJob;->mAuditLogsCollector:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    .line 13
    .line 14
    return-void
.end method
