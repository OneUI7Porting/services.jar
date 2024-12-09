.class public final Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/multicontrol/MultiControlManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/multicontrol/MultiControlManagerService;Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    .line 5
    .line 6
    invoke-interface {p2}, Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mBinder:Landroid/os/IBinder;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    .line 2
    .line 3
    const-string v0, "MultiControlAppDeathChecker - binderDied"

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "sendBroadcast - ACTION_MULTI_CONTROL_DIED"

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "in resetMultiControlValue"

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v2}, Lcom/android/server/multicontrol/MultiControlManagerService;->forceHideCursor(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/android/server/multicontrol/MultiControlManagerService;->setMultiControlOutOfFocus(Z)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    .line 29
    .line 30
    iget-object v3, v1, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/server/multicontrol/MultiControlManagerService;->resetInputFilter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    .line 38
    .line 39
    const-string/jumbo v3, "com.samsung.android.inputshare.action.ACTION_MULTI_CONTROL_DIED"

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v3, "com.samsung.android.inputshare"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    .line 52
    .line 53
    iget-object v3, v3, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    const-string/jumbo v4, "com.samsung.android.permission.MULTI_CONTROL_RECEIVER_PERMISSION"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-boolean v1, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    .line 62
    .line 63
    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_1
    move-exception v1

    .line 68
    sget-boolean v3, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    .line 69
    .line 70
    const/16 v3, 0x45

    .line 71
    .line 72
    invoke-static {v3, v0}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v3, "MultiControl@MultiControlManagerService"

    .line 76
    .line 77
    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    :goto_0
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mBinder:Landroid/os/IBinder;

    .line 81
    .line 82
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 83
    .line 84
    .line 85
    return-void
.end method
