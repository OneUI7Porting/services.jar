.class public final Lcom/samsung/android/server/contextengine/SemContextEngineService;
.super Lcom/android/server/SystemService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public isScreenOn:Z

.field public final mBroadcastReceiver:Lcom/samsung/android/server/contextengine/SemContextEngineService$1;

.field public final mContext:Landroid/content/Context;

.field public final mSceImpl:Lcom/samsung/android/server/contextengine/SemContextEngineServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->isScreenOn:Z

    .line 6
    .line 7
    new-instance v0, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;-><init>(Lcom/samsung/android/server/contextengine/SemContextEngineService;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mBroadcastReceiver:Lcom/samsung/android/server/contextengine/SemContextEngineService$1;

    .line 13
    .line 14
    const-string v0, "SemContextEngineService"

    .line 15
    .line 16
    const-string v1, "SemContextEngineService create"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/server/contextengine/SemContextEngineServiceImpl;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lcom/samsung/android/server/contextengine/SemContextEngineServiceImpl;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mSceImpl:Lcom/samsung/android/server/contextengine/SemContextEngineServiceImpl;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "onStart"

    .line 2
    .line 3
    .line 4
    const-string v1, "SemContextEngineService"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mSceImpl:Lcom/samsung/android/server/contextengine/SemContextEngineServiceImpl;

    .line 10
    .line 11
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onUserUnlocking : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "SemContextEngineService"

    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroid/content/IntentFilter;

    .line 30
    .line 31
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mBroadcastReceiver:Lcom/samsung/android/server/contextengine/SemContextEngineService$1;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    return-void
.end method
