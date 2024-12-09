.class public final Lcom/android/server/desktopmode/StateManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/desktopmode/IStateManager;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public volatile mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

.field public final mLock:Ljava/lang/Object;

.field public volatile mState:Lcom/android/server/desktopmode/StateManager$InternalState;

.field public final mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/ServiceThread;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    .line 25
    .line 26
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 27
    .line 28
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 29
    .line 30
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    .line 31
    .line 32
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    .line 33
    .line 34
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    .line 35
    .line 36
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    .line 37
    .line 38
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 39
    .line 40
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    .line 41
    .line 42
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    .line 43
    .line 44
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    .line 45
    .line 46
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    .line 47
    .line 48
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    .line 49
    .line 50
    const/4 v1, -0x1

    .line 51
    iput v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    iput v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    .line 55
    .line 56
    const/16 v2, -0x2710

    .line 57
    .line 58
    iput v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 59
    .line 60
    iput v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    .line 61
    .line 62
    new-instance v1, Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 63
    .line 64
    invoke-direct {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 68
    .line 69
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 70
    .line 71
    new-instance v1, Lcom/samsung/android/cover/CoverState;

    .line 72
    .line 73
    invoke-direct {v1}, Lcom/samsung/android/cover/CoverState;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 77
    .line 78
    new-instance v1, Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    .line 84
    .line 85
    new-instance v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 86
    .line 87
    invoke-direct {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 95
    .line 96
    new-instance v0, Landroid/os/Handler;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public final copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    .line 14
    .line 15
    iput-boolean v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 16
    .line 17
    iput-boolean v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 18
    .line 19
    iput-boolean v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    .line 20
    .line 21
    iput-boolean v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    .line 22
    .line 23
    iput-boolean v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    .line 24
    .line 25
    iput-boolean v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    .line 26
    .line 27
    iput-boolean v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 28
    .line 29
    iput-boolean v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    .line 30
    .line 31
    iput-boolean v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    .line 32
    .line 33
    iput-boolean v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    .line 34
    .line 35
    iput-boolean v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    .line 36
    .line 37
    iput-boolean v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    .line 38
    .line 39
    const/4 v2, -0x1

    .line 40
    iput v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 41
    .line 42
    iput v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    .line 43
    .line 44
    const/16 v1, -0x2710

    .line 45
    .line 46
    iput v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 47
    .line 48
    iput v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    .line 49
    .line 50
    new-instance v1, Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 51
    .line 52
    invoke-direct {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 56
    .line 57
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 58
    .line 59
    new-instance v1, Lcom/samsung/android/cover/CoverState;

    .line 60
    .line 61
    invoke-direct {v1}, Lcom/samsung/android/cover/CoverState;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 65
    .line 66
    new-instance v1, Landroid/util/ArrayMap;

    .line 67
    .line 68
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    .line 72
    .line 73
    new-instance v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 74
    .line 75
    invoke-direct {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 79
    .line 80
    iget v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    .line 81
    .line 82
    iput v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    .line 83
    .line 84
    iget-boolean v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 85
    .line 86
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 87
    .line 88
    iget-boolean v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 89
    .line 90
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 91
    .line 92
    iget-boolean v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    .line 93
    .line 94
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    .line 95
    .line 96
    iget-boolean v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    .line 97
    .line 98
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    .line 99
    .line 100
    iget-boolean v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    .line 101
    .line 102
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    .line 103
    .line 104
    iget v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    .line 105
    .line 106
    iput v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    .line 107
    .line 108
    iget-boolean v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    .line 109
    .line 110
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    .line 111
    .line 112
    iget-boolean v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 113
    .line 114
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 115
    .line 116
    iget-boolean v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    .line 117
    .line 118
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    .line 119
    .line 120
    iget-boolean v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    .line 121
    .line 122
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    .line 123
    .line 124
    iget-boolean v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    .line 125
    .line 126
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    .line 127
    .line 128
    iget-boolean v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    .line 129
    .line 130
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    .line 131
    .line 132
    iget-boolean v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    .line 133
    .line 134
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    .line 135
    .line 136
    iget v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 137
    .line 138
    iput v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 139
    .line 140
    iget v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    .line 141
    .line 142
    iput v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    .line 143
    .line 144
    iget v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 145
    .line 146
    iput v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 147
    .line 148
    iget-object v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 149
    .line 150
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 151
    .line 152
    iget-object v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 153
    .line 154
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 155
    .line 156
    iget-object v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 157
    .line 158
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 159
    .line 160
    iget-object v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 161
    .line 162
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 163
    .line 164
    iget-object v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 165
    .line 166
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 167
    .line 168
    iget-object v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    .line 169
    .line 170
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    .line 171
    .line 172
    iget-object v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 173
    .line 174
    iput-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 175
    .line 176
    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 177
    .line 178
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 179
    .line 180
    if-eqz p0, :cond_0

    .line 181
    .line 182
    const-string p0, "[DMS]StateManager"

    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_0
    return-object v0
.end method

.method public final getState()Lcom/android/server/desktopmode/StateManager$InternalState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final notifyBootInitBlockerRegistered(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]StateManager"

    .line 6
    .line 7
    const-string/jumbo v1, "notifyBootInitBlockerRegistered()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda4;

    .line 19
    .line 20
    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/desktopmode/StateManager;Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final notifyDisplayDisconnectionRequest(I)V
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
    const-string/jumbo v1, "notifyDisplayDisconnectionRequest(displayType="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ")"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "[DMS]StateManager"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDisplayDisconnectionRequested(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public final notifyLauncherPackageReplaced(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "notifyLauncherPackageReplaced(dataCleared="

    .line 6
    .line 7
    .line 8
    const-string v1, ")"

    .line 9
    .line 10
    const-string v2, "[DMS]StateManager"

    .line 11
    .line 12
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onLauncherPackageReplaced(Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public final notifyScheduleUpdateDesktopMode(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "notifyScheduleUpdateDesktopMode(enter="

    .line 6
    .line 7
    .line 8
    const-string v1, ")"

    .line 9
    .line 10
    const-string v2, "[DMS]StateManager"

    .line 11
    .line 12
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onScheduleUpdateDesktopMode(Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public final registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V
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
    const-string/jumbo v1, "registerListener(StateListener="

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
    const-string v1, ")"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "[DMS]StateManager"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final setDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]StateManager"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "setDesktopModeState(state="

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ")"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 34
    .line 35
    iput-object p1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    const/16 v3, 0xb

    .line 48
    .line 49
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final setDockLowChargerState(I)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]StateManager"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "setDockLowChargerState(dockLowChargerState="

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ")"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 34
    .line 35
    iget v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    .line 36
    .line 37
    if-eq v1, p1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 40
    .line 41
    iput p1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 50
    .line 51
    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    const/16 v3, 0xd

    .line 54
    .line 55
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method public final setEmergencyModeEnabled(Z)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]StateManager"

    .line 6
    .line 7
    const-string/jumbo v1, "setEmergencyModeEnabled(enabled="

    .line 8
    .line 9
    .line 10
    const-string v2, ")"

    .line 11
    .line 12
    invoke-static {v1, v2, v0, p1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 19
    .line 20
    iget-boolean v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    .line 21
    .line 22
    if-eq v1, p1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 25
    .line 26
    iput-boolean p1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    const/16 v3, 0xc

    .line 39
    .line 40
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]StateManager"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "setExternalDisplayConnected(connected="

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", display="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ")"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 42
    .line 43
    iget-boolean v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 44
    .line 45
    if-eq v1, p1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 48
    .line 49
    iput-boolean p1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 52
    .line 53
    iput-object p2, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 54
    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 58
    .line 59
    const/4 p2, 0x0

    .line 60
    iput-boolean p2, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 72
    .line 73
    new-instance v1, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    const/4 v2, 0x2

    .line 76
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    :cond_2
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method public final setExternalDisplayUpdated(Lcom/android/server/desktopmode/DisplayInfo;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]StateManager"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "setExternalDisplayUpdated(display="

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ")"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    const/4 v1, -0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 44
    .line 45
    iget v1, v1, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    .line 46
    .line 47
    :goto_0
    iget v2, p1, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    .line 48
    .line 49
    if-eq v1, v2, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 56
    .line 57
    iput-object v2, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 60
    .line 61
    iput-object p1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 70
    .line 71
    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    const/4 v3, 0x5

    .line 74
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    :goto_1
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0
.end method

.method public final setModeChangeLocked(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]StateManager"

    .line 6
    .line 7
    const-string/jumbo v1, "setModeChangeLocked(locked="

    .line 8
    .line 9
    .line 10
    const-string v2, ")"

    .line 11
    .line 12
    invoke-static {v1, v2, v0, p1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 19
    .line 20
    iget-boolean v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 21
    .line 22
    if-eq v1, p1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 25
    .line 26
    iput-boolean p1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final setNavBarGestureEnabled(Z)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]StateManager"

    .line 6
    .line 7
    const-string/jumbo v1, "setNavBarGestureEnabled(enabled="

    .line 8
    .line 9
    .line 10
    const-string v2, ")"

    .line 11
    .line 12
    invoke-static {v1, v2, v0, p1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 19
    .line 20
    iget-boolean v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    .line 21
    .line 22
    if-eq v1, p1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 25
    .line 26
    iput-boolean p1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final setTouchpadEnabled(Z)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]StateManager"

    .line 6
    .line 7
    const-string/jumbo v1, "setTouchpadEnabled(enabled="

    .line 8
    .line 9
    .line 10
    const-string v2, ")"

    .line 11
    .line 12
    invoke-static {v1, v2, v0, p1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 19
    .line 20
    iget-boolean v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    .line 21
    .line 22
    if-eq v1, p1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 25
    .line 26
    iput-boolean p1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    const/4 v3, 0x6

    .line 39
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final setWiredCharging(Z)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]StateManager"

    .line 6
    .line 7
    const-string/jumbo v1, "setWiredCharging(isWiredCharging="

    .line 8
    .line 9
    .line 10
    const-string v2, ")"

    .line 11
    .line 12
    invoke-static {v1, v2, v0, p1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 19
    .line 20
    iget-boolean v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    .line 21
    .line 22
    if-eq v1, p1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 25
    .line 26
    iput-boolean p1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda2;

    .line 37
    .line 38
    const/4 v3, 0x4

    .line 39
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final unregisterListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V
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
    const-string/jumbo v1, "unregisterListener(StateListener="

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
    const-string v1, ")"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "[DMS]StateManager"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method
