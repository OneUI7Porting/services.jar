.class public final synthetic Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;

.field public final synthetic f$1:Lcom/android/server/wm/WindowState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 6
    .line 7
    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowState;->isRequestedVisible(IZ)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showSoftInputInternal(Landroid/os/IBinder;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const-string p0, "IMMS.hideSoftInputInternal"

    .line 40
    .line 41
    const-wide/16 v0, 0x20

    .line 42
    .line 43
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string v4, "InputMethodManagerService#hideSoftInput"

    .line 51
    .line 52
    iget-object v5, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

    .line 53
    .line 54
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 55
    .line 56
    .line 57
    const-class p0, Lcom/android/server/inputmethod/ImfLock;

    .line 58
    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 61
    .line 62
    .line 63
    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const/4 v4, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v7, 0x4

    .line 68
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .line 70
    .line 71
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 75
    .line 76
    .line 77
    monitor-exit p0

    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto :goto_0

    .line 81
    :catchall_1
    move-exception v2

    .line 82
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 86
    .line 87
    .line 88
    throw v2

    .line 89
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    throw v0

    .line 91
    :cond_1
    :goto_1
    return-void
.end method
