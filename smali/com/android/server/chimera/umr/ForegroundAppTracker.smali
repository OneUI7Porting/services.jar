.class public abstract Lcom/android/server/chimera/umr/ForegroundAppTracker;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final DELAYED_RESET_APP_LAUNCH_MS:I

.field public static final DELAYED_RESET_CAMERA_LAUNCH_MS:I

.field public static final IS_DEBUG_ENABLED:Z

.field public static mForegroundMonitor:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xfa0

    .line 2
    .line 3
    const-string/jumbo v1, "sys.config.amp_to_app_switch"

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sput v0, Lcom/android/server/chimera/umr/ForegroundAppTracker;->DELAYED_RESET_APP_LAUNCH_MS:I

    .line 11
    .line 12
    const/16 v0, 0x1388

    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sput v0, Lcom/android/server/chimera/umr/ForegroundAppTracker;->DELAYED_RESET_CAMERA_LAUNCH_MS:I

    .line 19
    .line 20
    const-string/jumbo v0, "debug.chimera.fgtracker"

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sput-boolean v0, Lcom/android/server/chimera/umr/ForegroundAppTracker;->IS_DEBUG_ENABLED:Z

    .line 29
    .line 30
    return-void
.end method

.method public static getForegroundMonitor()Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/chimera/umr/ForegroundAppTracker;->mForegroundMonitor:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mMsgHandler:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundAppMsgHandler;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "UMR_FOREGROUND_APP_TRACKER"

    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-static {v2, v1, v3}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundAppMsgHandler;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-direct {v2, v1, v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 32
    .line 33
    .line 34
    sput-object v2, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mMsgHandler:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundAppMsgHandler;

    .line 35
    .line 36
    :goto_0
    const/4 v1, 0x0

    .line 37
    iput-boolean v1, v0, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mAppLaunch:Z

    .line 38
    .line 39
    sput-object v0, Lcom/android/server/chimera/umr/ForegroundAppTracker;->mForegroundMonitor:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;

    .line 40
    .line 41
    :cond_1
    sget-object v0, Lcom/android/server/chimera/umr/ForegroundAppTracker;->mForegroundMonitor:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;

    .line 42
    .line 43
    return-object v0
.end method
