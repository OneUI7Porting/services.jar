.class public interface abstract Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public abstract detach()V
.end method

.method public abstract onTimeStarted(JJ)V
.end method

.method public abstract onTimeStopped(JJJ)V
.end method

.method public reset()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->reset(JZ)Z

    return-void
.end method

.method public abstract reset(JZ)Z
.end method
