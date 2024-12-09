.class public final Lcom/android/server/CustomizedBinderCallsStatsInternal;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mAm:Landroid/app/ActivityManagerInternal;

.field public final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field public final mContext:Landroid/content/Context;

.field public mLastNotifyTime:J

.field public mLastStoreTime:J

.field public mLastWriteTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BinderCallsStats;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method
