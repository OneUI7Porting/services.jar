.class public final Lcom/android/server/power/stats/VideoPowerStatsProcessor;
.super Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public final getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 0

    .line 1
    iget p0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2
    .line 3
    const/high16 p1, 0x40000000    # 2.0f

    .line 4
    .line 5
    and-int/2addr p0, p1

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method
