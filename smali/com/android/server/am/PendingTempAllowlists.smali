.class public final Lcom/android/server/am/PendingTempAllowlists;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mPendingTempAllowlist:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final valueAt(I)Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method
