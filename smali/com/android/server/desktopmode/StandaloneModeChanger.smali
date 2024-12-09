.class public final Lcom/android/server/desktopmode/StandaloneModeChanger;
.super Lcom/android/server/desktopmode/ModeChanger;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mCurrentUiMode:I

.field public final mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field public mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

.field public mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

.field public mStandaloneModeEnabled:Z

.field public final mStateListener:Lcom/android/server/desktopmode/StandaloneModeChanger$1;

.field public final mTelecomManager:Landroid/telecom/TelecomManager;

.field public mTopTaskId:I

.field public final mUiModeManager:Landroid/app/IUiModeManager;

.field public final mUiModeManagerInternal:Lcom/android/server/UiModeManagerService$LocalService;

.field public mWallpaperShown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/samsung/android/os/SemDvfsManager;Landroid/telecom/TelecomManager;Landroid/app/IUiModeManager;Lcom/android/server/UiModeManagerService$LocalService;)V
    .locals 14

    .line 1
    move-object v12, p0

    .line 2
    move-object/from16 v13, p13

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move-object/from16 v4, p5

    .line 11
    .line 12
    move-object/from16 v5, p6

    .line 13
    .line 14
    move-object/from16 v6, p7

    .line 15
    .line 16
    move-object/from16 v7, p8

    .line 17
    .line 18
    move-object/from16 v8, p9

    .line 19
    .line 20
    move-object/from16 v9, p10

    .line 21
    .line 22
    move-object/from16 v10, p11

    .line 23
    .line 24
    move-object/from16 v11, p12

    .line 25
    .line 26
    invoke-direct/range {v0 .. v11}, Lcom/android/server/desktopmode/ModeChanger;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Lcom/samsung/android/multiwindow/MultiWindowManager;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, v12, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    .line 31
    .line 32
    iput-boolean v0, v12, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    .line 33
    .line 34
    const/4 v0, -0x1

    .line 35
    iput v0, v12, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopTaskId:I

    .line 36
    .line 37
    iput v0, v12, Lcom/android/server/desktopmode/StandaloneModeChanger;->mCurrentUiMode:I

    .line 38
    .line 39
    new-instance v0, Lcom/android/server/desktopmode/StandaloneModeChanger$1;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/StandaloneModeChanger$1;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;

    .line 45
    .line 46
    invoke-virtual/range {p4 .. p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/os/Looper;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, v12, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 54
    .line 55
    move-object/from16 v1, p14

    .line 56
    .line 57
    iput-object v1, v12, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 58
    .line 59
    move-object/from16 v1, p15

    .line 60
    .line 61
    iput-object v1, v12, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 62
    .line 63
    move-object/from16 v1, p16

    .line 64
    .line 65
    iput-object v1, v12, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManagerInternal:Lcom/android/server/UiModeManagerService$LocalService;

    .line 66
    .line 67
    iput-object v13, v12, Lcom/android/server/desktopmode/StandaloneModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 68
    .line 69
    if-eqz v13, :cond_0

    .line 70
    .line 71
    const/16 v1, 0xbb8

    .line 72
    .line 73
    invoke-virtual {v13, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 74
    .line 75
    .line 76
    :cond_0
    iget-object v1, v12, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 77
    .line 78
    check-cast v1, Lcom/android/server/desktopmode/StateManager;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public final getConfigurationState(Landroid/content/res/Configuration;)I
    .locals 7

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0xf

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    move v0, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 14
    .line 15
    if-ne v1, v3, :cond_1

    .line 16
    .line 17
    move v1, v3

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v1, v2

    .line 20
    :goto_1
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 21
    .line 22
    if-eqz p0, :cond_3

    .line 23
    .line 24
    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    .line 27
    .line 28
    iget-object v6, v5, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 29
    .line 30
    iget-object v6, v6, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 31
    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    iget-object v6, v5, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 36
    .line 37
    :goto_2
    iget v5, v6, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 38
    .line 39
    if-ne v4, v5, :cond_3

    .line 40
    .line 41
    move v4, v3

    .line 42
    goto :goto_3

    .line 43
    :cond_3
    move v4, v2

    .line 44
    :goto_3
    if-eqz p0, :cond_4

    .line 45
    .line 46
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getOriginalDisplaySizeDensity()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 55
    .line 56
    if-ne p1, p0, :cond_4

    .line 57
    .line 58
    move p0, v3

    .line 59
    goto :goto_4

    .line 60
    :cond_4
    move p0, v2

    .line 61
    :goto_4
    if-eqz v0, :cond_5

    .line 62
    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    if-eqz v4, :cond_5

    .line 66
    .line 67
    return v3

    .line 68
    :cond_5
    if-nez v1, :cond_6

    .line 69
    .line 70
    if-eqz p0, :cond_6

    .line 71
    .line 72
    return v2

    .line 73
    :cond_6
    const/4 p0, -0x1

    .line 74
    return p0
.end method

.method public final handleOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 10
    .line 11
    iget v3, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    .line 12
    .line 13
    const/16 v4, 0x1e

    .line 14
    .line 15
    if-ne v3, v4, :cond_19

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v4, 0x65

    .line 22
    .line 23
    if-eq v3, v4, :cond_0

    .line 24
    .line 25
    goto/16 :goto_8

    .line 26
    .line 27
    :cond_0
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 28
    .line 29
    const-string v4, "[DMS]StandaloneModeChanger"

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v6, "handleOnConfigurationChanged(), newConfig="

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v6, ", desktopModeDensity="

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v6, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 50
    .line 51
    iget-object v6, v6, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    .line 52
    .line 53
    iget-object v7, v6, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 54
    .line 55
    iget-object v7, v7, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 56
    .line 57
    if-eqz v7, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v7, v6, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 61
    .line 62
    :goto_0
    iget v6, v7, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v6, ", desktopModeState="

    .line 68
    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v4, v5}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getConfigurationState(Landroid/content/res/Configuration;)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    const/4 v5, 0x3

    .line 87
    const/4 v6, 0x1

    .line 88
    if-ne p1, v6, :cond_3

    .line 89
    .line 90
    iget v7, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 91
    .line 92
    if-eq v7, v5, :cond_4

    .line 93
    .line 94
    :cond_3
    if-nez p1, :cond_19

    .line 95
    .line 96
    iget v7, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 97
    .line 98
    if-ne v7, v6, :cond_19

    .line 99
    .line 100
    :cond_4
    const/4 v7, 0x0

    .line 101
    if-ne p1, v6, :cond_5

    .line 102
    .line 103
    move v8, v6

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    move v8, v7

    .line 106
    :goto_1
    if-eqz v3, :cond_6

    .line 107
    .line 108
    new-instance v9, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string/jumbo v10, "handleOnConfigurationChanged(), enabled="

    .line 111
    .line 112
    .line 113
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-static {v4, v9}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    const/4 v9, 0x4

    .line 127
    const/4 v10, 0x2

    .line 128
    if-eqz v8, :cond_7

    .line 129
    .line 130
    move v11, v9

    .line 131
    goto :goto_2

    .line 132
    :cond_7
    move v11, v10

    .line 133
    :goto_2
    const/16 v12, 0x28

    .line 134
    .line 135
    invoke-virtual {p0, v11, v12}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    .line 136
    .line 137
    .line 138
    iput-boolean v8, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    .line 139
    .line 140
    iget-object v11, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 141
    .line 142
    if-ne p1, v6, :cond_8

    .line 143
    .line 144
    iget p1, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 145
    .line 146
    if-ne p1, v5, :cond_8

    .line 147
    .line 148
    invoke-virtual {v11, v10}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHomeStack(I)V

    .line 149
    .line 150
    .line 151
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->startHome(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v11, v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHomeStack(I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    iget v2, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 163
    .line 164
    invoke-virtual {p1, v8, v1, v2}, Lcom/android/server/desktopmode/SettingsHelper;->backupOrRestoreSettings(ZLcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 165
    .line 166
    .line 167
    const-string p1, "Ongoing phone call!"

    .line 168
    .line 169
    if-eqz v8, :cond_11

    .line 170
    .line 171
    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 172
    .line 173
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_15

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    iget v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 184
    .line 185
    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 186
    .line 187
    const-string/jumbo v5, "role"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Landroid/app/role/RoleManager;

    .line 195
    .line 196
    iget-object v5, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 197
    .line 198
    const-string/jumbo v11, "skt_phone20_settings"

    .line 199
    .line 200
    .line 201
    const/4 v12, -0x1

    .line 202
    invoke-static {v5, v11, v12, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-ne v1, v6, :cond_9

    .line 207
    .line 208
    if-eqz v3, :cond_e

    .line 209
    .line 210
    const-string/jumbo v1, "usingNativeInCallUi()=false, using T Phone"

    .line 211
    .line 212
    .line 213
    invoke-static {v4, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_4

    .line 217
    .line 218
    :cond_9
    const/4 v1, 0x0

    .line 219
    if-nez v2, :cond_a

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_a
    const-string v5, "android.app.role.DIALER"

    .line 223
    .line 224
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    invoke-virtual {v2, v5, v6}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-eqz v5, :cond_b

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_b
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Ljava/lang/String;

    .line 244
    .line 245
    :goto_3
    if-eqz v3, :cond_c

    .line 246
    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string/jumbo v3, "usingNativeInCallUi(), package name: "

    .line 250
    .line 251
    .line 252
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-static {v4, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :cond_c
    if-eqz v1, :cond_10

    .line 266
    .line 267
    const-string/jumbo v2, "com.samsung.android.contacts"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-nez v2, :cond_10

    .line 275
    .line 276
    new-instance v2, Landroid/content/Intent;

    .line 277
    .line 278
    const-string v3, "android.telecom.InCallService"

    .line 279
    .line 280
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget-object v3, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 284
    .line 285
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    const/high16 v5, 0x20000

    .line 290
    .line 291
    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    if-eqz v3, :cond_10

    .line 304
    .line 305
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 310
    .line 311
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 312
    .line 313
    if-eqz v3, :cond_d

    .line 314
    .line 315
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    if-eqz v3, :cond_d

    .line 322
    .line 323
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 324
    .line 325
    if-eqz v1, :cond_e

    .line 326
    .line 327
    const-string/jumbo v1, "usingNativeInCallUi()=false"

    .line 328
    .line 329
    .line 330
    invoke-static {v4, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    :cond_e
    :goto_4
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 334
    .line 335
    if-eqz v1, :cond_f

    .line 336
    .line 337
    invoke-static {v4, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    :cond_f
    iget-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 341
    .line 342
    invoke-virtual {p1, v7}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 343
    .line 344
    .line 345
    goto :goto_5

    .line 346
    :cond_10
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 347
    .line 348
    if-eqz p1, :cond_15

    .line 349
    .line 350
    const-string/jumbo p1, "usingNativeInCallUi()=true"

    .line 351
    .line 352
    .line 353
    invoke-static {v4, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    goto :goto_5

    .line 357
    :cond_11
    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 358
    .line 359
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-eqz v1, :cond_13

    .line 364
    .line 365
    if-eqz v3, :cond_12

    .line 366
    .line 367
    invoke-static {v4, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    :cond_12
    iput-boolean v6, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    .line 371
    .line 372
    iget-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 373
    .line 374
    invoke-virtual {p1, v7}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 375
    .line 376
    .line 377
    :cond_13
    if-eqz v3, :cond_14

    .line 378
    .line 379
    const-string p1, "[DMS]ModeChanger"

    .line 380
    .line 381
    const-string/jumbo v1, "clearSettingsBadgeCount()"

    .line 382
    .line 383
    .line 384
    invoke-static {p1, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    :cond_14
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 388
    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    const/4 v1, -0x2

    .line 394
    const-string/jumbo v2, "badge_for_dex"

    .line 395
    .line 396
    .line 397
    invoke-static {p1, v2, v7, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 398
    .line 399
    .line 400
    :cond_15
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    .line 402
    .line 403
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 404
    .line 405
    if-eqz p1, :cond_16

    .line 406
    .line 407
    const-string/jumbo p1, "notifyOnConfigurationChanged(enter="

    .line 408
    .line 409
    .line 410
    const-string v1, ")"

    .line 411
    .line 412
    const-string v2, "[DMS]StateManager"

    .line 413
    .line 414
    invoke-static {p1, v1, v2, v8}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 415
    .line 416
    .line 417
    :cond_16
    iget-object p1, v0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 418
    .line 419
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-eqz v0, :cond_17

    .line 428
    .line 429
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 434
    .line 435
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    goto :goto_6

    .line 439
    :cond_17
    if-eqz v8, :cond_18

    .line 440
    .line 441
    goto :goto_7

    .line 442
    :cond_18
    move v9, v10

    .line 443
    :goto_7
    const/16 p1, 0x32

    .line 444
    .line 445
    invoke-virtual {p0, v9, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStopLoadingScreenIfPossible()V

    .line 449
    .line 450
    .line 451
    :cond_19
    :goto_8
    return-void
.end method

.method public final scheduleStartLoadingScreen(Z)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "scheduleStartLoadingScreen(), enter="

    .line 6
    .line 7
    .line 8
    const-string v1, ", reason=0"

    .line 9
    .line 10
    const-string v2, "[DMS]StandaloneModeChanger"

    .line 11
    .line 12
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    int-to-long v4, v3

    .line 35
    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/4 v2, -0x1

    .line 51
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 56
    .line 57
    const-wide/16 v0, 0x3a98

    .line 58
    .line 59
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final scheduleStopLoadingScreenIfPossible()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 10
    .line 11
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v3, "scheduleStopLoadingScreenIfPossible()"

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_STANDALONE_MODE_WALLPAPER:Z

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v4, ", mWallpaperShown="

    .line 32
    .line 33
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v4, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v3, ""

    .line 47
    .line 48
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, ", desktopModeState="

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, ", mStandaloneModeEnabled="

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-boolean v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, ", internal overlay="

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const/16 v3, 0x66

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/UiManager;->getCurrentOverlayType(I)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v3, ", external overlay="

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const/16 v3, 0x67

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/UiManager;->getCurrentOverlayType(I)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v3, "[DMS]StandaloneModeChanger"

    .line 102
    .line 103
    invoke-static {v3, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_STANDALONE_MODE_WALLPAPER:Z

    .line 107
    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    .line 111
    .line 112
    if-eqz v1, :cond_6

    .line 113
    .line 114
    :cond_2
    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    .line 115
    .line 116
    const/16 v1, 0x32

    .line 117
    .line 118
    if-ne v0, v1, :cond_6

    .line 119
    .line 120
    const/16 v0, 0x71

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Lcom/android/server/desktopmode/UiManager;->hasOverlay(I)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_3

    .line 127
    .line 128
    iget-boolean v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    .line 129
    .line 130
    if-nez v0, :cond_5

    .line 131
    .line 132
    :cond_3
    const/16 v0, 0x72

    .line 133
    .line 134
    invoke-virtual {v2, v0}, Lcom/android/server/desktopmode/UiManager;->hasOverlay(I)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    iget-boolean v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    :cond_4
    const/16 v0, 0x75

    .line 145
    .line 146
    invoke-virtual {v2, v0}, Lcom/android/server/desktopmode/UiManager;->hasOverlay(I)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_5

    .line 151
    .line 152
    const/16 v0, 0x74

    .line 153
    .line 154
    invoke-virtual {v2, v0}, Lcom/android/server/desktopmode/UiManager;->hasOverlay(I)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_6

    .line 159
    .line 160
    :cond_5
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 161
    .line 162
    const/4 v1, 0x3

    .line 163
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    .line 165
    .line 166
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 167
    .line 168
    const-wide/16 v2, 0x0

    .line 169
    .line 170
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 171
    .line 172
    .line 173
    :cond_6
    return-void
.end method

.method public final setDesktopMode(Lcom/android/server/desktopmode/StateManager$InternalState;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)V
    .locals 5

    .line 1
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "setDesktopMode(), desktopMode="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "[DMS]StandaloneModeChanger"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    if-eqz p2, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->cancelKillProcessWhenDexExit()V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setModeChangeLock$1(Z)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    const/16 v2, 0x65

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v2, v1

    .line 43
    :goto_0
    iget-object v3, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 44
    .line 45
    const-string/jumbo v4, "display_type"

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v4, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    iput-object p3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 52
    .line 53
    if-eqz p3, :cond_3

    .line 54
    .line 55
    iget v2, p3, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mModeToMode:I

    .line 56
    .line 57
    if-ne v2, v0, :cond_3

    .line 58
    .line 59
    iget p3, p3, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mTopTaskId:I

    .line 60
    .line 61
    iput p3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopTaskId:I

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getForegroundTaskId(I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopTaskId:I

    .line 71
    .line 72
    if-eqz p3, :cond_4

    .line 73
    .line 74
    iput v0, p3, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mTopTaskId:I

    .line 75
    .line 76
    :cond_4
    :goto_1
    new-instance p3, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda1;

    .line 77
    .line 78
    invoke-direct {p3, p0, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p3, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->storeDefaultHomePackageName(Ljava/util/function/Consumer;Z)V

    .line 82
    .line 83
    .line 84
    iget-object p3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 85
    .line 86
    if-eqz p3, :cond_5

    .line 87
    .line 88
    invoke-virtual {p3}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 89
    .line 90
    .line 91
    :cond_5
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 92
    .line 93
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    const-string/jumbo p1, "notifySetDesktopMode(enter="

    .line 101
    .line 102
    .line 103
    const-string p3, ")"

    .line 104
    .line 105
    const-string v0, "[DMS]StateManager"

    .line 106
    .line 107
    invoke-static {p1, p3, v0, p2}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    :cond_6
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_7

    .line 121
    .line 122
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Lcom/android/server/desktopmode/StateManager$StateListener;->onSetDesktopMode(Z)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_7
    return-void
.end method

.method public final setDesktopModeState(II)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v1, 0x65

    .line 11
    .line 12
    :goto_0
    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>(III)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo p2, "setDesktopModeState(), newState="

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "[DMS]StandaloneModeChanger"

    .line 31
    .line 32
    invoke-static {p2, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 36
    .line 37
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object p2, p2, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-nez p2, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/StateManager;->setDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->notifyDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public final setModeChangeLock$1(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager;->setModeChangeLocked(Z)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    .line 11
    .line 12
    if-eq v0, p1, :cond_1

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    .line 15
    .line 16
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v1, "setChangingStandaloneMode(), mChangingStandaloneMode="

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "[DMS]UiManager"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    if-nez p1, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/desktopmode/PendingUiCommands;->flushCommands()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final startHome(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]StandaloneModeChanger"

    .line 6
    .line 7
    const-string/jumbo v1, "startHome()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    const-string v1, "android.intent.action.MAIN"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "android.intent.category.HOME"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/high16 v1, 0x10200000

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    .line 33
    .line 34
    const-string v1, "DesktopModeService"

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    iget p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 44
    .line 45
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final storeDefaultHomePackageName(Ljava/util/function/Consumer;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "role"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/app/role/RoleManager;

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    const-string/jumbo v9, "default_home_package"

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    const-string/jumbo v3, "com.sec.android.app.desktoplauncher"

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const-string v2, "android.app.role.HOME"

    .line 33
    .line 34
    move-object v1, v0

    .line 35
    move-object v7, p1

    .line 36
    invoke-virtual/range {v1 .. v7}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 40
    .line 41
    const-string p1, "android.app.role.HOME"

    .line 42
    .line 43
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {v0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 p2, 0x0

    .line 59
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    move-object v8, p1

    .line 64
    check-cast v8, Ljava/lang/String;

    .line 65
    .line 66
    :goto_0
    invoke-static {p0, v9, v8}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 71
    .line 72
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 73
    .line 74
    invoke-static {p2, v9, v8, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const-string v2, "android.app.role.HOME"

    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    move-object v1, v0

    .line 94
    move-object v7, p1

    .line 95
    invoke-virtual/range {v1 .. v7}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 99
    .line 100
    sget p1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 101
    .line 102
    invoke-static {p0, v9, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    const-string p0, "[DMS]StandaloneModeChanger"

    .line 112
    .line 113
    const-string/jumbo p1, "storeDefaultHomePackageName(), packageName is null"

    .line 114
    .line 115
    .line 116
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_1
    return-void
.end method
