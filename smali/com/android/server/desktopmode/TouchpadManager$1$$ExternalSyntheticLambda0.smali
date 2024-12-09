.class public final synthetic Lcom/android/server/desktopmode/TouchpadManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/TouchpadManager$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/TouchpadManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/TouchpadManager$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/TouchpadManager$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SPEN_INBOX_MODEL:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "[DMS]TouchpadManager"

    .line 18
    .line 19
    const-string v2, "S Pen inbox model"

    .line 20
    .line 21
    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/desktopmode/TouchpadManager;->updateSPenState()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsTouchpadEnabled:Z

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 32
    .line 33
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/StateManager;->setTouchpadEnabled(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mTouchpadRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
