.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(IIIJJLcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;->f$3:I

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;->f$4:J

    .line 11
    .line 12
    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;->f$5:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;->f$1:I

    .line 4
    .line 5
    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;->f$3:I

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;->f$4:J

    .line 8
    .line 9
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;->f$5:J

    .line 10
    .line 11
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 15
    .line 16
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteScreenBrightnessLocked(IIJJ)V

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v0
.end method
