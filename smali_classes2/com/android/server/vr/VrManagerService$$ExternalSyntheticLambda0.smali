.class public final synthetic Lcom/android/server/vr/VrManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vr/VrManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method
