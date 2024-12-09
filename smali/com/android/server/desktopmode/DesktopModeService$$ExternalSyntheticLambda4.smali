.class public final synthetic Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/DesktopModeService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda4;->f$1:Z

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda4;->f$2:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda4;->f$1:Z

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda4;->f$2:Z

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 8
    .line 9
    check-cast v2, Lcom/android/server/desktopmode/StateManager;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v2, v1, p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateDesktopMode(Lcom/android/server/desktopmode/StateManager$InternalState;ZZ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
