.class public final synthetic Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStateListener:Lcom/android/server/desktopmode/DesktopModeService$1;

    .line 16
    .line 17
    check-cast v2, Lcom/android/server/desktopmode/StateManager;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/StateManager;->unregisterListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, v0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->showOrDismissOverlay(ZZ)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v1, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 26
    .line 27
    check-cast v2, Lcom/android/server/desktopmode/StateManager;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    .line 34
    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    iget-object v3, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 38
    .line 39
    const/16 v4, 0xa

    .line 40
    .line 41
    const/4 v5, 0x2

    .line 42
    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    iget-boolean v3, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 49
    .line 50
    invoke-virtual {p0, v0, v3}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->setDesktopModeState(IZ)V

    .line 51
    .line 52
    .line 53
    :cond_0
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/android/server/desktopmode/StateManager$InternalState;->isWirelessDexConnected()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStartPressed:Z

    .line 64
    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    iget-object v1, v1, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexManager:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/android/server/desktopmode/WirelessDexManager;->disconnect()V

    .line 70
    .line 71
    .line 72
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStartPressed:Z

    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_0
    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 79
    .line 80
    iget-object v2, v1, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 81
    .line 82
    check-cast v2, Lcom/android/server/desktopmode/StateManager;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-boolean v3, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 89
    .line 90
    iget v4, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    const/4 v6, 0x2

    .line 94
    if-ne v4, v6, :cond_2

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    move v0, v5

    .line 98
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->showOrDismissOverlay(ZZ)V

    .line 99
    .line 100
    .line 101
    iget-object v0, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 102
    .line 103
    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    .line 104
    .line 105
    if-eqz v3, :cond_3

    .line 106
    .line 107
    invoke-virtual {v0, v6, v5}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    iget-boolean v0, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 114
    .line 115
    const/16 v2, 0xa

    .line 116
    .line 117
    invoke-virtual {p0, v2, v0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->setDesktopModeState(IZ)V

    .line 118
    .line 119
    .line 120
    :cond_3
    iget-object v0, v1, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStateListener:Lcom/android/server/desktopmode/DesktopModeService$1;

    .line 123
    .line 124
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 125
    .line 126
    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
