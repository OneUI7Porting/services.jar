.class public final synthetic Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/DualModeChanger;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 6
    .line 7
    check-cast v1, Lcom/android/server/desktopmode/StateManager;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 14
    .line 15
    iget v4, v3, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    .line 16
    .line 17
    const/16 v5, 0x1e

    .line 18
    .line 19
    if-ne v4, v5, :cond_9

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/16 v5, 0x66

    .line 26
    .line 27
    if-eq v4, v5, :cond_0

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    const/4 v4, 0x1

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    iget v5, v3, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 35
    .line 36
    const/4 v6, 0x3

    .line 37
    if-eq v5, v6, :cond_2

    .line 38
    .line 39
    :cond_1
    if-nez p0, :cond_9

    .line 40
    .line 41
    iget v5, v3, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 42
    .line 43
    if-ne v5, v4, :cond_9

    .line 44
    .line 45
    :cond_2
    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 46
    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string/jumbo v7, "handleDesktopDisplayConfigured(), added="

    .line 52
    .line 53
    .line 54
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v7, ", desktopModeState="

    .line 61
    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const-string v6, "[DMS]DualModeChanger"

    .line 73
    .line 74
    invoke-static {v6, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iput-boolean p0, v0, Lcom/android/server/desktopmode/DualModeChanger;->mDualModeEnabled:Z

    .line 78
    .line 79
    const/4 v3, 0x2

    .line 80
    const/4 v6, 0x4

    .line 81
    if-eqz p0, :cond_4

    .line 82
    .line 83
    move v7, v6

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    move v7, v3

    .line 86
    :goto_0
    const/16 v8, 0x28

    .line 87
    .line 88
    invoke-virtual {v0, v7, v8}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    .line 89
    .line 90
    .line 91
    if-eqz p0, :cond_5

    .line 92
    .line 93
    iget v4, v0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 94
    .line 95
    invoke-virtual {v0, v2, v4}, Lcom/android/server/desktopmode/DualModeChanger;->startHome(Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    iput-boolean v4, v0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 100
    .line 101
    iput-boolean v4, v0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    .line 102
    .line 103
    :goto_1
    iget-object v4, v0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    iget v7, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 109
    .line 110
    invoke-virtual {v4, p0, v2, v7}, Lcom/android/server/desktopmode/SettingsHelper;->backupOrRestoreSettings(ZLcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 111
    .line 112
    .line 113
    if-eqz p0, :cond_6

    .line 114
    .line 115
    move v3, v6

    .line 116
    :cond_6
    const/16 v2, 0x32

    .line 117
    .line 118
    invoke-virtual {v0, v3, v2}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    .line 119
    .line 120
    .line 121
    if-eqz v5, :cond_7

    .line 122
    .line 123
    const-string/jumbo v2, "notifyDualOnConfigurationChanged(enter="

    .line 124
    .line 125
    .line 126
    const-string v3, ")"

    .line 127
    .line 128
    const-string v4, "[DMS]StateManager"

    .line 129
    .line 130
    invoke-static {v2, v3, v4, p0}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    :cond_7
    iget-object v1, v1, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_8

    .line 144
    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_8
    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/DualModeChanger;->scheduleStopLoadingScreenIfPossible(Z)V

    .line 156
    .line 157
    .line 158
    :cond_9
    :goto_3
    return-void
.end method
