.class public final Lcom/android/server/am/BroadcastStats$ActionEntry;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mAction:Ljava/lang/String;

.field public final mBackgroundCheckViolations:Landroid/util/ArrayMap;

.field public mMaxDispatchTime:J

.field public final mPackages:Landroid/util/ArrayMap;

.field public mReceiveCount:I

.field public mSkipCount:I

.field public mTotalDispatchTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mAction:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method
