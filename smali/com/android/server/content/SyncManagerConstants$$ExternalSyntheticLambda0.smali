.class public final synthetic Lcom/android/server/content/SyncManagerConstants$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/SyncManagerConstants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManagerConstants;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncManagerConstants$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/content/SyncManagerConstants;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/content/SyncManagerConstants$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/content/SyncManagerConstants;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "sync_manager_constants"

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/content/SyncManagerConstants;->refresh()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
