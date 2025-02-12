.class public final Lcom/android/server/biometrics/SemBiometricSysUiManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/samsung/android/biometrics/SemBiometricConstants;


# static fields
.field public static sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public mIsConnected:Z

.field public mIsWaitingForConnection:Z

.field public final mKeepBind:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mPendingCommand:Ljava/util/List;

.field public final mRunnableHandleBindTimeout:Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

.field public final mRunnableHandleUnbind:Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

.field public final mSessionList:Ljava/util/List;

.field public mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

.field public final mSysUiServiceReceiver:Lcom/android/server/biometrics/SemBiometricSysUiManager$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mPendingCommand:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mKeepBind:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleUnbind:Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    new-instance v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;I)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleBindTimeout:Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 43
    .line 44
    sget-object v1, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    new-instance v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiServiceReceiver:Lcom/android/server/biometrics/SemBiometricSysUiManager$1;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    new-instance p1, Landroid/os/Handler;

    .line 65
    .line 66
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 70
    .line 71
    return-void
.end method

.method public static declared-synchronized injectMockForTest(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0

    .line 10
    throw p0
.end method


# virtual methods
.method public final bind()V
    .locals 5

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsWaitingForConnection:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string v0, "BiometricSysUiManager"

    .line 15
    .line 16
    const-string/jumbo v1, "openSession: waiting for service connection"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :cond_1
    const-string v0, "BiometricSysUiManager"

    .line 25
    .line 26
    const-string/jumbo v1, "bind: started"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const v0, 0x24000003

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const v0, 0x24000001

    .line 41
    .line 42
    .line 43
    :goto_0
    new-instance v1, Landroid/content/Intent;

    .line 44
    .line 45
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v2, Landroid/content/ComponentName;

    .line 49
    .line 50
    const-string/jumbo v3, "com.samsung.android.biometrics.app.setting"

    .line 51
    .line 52
    .line 53
    const-string/jumbo v4, "com.samsung.android.biometrics.app.setting.BiometricsUIService"

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 65
    .line 66
    invoke-virtual {v2, v1, v0, v3, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsWaitingForConnection:Z

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleBindTimeout:Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    const-wide/16 v2, 0xbb8

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    .line 80
    .line 81
    monitor-exit p0

    .line 82
    goto :goto_2

    .line 83
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v1, "BiometricSysUiManager"

    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string/jumbo v3, "bind: "

    .line 91
    .line 92
    .line 93
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    const/4 v0, -0x2

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendConnectionError(I)V

    .line 112
    .line 113
    .line 114
    :goto_2
    return-void
.end method

.method public final binderDied()V
    .locals 3

    .line 1
    const-string v0, "BiometricSysUiManager"

    .line 2
    .line 3
    const-string/jumbo v1, "binderDied: handle error"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final cleanup()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mPendingCommand:Ljava/util/List;

    .line 3
    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsWaitingForConnection:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleBindTimeout:Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public final closeSession(IJ)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "BiometricSysUiManager"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "closeSession: sessionId = ["

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
    const-string v2, "], "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    monitor-enter p0

    .line 34
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    .line 41
    .line 42
    check-cast v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput-object v0, p1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    .line 51
    .line 52
    check-cast p1, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    iget-boolean p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleUnbind:Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleUnbind:Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->printSessionClient()V

    .line 82
    .line 83
    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 86
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p1
.end method

.method public final findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 20
    .line 21
    iget v1, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I

    .line 22
    .line 23
    if-ne v1, p1, :cond_0

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public final handleRequest(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsWaitingForConnection:Z

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v0, "BiometricSysUiManager"

    .line 21
    .line 22
    const-string/jumbo v1, "handleRequest: Add pending list"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mPendingCommand:Ljava/util/List;

    .line 29
    .line 30
    check-cast v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public final notifySysUiErrorEvent(III)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    .line 3
    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    :try_start_1
    iget-object v2, v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget v1, v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I

    .line 29
    .line 30
    if-ne p1, v1, :cond_0

    .line 31
    .line 32
    :cond_1
    invoke-interface {v2, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;->onError(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception v1

    .line 39
    :try_start_2
    const-string v2, "BiometricSysUiManager"

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v4, "notifySysUiErrorEvent: "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    const-string/jumbo p1, "onServiceConnected: "

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "BiometricSysUiManager"

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "onServiceConnected: "

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleBindTimeout:Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsWaitingForConnection:Z

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    .line 41
    .line 42
    invoke-static {p2}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iput-object p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    .line 47
    .line 48
    if-nez p2, :cond_1

    .line 49
    .line 50
    const-string p1, "BiometricSysUiManager"

    .line 51
    .line 52
    const-string/jumbo p2, "onServiceConnected: failed "

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    const/4 p1, -0x1

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendConnectionError(I)V

    .line 60
    .line 61
    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :try_start_1
    invoke-interface {p2}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->asBinder()Landroid/os/IBinder;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p2

    .line 75
    :try_start_2
    const-string v0, "BiometricSysUiManager"

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :goto_0
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 97
    .line 98
    new-instance p2, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    const/4 v0, 0x1

    .line 101
    invoke-direct {p2, p0, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    .line 108
    .line 109
    check-cast p1, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 118
    .line 119
    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleUnbind:Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

    .line 120
    .line 121
    const-wide/16 v0, 0xfa0

    .line 122
    .line 123
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    .line 125
    .line 126
    :cond_2
    monitor-exit p0

    .line 127
    return-void

    .line 128
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    const-string/jumbo p1, "onServiceDisconnected: "

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "BiometricSysUiManager"

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "onServiceDisconnected: "

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    monitor-enter p0

    .line 31
    const/4 v0, 0x0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {v1}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->asBinder()Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception v1

    .line 47
    :try_start_1
    const-string v2, "BiometricSysUiManager"

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    const/4 p1, 0x2

    .line 69
    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiErrorEvent(III)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->cleanup()V

    .line 73
    .line 74
    .line 75
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p1
.end method

.method public final openSession(Ljava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "BiometricSysUiManager"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "openSession: "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", "

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
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    const-string p0, "BiometricSysUiManager"

    .line 37
    .line 38
    const-string/jumbo p1, "openSession: token is null"

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return v0

    .line 45
    :cond_1
    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleUnbind:Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    .line 54
    .line 55
    check-cast v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/4 v3, 0x0

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 73
    .line 74
    iget-object v4, v2, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mToken:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    move-object v2, v3

    .line 84
    :goto_0
    if-nez v2, :cond_4

    .line 85
    .line 86
    new-instance v2, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 87
    .line 88
    invoke-direct {v2, p1, p2}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;-><init>(Ljava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    .line 92
    .line 93
    check-cast p1, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    .line 99
    .line 100
    check-cast p1, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    const/16 p2, 0xa

    .line 107
    .line 108
    if-le p1, p2, :cond_5

    .line 109
    .line 110
    const-string p1, "BiometricSysUiManager"

    .line 111
    .line 112
    const-string/jumbo p2, "openSession: too many session list"

    .line 113
    .line 114
    .line 115
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    .line 119
    .line 120
    check-cast p1, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 127
    .line 128
    iput-object v3, p1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catchall_0
    move-exception p1

    .line 132
    goto :goto_2

    .line 133
    :cond_4
    const-string p1, "BiometricSysUiManager"

    .line 134
    .line 135
    const-string/jumbo p2, "openSession: exist token"

    .line 136
    .line 137
    .line 138
    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->bind()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->printSessionClient()V

    .line 145
    .line 146
    .line 147
    iget p1, v2, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I

    .line 148
    .line 149
    monitor-exit p0

    .line 150
    return p1

    .line 151
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    throw p1
.end method

.method public final printSessionClient()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    .line 6
    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Session Client = "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "BiometricSysUiManager"

    .line 44
    .line 45
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method public final sendCommand(Landroid/os/Bundle;III)V
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda9;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move-object v5, p1

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIILandroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v6}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final sendConnectionError(I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "sendConnectionError: ["

    .line 2
    .line 3
    .line 4
    const-string v1, "]"

    .line 5
    .line 6
    const-string v2, "BiometricSysUiManager"

    .line 7
    .line 8
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda4;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final unBind()V
    .locals 5

    .line 1
    const-string/jumbo v0, "unBind: "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "unBind: "

    .line 5
    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    const-string v2, "BiometricSysUiManager"

    .line 9
    .line 10
    const-string/jumbo v3, "unBind: started"

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    :try_start_1
    invoke-interface {v2}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->asBinder()Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_2

    .line 31
    :catch_0
    move-exception v2

    .line 32
    :try_start_2
    const-string v3, "BiometricSysUiManager"

    .line 33
    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_1
    move-exception v1

    .line 60
    :try_start_4
    const-string v2, "BiometricSysUiManager"

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->cleanup()V

    .line 82
    .line 83
    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 86
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    throw v0
.end method
