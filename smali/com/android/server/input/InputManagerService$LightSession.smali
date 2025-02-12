.class public final Lcom/android/server/input/InputManagerService$LightSession;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mDeviceId:I

.field public mLightIds:[I

.field public mLightStates:[Landroid/hardware/lights/LightState;

.field public final mOpPkg:Ljava/lang/String;

.field public final mToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LightSession;->this$0:Lcom/android/server/input/InputManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/input/InputManagerService$LightSession;->mDeviceId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$LightSession;->mOpPkg:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/input/InputManagerService$LightSession;->mToken:Landroid/os/IBinder;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "InputManager"

    .line 6
    .line 7
    const-string v1, "Light token died."

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LightSession;->this$0:Lcom/android/server/input/InputManagerService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$LightSession;->this$0:Lcom/android/server/input/InputManagerService;

    .line 18
    .line 19
    iget v2, p0, Lcom/android/server/input/InputManagerService$LightSession;->mDeviceId:I

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$LightSession;->mToken:Landroid/os/IBinder;

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->closeLightSession(ILandroid/os/IBinder;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$LightSession;->this$0:Lcom/android/server/input/InputManagerService;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LightSession;->mToken:Landroid/os/IBinder;

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method
