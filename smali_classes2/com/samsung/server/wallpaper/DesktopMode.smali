.class public final Lcom/samsung/server/wallpaper/DesktopMode;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mContext:Landroid/content/Context;

.field public mDesktopMode:I

.field public final mDesktopModeLock:Ljava/lang/Object;

.field public final mHandler:Landroid/os/Handler;

.field public mIsDesktopMode:Z

.field public final mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

.field public mWallpaperBindingFallbackExecuted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopModeLock:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mIsDesktopMode:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackExecuted:Z

    .line 26
    .line 27
    iput v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    .line 28
    .line 29
    const-string v0, "DesktopMode"

    .line 30
    .line 31
    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 39
    .line 40
    const-string p2, "desktopmode"

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 47
    .line 48
    new-instance p2, Lcom/samsung/server/wallpaper/DesktopMode$1;

    .line 49
    .line 50
    invoke-direct {p2, p0}, Lcom/samsung/server/wallpaper/DesktopMode$1;-><init>(Lcom/samsung/server/wallpaper/DesktopMode;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final isDesktopDualMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopModeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    .line 5
    .line 6
    const/16 v1, 0x66

    .line 7
    .line 8
    if-ne p0, v1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final isDesktopMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopModeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mIsDesktopMode:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

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

.method public final isDesktopModeEnabled(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopModeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mIsDesktopMode:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget p0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    .line 9
    .line 10
    const/16 v1, 0x65

    .line 11
    .line 12
    if-eq p0, v1, :cond_0

    .line 13
    .line 14
    const/16 p0, 0x8

    .line 15
    .line 16
    and-int/2addr p1, p0

    .line 17
    if-ne p1, p0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    :goto_0
    monitor-exit v0

    .line 25
    return p0

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final isDesktopSingleMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopModeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    .line 5
    .line 6
    const/16 v1, 0x65

    .line 7
    .line 8
    if-ne p0, v1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method
