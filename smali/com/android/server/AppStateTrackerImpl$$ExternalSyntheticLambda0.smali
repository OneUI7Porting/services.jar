.class public final synthetic Lcom/android/server/AppStateTrackerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/AppStateTrackerImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/AppStateTrackerImpl;

    .line 2
    .line 3
    check-cast p1, Landroid/os/PowerSaveState;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/android/server/AppStateTrackerImpl;->mBatterySaverEnabled:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method
