.class public final synthetic Lcom/android/server/power/SmartStayController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/SmartStayController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/SmartStayController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/SmartStayController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/SmartStayController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/power/SmartStayController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/SmartStayController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/SmartStayController;->mSmartFaceManagerWrapper:Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/power/SmartStayController;->mSmartFaceCallback:Lcom/android/server/power/SmartStayController$1;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;->mClock:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->checkForSmartStay()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v0, v0, Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;->mClock:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 27
    .line 28
    .line 29
    const-string v0, "SmartStayController"

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "handleSmartStay : faceDetected : "

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/power/SmartStayController$1;->this$0:Lcom/android/server/power/SmartStayController;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/power/SmartStayController;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/SmartStayController$1;->this$0:Lcom/android/server/power/SmartStayController;

    .line 54
    .line 55
    iget v3, v2, Lcom/android/server/power/SmartStayController;->mWakefulness:I

    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    if-ne v3, v4, :cond_1

    .line 59
    .line 60
    iget-object v2, v2, Lcom/android/server/power/SmartStayController;->mFaceDetectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/power/SmartStayController$1;->this$0:Lcom/android/server/power/SmartStayController;

    .line 69
    .line 70
    iget v2, p0, Lcom/android/server/power/SmartStayController;->mUserActivitySummary:I

    .line 71
    .line 72
    and-int/2addr v2, v4

    .line 73
    if-nez v2, :cond_0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/power/SmartStayController;->mFaceDetected:Z

    .line 77
    .line 78
    monitor-exit v0

    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_2

    .line 82
    :cond_1
    :goto_0
    const-string p0, "SmartStayController"

    .line 83
    .line 84
    const-string v1, "handleSmartStay : cancelled"

    .line 85
    .line 86
    invoke-static {p0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    monitor-exit v0

    .line 90
    :goto_1
    return-void

    .line 91
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0
.end method
