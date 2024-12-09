.class public final Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/ExternalDisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ExternalDisplayPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final notifyThrottling(Landroid/os/Temperature;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 6
    .line 7
    iget v0, v0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 10
    .line 11
    iput p1, v1, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-le v1, v0, :cond_0

    .line 15
    .line 16
    if-gt v1, p1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 21
    .line 22
    monitor-enter p1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/ExternalDisplayPolicy;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 32
    .line 33
    .line 34
    monitor-exit p1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0

    .line 39
    :cond_0
    :goto_0
    return-void
.end method
