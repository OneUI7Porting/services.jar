.class public final Lcom/android/server/display/OverlayDisplayWindow$2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 4
    .line 5
    iget-object v15, v1, Lcom/android/server/display/OverlayDisplayWindow;->mListener:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    .line 10
    .line 11
    .line 12
    move-result v8

    .line 13
    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 16
    .line 17
    iget-wide v9, v0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 18
    .line 19
    iget v12, v0, Landroid/view/DisplayInfo;->state:I

    .line 20
    .line 21
    iget-object v0, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v0, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    .line 29
    .line 30
    iget-boolean v2, v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    .line 31
    .line 32
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayControl;->createVirtualDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;

    .line 37
    .line 38
    iget-object v5, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v6, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    .line 41
    .line 42
    iget v7, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    .line 43
    .line 44
    iget-object v11, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    .line 45
    .line 46
    iget v14, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mNumber:I

    .line 47
    .line 48
    move-object v2, v0

    .line 49
    move-object v3, v15

    .line 50
    move-object/from16 v13, p1

    .line 51
    .line 52
    invoke-direct/range {v2 .. v14}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IFJLcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;ILandroid/graphics/SurfaceTexture;I)V

    .line 53
    .line 54
    .line 55
    iput-object v0, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;

    .line 56
    .line 57
    iget-object v2, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-virtual {v2, v0, v3}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 61
    .line 62
    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw v0
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mListener:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 8
    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mSurface:Landroid/view/Surface;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mSurface:Landroid/view/Surface;

    .line 25
    .line 26
    :cond_0
    iget-object v0, v0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/server/display/DisplayControl;->destroyVirtualDisplay(Landroid/os/IBinder;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    monitor-exit p1

    .line 43
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
.end method
