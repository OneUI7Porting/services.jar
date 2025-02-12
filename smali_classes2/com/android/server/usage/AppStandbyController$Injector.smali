.class public final Lcom/android/server/usage/AppStandbyController$Injector;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

.field public mAutoRestrictedBucketDelayMs:J

.field public mBatteryManager:Landroid/os/BatteryManager;

.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBootPhase:I

.field public final mContext:Landroid/content/Context;

.field public mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

.field public mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mLooper:Landroid/os/Looper;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mPowerWhitelistedApps:Landroid/util/ArraySet;

.field public mWellbeingApp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, 0x36ee80

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    .line 8
    .line 9
    new-instance v0, Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mWellbeingApp:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mLooper:Landroid/os/Looper;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "mPowerWhitelistedApps=["

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    :goto_0
    if-ltz v1, :cond_0

    .line 19
    .line 20
    const-string v2, "  "

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, ","

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const-string p0, "]"

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p0
.end method

.method public final isPackageInstalled(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    int-to-long v1, v0

    .line 5
    invoke-virtual {p0, p2, v1, v2, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ltz p0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    :cond_0
    return v0
.end method
