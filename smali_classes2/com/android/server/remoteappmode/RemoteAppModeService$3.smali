.class public final Lcom/android/server/remoteappmode/RemoteAppModeService$3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string/jumbo v3, "window"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/view/WindowManager;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    .line 19
    .line 20
    iget-object v3, v3, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    .line 21
    .line 22
    iget v4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    .line 23
    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    .line 37
    .line 38
    iget v4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    .line 39
    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    .line 49
    .line 50
    iget-object v3, v3, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Landroid/view/Display;->isValid()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_4

    .line 65
    :catch_0
    move-exception p0

    .line 66
    goto :goto_2

    .line 67
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    iget v3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    .line 76
    .line 77
    if-ne v2, v3, :cond_2

    .line 78
    .line 79
    :cond_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    .line 84
    .line 85
    const-string v3, "RemoteAppModeService"

    .line 86
    .line 87
    invoke-interface {v2, p0, v3}, Landroid/view/IWindowManager;->moveDisplayToTop(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :goto_3
    return-void

    .line 99
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method
