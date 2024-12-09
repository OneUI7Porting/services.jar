.class public final Lcom/android/server/desktopmode/MultiResolutionManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final RESOLUTION_TABLE:Ljava/util/Map;


# instance fields
.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

.field public mDisplayRemovedOnEnablingDesktopMode:Z

.field public final mDualModeDensityChangedListener:Lcom/android/server/desktopmode/MultiResolutionManager$1;

.field public mIsForcedSupportAllResolution:Z

.field public mLastDualModeMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public final mResolver:Landroid/content/ContentResolver;

.field public mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

.field public final mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field public final mStandaloneModeDensityChangedListener:Lcom/android/server/desktopmode/MultiResolutionManager$1;

.field public final mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

.field public final mStateListener:Lcom/android/server/desktopmode/MultiResolutionManager$4;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public final mUserSettingResolutionChangedListener:Lcom/android/server/desktopmode/MultiResolutionManager$1;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static -$$Nest$mhandleReconnection(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 5
    .line 6
    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-ne v0, v1, :cond_7

    .line 13
    .line 14
    :cond_0
    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    if-eq v0, v1, :cond_7

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    const-string v2, "[DMS]MultiResolutionManager"

    .line 23
    .line 24
    sget-object v3, Lcom/android/server/desktopmode/MultiResolutionManager;->LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mLastDualModeMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 29
    .line 30
    iget-object v4, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 31
    .line 32
    invoke-static {v4, v3}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4, v0}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    xor-int/2addr v0, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 43
    .line 44
    invoke-static {v0, v3}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-object v4, v4, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 53
    .line 54
    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    const-string v0, "This display does not support current resolution."

    .line 65
    .line 66
    invoke-static {v2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    move v0, v1

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v0, 0x0

    .line 72
    :goto_0
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 73
    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string/jumbo v6, "isResolutionChangeNeeded: "

    .line 79
    .line 80
    .line 81
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-static {v2, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    if-eqz v0, :cond_5

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDualDisplayResolutionDensity(Z)I

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    if-eqz v4, :cond_6

    .line 101
    .line 102
    const-string v0, "No need to change resolution"

    .line 103
    .line 104
    invoke-static {v2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    iget-object p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 112
    .line 113
    invoke-static {p1, v3}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    :goto_1
    return-void
.end method

.method public static -$$Nest$msetSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 5
    .line 6
    const-string v1, "[DMS]MultiResolutionManager"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v3, "setSelectedDisplayMetrics: resolution="

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, ", density="

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    new-instance v2, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 37
    .line 38
    invoke-direct {v2, p1, p2}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string/jumbo p2, "changed to: "

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    iput-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 72
    .line 73
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 80
    .line 81
    const/4 p2, -0x1

    .line 82
    if-eq p1, p2, :cond_2

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iget-object p2, p2, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 89
    .line 90
    iget p2, p2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 97
    .line 98
    iget v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 107
    .line 108
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->setDisplaySizeAndDensityInDex(IIII)V

    .line 109
    .line 110
    .line 111
    :cond_2
    return-void
.end method

.method public static -$$Nest$mupdateDisplayResolutionUnsupported(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/DisplayInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 15
    .line 16
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string v0, "[DMS]StateManager"

    .line 26
    .line 27
    const-string/jumbo v1, "setDisplayResolutionUnsupported(unsupported="

    .line 28
    .line 29
    .line 30
    const-string v2, ")"

    .line 31
    .line 32
    invoke-static {v1, v2, v0, p1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 39
    .line 40
    iget-boolean v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    .line 41
    .line 42
    if-eq v1, p1, :cond_2

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 45
    .line 46
    iput-boolean p1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    :goto_1
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 9
    .line 10
    const-string v2, "UHD"

    .line 11
    .line 12
    const/16 v3, 0xf00

    .line 13
    .line 14
    const/16 v4, 0x870

    .line 15
    .line 16
    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 20
    .line 21
    const-string v4, "UWQHD"

    .line 22
    .line 23
    const/16 v5, 0xd70

    .line 24
    .line 25
    const/16 v6, 0x5a0

    .line 26
    .line 27
    invoke-direct {v3, v5, v6, v4}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(IILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v5, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 31
    .line 32
    const-string v7, "WQXGA"

    .line 33
    .line 34
    const/16 v8, 0xa00

    .line 35
    .line 36
    const/16 v9, 0x640

    .line 37
    .line 38
    invoke-direct {v5, v8, v9, v7}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(IILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v10, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 42
    .line 43
    const-string v11, "WQHD"

    .line 44
    .line 45
    invoke-direct {v10, v8, v6, v11}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(IILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v6, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 49
    .line 50
    const-string v12, "UWFHD"

    .line 51
    .line 52
    const/16 v13, 0x438

    .line 53
    .line 54
    invoke-direct {v6, v8, v13, v12}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(IILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v8, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 58
    .line 59
    const-string v14, "WUXGA"

    .line 60
    .line 61
    const/16 v15, 0x780

    .line 62
    .line 63
    const/16 v9, 0x4b0

    .line 64
    .line 65
    invoke-direct {v8, v15, v9, v14}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(IILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v9, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 69
    .line 70
    move-object/from16 v16, v8

    .line 71
    .line 72
    const-string v8, "FHD"

    .line 73
    .line 74
    invoke-direct {v9, v15, v13, v8}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(IILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v13, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 78
    .line 79
    const-string v15, "HD"

    .line 80
    .line 81
    move-object/from16 v17, v8

    .line 82
    .line 83
    const/16 v8, 0x384

    .line 84
    .line 85
    move-object/from16 v18, v14

    .line 86
    .line 87
    const/16 v14, 0x640

    .line 88
    .line 89
    invoke-direct {v13, v14, v8, v15}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(IILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sput-object v9, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 93
    .line 94
    sput-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 95
    .line 96
    sput-object v13, Lcom/android/server/desktopmode/MultiResolutionManager;->LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 97
    .line 98
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-interface {v0, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-object/from16 v1, v16

    .line 114
    .line 115
    move-object/from16 v2, v18

    .line 116
    .line 117
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-object/from16 v1, v17

    .line 121
    .line 122
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/server/wm/WindowManagerInternal;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$1;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$1;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolutionChangedListener:Lcom/android/server/desktopmode/MultiResolutionManager$1;

    .line 16
    .line 17
    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$1;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$1;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDualModeDensityChangedListener:Lcom/android/server/desktopmode/MultiResolutionManager$1;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$1;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$1;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDensityChangedListener:Lcom/android/server/desktopmode/MultiResolutionManager$1;

    .line 32
    .line 33
    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$4;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/MultiResolutionManager$4;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 47
    .line 48
    check-cast p2, Lcom/android/server/desktopmode/StateManager;

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 51
    .line 52
    .line 53
    iput-object p4, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 54
    .line 55
    iput-object p5, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 56
    .line 57
    iput-object p3, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 58
    .line 59
    new-instance p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 60
    .line 61
    sget-object p2, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 62
    .line 63
    const/16 p3, 0xa0

    .line 64
    .line 65
    invoke-direct {p1, p2, p3}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 69
    .line 70
    iput-object p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 71
    .line 72
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    .line 73
    .line 74
    if-eqz p1, :cond_0

    .line 75
    .line 76
    new-instance p1, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    .line 82
    .line 83
    :cond_0
    return-void
.end method

.method public static calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .locals 4

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    new-instance v0, Landroid/graphics/Point;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 8
    .line 9
    .line 10
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v2, "calculateMaxSupportedResolution(), displayInfo="

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "[DMS]MultiResolutionManager"

    .line 30
    .line 31
    invoke-static {v2, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v1, 0x1

    .line 35
    iget p0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    .line 36
    .line 37
    if-eq p0, v1, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    if-ne p0, v1, :cond_2

    .line 41
    .line 42
    :cond_1
    iget p0, v0, Landroid/graphics/Point;->y:I

    .line 43
    .line 44
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 45
    .line 46
    if-le p0, v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0, p0, v1}, Landroid/graphics/Point;->set(II)V

    .line 49
    .line 50
    .line 51
    :cond_2
    sget-object p0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    .line 52
    .line 53
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ljava/util/Map$Entry;

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 80
    .line 81
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 82
    .line 83
    iget v3, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    .line 84
    .line 85
    if-lt v2, v3, :cond_3

    .line 86
    .line 87
    iget v2, v0, Landroid/graphics/Point;->y:I

    .line 88
    .line 89
    iget v3, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    .line 90
    .line 91
    if-lt v2, v3, :cond_3

    .line 92
    .line 93
    return-object v1

    .line 94
    :cond_4
    return-object p1

    .line 95
    :cond_5
    sget-object p0, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 96
    .line 97
    return-object p0
.end method


# virtual methods
.method public final getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 7
    .line 8
    :goto_0
    return-object v0
.end method

.method public final setDualDisplayResolutionDensity(Z)I
    .locals 5

    .line 1
    const-string v0, "android.permission.MANAGE_ACTIVITY_TASKS"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 4
    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateUserSettingDisplayMetrics()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 11
    .line 12
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v2, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 19
    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    iget-boolean v3, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    sget-object v3, Lcom/android/server/desktopmode/MultiResolutionManager;->LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 28
    .line 29
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcOrWirelessDexConnected()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 68
    .line 69
    :goto_1
    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 70
    .line 71
    iput-object p1, v2, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 74
    .line 75
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mLastDualModeMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    :goto_2
    iget-boolean p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    .line 79
    .line 80
    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 85
    .line 86
    iput-object v2, p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    .line 89
    .line 90
    const-string/jumbo v2, "resolution_max"

    .line 91
    .line 92
    .line 93
    const-string v3, "ADB"

    .line 94
    .line 95
    invoke-static {p1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 103
    .line 104
    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 105
    .line 106
    iput-object v2, p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 107
    .line 108
    :goto_3
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 109
    .line 110
    if-eqz p1, :cond_6

    .line 111
    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string/jumbo v2, "mSelectedDisplayMetrics= "

    .line 115
    .line 116
    .line 117
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 121
    .line 122
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const-string v2, "[DMS]MultiResolutionManager"

    .line 130
    .line 131
    invoke-static {v2, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iget-object p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 139
    .line 140
    iget p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    iget-object v2, v2, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 147
    .line 148
    iget v2, v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 155
    .line 156
    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 157
    .line 158
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 159
    .line 160
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 161
    .line 162
    const-string/jumbo v4, "enableDexDisplay"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v0, v4}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 169
    .line 170
    .line 171
    move-result-wide v3

    .line 172
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 173
    .line 174
    invoke-virtual {v0, p1, v2, p0}, Lcom/android/server/wm/DexController;->enableDexDisplay(III)I

    .line 175
    .line 176
    .line 177
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    .line 180
    .line 181
    return p0

    .line 182
    :catchall_0
    move-exception p0

    .line 183
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    .line 185
    .line 186
    throw p0

    .line 187
    :cond_7
    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 188
    .line 189
    iget-object p0, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 190
    .line 191
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 192
    .line 193
    const-string/jumbo v1, "disableDexDisplay"

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v0, v1}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 200
    .line 201
    .line 202
    move-result-wide v0

    .line 203
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->disableDexDisplay()I

    .line 206
    .line 207
    .line 208
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 209
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 210
    .line 211
    .line 212
    return p0

    .line 213
    :catchall_1
    move-exception p0

    .line 214
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    .line 216
    .line 217
    throw p0
.end method

.method public final updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "updateMaxSupportedResolution: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "[DMS]MultiResolutionManager"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    .line 28
    .line 29
    const-string/jumbo v0, "resolution_max"

    .line 30
    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final updateUserSettingDisplayMetrics()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]MultiResolutionManager"

    .line 6
    .line 7
    const-string/jumbo v1, "updateUserSettingDisplayMetrics()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    .line 16
    .line 17
    sget v2, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 18
    .line 19
    const-string/jumbo v3, "resolution_user_setting"

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v1, v3, v4, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    .line 40
    .line 41
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 42
    .line 43
    const-string/jumbo v2, "dual_mode_screen_zoom"

    .line 44
    .line 45
    .line 46
    const/16 v3, 0xa0

    .line 47
    .line 48
    invoke-static {p0, v2, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    iput p0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 53
    .line 54
    return-void
.end method
