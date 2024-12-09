.class public final Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mAppToken:Landroid/os/IBinder;

.field public final mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

.field public mDensityDpi:I

.field public mDexEnabled:Z

.field public mDisplayIdToMirror:I

.field public mDisplayState:I

.field public final mFlags:I

.field public mHeight:I

.field public mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public mIsDisplayOn:Z

.field public mIsWindowManagerMirroring:Z

.field public final mMediaProjectionCallback:Landroid/media/projection/IMediaProjectionCallback;

.field public mMode:Landroid/view/Display$Mode;

.field public final mName:Ljava/lang/String;

.field public final mOwnerPackageName:Ljava/lang/String;

.field public final mOwnerUid:I

.field public mPendingChanges:I

.field public final mProjection:Landroid/media/projection/IMediaProjection;

.field public final mRequestedRefreshRate:F

.field public mStopped:Z

.field public mSurface:Landroid/view/Surface;

.field public mWidth:I

.field public final synthetic this$0:Lcom/android/server/display/VirtualDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Landroid/view/Surface;ILcom/android/server/display/VirtualDisplayAdapter$Callback;Landroid/media/projection/IMediaProjection;Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;Ljava/lang/String;Landroid/hardware/display/VirtualDisplayConfig;)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v7, p6

    .line 6
    .line 7
    iput-object v1, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 8
    .line 9
    iget-object v4, v1, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    move-object/from16 v0, p0

    .line 13
    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    move-object/from16 v2, p2

    .line 17
    .line 18
    move-object/from16 v3, p11

    .line 19
    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 21
    .line 22
    .line 23
    move-object/from16 v0, p3

    .line 24
    .line 25
    iput-object v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mAppToken:Landroid/os/IBinder;

    .line 26
    .line 27
    move/from16 v0, p4

    .line 28
    .line 29
    iput v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerUid:I

    .line 30
    .line 31
    move-object/from16 v0, p5

    .line 32
    .line 33
    iput-object v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    .line 46
    .line 47
    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    .line 52
    .line 53
    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getDensityDpi()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    .line 58
    .line 59
    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getRequestedRefreshRate()F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mRequestedRefreshRate:F

    .line 64
    .line 65
    iget v10, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    .line 66
    .line 67
    iget v11, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    cmpl-float v1, v0, v1

    .line 71
    .line 72
    if-eqz v1, :cond_0

    .line 73
    .line 74
    :goto_0
    move v13, v0

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    const/high16 v0, 0x42700000    # 60.0f

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :goto_1
    const/4 v0, 0x0

    .line 80
    new-array v15, v0, [F

    .line 81
    .line 82
    new-array v1, v0, [I

    .line 83
    .line 84
    new-instance v2, Landroid/view/Display$Mode;

    .line 85
    .line 86
    sget-object v3, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    const/4 v14, 0x0

    .line 93
    move-object v8, v2

    .line 94
    move v12, v13

    .line 95
    move-object/from16 v16, v1

    .line 96
    .line 97
    invoke-direct/range {v8 .. v16}, Landroid/view/Display$Mode;-><init>(IIIFFZ[F[I)V

    .line 98
    .line 99
    .line 100
    iput-object v2, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 101
    .line 102
    iput-object v7, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 103
    .line 104
    move/from16 v1, p7

    .line 105
    .line 106
    iput v1, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 107
    .line 108
    move-object/from16 v1, p8

    .line 109
    .line 110
    iput-object v1, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    .line 111
    .line 112
    move-object/from16 v1, p9

    .line 113
    .line 114
    iput-object v1, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mProjection:Landroid/media/projection/IMediaProjection;

    .line 115
    .line 116
    move-object/from16 v1, p10

    .line 117
    .line 118
    iput-object v1, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMediaProjectionCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 119
    .line 120
    iput v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 121
    .line 122
    iget v1, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 123
    .line 124
    const/4 v2, 0x1

    .line 125
    or-int/2addr v1, v2

    .line 126
    iput v1, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 127
    .line 128
    if-eqz v7, :cond_1

    .line 129
    .line 130
    move v0, v2

    .line 131
    :cond_1
    iput-boolean v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsDisplayOn:Z

    .line 132
    .line 133
    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getDisplayIdToMirror()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iput v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayIdToMirror:I

    .line 138
    .line 139
    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->isWindowManagerMirroringEnabled()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iput-boolean v0, v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    .line 144
    .line 145
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    const-string v0, "Virtual display device released because application token died: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mAppToken:Landroid/os/IBinder;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const-string v2, "VirtualDisplayAdapter"

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mProjection:Landroid/media/projection/IMediaProjection;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMediaProjectionCallback:Landroid/media/projection/IMediaProjectionCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    :try_start_1
    invoke-interface {v0, v2}, Landroid/media/projection/IMediaProjection;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    :try_start_2
    const-string v2, "VirtualDisplayAdapter"

    .line 56
    .line 57
    const-string v3, "Failed to unregister callback in binderDied"

    .line 58
    .line 59
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    invoke-virtual {v0, p0, v2}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 66
    .line 67
    .line 68
    monitor-exit v1

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p0
.end method

.method public final destroyLocked(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;->destroyDisplay(Landroid/os/IBinder;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mProjection:Landroid/media/projection/IMediaProjection;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMediaProjectionCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    :try_start_0
    invoke-interface {v0, v1}, Landroid/media/projection/IMediaProjection;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v1, "VirtualDisplayAdapter"

    .line 34
    .line 35
    const-string v2, "Failed to unregister callback in destroy"

    .line 36
    .line 37
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    .line 43
    .line 44
    const/4 p1, 0x2

    .line 45
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "mFlags="

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 13
    .line 14
    const-string/jumbo v2, "mDisplayState="

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 22
    .line 23
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string/jumbo v1, "mStopped="

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    .line 46
    .line 47
    const-string/jumbo v2, "mDisplayIdToMirror="

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayIdToMirror:I

    .line 55
    .line 56
    const-string/jumbo v2, "mWindowManagerMirroring="

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-boolean v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    .line 64
    .line 65
    const-string/jumbo v2, "mRequestedRefreshRate="

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mRequestedRefreshRate:F

    .line 73
    .line 74
    invoke-static {v0, v1, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 75
    .line 76
    .line 77
    iget-boolean p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDexEnabled:Z

    .line 78
    .line 79
    if-eqz p0, :cond_0

    .line 80
    .line 81
    const-string/jumbo p0, "mDexEnabled=true"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    return-void
.end method

.method public final getDexEnabledStateLocked()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDexEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 2
    .line 3
    if-nez v0, :cond_25

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 19
    .line 20
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    .line 21
    .line 22
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 23
    .line 24
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    .line 25
    .line 26
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    new-array v2, v1, [Landroid/view/Display$Mode;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    aput-object v3, v2, v4

    .line 65
    .line 66
    iput-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 67
    .line 68
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    .line 69
    .line 70
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 71
    .line 72
    int-to-float v2, v2

    .line 73
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 74
    .line 75
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 76
    .line 77
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mRequestedRefreshRate:F

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    cmpl-float v3, v2, v3

    .line 81
    .line 82
    if-eqz v3, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/high16 v2, 0x42700000    # 60.0f

    .line 86
    .line 87
    :goto_0
    float-to-int v2, v2

    .line 88
    int-to-long v2, v2

    .line 89
    const-wide/32 v5, 0x3b9aca00

    .line 90
    .line 91
    .line 92
    div-long/2addr v5, v2

    .line 93
    iput-wide v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 94
    .line 95
    iput v4, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 96
    .line 97
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 98
    .line 99
    and-int/lit8 v3, v2, 0x1

    .line 100
    .line 101
    if-nez v3, :cond_1

    .line 102
    .line 103
    const/16 v5, 0x30

    .line 104
    .line 105
    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 106
    .line 107
    :cond_1
    and-int/lit8 v5, v2, 0x10

    .line 108
    .line 109
    if-eqz v5, :cond_2

    .line 110
    .line 111
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 112
    .line 113
    and-int/lit8 v5, v5, -0x21

    .line 114
    .line 115
    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 119
    .line 120
    or-int/lit16 v6, v5, 0x80

    .line 121
    .line 122
    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 123
    .line 124
    and-int/lit16 v6, v2, 0x800

    .line 125
    .line 126
    if-eqz v6, :cond_3

    .line 127
    .line 128
    or-int/lit16 v5, v5, 0x4080

    .line 129
    .line 130
    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 131
    .line 132
    :cond_3
    :goto_1
    const v5, 0x8000

    .line 133
    .line 134
    .line 135
    and-int v6, v2, v5

    .line 136
    .line 137
    const/high16 v7, 0x40000

    .line 138
    .line 139
    if-eqz v6, :cond_4

    .line 140
    .line 141
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 142
    .line 143
    or-int/2addr v6, v7

    .line 144
    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 145
    .line 146
    :cond_4
    and-int/lit8 v6, v2, 0x4

    .line 147
    .line 148
    if-eqz v6, :cond_5

    .line 149
    .line 150
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 151
    .line 152
    or-int/lit8 v6, v6, 0x4

    .line 153
    .line 154
    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 155
    .line 156
    :cond_5
    const/4 v6, 0x2

    .line 157
    and-int/2addr v2, v6

    .line 158
    const/4 v8, 0x3

    .line 159
    if-eqz v2, :cond_6

    .line 160
    .line 161
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 162
    .line 163
    or-int/lit8 v2, v2, 0x40

    .line 164
    .line 165
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 166
    .line 167
    if-eqz v3, :cond_6

    .line 168
    .line 169
    const-string/jumbo v0, "persist.demo.remoterotation"

    .line 170
    .line 171
    .line 172
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    const-string/jumbo v2, "portrait"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 186
    .line 187
    iput v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 188
    .line 189
    :cond_6
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 190
    .line 191
    and-int/lit8 v2, v0, 0x20

    .line 192
    .line 193
    if-eqz v2, :cond_7

    .line 194
    .line 195
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 196
    .line 197
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 198
    .line 199
    or-int/lit16 v3, v3, 0x200

    .line 200
    .line 201
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 202
    .line 203
    :cond_7
    and-int/lit16 v2, v0, 0x80

    .line 204
    .line 205
    if-eqz v2, :cond_8

    .line 206
    .line 207
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 208
    .line 209
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 210
    .line 211
    or-int/2addr v3, v6

    .line 212
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 213
    .line 214
    :cond_8
    and-int/lit16 v2, v0, 0x100

    .line 215
    .line 216
    if-eqz v2, :cond_9

    .line 217
    .line 218
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 219
    .line 220
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 221
    .line 222
    or-int/lit16 v3, v3, 0x400

    .line 223
    .line 224
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 225
    .line 226
    :cond_9
    and-int/lit16 v2, v0, 0x200

    .line 227
    .line 228
    if-eqz v2, :cond_a

    .line 229
    .line 230
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 231
    .line 232
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 233
    .line 234
    or-int/lit16 v3, v3, 0x1000

    .line 235
    .line 236
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 237
    .line 238
    :cond_a
    and-int/lit16 v2, v0, 0x400

    .line 239
    .line 240
    if-eqz v2, :cond_b

    .line 241
    .line 242
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 243
    .line 244
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 245
    .line 246
    or-int/lit16 v3, v3, 0x2000

    .line 247
    .line 248
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 249
    .line 250
    :cond_b
    and-int/lit16 v2, v0, 0x1000

    .line 251
    .line 252
    const-string v3, "VirtualDisplayAdapter"

    .line 253
    .line 254
    if-eqz v2, :cond_e

    .line 255
    .line 256
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 257
    .line 258
    iget v9, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 259
    .line 260
    and-int/lit16 v10, v9, 0x4000

    .line 261
    .line 262
    if-nez v10, :cond_d

    .line 263
    .line 264
    and-int/2addr v0, v5

    .line 265
    if-eqz v0, :cond_c

    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_c
    const-string v0, "Ignoring VIRTUAL_DISPLAY_FLAG_ALWAYS_UNLOCKED as it requires VIRTUAL_DISPLAY_FLAG_DEVICE_DISPLAY_GROUP or VIRTUAL_DISPLAY_FLAG_OWN_DISPLAY_GROUP."

    .line 269
    .line 270
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_d
    :goto_2
    or-int v0, v9, v5

    .line 275
    .line 276
    iput v0, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 277
    .line 278
    :cond_e
    :goto_3
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 279
    .line 280
    and-int/lit16 v2, v0, 0x2000

    .line 281
    .line 282
    const/high16 v5, 0x10000

    .line 283
    .line 284
    if-eqz v2, :cond_f

    .line 285
    .line 286
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 287
    .line 288
    iget v9, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 289
    .line 290
    or-int/2addr v9, v5

    .line 291
    iput v9, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 292
    .line 293
    :cond_f
    and-int/lit16 v2, v0, 0x4000

    .line 294
    .line 295
    const/high16 v9, 0x20000

    .line 296
    .line 297
    if-eqz v2, :cond_11

    .line 298
    .line 299
    and-int/lit16 v0, v0, 0x400

    .line 300
    .line 301
    if-eqz v0, :cond_10

    .line 302
    .line 303
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 304
    .line 305
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 306
    .line 307
    or-int/2addr v2, v9

    .line 308
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_10
    const-string v0, "Ignoring VIRTUAL_DISPLAY_FLAG_OWN_FOCUS as it requires VIRTUAL_DISPLAY_FLAG_TRUSTED."

    .line 312
    .line 313
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    :cond_11
    :goto_4
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 317
    .line 318
    and-int v2, v0, v5

    .line 319
    .line 320
    const/high16 v5, 0x80000

    .line 321
    .line 322
    if-eqz v2, :cond_13

    .line 323
    .line 324
    and-int/lit16 v2, v0, 0x400

    .line 325
    .line 326
    if-eqz v2, :cond_12

    .line 327
    .line 328
    and-int/lit16 v0, v0, 0x4000

    .line 329
    .line 330
    if-eqz v0, :cond_12

    .line 331
    .line 332
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 333
    .line 334
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 335
    .line 336
    or-int/2addr v2, v5

    .line 337
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_12
    const-string v0, "Ignoring VIRTUAL_DISPLAY_FLAG_STEAL_TOP_FOCUS_DISABLED as it requires VIRTUAL_DISPLAY_FLAG_OWN_FOCUS which requires VIRTUAL_DISPLAY_FLAG_TRUSTED."

    .line 341
    .line 342
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    :cond_13
    :goto_5
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 346
    .line 347
    const/4 v2, 0x5

    .line 348
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 349
    .line 350
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 351
    .line 352
    and-int/lit8 v3, v2, 0x40

    .line 353
    .line 354
    if-nez v3, :cond_14

    .line 355
    .line 356
    move v8, v4

    .line 357
    :cond_14
    iput v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 358
    .line 359
    iget-boolean v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsDisplayOn:Z

    .line 360
    .line 361
    if-eqz v3, :cond_15

    .line 362
    .line 363
    move v8, v6

    .line 364
    goto :goto_6

    .line 365
    :cond_15
    move v8, v1

    .line 366
    :goto_6
    iput v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 367
    .line 368
    iget v8, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerUid:I

    .line 369
    .line 370
    iput v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    .line 371
    .line 372
    iget-object v8, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    .line 373
    .line 374
    iput-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    .line 375
    .line 376
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 377
    .line 378
    const/high16 v10, 0x40000000    # 2.0f

    .line 379
    .line 380
    if-eqz v8, :cond_16

    .line 381
    .line 382
    const v8, 0x10001c8

    .line 383
    .line 384
    .line 385
    if-ne v8, v2, :cond_16

    .line 386
    .line 387
    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 388
    .line 389
    or-int/2addr v8, v10

    .line 390
    iput v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 391
    .line 392
    :cond_16
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 393
    .line 394
    if-eqz v8, :cond_18

    .line 395
    .line 396
    const/high16 v8, 0x100000

    .line 397
    .line 398
    and-int/2addr v8, v2

    .line 399
    if-eqz v8, :cond_18

    .line 400
    .line 401
    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 402
    .line 403
    const v11, -0x5ffffffc

    .line 404
    .line 405
    .line 406
    or-int/2addr v8, v11

    .line 407
    iput v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 408
    .line 409
    iget v8, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 410
    .line 411
    if-nez v8, :cond_17

    .line 412
    .line 413
    move v8, v6

    .line 414
    :cond_17
    iput v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 415
    .line 416
    :cond_18
    iget-object v8, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 417
    .line 418
    iget-object v8, v8, Lcom/android/server/display/VirtualDisplayAdapter;->mDefaultDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 419
    .line 420
    if-nez v8, :cond_19

    .line 421
    .line 422
    goto :goto_8

    .line 423
    :cond_19
    and-int v11, v2, v7

    .line 424
    .line 425
    if-eqz v11, :cond_1a

    .line 426
    .line 427
    goto :goto_7

    .line 428
    :cond_1a
    and-int v11, v2, v5

    .line 429
    .line 430
    if-eqz v11, :cond_1b

    .line 431
    .line 432
    goto :goto_7

    .line 433
    :cond_1b
    and-int v11, v2, v9

    .line 434
    .line 435
    if-eqz v11, :cond_1c

    .line 436
    .line 437
    :goto_7
    iget-object v11, v8, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 438
    .line 439
    iput-object v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 440
    .line 441
    iget-object v11, v8, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 442
    .line 443
    iput-object v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 444
    .line 445
    :cond_1c
    :goto_8
    and-int/2addr v10, v2

    .line 446
    if-eqz v10, :cond_1e

    .line 447
    .line 448
    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 449
    .line 450
    const/high16 v11, 0x20400000

    .line 451
    .line 452
    or-int/2addr v10, v11

    .line 453
    iput v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 454
    .line 455
    if-eqz v3, :cond_1d

    .line 456
    .line 457
    iget v10, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 458
    .line 459
    goto :goto_9

    .line 460
    :cond_1d
    move v10, v1

    .line 461
    :goto_9
    iput v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 462
    .line 463
    :cond_1e
    and-int/2addr v7, v2

    .line 464
    if-eqz v7, :cond_20

    .line 465
    .line 466
    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 467
    .line 468
    const v10, 0x20100024

    .line 469
    .line 470
    .line 471
    or-int/2addr v7, v10

    .line 472
    iput v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 473
    .line 474
    iget v7, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 475
    .line 476
    if-nez v7, :cond_1f

    .line 477
    .line 478
    move v7, v6

    .line 479
    :cond_1f
    iput v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 480
    .line 481
    :cond_20
    and-int/2addr v5, v2

    .line 482
    if-eqz v5, :cond_22

    .line 483
    .line 484
    iget v5, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 485
    .line 486
    if-eq v5, v1, :cond_21

    .line 487
    .line 488
    if-eqz v3, :cond_21

    .line 489
    .line 490
    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 491
    .line 492
    goto :goto_a

    .line 493
    :cond_21
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 494
    .line 495
    :goto_a
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 496
    .line 497
    const v3, 0x200082

    .line 498
    .line 499
    .line 500
    or-int/2addr v1, v3

    .line 501
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 502
    .line 503
    :cond_22
    and-int v1, v2, v9

    .line 504
    .line 505
    if-eqz v1, :cond_23

    .line 506
    .line 507
    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 508
    .line 509
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 510
    .line 511
    const v3, 0x200008a

    .line 512
    .line 513
    .line 514
    or-int/2addr v1, v3

    .line 515
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 516
    .line 517
    if-eqz v8, :cond_23

    .line 518
    .line 519
    iget-object v1, v8, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 520
    .line 521
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 522
    .line 523
    iget-object v1, v8, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 524
    .line 525
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 526
    .line 527
    :cond_23
    const/high16 v1, 0x200000

    .line 528
    .line 529
    and-int/2addr v1, v2

    .line 530
    if-eqz v1, :cond_24

    .line 531
    .line 532
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 533
    .line 534
    const/high16 v2, 0x20000000

    .line 535
    .line 536
    or-int/2addr v1, v2

    .line 537
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 538
    .line 539
    :cond_24
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 540
    .line 541
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 542
    .line 543
    invoke-static {v1, v2, v4}, Landroid/view/DisplayShape;->createDefaultDisplayShape(IIZ)Landroid/view/DisplayShape;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    .line 548
    .line 549
    :cond_25
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 550
    .line 551
    return-object p0
.end method

.method public final getDisplayIdToMirrorLocked()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayIdToMirror:I

    .line 2
    .line 3
    return p0
.end method

.method public final getDisplaySurfaceDefaultSizeLocked()Landroid/graphics/Point;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/Surface;->getDefaultSize()Landroid/graphics/Point;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->isRotatedLocked()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    new-instance p0, Landroid/graphics/Point;

    .line 18
    .line 19
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 20
    .line 21
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 22
    .line 23
    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 24
    .line 25
    .line 26
    move-object v0, p0

    .line 27
    :cond_1
    return-object v0
.end method

.method public getSurfaceLocked()Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasStableUniqueId()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isWindowManagerMirroringLocked()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    .line 2
    .line 3
    return p0
.end method

.method public final performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 17
    .line 18
    and-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    .line 25
    .line 26
    if-eq v1, v0, :cond_1

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 37
    .line 38
    return-void
.end method

.method public final requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;
    .locals 2

    .line 1
    iget p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 2
    .line 3
    const/high16 p3, 0x40000

    .line 4
    .line 5
    and-int/2addr p2, p3

    .line 6
    const/4 p4, 0x0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    move p2, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p2, p4

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iget-boolean p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDexEnabled:Z

    .line 17
    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_1
    iget p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 22
    .line 23
    if-eq p1, p2, :cond_6

    .line 24
    .line 25
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 26
    .line 27
    if-ne p1, v0, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    .line 30
    .line 31
    invoke-virtual {p1, p4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 38
    .line 39
    .line 40
    :goto_1
    iget p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 41
    .line 42
    and-int p2, p1, p3

    .line 43
    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    const/high16 p2, 0x80000

    .line 48
    .line 49
    and-int/2addr p2, p1

    .line 50
    if-eqz p2, :cond_4

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    const/high16 p2, 0x40000000    # 2.0f

    .line 54
    .line 55
    and-int/2addr p2, p1

    .line 56
    if-eqz p2, :cond_5

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_5
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 60
    .line 61
    if-eqz p2, :cond_6

    .line 62
    .line 63
    const/high16 p2, 0x100000

    .line 64
    .line 65
    and-int/2addr p1, p2

    .line 66
    if-eqz p1, :cond_6

    .line 67
    .line 68
    :goto_2
    iput-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 71
    .line 72
    const/4 p2, 0x2

    .line 73
    invoke-virtual {p1, p0, p2}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 74
    .line 75
    .line 76
    :cond_6
    return-object v1
.end method

.method public final setSurfaceLocked(Landroid/view/Surface;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 6
    .line 7
    if-eq v0, p1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    move v3, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v3, v1

    .line 21
    :goto_1
    if-eq v0, v3, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-virtual {v0, p0, v3}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 38
    .line 39
    iget p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 40
    .line 41
    or-int/2addr p1, v2

    .line 42
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/server/display/VirtualDisplayAdapter;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 57
    .line 58
    const/16 v2, 0x1e

    .line 59
    .line 60
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 61
    .line 62
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void
.end method

.method public final setWindowManagerMirroringLocked(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    invoke-virtual {p1, p0, v0}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final updateDexEnabledStateLocked(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDexEnabled:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDexEnabled:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "updateDexEnabledStateLocked: enabled="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, ", "

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "VirtualDisplayAdapter"

    .line 31
    .line 32
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
