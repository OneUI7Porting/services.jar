.class public final Lcom/android/server/am/ProcessList$IsolatedUidRange;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mFirstUid:I

.field public final mLastUid:I

.field public mNextUid:I

.field public final mUidUsed:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    .line 12
    .line 13
    iput p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    .line 14
    .line 15
    iput p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 16
    .line 17
    return-void
.end method