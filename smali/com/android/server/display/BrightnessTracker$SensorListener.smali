.class public final Lcom/android/server/display/BrightnessTracker$SensorListener;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$SensorListener;->this$0:Lcom/android/server/display/BrightnessTracker;

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
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$SensorListener;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 6
    .line 7
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aget p1, p1, v1

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v2, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    .line 14
    .line 15
    iget-boolean v2, v2, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    .line 16
    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    iget v2, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentUserId:I

    .line 20
    .line 21
    if-ne p0, v2, :cond_1

    .line 22
    .line 23
    iget-object p0, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    .line 24
    .line 25
    iget-object v3, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget v4, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F

    .line 35
    .line 36
    iget-object v5, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    .line 37
    .line 38
    iget-boolean v6, v5, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    .line 39
    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    iget-object v6, v5, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;

    .line 43
    .line 44
    invoke-interface {v6}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    iget-wide v8, v5, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->startTimeMillis:J

    .line 49
    .line 50
    sub-long/2addr v6, v8

    .line 51
    long-to-double v5, v6

    .line 52
    const-wide v7, 0x408f400000000000L    # 1000.0

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    div-double/2addr v5, v7

    .line 58
    double-to-float v5, v5

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v5, 0x0

    .line 61
    :goto_0
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->log(ILjava/time/LocalDate;FF)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_3

    .line 67
    :cond_1
    sget-boolean v2, Lcom/android/server/display/AmbientBrightnessStatsTracker;->DEBUG:Z

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    const-string v2, "AmbientBrightnessStatsTracker"

    .line 72
    .line 73
    const-string v3, "User switched since last sensor event."

    .line 74
    .line 75
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_2
    iput p0, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentUserId:I

    .line 79
    .line 80
    :goto_1
    iget-object p0, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    .line 81
    .line 82
    iput-boolean v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;

    .line 85
    .line 86
    invoke-interface {v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    iput-wide v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->startTimeMillis:J

    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    iput-boolean v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    .line 94
    .line 95
    iput p1, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    sget-boolean p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->DEBUG:Z

    .line 99
    .line 100
    if-eqz p0, :cond_4

    .line 101
    .line 102
    const-string p0, "AmbientBrightnessStatsTracker"

    .line 103
    .line 104
    const-string p1, "Timer not running while trying to add brightness stats."

    .line 105
    .line 106
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_2
    monitor-exit v0

    .line 110
    return-void

    .line 111
    :goto_3
    monitor-exit v0

    .line 112
    throw p0
.end method
