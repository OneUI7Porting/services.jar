.class public final Lcom/android/server/BinderCallsStatsService$LifeCycle$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$CallStatsObserver;


# instance fields
.field public final synthetic val$batteryStatsInternal:Landroid/os/BatteryStatsInternal;


# direct methods
.method public constructor <init>(Landroid/os/BatteryStatsInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle$1;->val$batteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final noteBinderThreadNativeIds([I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle$1;->val$batteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/BatteryStatsInternal;->noteBinderThreadNativeIds([I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final noteCallStats(IJLjava/util/Collection;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle$1;->val$batteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/BatteryStatsInternal;->noteBinderCallStats(IJLjava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
