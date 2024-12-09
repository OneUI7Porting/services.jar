.class public final synthetic Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/DesktopModeService;

.field public final synthetic f$1:Lcom/android/server/desktopmode/StateManager$InternalState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    .line 13
    .line 14
    iget-object v2, v1, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 15
    .line 16
    invoke-virtual {v2, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getForegroundTaskId(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iput v2, v1, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    iput-boolean v2, v1, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    .line 24
    .line 25
    :cond_0
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->minimizeAllTasks(IZ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
