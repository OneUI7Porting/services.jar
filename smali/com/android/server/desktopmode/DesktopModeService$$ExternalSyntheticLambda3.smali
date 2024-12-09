.class public final synthetic Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/DesktopModeService;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda3;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda3;->f$1:Z

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 6
    .line 7
    check-cast v1, Lcom/android/server/desktopmode/StateManager;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->updateDesktopMode(Lcom/android/server/desktopmode/StateManager$InternalState;ZZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
