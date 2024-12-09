.class public final synthetic Lcom/android/server/desktopmode/EmergencyModeBlocker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 33
    .line 34
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StateManager;->setEmergencyModeEnabled(Z)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 53
    .line 54
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StateManager;->setEmergencyModeEnabled(Z)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_1
    return-void
.end method
