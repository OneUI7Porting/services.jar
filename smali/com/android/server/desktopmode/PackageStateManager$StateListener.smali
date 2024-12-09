.class public final Lcom/android/server/desktopmode/PackageStateManager$StateListener;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/PackageStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/PackageStateManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDualModeSetDesktopModeInternal(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 4
    .line 5
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/PackageStateManager;->setSettingsComponent(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "com.sec.android.desktopmode.uiservice.activity.touchpad.TouchpadActivity"

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->-$$Nest$msetComponent(Lcom/android/server/desktopmode/PackageStateManager;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onEmergencyModeChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/desktopmode/PackageStateManager;->updatePackageState()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSetDesktopModeInternal(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->setSettingsComponent(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onUserChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/desktopmode/PackageStateManager;->updatePackageState()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "com.sec.android.desktopmode.uiservice.DesktopModeTile"

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/PackageStateManager;->-$$Nest$msetComponent(Lcom/android/server/desktopmode/PackageStateManager;Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "com.sec.android.desktopmode.uiservice.DesktopDisplayDesktopModeTile"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/PackageStateManager;->-$$Nest$msetComponent(Lcom/android/server/desktopmode/PackageStateManager;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "com.sec.android.desktopmode.uiservice.activity.touchpad.TouchpadActivity"

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/PackageStateManager;->-$$Nest$msetComponent(Lcom/android/server/desktopmode/PackageStateManager;Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->setSettingsComponent(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
