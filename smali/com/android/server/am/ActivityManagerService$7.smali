.class public final Lcom/android/server/am/ActivityManagerService$7;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$app:Lcom/android/server/am/ProcessRecord;

.field public final synthetic val$pid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/server/am/ProcessRecord;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$7;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$7;->val$pid:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$7;->val$app:Lcom/android/server/am/ProcessRecord;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$7;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$7;->val$app:Lcom/android/server/am/ProcessRecord;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$7;->val$pid:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$7;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$7;->val$app:Lcom/android/server/am/ProcessRecord;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$7;->val$pid:I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 16
    .line 17
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-boolean v2, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lcom/android/server/am/FreecessController;->releaseFreezedAppPid(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 29
    .line 30
    iget-boolean v0, v0, Lcom/android/server/am/ProcessStateRecord;->mSlowAbnormal:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string v0, "CustomFrequencyManagerService"

    .line 35
    .line 36
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    :try_start_0
    const-string/jumbo v1, "release"

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-interface {v0, p0, v2, v1}, Landroid/os/ICustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mBinderStatsService:Lcom/android/server/BinderCallsStatsService$Internal;

    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    const-class v1, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 74
    .line 75
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mBinderStatsService:Lcom/android/server/BinderCallsStatsService$Internal;

    .line 76
    .line 77
    :cond_2
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBinderStatsService:Lcom/android/server/BinderCallsStatsService$Internal;

    .line 78
    .line 79
    iget v1, p0, Lcom/android/server/am/ActivityManagerService$7;->val$pid:I

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$7;->val$app:Lcom/android/server/am/ProcessRecord;

    .line 82
    .line 83
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/BinderCallsStatsService$Internal;->reportProcessDied(IILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
