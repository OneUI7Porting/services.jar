.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->f$0:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->f$0:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
