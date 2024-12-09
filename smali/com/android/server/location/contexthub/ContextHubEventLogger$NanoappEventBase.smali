.class public abstract Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;
.super Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final nanoappId:J

.field public final success:Z


# direct methods
.method public constructor <init>(IJJZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;-><init>(JI)V

    .line 2
    .line 3
    .line 4
    iput-wide p4, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;->nanoappId:J

    .line 5
    .line 6
    iput-boolean p6, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;->success:Z

    .line 7
    .line 8
    return-void
.end method
