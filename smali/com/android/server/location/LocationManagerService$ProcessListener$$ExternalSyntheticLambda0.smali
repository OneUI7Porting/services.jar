.class public final synthetic Lcom/android/server/location/LocationManagerService$ProcessListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService$ProcessListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService$ProcessListener;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$ProcessListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/LocationManagerService$ProcessListener;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/location/LocationManagerService$ProcessListener$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$ProcessListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/LocationManagerService$ProcessListener;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/location/LocationManagerService$ProcessListener$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService$ProcessListener;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$ProcessListener;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    invoke-virtual {v2, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    array-length v2, p0

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, v2, :cond_0

    .line 23
    .line 24
    aget-object v4, p0, v3

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Lcom/android/server/location/LocationManagerService;->recoverRealProviderLocked(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    monitor-exit v1

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method
