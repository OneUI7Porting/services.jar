.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/WorkSource;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:J

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(IJJLandroid/os/WorkSource;Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 5
    .line 6
    iput-object p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;->f$2:I

    .line 9
    .line 10
    iput-object p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;->f$3:Landroid/os/WorkSource;

    .line 11
    .line 12
    iput-object p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput-wide p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;->f$5:J

    .line 15
    .line 16
    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;->f$6:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;->f$2:I

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;->f$3:Landroid/os/WorkSource;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;->f$5:J

    .line 12
    .line 13
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;->f$6:J

    .line 14
    .line 15
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 16
    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 19
    .line 20
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWakupAlarmLocked(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v0
.end method