.class public final Lcom/android/server/desktopmode/UiManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mBindServiceRunnable:Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;

.field public mBound:Z

.field public mChangingStandaloneMode:Z

.field public mConnectionBackoffAttempts:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDeathRecipient:Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda9;

.field public final mDeferredConnectionCallback:Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;

.field public final mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

.field public final mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

.field public mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

.field public final mServiceConnection:Lcom/android/server/desktopmode/UiManager$1;

.field public final mStateListener:Lcom/android/server/desktopmode/UiManager$2;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public final mUnbindServiceRunnable:Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mBindServiceRunnable:Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;

    .line 19
    .line 20
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mDeferredConnectionCallback:Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;

    .line 27
    .line 28
    new-instance v0, Lcom/android/server/desktopmode/UiManager$1;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/UiManager$1;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mServiceConnection:Lcom/android/server/desktopmode/UiManager$1;

    .line 34
    .line 35
    new-instance v0, Lcom/android/server/desktopmode/UiManager$2;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/UiManager$2;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput v1, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    .line 44
    .line 45
    const/16 v1, -0x2710

    .line 46
    .line 47
    iput v1, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    new-instance p1, Lcom/android/server/desktopmode/PendingUiCommands;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p1, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    .line 64
    .line 65
    new-instance p1, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-direct {p1, p2}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;-><init>(Landroid/os/Looper;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 75
    .line 76
    iput-object p3, p0, Lcom/android/server/desktopmode/UiManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 77
    .line 78
    check-cast p3, Lcom/android/server/desktopmode/StateManager;

    .line 79
    .line 80
    invoke-virtual {p3, v0}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 81
    .line 82
    .line 83
    new-instance p1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda9;

    .line 84
    .line 85
    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mDeathRecipient:Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda9;

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final bindService()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDeferredConnectionCallback:Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;

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
    const-string v3, "[DMS]UiManager"

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
    iget-object v4, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

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
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->unbindService()V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mBindServiceRunnable:Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 47
    .line 48
    .line 49
    new-instance v2, Landroid/content/Intent;

    .line 50
    .line 51
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v4, "com.sec.android.desktopmode.uiservice"

    .line 55
    .line 56
    .line 57
    const-string/jumbo v5, "com.sec.android.desktopmode.uiservice.DesktopModeUiService"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :try_start_0
    iget-object v4, p0, Lcom/android/server/desktopmode/UiManager;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    iget-object v5, p0, Lcom/android/server/desktopmode/UiManager;->mServiceConnection:Lcom/android/server/desktopmode/UiManager$1;

    .line 67
    .line 68
    iget v6, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    .line 69
    .line 70
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const/4 v7, 0x1

    .line 75
    invoke-virtual {v4, v2, v5, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    iput-boolean v2, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    .line 80
    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    const-wide/16 v4, 0x1388

    .line 84
    .line 85
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception p0

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->retryConnectionWithBackoff()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :goto_0
    const-string v0, "Failed to bind service"

    .line 96
    .line 97
    invoke-static {v3, v0, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void
.end method

.method public final bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->bindService()V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final dismissDialog(II)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "dismissDialog(), displayId="

    .line 6
    .line 7
    .line 8
    const-string v1, ", type="

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

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
    const-string v1, "[DMS]UiManager"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/UiManager;III)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 37
    .line 38
    invoke-virtual {p0, v0, p2}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(Ljava/lang/Runnable;I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final dismissOverlay(II)V
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
    const-string/jumbo v1, "dismissOverlay(), where="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", type="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "[DMS]UiManager"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/UiManager;III)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 48
    .line 49
    invoke-virtual {p0, v0, p2}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(Ljava/lang/Runnable;I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final finishActivity(I)V
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
    const-string/jumbo v1, "finishActivity(), type="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

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
    const-string v1, "[DMS]UiManager"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;II)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 36
    .line 37
    invoke-virtual {p0, v0, p1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(Ljava/lang/Runnable;I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final getCurrentOverlayType(I)I
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
    const-string/jumbo v1, "getCurrentOverlayType(), where="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

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
    const-string v1, "[DMS]UiManager"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->getCurrentOverlayType(I)I

    .line 34
    .line 35
    .line 36
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return p0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 p0, -0x1

    .line 43
    return p0
.end method

.method public final handleNavBarIcon()V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    const/16 v5, 0x190

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "handleNavBarIcon(), type="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v5}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "[DMS]UiManager"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/16 v1, 0xd

    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x384

    .line 39
    .line 40
    const/4 v2, -0x1

    .line 41
    invoke-virtual {p0, v1, v5, v2, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 49
    .line 50
    invoke-interface {v0, v5}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showNavBarIcon(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    move-object v2, v0

    .line 56
    new-instance v7, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    const/16 v0, 0xe

    .line 59
    .line 60
    invoke-direct {v7, p0, v0}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    .line 61
    .line 62
    .line 63
    const/16 v4, 0x384

    .line 64
    .line 65
    const/4 v6, -0x1

    .line 66
    const/4 v3, 0x1

    .line 67
    move-object v1, p0

    .line 68
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final handleRemoteException(Landroid/os/RemoteException;)V
    .locals 7

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    return-void
.end method

.method public final handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleRemoteException(), preserve="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DMS]UiManager"

    invoke-static {v1, v0, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1

    if-eqz p6, :cond_1

    .line 3
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "handleRemoteException(), adding pending commands, type="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p4}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", where="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final handleRemoveNavBarIcon()V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    const/16 v5, 0x190

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "handleRemoveNavBarIcon(), type="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v5}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "[DMS]UiManager"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/16 v1, 0xb

    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x385

    .line 39
    .line 40
    const/4 v2, -0x1

    .line 41
    invoke-virtual {p0, v1, v5, v2, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 49
    .line 50
    invoke-interface {v0, v5}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->removeNavBarIcon(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    move-object v2, v0

    .line 59
    new-instance v7, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    const/16 v0, 0xc

    .line 62
    .line 63
    invoke-direct {v7, p0, v0}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    .line 64
    .line 65
    .line 66
    const/16 v4, 0x385

    .line 67
    .line 68
    const/4 v6, -0x1

    .line 69
    const/4 v3, 0x1

    .line 70
    move-object v1, p0

    .line 71
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method public final handleRemoveNotification(I)V
    .locals 8

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
    const-string/jumbo v1, "handleRemoveNotification(), type="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

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
    const-string v1, "[DMS]UiManager"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 v1, 0x7

    .line 32
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;II)V

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x385

    .line 36
    .line 37
    const/4 v2, -0x1

    .line 38
    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 46
    .line 47
    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->removeNotification(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    move-object v2, v0

    .line 56
    new-instance v7, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    const/16 v0, 0x8

    .line 59
    .line 60
    invoke-direct {v7, p0, p1, v0}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;II)V

    .line 61
    .line 62
    .line 63
    const/16 v4, 0x385

    .line 64
    .line 65
    const/4 v6, -0x1

    .line 66
    const/4 v3, 0x1

    .line 67
    move-object v1, p0

    .line 68
    move v5, p1

    .line 69
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method public final handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, ", dialogType="

    .line 4
    .line 5
    const-string v2, "[DMS]UiManager"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string/jumbo v0, "handleShowDialog(), displayId="

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    const/4 v8, 0x3

    .line 33
    move-object v3, v0

    .line 34
    move-object v4, p0

    .line 35
    move v5, p1

    .line 36
    move v6, p2

    .line 37
    move-object v7, p3

    .line 38
    invoke-direct/range {v3 .. v8}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;I)V

    .line 39
    .line 40
    .line 41
    const/16 v3, 0x384

    .line 42
    .line 43
    invoke-virtual {p0, v3, p2, p1, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    .line 51
    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    .line 55
    .line 56
    invoke-virtual {p0, v3, p2, p1, v0}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo p0, "showDialog() mChangingStandaloneMode!! displayId="

    .line 60
    .line 61
    .line 62
    invoke-static {p1, p0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {v2, p0}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    const/4 v0, 0x0

    .line 82
    packed-switch p2, :pswitch_data_0

    .line 83
    .line 84
    .line 85
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string/jumbo v3, "showDialog() wrong type value!! dialogType="

    .line 88
    .line 89
    .line 90
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v2, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :pswitch_1
    new-instance v0, Lcom/android/server/desktopmode/UiManager$3;

    .line 109
    .line 110
    invoke-direct {v0, p0, p3}, Lcom/android/server/desktopmode/UiManager$3;-><init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :pswitch_2
    new-instance v0, Lcom/android/server/desktopmode/UiManager$5;

    .line 115
    .line 116
    const/4 v1, 0x2

    .line 117
    invoke-direct {v0, v1, p0}, Lcom/android/server/desktopmode/UiManager$5;-><init>(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :goto_0
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 121
    .line 122
    if-eqz v1, :cond_3

    .line 123
    .line 124
    :try_start_0
    invoke-interface {v1, p1, p2, v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showDialog(IILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catch_0
    move-exception v3

    .line 129
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;

    .line 130
    .line 131
    const/4 v9, 0x4

    .line 132
    move-object v4, v0

    .line 133
    move-object v5, p0

    .line 134
    move v6, p1

    .line 135
    move v7, p2

    .line 136
    move-object v8, p3

    .line 137
    invoke-direct/range {v4 .. v9}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;I)V

    .line 138
    .line 139
    .line 140
    const/4 v4, 0x1

    .line 141
    const/16 v5, 0x384

    .line 142
    .line 143
    move-object v2, p0

    .line 144
    move v6, p2

    .line 145
    move v7, p1

    .line 146
    move-object v8, v0

    .line 147
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    :goto_1
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public final handleShowNotification(I)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "[DMS]UiManager"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "handleShowNotification(), type="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    invoke-direct {v0, p0, p1, v2}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;II)V

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x384

    .line 36
    .line 37
    const/4 v3, -0x1

    .line 38
    invoke-virtual {p0, v2, p1, v3, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/4 v4, 0x5

    .line 52
    invoke-direct {v0, p0, p1, v4}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;II)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    .line 56
    .line 57
    invoke-virtual {p0, v2, p1, v3, v0}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string/jumbo v0, "handleShowNotification(), mChangingStandaloneMode!!type="

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v1, p0}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 84
    .line 85
    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showNotification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    move-object v2, v0

    .line 91
    new-instance v7, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    const/4 v0, 0x6

    .line 94
    invoke-direct {v7, p0, p1, v0}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;II)V

    .line 95
    .line 96
    .line 97
    const/16 v4, 0x384

    .line 98
    .line 99
    const/4 v6, -0x1

    .line 100
    const/4 v3, 0x1

    .line 101
    move-object v1, p0

    .line 102
    move v5, p1

    .line 103
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    return-void
.end method

.method public final handleShowOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 9

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
    const-string/jumbo v1, "handleShowOverlay(), where="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", type="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "[DMS]UiManager"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    new-instance v8, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    const/4 v7, 0x2

    .line 44
    move-object v2, v8

    .line 45
    move-object v3, p0

    .line 46
    move v4, p1

    .line 47
    move v5, p2

    .line 48
    move-object v6, p3

    .line 49
    invoke-direct/range {v2 .. v7}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;I)V

    .line 50
    .line 51
    .line 52
    const/16 v0, 0x384

    .line 53
    .line 54
    invoke-virtual {p0, v0, p2, p1, v8}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    if-eqz p3, :cond_2

    .line 62
    .line 63
    new-instance v0, Lcom/android/server/desktopmode/UiManager$5;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-direct {v0, v1, p3}, Lcom/android/server/desktopmode/UiManager$5;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 v0, 0x0

    .line 71
    :goto_0
    :try_start_0
    iget-object p3, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 72
    .line 73
    invoke-interface {p3, p1, p2, v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showOverlay(IILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception p1

    .line 78
    move-object v3, p1

    .line 79
    const/4 v7, -0x1

    .line 80
    const/4 v4, 0x1

    .line 81
    const/16 v5, 0x384

    .line 82
    .line 83
    move-object v2, p0

    .line 84
    move v6, p2

    .line 85
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    return-void
.end method

.method public final handleStartActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 9

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
    const-string/jumbo v1, "handleStartActivity(), displayId="

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
    const-string v1, ", type="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "[DMS]UiManager"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    new-instance v8, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;

    .line 34
    .line 35
    const/4 v7, 0x1

    .line 36
    move-object v2, v8

    .line 37
    move-object v3, p0

    .line 38
    move v4, p1

    .line 39
    move v5, p2

    .line 40
    move-object v6, p3

    .line 41
    invoke-direct/range {v2 .. v7}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;I)V

    .line 42
    .line 43
    .line 44
    const/16 v0, 0x384

    .line 45
    .line 46
    const/4 v1, -0x1

    .line 47
    invoke-virtual {p0, v0, p2, v1, v8}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    new-instance v0, Lcom/android/server/desktopmode/UiManager$5;

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-direct {v0, v1, p3}, Lcom/android/server/desktopmode/UiManager$5;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :try_start_0
    iget-object p3, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 61
    .line 62
    invoke-interface {p3, p1, p2, v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->startActivity(IILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    move-object v3, p1

    .line 68
    const/4 v7, -0x1

    .line 69
    const/4 v4, 0x1

    .line 70
    const/16 v5, 0x384

    .line 71
    .line 72
    move-object v2, p0

    .line 73
    move v6, p2

    .line 74
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method

.method public final hasOverlay(I)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    const/16 v1, 0x65

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "hasOverlay(), where="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ", type="

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v2, "[DMS]UiManager"

    .line 39
    .line 40
    invoke-static {v2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    :try_start_0
    invoke-interface {v0, v1, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->hasOverlay(II)Z

    .line 48
    .line 49
    .line 50
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return p0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    const/4 p0, 0x0

    .line 57
    return p0
.end method

.method public final postUnbindServiceRunnable()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 11
    .line 12
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 19
    .line 20
    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    if-eq v0, v1, :cond_3

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    if-eq v0, v1, :cond_3

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const-string v0, "[DMS]UiManager"

    .line 37
    .line 38
    const-string/jumbo v1, "postUnbindServiceRunnable()"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 45
    .line 46
    .line 47
    const-wide/16 v0, 0xbb8

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;

    .line 52
    .line 53
    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_0
    return-void
.end method

.method public final removeNotification(I)V
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
    const-string/jumbo v1, "removeNotification(), type="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

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
    const-string v1, "[DMS]UiManager"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;II)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 39
    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(Ljava/lang/Runnable;I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final removeUnbindServiceRunnable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final retryConnectionWithBackoff()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mBindServiceRunnable:Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;

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
    iget v3, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

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
    iget v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    iput v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

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
    iget p0, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

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
    const-string v0, "[DMS]UiManager"

    .line 68
    .line 69
    invoke-static {v0, p0}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "showDialog(), displayId="

    .line 6
    .line 7
    .line 8
    const-string v1, ", dialogType="

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

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
    const-string v1, "[DMS]UiManager"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;

    .line 34
    .line 35
    const/4 v7, 0x5

    .line 36
    move-object v2, v0

    .line 37
    move-object v3, p0

    .line 38
    move v4, p1

    .line 39
    move v5, p2

    .line 40
    move-object v6, p3

    .line 41
    invoke-direct/range {v2 .. v7}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;I)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 45
    .line 46
    invoke-virtual {p0, v0, p2}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(Ljava/lang/Runnable;I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final showNotification(I)V
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
    const-string/jumbo v1, "showNotification(), type="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

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
    const-string v1, "[DMS]UiManager"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;II)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 39
    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(Ljava/lang/Runnable;I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final showOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 8

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
    const-string/jumbo v1, "showOverlay(), where="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", type="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "[DMS]UiManager"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    move-object v2, v0

    .line 48
    move-object v3, p0

    .line 49
    move v4, p1

    .line 50
    move v5, p2

    .line 51
    move-object v6, p3

    .line 52
    invoke-direct/range {v2 .. v7}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;I)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 56
    .line 57
    invoke-virtual {p0, v0, p2}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(Ljava/lang/Runnable;I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 8

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
    const-string/jumbo v1, "startActivity(), displayId="

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
    const-string v1, ", type="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "[DMS]UiManager"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    const/4 v7, 0x6

    .line 39
    move-object v2, v0

    .line 40
    move-object v3, p0

    .line 41
    move v4, p1

    .line 42
    move v5, p2

    .line 43
    move-object v6, p3

    .line 44
    invoke-direct/range {v2 .. v7}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;I)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 48
    .line 49
    invoke-virtual {p0, v0, p2}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(Ljava/lang/Runnable;I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final unbindService()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

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
    const-string v1, "[DMS]UiManager"

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
    iget-boolean v2, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

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
    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

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
    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/server/desktopmode/UiManager;->mServiceConnection:Lcom/android/server/desktopmode/UiManager$1;

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 56
    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    .line 59
    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->asBinder()Landroid/os/IBinder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v3, p0, Lcom/android/server/desktopmode/UiManager;->mDeathRecipient:Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda9;

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
    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 82
    .line 83
    :cond_3
    return-void
.end method
