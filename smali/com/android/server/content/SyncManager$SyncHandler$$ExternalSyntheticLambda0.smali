.class public final synthetic Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/SyncManager$SyncHandler;

.field public final synthetic f$1:Lcom/android/server/content/SyncStorageEngine$EndPoint;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$2:J

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$3:J

    .line 11
    .line 12
    iput-object p7, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$4:Landroid/os/Bundle;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$2:J

    .line 6
    .line 7
    iget-wide v5, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$3:J

    .line 8
    .line 9
    iget-object v7, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$4:Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string/jumbo p0, "booleanResult"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 26
    .line 27
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method