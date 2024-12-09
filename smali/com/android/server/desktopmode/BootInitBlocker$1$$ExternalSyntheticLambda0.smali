.class public final synthetic Lcom/android/server/desktopmode/BootInitBlocker$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/BootInitBlocker$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/BootInitBlocker$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/BootInitBlocker$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/BootInitBlocker$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/BootInitBlocker$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/BootInitBlocker$1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "[DMS]BootInitBlocker"

    .line 11
    .line 12
    const-string/jumbo v1, "unregisterBlocker"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/BootInitBlocker$1;->this$0:Lcom/android/server/desktopmode/BootInitBlocker;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mBlocker:Lcom/android/server/desktopmode/BootInitBlocker$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 28
    .line 29
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StateManager;->notifyBootInitBlockerRegistered(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
