.class public final Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;
.super Lcom/android/server/display/DisplayDevice;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mActiveMode:I

.field public final mDefaultMode:I

.field public final mDisplayPresentationDeadlineNanos:J

.field public final mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

.field public mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public final mModes:[Landroid/view/Display$Mode;

.field public final mName:Ljava/lang/String;

.field public final mRawModes:Ljava/util/List;

.field public final mRefreshRate:F

.field public mState:I

.field public mSurface:Landroid/view/Surface;

.field public mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;

.field public final synthetic this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IFJLcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;ILandroid/graphics/SurfaceTexture;I)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v7, p4

    .line 6
    .line 7
    iput-object v0, v6, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 10
    .line 11
    iput-object v1, v6, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 12
    .line 13
    const-string/jumbo v0, "overlay:"

    .line 14
    .line 15
    .line 16
    move/from16 v2, p12

    .line 17
    .line 18
    invoke-static {v2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object v4, v1, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    move-object/from16 v0, p0

    .line 26
    .line 27
    move-object/from16 v2, p2

    .line 28
    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 30
    .line 31
    .line 32
    move-object/from16 v0, p3

    .line 33
    .line 34
    iput-object v0, v6, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mName:Ljava/lang/String;

    .line 35
    .line 36
    move/from16 v0, p6

    .line 37
    .line 38
    iput v0, v6, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mRefreshRate:F

    .line 39
    .line 40
    move-wide/from16 v1, p7

    .line 41
    .line 42
    iput-wide v1, v6, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mDisplayPresentationDeadlineNanos:J

    .line 43
    .line 44
    move-object/from16 v1, p9

    .line 45
    .line 46
    iput-object v1, v6, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    .line 47
    .line 48
    move/from16 v1, p10

    .line 49
    .line 50
    iput v1, v6, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mState:I

    .line 51
    .line 52
    move-object/from16 v1, p11

    .line 53
    .line 54
    iput-object v1, v6, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 55
    .line 56
    iput-object v7, v6, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mRawModes:Ljava/util/List;

    .line 57
    .line 58
    move-object v1, v7

    .line 59
    check-cast v1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    new-array v2, v2, [Landroid/view/Display$Mode;

    .line 66
    .line 67
    iput-object v2, v6, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mModes:[Landroid/view/Display$Mode;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    move v3, v2

    .line 71
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-ge v3, v4, :cond_0

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .line 82
    .line 83
    iget-object v5, v6, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mModes:[Landroid/view/Display$Mode;

    .line 84
    .line 85
    iget v9, v4, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    .line 86
    .line 87
    new-array v14, v2, [F

    .line 88
    .line 89
    new-array v15, v2, [I

    .line 90
    .line 91
    new-instance v16, Landroid/view/Display$Mode;

    .line 92
    .line 93
    sget-object v7, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    .line 95
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    const/4 v13, 0x0

    .line 100
    iget v10, v4, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    .line 101
    .line 102
    move-object/from16 v7, v16

    .line 103
    .line 104
    move/from16 v11, p6

    .line 105
    .line 106
    move/from16 v12, p6

    .line 107
    .line 108
    invoke-direct/range {v7 .. v15}, Landroid/view/Display$Mode;-><init>(IIIFFZ[F[I)V

    .line 109
    .line 110
    .line 111
    aput-object v16, v5, v3

    .line 112
    .line 113
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    move/from16 v3, p5

    .line 117
    .line 118
    iput v3, v6, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mActiveMode:I

    .line 119
    .line 120
    iput v2, v6, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mDefaultMode:I

    .line 121
    .line 122
    return-void
.end method


# virtual methods
.method public final getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mModes:[Landroid/view/Display$Mode;

    .line 6
    .line 7
    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mActiveMode:I

    .line 8
    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mRawModes:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .line 18
    .line 19
    new-instance v2, Lcom/android/server/display/DisplayDeviceInfo;

    .line 20
    .line 21
    invoke-direct {v2}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mName:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, v2, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mModes:[Landroid/view/Display$Mode;

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    aget-object v2, v2, v3

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mModes:[Landroid/view/Display$Mode;

    .line 80
    .line 81
    iput-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 82
    .line 83
    iget v1, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    .line 84
    .line 85
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 86
    .line 87
    int-to-float v2, v1

    .line 88
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 89
    .line 90
    int-to-float v1, v1

    .line 91
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 92
    .line 93
    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mRefreshRate:F

    .line 94
    .line 95
    float-to-int v1, v1

    .line 96
    int-to-long v1, v1

    .line 97
    const-wide/32 v4, 0x3b9aca00

    .line 98
    .line 99
    .line 100
    div-long/2addr v4, v1

    .line 101
    iget-wide v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mDisplayPresentationDeadlineNanos:J

    .line 102
    .line 103
    add-long/2addr v4, v1

    .line 104
    iput-wide v4, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 105
    .line 106
    const/16 v1, 0x40

    .line 107
    .line 108
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    .line 111
    .line 112
    iget-boolean v2, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    .line 113
    .line 114
    const/4 v4, 0x4

    .line 115
    if-eqz v2, :cond_0

    .line 116
    .line 117
    const/16 v2, 0x40

    .line 118
    .line 119
    or-int/2addr v2, v4

    .line 120
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 121
    .line 122
    :cond_0
    iget-boolean v2, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mOwnContentOnly:Z

    .line 123
    .line 124
    if-eqz v2, :cond_1

    .line 125
    .line 126
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 127
    .line 128
    or-int/lit16 v2, v2, 0x80

    .line 129
    .line 130
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 131
    .line 132
    :cond_1
    iget-boolean v1, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mShouldShowSystemDecorations:Z

    .line 133
    .line 134
    if-eqz v1, :cond_2

    .line 135
    .line 136
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 137
    .line 138
    or-int/lit16 v1, v1, 0x1000

    .line 139
    .line 140
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 141
    .line 142
    :cond_2
    iput v4, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 143
    .line 144
    const/4 v1, 0x3

    .line 145
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 146
    .line 147
    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mState:I

    .line 148
    .line 149
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 150
    .line 151
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 152
    .line 153
    or-int/lit16 v1, v1, 0x2000

    .line 154
    .line 155
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 156
    .line 157
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 158
    .line 159
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 160
    .line 161
    invoke-static {v1, v2, v3}, Landroid/view/DisplayShape;->createDefaultDisplayShape(IIZ)Landroid/view/DisplayShape;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    .line 166
    .line 167
    :cond_3
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 168
    .line 169
    return-object p0
.end method

.method public final hasStableUniqueId()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mSurface:Landroid/view/Surface;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/view/Surface;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mSurface:Landroid/view/Surface;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mSurface:Landroid/view/Surface;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    .line 21
    .line 22
    if-eq v1, v0, :cond_1

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 27
    .line 28
    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .locals 4

    .line 1
    iget p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, -0x1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mModes:[Landroid/view/Display$Mode;

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    if-ge v0, v3, :cond_2

    .line 12
    .line 13
    aget-object v2, v2, v0

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ne v2, p1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move v0, v1

    .line 26
    :goto_1
    if-ne v0, v1, :cond_3

    .line 27
    .line 28
    const-string v0, "Unable to locate mode "

    .line 29
    .line 30
    const-string v1, ", reverting to default."

    .line 31
    .line 32
    const-string v2, "OverlayDisplayAdapter"

    .line 33
    .line 34
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mDefaultMode:I

    .line 38
    .line 39
    :cond_3
    iget p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mActiveMode:I

    .line 40
    .line 41
    if-ne p1, v0, :cond_4

    .line 42
    .line 43
    return-void

    .line 44
    :cond_4
    iput v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mActiveMode:I

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    invoke-virtual {p1, p0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 58
    .line 59
    iget-object v1, p1, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mResizeRunnable:Lcom/android/server/display/OverlayDisplayAdapter$1;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    iput v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    .line 69
    .line 70
    if-eqz p0, :cond_5

    .line 71
    .line 72
    iget-object p0, p1, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 73
    .line 74
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    :cond_5
    return-void
.end method
