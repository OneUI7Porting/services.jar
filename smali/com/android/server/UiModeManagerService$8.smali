.class public final Lcom/android/server/UiModeManagerService$8;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onVrStateChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method