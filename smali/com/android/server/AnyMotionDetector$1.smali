.class public final Lcom/android/server/AnyMotionDetector$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/AnyMotionDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v7, Lcom/android/server/AnyMotionDetector$Vector3;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v5

    .line 12
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    aget v2, p1, v8

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    aget v3, p1, v1

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    aget v4, p1, v1

    .line 22
    .line 23
    move-object v1, v7

    .line 24
    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(FFFJ)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    .line 30
    .line 31
    invoke-virtual {p1, v7}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->accumulate(Lcom/android/server/AnyMotionDetector$Vector3;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 35
    .line 36
    iget-object v1, p1, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    .line 37
    .line 38
    iget v1, v1, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    .line 39
    .line 40
    iget v2, p1, Lcom/android/server/AnyMotionDetector;->mNumSufficientSamples:I

    .line 41
    .line 42
    const/4 v3, -0x1

    .line 43
    if-lt v1, v2, :cond_0

    .line 44
    .line 45
    invoke-static {p1}, Lcom/android/server/AnyMotionDetector;->-$$Nest$mstopOrientationMeasurementLocked(Lcom/android/server/AnyMotionDetector;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    move p1, v3

    .line 53
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eq p1, v3, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 57
    .line 58
    iget-object v1, v0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Lcom/android/server/AnyMotionDetector$2;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 66
    .line 67
    iput-boolean v8, v0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    .line 72
    .line 73
    check-cast p0, Lcom/android/server/DeviceIdleController;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->onAnyMotionResult(I)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void

    .line 79
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    throw p0
.end method