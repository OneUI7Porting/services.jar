.class public final Lcom/android/server/desktopmode/BleAdvertiserServiceManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mBindServiceRunnable:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;

.field public mBound:Z

.field public mConnectionBackoffAttempts:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDeathRecipient:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda2;

.field public final mDeferredConnectionCallback:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;

.field public final mHandler:Landroid/os/Handler;

.field public mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

.field public final mServiceConnection:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;

.field public final mStateListener:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBindServiceRunnable:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mDeferredConnectionCallback:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    new-instance v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;-><init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mServiceConnection:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$2;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$2;-><init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    .line 34
    .line 35
    const/16 v1, -0x2710

    .line 36
    .line 37
    iput v1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mCurrentUserId:I

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    new-instance p1, Landroid/os/Handler;

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    .line 51
    .line 52
    new-instance p1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda2;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mDeathRecipient:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda2;

    .line 58
    .line 59
    check-cast p3, Lcom/android/server/desktopmode/StateManager;

    .line 60
    .line 61
    invoke-virtual {p3, v0}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final bindService()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mDeferredConnectionCallback:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 13
    .line 14
    const-string v3, "[DMS]BleAdvertiserServiceManager"

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v4, "bindService(), mService="

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    .line 27
    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v3, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->unbindService()V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBindServiceRunnable:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Landroid/content/Intent;

    .line 47
    .line 48
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v4, "com.sec.android.desktopmode.uiservice"

    .line 52
    .line 53
    .line 54
    const-string/jumbo v5, "com.sec.android.desktopmode.uiservice.ble.BleAdvertiserService"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :try_start_0
    iget-object v4, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    iget-object v5, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mServiceConnection:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;

    .line 64
    .line 65
    iget v6, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mCurrentUserId:I

    .line 66
    .line 67
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const/4 v7, 0x1

    .line 72
    invoke-virtual {v4, v2, v5, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iput-boolean v2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBound:Z

    .line 77
    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    const-wide/16 v4, 0x1388

    .line 81
    .line 82
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catch_0
    move-exception p0

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->retryConnectionWithBackoff()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :goto_0
    const-string v0, "Failed to bind service"

    .line 93
    .line 94
    invoke-static {v3, v0, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :goto_1
    return-void
.end method

.method public final retryConnectionWithBackoff()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBindServiceRunnable:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 13
    .line 14
    iget v3, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    .line 15
    .line 16
    invoke-static {v2, v3}, Ljava/lang/Math;->scalb(FI)F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const v3, 0x49127c00    # 600000.0f

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    float-to-long v2, v2

    .line 28
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    iput v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "Failed to bind service on attempt "

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, " will try again in "

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string/jumbo p0, "ms"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string v0, "[DMS]BleAdvertiserServiceManager"

    .line 68
    .line 69
    invoke-static {v0, p0}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final unbindService()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBound:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 11
    .line 12
    const-string v1, "[DMS]BleAdvertiserServiceManager"

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v2, "unbindService(), mBound="

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBound:Z

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", mService="

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBound:Z

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mServiceConnection:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 56
    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBound:Z

    .line 59
    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IBleAdvertiserService;->asBinder()Landroid/os/IBinder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v3, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mDeathRecipient:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda2;

    .line 69
    .line 70
    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string v2, "Failed to unlink death recipient"

    .line 76
    .line 77
    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    .line 82
    .line 83
    :cond_3
    return-void
.end method
