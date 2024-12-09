.class public final Lcom/android/server/wm/PendingActivityLaunch;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final intentGrants:Lcom/android/server/uri/NeededUriGrants;

.field public final r:Lcom/android/server/wm/ActivityRecord;

.field public final sourceRecord:Lcom/android/server/wm/ActivityRecord;

.field public final startFlags:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/uri/NeededUriGrants;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/PendingActivityLaunch;->sourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/PendingActivityLaunch;->startFlags:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/PendingActivityLaunch;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 11
    .line 12
    return-void
.end method
