.class public final Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final minDelayMillis:J

.field public final syncOperation:Lcom/android/server/content/SyncOperation;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncOperation;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->syncOperation:Lcom/android/server/content/SyncOperation;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->minDelayMillis:J

    .line 7
    .line 8
    return-void
.end method
