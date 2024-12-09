.class public final Lcom/android/server/desktopmode/HardwareManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final sSupportedDockUsbpdIdRanges:Ljava/util/List;

.field public static final sSupportedDockUsbpdIds:Ljava/util/Map;


# instance fields
.field public mBatteryChangedListener:Lcom/android/server/desktopmode/HardwareManager$6;

.field public mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

.field public mConnectedMouse:Landroid/view/InputDevice;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayListener:Lcom/android/server/desktopmode/HardwareManager$1;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDisplays:Landroid/util/SparseArray;

.field public mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

.field public mForcedInternalScreenModeEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mIDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public final mInputDeviceListener:Lcom/android/server/desktopmode/HardwareManager$2;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mIsBtMouseDeepSleep:Z

.field public mIsExternalDisplayConnected:Z

.field public mIsMouseConnected:Z

.field public mIsPogoKeyboardConnected:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mRawDockState:I

.field public mRawDockUsbpdIds:Ljava/lang/String;

.field public mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field public final mStateListener:Lcom/android/server/desktopmode/HardwareManager$5;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public final mUEventHostDeviceObserver:Lcom/android/server/desktopmode/HardwareManager$3;

.field public final mUEventObserver:Lcom/android/server/desktopmode/HardwareManager$3;

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static -$$Nest$mupdateExternalDisplayStatus(Lcom/android/server/desktopmode/HardwareManager;ZI)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    :try_start_0
    new-instance v2, Lcom/android/server/desktopmode/DisplayInfo;

    .line 16
    .line 17
    invoke-direct {v2, p1}, Lcom/android/server/desktopmode/DisplayInfo;-><init>(Landroid/view/Display;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {p1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget p1, v2, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 26
    .line 27
    invoke-static {p1}, Lcom/android/server/desktopmode/HardwareManager;->isSupportedDisplayType(I)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iput-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 34
    .line 35
    iget-boolean p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatusLocked()Z

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 45
    .line 46
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 47
    .line 48
    invoke-virtual {p1, v0, v2}, Lcom/android/server/desktopmode/StateManager;->setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 53
    .line 54
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Lcom/android/server/desktopmode/StateManager;->setExternalDisplayUpdated(Lcom/android/server/desktopmode/DisplayInfo;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    monitor-exit v1

    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter p1

    .line 70
    :try_start_1
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Lcom/android/server/desktopmode/DisplayInfo;

    .line 77
    .line 78
    if-eqz p2, :cond_8

    .line 79
    .line 80
    iget v1, p2, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 81
    .line 82
    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager;->isSupportedDisplayType(I)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_8

    .line 87
    .line 88
    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    .line 89
    .line 90
    if-eqz v1, :cond_8

    .line 91
    .line 92
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    const/4 v2, 0x0

    .line 99
    move v3, v2

    .line 100
    :goto_2
    const/4 v4, 0x0

    .line 101
    if-ge v3, v1, :cond_4

    .line 102
    .line 103
    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    .line 104
    .line 105
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Lcom/android/server/desktopmode/DisplayInfo;

    .line 110
    .line 111
    iget v6, v5, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 112
    .line 113
    invoke-static {v6}, Lcom/android/server/desktopmode/HardwareManager;->isSupportedDisplayType(I)Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-eqz v6, :cond_3

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :catchall_1
    move-exception p0

    .line 124
    goto :goto_6

    .line 125
    :cond_4
    move v0, v2

    .line 126
    move-object v5, v4

    .line 127
    :goto_3
    iput-object v5, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 128
    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    iget-object p2, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 132
    .line 133
    check-cast p2, Lcom/android/server/desktopmode/StateManager;

    .line 134
    .line 135
    invoke-virtual {p2, v5}, Lcom/android/server/desktopmode/StateManager;->setExternalDisplayUpdated(Lcom/android/server/desktopmode/DisplayInfo;)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_5
    iget p2, p2, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 140
    .line 141
    const/4 v0, 0x2

    .line 142
    if-ne p2, v0, :cond_7

    .line 143
    .line 144
    const-string p2, "/sys/class/dp_sec/dex"

    .line 145
    .line 146
    const/4 v0, -0x1

    .line 147
    invoke-static {v0, p2}, Lcom/android/server/desktopmode/Utils;->readFile(ILjava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-nez p2, :cond_6

    .line 152
    .line 153
    iput-boolean v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatusLocked()Z

    .line 156
    .line 157
    .line 158
    iget-object p2, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 159
    .line 160
    check-cast p2, Lcom/android/server/desktopmode/StateManager;

    .line 161
    .line 162
    invoke-virtual {p2, v2, v4}, Lcom/android/server/desktopmode/StateManager;->setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_6
    iget-object p2, p0, Lcom/android/server/desktopmode/HardwareManager;->mHandler:Landroid/os/Handler;

    .line 167
    .line 168
    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$$ExternalSyntheticLambda0;

    .line 169
    .line 170
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/HardwareManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    .line 171
    .line 172
    .line 173
    const-wide/16 v1, 0x7d0

    .line 174
    .line 175
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_7
    iput-boolean v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatusLocked()Z

    .line 182
    .line 183
    .line 184
    iget-object p2, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 185
    .line 186
    check-cast p2, Lcom/android/server/desktopmode/StateManager;

    .line 187
    .line 188
    invoke-virtual {p2, v2, v4}, Lcom/android/server/desktopmode/StateManager;->setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V

    .line 189
    .line 190
    .line 191
    :cond_8
    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    :goto_5
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 193
    .line 194
    if-eqz p1, :cond_9

    .line 195
    .line 196
    const-string p1, "[DMS]HardwareManager"

    .line 197
    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string/jumbo v0, "updateExternalDisplayStatus(), mDisplays="

    .line 201
    .line 202
    .line 203
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    .line 207
    .line 208
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-static {p1, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_9
    return-void

    .line 219
    :goto_6
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 220
    throw p0
.end method

.method public static -$$Nest$mupdatePogoKeyboardStatus(Lcom/android/server/desktopmode/HardwareManager;Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsPogoKeyboardConnected:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "[DMS]StateManager"

    .line 15
    .line 16
    const-string/jumbo v1, "setPogoKeyboardConnected(state="

    .line 17
    .line 18
    .line 19
    const-string v2, ")"

    .line 20
    .line 21
    invoke-static {v1, v2, v0, p1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 28
    .line 29
    iget-boolean v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    .line 30
    .line 31
    if-eq v1, p1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 34
    .line 35
    iput-boolean p1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

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
    const/4 v3, 0x4

    .line 48
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Ljava/util/Map;

    .line 7
    .line 8
    const/16 v1, 0x2718

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "04e8:a027"

    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x2714

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "04e8:a029"

    .line 26
    .line 27
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x2719

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "04e8:a025"

    .line 37
    .line 38
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x2711

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "04e8:a020"

    .line 48
    .line 49
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const/16 v1, 0x2717

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "04b4:2122"

    .line 59
    .line 60
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const/16 v1, 0x2716

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "04b4:f645"

    .line 70
    .line 71
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const/16 v1, 0x271a

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "04e8:a048"

    .line 81
    .line 82
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const/16 v1, 0x271b

    .line 86
    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v2, "04e8:a056"

    .line 92
    .line 93
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const/16 v1, 0x271d

    .line 97
    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v2, "04e8:a066"

    .line 103
    .line 104
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIdRanges:Ljava/util/List;

    .line 113
    .line 114
    new-instance v1, Landroid/util/Pair;

    .line 115
    .line 116
    new-instance v2, Landroid/util/Range;

    .line 117
    .line 118
    const-string v3, "04e8:a02a"

    .line 119
    .line 120
    const-string v4, "04e8:a02e"

    .line 121
    .line 122
    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 123
    .line 124
    .line 125
    const/16 v3, 0x2715

    .line 126
    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    new-instance v1, Landroid/util/Pair;

    .line 138
    .line 139
    new-instance v2, Landroid/util/Range;

    .line 140
    .line 141
    const-string v3, "04e8:a02f"

    .line 142
    .line 143
    const-string v4, "04e8:a033"

    .line 144
    .line 145
    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 146
    .line 147
    .line 148
    const/16 v3, 0x271e

    .line 149
    .line 150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    new-instance v1, Landroid/util/Pair;

    .line 161
    .line 162
    new-instance v2, Landroid/util/Range;

    .line 163
    .line 164
    const-string v3, "1048:4007"

    .line 165
    .line 166
    const-string v4, "1048:4012"

    .line 167
    .line 168
    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 169
    .line 170
    .line 171
    const/16 v3, 0x271c

    .line 172
    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    new-instance v1, Landroid/util/Pair;

    .line 184
    .line 185
    new-instance v2, Landroid/util/Range;

    .line 186
    .line 187
    const-string v4, "1048:5006"

    .line 188
    .line 189
    const-string v5, "1048:5013"

    .line 190
    .line 191
    invoke-direct {v2, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 192
    .line 193
    .line 194
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    new-instance v1, Landroid/util/Pair;

    .line 201
    .line 202
    new-instance v2, Landroid/util/Range;

    .line 203
    .line 204
    const-string v4, "1048:6000"

    .line 205
    .line 206
    const-string v5, "1048:6fff"

    .line 207
    .line 208
    invoke-direct {v2, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 209
    .line 210
    .line 211
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Landroid/hardware/input/InputManager;Landroid/hardware/display/DisplayManager;Landroid/os/PowerManagerInternal;Lcom/android/server/wm/WindowManagerService;Landroid/hardware/display/IDisplayManager;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    move-object/from16 v2, p4

    .line 5
    .line 6
    move-object/from16 v3, p5

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v4, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    iput-boolean v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mForcedInternalScreenModeEnabled:Z

    .line 20
    .line 21
    iput-boolean v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    .line 22
    .line 23
    iput-boolean v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    .line 24
    .line 25
    iput-boolean v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mIsPogoKeyboardConnected:Z

    .line 26
    .line 27
    iput-boolean v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mIsBtMouseDeepSleep:Z

    .line 28
    .line 29
    const/4 v5, -0x1

    .line 30
    iput v5, v0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockState:I

    .line 31
    .line 32
    const-string v5, ""

    .line 33
    .line 34
    iput-object v5, v0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v5, Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v5, v0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    .line 42
    .line 43
    new-instance v5, Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 44
    .line 45
    invoke-direct {v5}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v5, v0, Lcom/android/server/desktopmode/HardwareManager;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 49
    .line 50
    new-instance v5, Lcom/android/server/desktopmode/HardwareManager$1;

    .line 51
    .line 52
    invoke-direct {v5, p0}, Lcom/android/server/desktopmode/HardwareManager$1;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    .line 53
    .line 54
    .line 55
    new-instance v6, Lcom/android/server/desktopmode/HardwareManager$2;

    .line 56
    .line 57
    invoke-direct {v6, p0}, Lcom/android/server/desktopmode/HardwareManager$2;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    .line 58
    .line 59
    .line 60
    new-instance v7, Lcom/android/server/desktopmode/HardwareManager$3;

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    invoke-direct {v7, p0, v8}, Lcom/android/server/desktopmode/HardwareManager$3;-><init>(Lcom/android/server/desktopmode/HardwareManager;I)V

    .line 64
    .line 65
    .line 66
    new-instance v8, Lcom/android/server/desktopmode/HardwareManager$3;

    .line 67
    .line 68
    const/4 v9, 0x1

    .line 69
    invoke-direct {v8, p0, v9}, Lcom/android/server/desktopmode/HardwareManager$3;-><init>(Lcom/android/server/desktopmode/HardwareManager;I)V

    .line 70
    .line 71
    .line 72
    new-instance v9, Lcom/android/server/desktopmode/HardwareManager$5;

    .line 73
    .line 74
    invoke-direct {v9, p0}, Lcom/android/server/desktopmode/HardwareManager$5;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    .line 75
    .line 76
    .line 77
    move-object v10, p1

    .line 78
    iput-object v10, v0, Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    new-instance v11, Landroid/os/HandlerThread;

    .line 81
    .line 82
    const-string/jumbo v12, "desktopmode_hw"

    .line 83
    .line 84
    .line 85
    const/4 v13, -0x2

    .line 86
    invoke-direct {v11, v12, v13}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 90
    .line 91
    .line 92
    new-instance v12, Landroid/os/Handler;

    .line 93
    .line 94
    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    invoke-direct {v12, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99
    .line 100
    .line 101
    iput-object v12, v0, Lcom/android/server/desktopmode/HardwareManager;->mHandler:Landroid/os/Handler;

    .line 102
    .line 103
    iput-object v1, v0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 104
    .line 105
    check-cast v1, Lcom/android/server/desktopmode/StateManager;

    .line 106
    .line 107
    invoke-virtual {v1, v9}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 108
    .line 109
    .line 110
    move-object/from16 v1, p6

    .line 111
    .line 112
    iput-object v1, v0, Lcom/android/server/desktopmode/HardwareManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iput-object v1, v0, Lcom/android/server/desktopmode/HardwareManager;->mResolver:Landroid/content/ContentResolver;

    .line 119
    .line 120
    move-object/from16 v1, p7

    .line 121
    .line 122
    iput-object v1, v0, Lcom/android/server/desktopmode/HardwareManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 123
    .line 124
    iput-object v2, v0, Lcom/android/server/desktopmode/HardwareManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 125
    .line 126
    invoke-virtual {v2, v6, v12}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 127
    .line 128
    .line 129
    iput-object v3, v0, Lcom/android/server/desktopmode/HardwareManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 130
    .line 131
    invoke-virtual {v3, v5, v12}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 132
    .line 133
    .line 134
    move-object/from16 v1, p8

    .line 135
    .line 136
    iput-object v1, v0, Lcom/android/server/desktopmode/HardwareManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 137
    .line 138
    const-string v1, "DEVPATH=/devices/virtual/sec/ccic"

    .line 139
    .line 140
    invoke-virtual {v7, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v1, "DEVTYPE=usb_interface"

    .line 144
    .line 145
    invoke-virtual {v8, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    move-object/from16 v1, p3

    .line 149
    .line 150
    iput-object v1, v0, Lcom/android/server/desktopmode/HardwareManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 151
    .line 152
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    .line 153
    .line 154
    if-eqz v1, :cond_1

    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const-string/jumbo v2, "com.sec.feature.cover"

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_1

    .line 168
    .line 169
    new-instance v1, Lcom/android/server/desktopmode/HardwareManager$6;

    .line 170
    .line 171
    const/4 v2, 0x2

    .line 172
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/HardwareManager$6;-><init>(Lcom/android/server/desktopmode/HardwareManager;I)V

    .line 173
    .line 174
    .line 175
    const-string/jumbo v2, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    .line 176
    .line 177
    .line 178
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 183
    .line 184
    const/4 v6, 0x0

    .line 185
    const/4 v7, 0x2

    .line 186
    const/4 v8, 0x0

    .line 187
    move-object/from16 p2, p1

    .line 188
    .line 189
    move-object/from16 p3, v1

    .line 190
    .line 191
    move-object/from16 p4, v5

    .line 192
    .line 193
    move-object/from16 p5, v3

    .line 194
    .line 195
    move-object/from16 p6, v8

    .line 196
    .line 197
    move-object/from16 p7, v6

    .line 198
    .line 199
    move/from16 p8, v7

    .line 200
    .line 201
    invoke-virtual/range {p2 .. p8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    if-eqz v1, :cond_1

    .line 206
    .line 207
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 212
    .line 213
    if-eqz v5, :cond_0

    .line 214
    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string/jumbo v6, "sticky intent action="

    .line 218
    .line 219
    .line 220
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    const-string v6, "[DMS]HardwareManager"

    .line 231
    .line 232
    invoke-static {v6, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_1

    .line 240
    .line 241
    const-string/jumbo v2, "status"

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    invoke-static {p0, v1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$mupdatePogoKeyboardStatus(Lcom/android/server/desktopmode/HardwareManager;Z)V

    .line 249
    .line 250
    .line 251
    :cond_1
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 252
    .line 253
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    new-instance v2, Lcom/android/server/desktopmode/HardwareManager$6;

    .line 258
    .line 259
    const/4 v3, 0x0

    .line 260
    invoke-direct {v2, p0, v3}, Lcom/android/server/desktopmode/HardwareManager$6;-><init>(Lcom/android/server/desktopmode/HardwareManager;I)V

    .line 261
    .line 262
    .line 263
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 264
    .line 265
    const/4 v3, 0x2

    .line 266
    const/4 v4, 0x0

    .line 267
    const/4 v5, 0x0

    .line 268
    move-object p0, p1

    .line 269
    move-object p1, v2

    .line 270
    move-object/from16 p2, v0

    .line 271
    .line 272
    move-object/from16 p3, v1

    .line 273
    .line 274
    move-object/from16 p4, v4

    .line 275
    .line 276
    move-object/from16 p5, v5

    .line 277
    .line 278
    move/from16 p6, v3

    .line 279
    .line 280
    invoke-virtual/range {p0 .. p6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 281
    .line 282
    .line 283
    return-void
.end method

.method public static isSupportedDisplayType(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0x3e8

    .line 5
    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x3e9

    .line 9
    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 16
    :goto_1
    return p0
.end method

.method public static resolveDockType(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Ljava/util/Map;

    .line 8
    .line 9
    check-cast v0, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIdRanges:Ljava/util/List;

    .line 25
    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/util/Pair;

    .line 43
    .line 44
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Landroid/util/Range;

    .line 47
    .line 48
    invoke-virtual {v2, p0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0

    .line 63
    :cond_2
    const/4 p0, -0x1

    .line 64
    return p0
.end method


# virtual methods
.method public final command(Ljava/io/PrintWriter;Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "on"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1, v2}, Lcom/android/server/desktopmode/HardwareManager;->setForcedInternalScreenModeLocked(Ljava/io/PrintWriter;Z)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return v3

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string/jumbo v1, "off"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, p1, v3}, Lcom/android/server/desktopmode/HardwareManager;->setForcedInternalScreenModeLocked(Ljava/io/PrintWriter;Z)V

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return v3

    .line 36
    :cond_1
    const-string/jumbo v1, "toggle"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    iget-boolean p2, p0, Lcom/android/server/desktopmode/HardwareManager;->mForcedInternalScreenModeEnabled:Z

    .line 46
    .line 47
    xor-int/2addr p2, v2

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/HardwareManager;->setForcedInternalScreenModeLocked(Ljava/io/PrintWriter;Z)V

    .line 49
    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return v3

    .line 53
    :cond_2
    monitor-exit v0

    .line 54
    const/4 p0, -0x1

    .line 55
    return p0

    .line 56
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 13

    .line 1
    const-string/jumbo v0, "mRawDockUsbpdIds="

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "mRawDockState="

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "mIsPogoKeyboardConnected="

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "mIsMouseConnected="

    .line 11
    .line 12
    .line 13
    const-string/jumbo v4, "mIsExternalDisplayConnected="

    .line 14
    .line 15
    .line 16
    const-string/jumbo v5, "mIsBtMouseDeepSleep="

    .line 17
    .line 18
    .line 19
    const-string/jumbo v6, "mForcedInternalScreenModeEnabled="

    .line 20
    .line 21
    .line 22
    const-string/jumbo v7, "mDockState="

    .line 23
    .line 24
    .line 25
    const-string/jumbo v8, "mDisplays="

    .line 26
    .line 27
    .line 28
    const-string/jumbo v9, "mConnectedMouse="

    .line 29
    .line 30
    .line 31
    const-string/jumbo v10, "mConnectedDisplay="

    .line 32
    .line 33
    .line 34
    iget-object v11, p0, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v11

    .line 37
    :try_start_0
    const-string v12, "Current HardwareManager state:"

    .line 38
    .line 39
    invoke-virtual {p1, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 43
    .line 44
    .line 45
    new-instance v12, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v10, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 51
    .line 52
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-virtual {p1, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v10, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v9, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedMouse:Landroid/view/InputDevice;

    .line 68
    .line 69
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-virtual {p1, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v9, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v8, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v8, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v7, p0, Lcom/android/server/desktopmode/HardwareManager;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 102
    .line 103
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-boolean v6, p0, Lcom/android/server/desktopmode/HardwareManager;->mForcedInternalScreenModeEnabled:Z

    .line 119
    .line 120
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-boolean v5, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsBtMouseDeepSleep:Z

    .line 136
    .line 137
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-boolean v4, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    .line 153
    .line 154
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-boolean v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    .line 170
    .line 171
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-boolean v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsPogoKeyboardConnected:Z

    .line 187
    .line 188
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockState:I

    .line 204
    .line 205
    invoke-static {v1}, Lcom/android/server/desktopmode/Utils;->dockStateToString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 237
    .line 238
    .line 239
    monitor-exit v11

    .line 240
    return-void

    .line 241
    :catchall_0
    move-exception p0

    .line 242
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    throw p0
.end method

.method public final initializeExternalDisplayStatusLocked([Landroid/view/Display;)V
    .locals 8

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move v3, v2

    .line 5
    :goto_0
    const/4 v4, 0x1

    .line 6
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    aget-object v5, p1, v2

    .line 9
    .line 10
    new-instance v6, Lcom/android/server/desktopmode/DisplayInfo;

    .line 11
    .line 12
    invoke-direct {v6, v5}, Lcom/android/server/desktopmode/DisplayInfo;-><init>(Landroid/view/Display;)V

    .line 13
    .line 14
    .line 15
    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    .line 16
    .line 17
    iget v7, v6, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    .line 18
    .line 19
    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget v5, v6, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 23
    .line 24
    invoke-static {v5}, Lcom/android/server/desktopmode/HardwareManager;->isSupportedDisplayType(I)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    move v3, v4

    .line 31
    move-object v1, v6

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-eqz v3, :cond_2

    .line 36
    .line 37
    iput-boolean v4, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 42
    .line 43
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 44
    .line 45
    invoke-virtual {p1, v4, v1}, Lcom/android/server/desktopmode/StateManager;->setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string/jumbo v0, "initializeExternalDisplayStatusLocked(), mDisplays="

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string p1, "[DMS]HardwareManager"

    .line 70
    .line 71
    invoke-static {p1, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method public final logConnectedAccessoryInformationLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "#"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 17
    .line 18
    iget-boolean v1, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget p1, p1, Lcom/samsung/android/cover/CoverState;->type:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, -0x1

    .line 26
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "Log extra data = "

    .line 36
    .line 37
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v1, "[DMS]HardwareManager"

    .line 48
    .line 49
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    const-string p1, "LCAI"

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeLogger;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final setForcedInternalScreenModeLocked(Ljava/io/PrintWriter;Z)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "[DMS]HardwareManager"

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "ADB command received; setForcedInternalScreenModeLocked(), enabled="

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    if-eqz p1, :cond_4

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mForcedInternalScreenModeEnabled:Z

    .line 27
    .line 28
    if-ne p2, v1, :cond_2

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    const-string/jumbo p0, "on!"

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string/jumbo p0, "off!"

    .line 37
    .line 38
    .line 39
    :goto_0
    const-string p2, "Internal screen DeX mode is already turned "

    .line 40
    .line 41
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    if-eqz p2, :cond_3

    .line 50
    .line 51
    const-string v1, "Entering"

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const-string v1, "Exiting"

    .line 55
    .line 56
    :goto_1
    const-string v2, " internal screen DeX mode..."

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_4
    iput-boolean p2, p0, Lcom/android/server/desktopmode/HardwareManager;->mForcedInternalScreenModeEnabled:Z

    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 68
    .line 69
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    const-string v0, "[DMS]StateManager"

    .line 77
    .line 78
    const-string/jumbo v1, "setForcedInternalScreenModeEnabled(enabled="

    .line 79
    .line 80
    .line 81
    const-string v2, ")"

    .line 82
    .line 83
    invoke-static {v1, v2, v0, p2}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    :cond_5
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 87
    .line 88
    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p1, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 90
    .line 91
    iget-boolean v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 92
    .line 93
    if-eq v1, p2, :cond_6

    .line 94
    .line 95
    iget-object v1, p1, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 96
    .line 97
    iput-boolean p2, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 98
    .line 99
    iget-object p2, p1, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    iget-object v1, p1, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 106
    .line 107
    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    invoke-direct {v2, p1, p2, v3}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    goto :goto_3

    .line 119
    :cond_6
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatusLocked()Z

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    throw p0
.end method

.method public final setRawDockStateLocked(I)V
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
    const-string/jumbo v1, "setRawDockStateLocked(), state="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/server/desktopmode/Utils;->dockStateToString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "[DMS]HardwareManager"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iput p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockState:I

    .line 30
    .line 31
    return-void
.end method

.method public final setRawDockUsbpdIdsLocked(Ljava/lang/String;)V
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
    const-string/jumbo v1, "setRawDockUsbpdIdsLocked(), usbpdIds="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "[DMS]HardwareManager"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method public final updateDockStatusLocked()Z
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    const-string v0, "/sys/class/sec/ccic/usbpd_type"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Utils;->readFile(ILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/HardwareManager;->setRawDockStateLocked(I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "/sys/class/sec/ccic/usbpd_ids"

    .line 17
    .line 18
    const-string v3, ""

    .line 19
    .line 20
    invoke-static {v0, v3}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/HardwareManager;->setRawDockUsbpdIdsLocked(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 28
    .line 29
    iget v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockState:I

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    move v3, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v3}, Lcom/android/server/desktopmode/HardwareManager;->resolveDockType(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    :goto_0
    const/4 v4, 0x1

    .line 42
    if-eq v3, v2, :cond_4

    .line 43
    .line 44
    const/16 v2, 0x2711

    .line 45
    .line 46
    if-eq v3, v2, :cond_3

    .line 47
    .line 48
    const/16 v2, 0x2714

    .line 49
    .line 50
    if-eq v3, v2, :cond_3

    .line 51
    .line 52
    const/16 v2, 0x2716

    .line 53
    .line 54
    if-ne v3, v2, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    new-instance v2, Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 58
    .line 59
    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {v2, v5, v4, v4, v3}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(Ljava/lang/String;ZZI)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    :goto_1
    new-instance v2, Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 66
    .line 67
    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {v2, v5, v4, v1, v3}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(Ljava/lang/String;ZZI)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    .line 74
    .line 75
    if-eqz v2, :cond_6

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    const/16 v3, 0x2712

    .line 82
    .line 83
    if-nez v2, :cond_5

    .line 84
    .line 85
    iget v2, v0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 86
    .line 87
    if-ne v2, v3, :cond_6

    .line 88
    .line 89
    :cond_5
    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 90
    .line 91
    if-eqz v2, :cond_6

    .line 92
    .line 93
    iget v2, v2, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 94
    .line 95
    const/16 v5, 0x3e9

    .line 96
    .line 97
    if-eq v2, v5, :cond_6

    .line 98
    .line 99
    new-instance v2, Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 100
    .line 101
    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    .line 102
    .line 103
    invoke-direct {v2, v5, v4, v4, v3}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(Ljava/lang/String;ZZI)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    new-instance v2, Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 108
    .line 109
    invoke-direct {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>()V

    .line 110
    .line 111
    .line 112
    :goto_2
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 113
    .line 114
    if-eqz v3, :cond_7

    .line 115
    .line 116
    const-string v5, "[DMS]HardwareManager"

    .line 117
    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string/jumbo v7, "updateDockStatusLocked(), new="

    .line 121
    .line 122
    .line 123
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v7, ", old="

    .line 130
    .line 131
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_7
    iget v0, v0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 145
    .line 146
    iget v5, v2, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 147
    .line 148
    if-eq v0, v5, :cond_c

    .line 149
    .line 150
    iput-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 151
    .line 152
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 153
    .line 154
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    if-eqz v3, :cond_8

    .line 160
    .line 161
    const-string v3, "[DMS]StateManager"

    .line 162
    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string/jumbo v6, "setDockState(dockState="

    .line 166
    .line 167
    .line 168
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v6, ")"

    .line 175
    .line 176
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-static {v3, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_8
    iget-object v3, v0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 187
    .line 188
    monitor-enter v3

    .line 189
    :try_start_0
    iget-object v5, v0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 190
    .line 191
    iget-object v6, v0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 192
    .line 193
    iget-object v6, v6, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 194
    .line 195
    iput-object v6, v5, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 196
    .line 197
    iget-object v5, v0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 198
    .line 199
    iput-object v2, v5, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 200
    .line 201
    iget-object v5, v0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 202
    .line 203
    invoke-virtual {v0, v5}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    iget-object v6, v0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 208
    .line 209
    new-instance v7, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;

    .line 210
    .line 211
    const/16 v8, 0xa

    .line 212
    .line 213
    invoke-direct {v7, v0, v5, v8}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    .line 218
    .line 219
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SFC:Z

    .line 221
    .line 222
    if-eqz v0, :cond_9

    .line 223
    .line 224
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 225
    .line 226
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    iget v0, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 233
    .line 234
    const/16 v3, -0x2710

    .line 235
    .line 236
    if-eq v0, v3, :cond_9

    .line 237
    .line 238
    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 239
    .line 240
    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    invoke-virtual {v3, v0, v5}, Lcom/android/server/desktopmode/SettingsHelper;->backupOrRestoreSuperFastCharging(IZ)V

    .line 245
    .line 246
    .line 247
    :cond_9
    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_a

    .line 252
    .line 253
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mBatteryChangedListener:Lcom/android/server/desktopmode/HardwareManager$6;

    .line 254
    .line 255
    if-eqz v0, :cond_b

    .line 256
    .line 257
    iget-object v3, v0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 258
    .line 259
    iget-object v3, v3, Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;

    .line 260
    .line 261
    invoke-virtual {v3, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 262
    .line 263
    .line 264
    iget-object v0, v0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 265
    .line 266
    iget-object v0, v0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 267
    .line 268
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/StateManager;->setWiredCharging(Z)V

    .line 271
    .line 272
    .line 273
    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mBatteryChangedListener:Lcom/android/server/desktopmode/HardwareManager$6;

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_a
    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$6;

    .line 278
    .line 279
    const/4 v1, 0x1

    .line 280
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/HardwareManager$6;-><init>(Lcom/android/server/desktopmode/HardwareManager;I)V

    .line 281
    .line 282
    .line 283
    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mBatteryChangedListener:Lcom/android/server/desktopmode/HardwareManager$6;

    .line 284
    .line 285
    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;

    .line 286
    .line 287
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 288
    .line 289
    new-instance v8, Landroid/content/IntentFilter;

    .line 290
    .line 291
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 292
    .line 293
    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    const/4 v9, 0x0

    .line 297
    const/4 v10, 0x0

    .line 298
    const/4 v11, 0x2

    .line 299
    move-object v6, v0

    .line 300
    invoke-virtual/range {v5 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 305
    .line 306
    check-cast v3, Lcom/android/server/desktopmode/StateManager;

    .line 307
    .line 308
    invoke-virtual {v3}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v0, v3, v1}, Lcom/android/server/desktopmode/HardwareManager$6;->updateWiredChargingStatus(Lcom/android/server/desktopmode/StateManager$InternalState;Landroid/content/Intent;)V

    .line 313
    .line 314
    .line 315
    :cond_b
    :goto_3
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mResolver:Landroid/content/ContentResolver;

    .line 316
    .line 317
    const-string/jumbo v0, "dock_usbpd_ids"

    .line 318
    .line 319
    .line 320
    iget v1, v2, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 321
    .line 322
    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 323
    .line 324
    .line 325
    move v1, v4

    .line 326
    goto :goto_4

    .line 327
    :catchall_0
    move-exception p0

    .line 328
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    throw p0

    .line 330
    :cond_c
    :goto_4
    return v1
.end method

.method public final updateInputDeviceStatusLocked()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    move v4, v3

    .line 11
    :goto_0
    const/4 v5, 0x1

    .line 12
    if-ge v3, v1, :cond_3

    .line 13
    .line 14
    aget v6, v0, v3

    .line 15
    .line 16
    iget-object v7, p0, Lcom/android/server/desktopmode/HardwareManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 17
    .line 18
    invoke-virtual {v7, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    if-eqz v6, :cond_2

    .line 23
    .line 24
    invoke-virtual {v6}, Landroid/view/InputDevice;->isExternal()Z

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    if-eqz v7, :cond_2

    .line 29
    .line 30
    invoke-virtual {v6}, Landroid/view/InputDevice;->getSources()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    and-int/lit8 v7, v7, 0xe

    .line 35
    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    move v5, v2

    .line 40
    :goto_1
    or-int/2addr v4, v5

    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 44
    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    const-string v5, "[DMS]HardwareManager"

    .line 48
    .line 49
    new-instance v7, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v8, "Connected mouse="

    .line 52
    .line 53
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-static {v5, v7}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iput-object v6, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedMouse:Landroid/view/InputDevice;

    .line 67
    .line 68
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    .line 72
    .line 73
    if-eq v0, v4, :cond_4

    .line 74
    .line 75
    move v0, v5

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    move v0, v2

    .line 78
    :goto_2
    iput-boolean v4, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    .line 79
    .line 80
    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsBtMouseDeepSleep:Z

    .line 81
    .line 82
    if-eqz v1, :cond_6

    .line 83
    .line 84
    iput-boolean v5, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    .line 85
    .line 86
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    const-string v1, "[DMS]HardwareManager"

    .line 91
    .line 92
    const-string v3, "Enter the BT mouse deep sleep routine in updateInputDeviceStatusLocked()"

    .line 93
    .line 94
    invoke-static {v1, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    iput-boolean v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsBtMouseDeepSleep:Z

    .line 98
    .line 99
    :cond_6
    if-eqz v0, :cond_9

    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 102
    .line 103
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 109
    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    const-string v1, "[DMS]StateManager"

    .line 113
    .line 114
    const-string/jumbo v2, "setMouseConnected(connected="

    .line 115
    .line 116
    .line 117
    const-string v3, ")"

    .line 118
    .line 119
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    .line 121
    .line 122
    :cond_7
    iget-object v1, v0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 123
    .line 124
    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v2, v0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 126
    .line 127
    iget-boolean v2, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    .line 128
    .line 129
    if-eq v2, v4, :cond_8

    .line 130
    .line 131
    iget-object v2, v0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 132
    .line 133
    iput-boolean v4, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    .line 134
    .line 135
    iget-object v2, v0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iget-object v3, v0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 142
    .line 143
    new-instance v4, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda2;

    .line 144
    .line 145
    const/4 v5, 0x1

    .line 146
    invoke-direct {v4, v0, v2, v5}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    goto :goto_4

    .line 155
    :cond_8
    :goto_3
    monitor-exit v1

    .line 156
    goto :goto_5

    .line 157
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    throw p0

    .line 159
    :cond_9
    :goto_5
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 160
    .line 161
    if-eqz v0, :cond_a

    .line 162
    .line 163
    const-string v0, "[DMS]HardwareManager"

    .line 164
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string/jumbo v2, "updateInputDeviceStatusLocked(), mIsMouseConnected="

    .line 168
    .line 169
    .line 170
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-boolean p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    .line 174
    .line 175
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-static {v0, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_a
    return-void
.end method
