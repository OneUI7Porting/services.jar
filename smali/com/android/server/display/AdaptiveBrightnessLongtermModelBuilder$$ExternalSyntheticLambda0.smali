.class public final synthetic Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->readAdaptiveBrightnessStats()V

    .line 6
    .line 7
    .line 8
    if-eqz p0, :cond_2

    .line 9
    .line 10
    iget-object p0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v2, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v2, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 31
    .line 32
    check-cast v2, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 42
    :goto_0
    if-nez v2, :cond_1

    .line 43
    .line 44
    iget-object v2, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 45
    .line 46
    invoke-virtual {v1, v3, v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getOrCreateUserStats(ILjava/util/Map;)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->setMaxWeight()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const-string v1, "AdaptiveBrightnessStatsTracker"

    .line 55
    .line 56
    const-string/jumbo v2, "setMaxWeight: shoudn\'t be here"

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    :goto_1
    monitor-exit p0

    .line 63
    goto :goto_2

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    monitor-exit p0

    .line 66
    throw v0

    .line 67
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->stopAdaptiveBrightnessStatsTracker()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->startAdaptiveBrightnessStatsTracker()V

    .line 71
    .line 72
    .line 73
    return-void
.end method
