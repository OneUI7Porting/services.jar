.class public final Lcom/android/server/desktopmode/CoverStateManager$1;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/CoverStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$1;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "[DMS]CoverStateManager"

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "mCoverState="

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$1;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v1

    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager$1;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iget-boolean v2, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 39
    .line 40
    iget-boolean v3, v3, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 41
    .line 42
    if-ne v2, v3, :cond_2

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const-string p0, "[DMS]CoverStateManager"

    .line 47
    .line 48
    const-string/jumbo p1, "onCoverStateChanged - mCoverManagerDisabled && state.attached == mCoverState.attached"

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    monitor-exit v1

    .line 58
    return-void

    .line 59
    :cond_2
    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager;->updateCoverSupportStateLocked()Z

    .line 62
    .line 63
    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 66
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method
