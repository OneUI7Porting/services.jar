.class public final Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mAddress:Landroid/view/DisplayAddress;

.field public mCurrentDisplayRotation:I

.field public final mFlags:I

.field public mHeight:I

.field public mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public mMode:Landroid/view/Display$Mode;

.field public mName:Ljava/lang/String;

.field public mPendingChanges:I

.field public final mRefreshRate:F

.field public final mRotation:I

.field public mRotationForHiddenDisplay:I

.field public mSurface:Landroid/view/Surface;

.field public mWidth:I

.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;Landroid/view/Surface;)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iput-object v1, v6, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 6
    .line 7
    const-string/jumbo v0, "wifi:"

    .line 8
    .line 9
    .line 10
    move-object/from16 v7, p7

    .line 11
    .line 12
    invoke-static {v0, v7}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object v4, v1, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    move-object/from16 v0, p0

    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    move-object/from16 v2, p2

    .line 24
    .line 25
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, v6, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRotation:I

    .line 30
    .line 31
    iput v0, v6, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRotationForHiddenDisplay:I

    .line 32
    .line 33
    iput v0, v6, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mCurrentDisplayRotation:I

    .line 34
    .line 35
    move-object/from16 v1, p3

    .line 36
    .line 37
    iput-object v1, v6, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    .line 38
    .line 39
    move/from16 v1, p4

    .line 40
    .line 41
    iput v1, v6, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    .line 42
    .line 43
    move/from16 v2, p5

    .line 44
    .line 45
    iput v2, v6, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    .line 46
    .line 47
    const/high16 v12, 0x42700000    # 60.0f

    .line 48
    .line 49
    iput v12, v6, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRefreshRate:F

    .line 50
    .line 51
    move/from16 v3, p6

    .line 52
    .line 53
    iput v3, v6, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mFlags:I

    .line 54
    .line 55
    invoke-static/range {p7 .. p7}, Landroid/view/DisplayAddress;->fromMacAddress(Ljava/lang/String;)Landroid/view/DisplayAddress$Network;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iput-object v3, v6, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mAddress:Landroid/view/DisplayAddress;

    .line 60
    .line 61
    move-object/from16 v3, p8

    .line 62
    .line 63
    iput-object v3, v6, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 64
    .line 65
    new-array v14, v0, [F

    .line 66
    .line 67
    new-array v15, v0, [I

    .line 68
    .line 69
    new-instance v3, Landroid/view/Display$Mode;

    .line 70
    .line 71
    sget-object v4, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    const/4 v13, 0x0

    .line 78
    move-object v7, v3

    .line 79
    move/from16 v9, p4

    .line 80
    .line 81
    move/from16 v10, p5

    .line 82
    .line 83
    move v11, v12

    .line 84
    invoke-direct/range {v7 .. v15}, Landroid/view/Display$Mode;-><init>(IIIFFZ[F[I)V

    .line 85
    .line 86
    .line 87
    iput-object v3, v6, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 88
    .line 89
    iput v0, v6, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRotation:I

    .line 90
    .line 91
    iget v0, v6, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mPendingChanges:I

    .line 92
    .line 93
    or-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    iput v0, v6, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mPendingChanges:I

    .line 96
    .line 97
    return-void
.end method


# virtual methods
.method public final getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

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
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    .line 21
    .line 22
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 23
    .line 24
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    .line 25
    .line 26
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

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
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    new-array v1, v1, [Landroid/view/Display$Mode;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 53
    .line 54
    aput-object v3, v1, v2

    .line 55
    .line 56
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 57
    .line 58
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRefreshRate:F

    .line 59
    .line 60
    float-to-int v1, v1

    .line 61
    int-to-long v1, v1

    .line 62
    const-wide/32 v3, 0x3b9aca00

    .line 63
    .line 64
    .line 65
    div-long/2addr v3, v1

    .line 66
    iput-wide v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 67
    .line 68
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mFlags:I

    .line 69
    .line 70
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 71
    .line 72
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRotation:I

    .line 73
    .line 74
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 75
    .line 76
    const/4 v1, 0x3

    .line 77
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mAddress:Landroid/view/DisplayAddress;

    .line 80
    .line 81
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 82
    .line 83
    const/4 v1, 0x2

    .line 84
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 85
    .line 86
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    .line 87
    .line 88
    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    mul-int/lit16 v1, v1, 0x140

    .line 98
    .line 99
    div-int/lit16 v1, v1, 0x438

    .line 100
    .line 101
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 102
    .line 103
    int-to-float v1, v1

    .line 104
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 105
    .line 106
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 109
    .line 110
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 111
    .line 112
    or-int/lit16 v1, v1, 0x2000

    .line 113
    .line 114
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 117
    .line 118
    iget-object v1, v1, Lcom/android/server/display/WifiDisplayAdapter;->mDefaultDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 119
    .line 120
    if-eqz v1, :cond_0

    .line 121
    .line 122
    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 123
    .line 124
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 125
    .line 126
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 127
    .line 128
    return-object p0
.end method

.method public final hasStableUniqueId()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isRotatedLocked()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/server/display/DisplayDevice;->isRotatedLocked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mCurrentDisplayRotation:I

    .line 9
    .line 10
    if-eq p0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :cond_1
    :goto_0
    return v1
.end method

.method public final performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mPendingChanges:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    .line 14
    .line 15
    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mPendingChanges:I

    .line 21
    .line 22
    and-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    .line 29
    .line 30
    if-eq v1, v0, :cond_1

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mPendingChanges:I

    .line 41
    .line 42
    return-void
.end method
