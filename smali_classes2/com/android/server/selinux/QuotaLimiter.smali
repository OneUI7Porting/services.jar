.class public final Lcom/android/server/selinux/QuotaLimiter;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mCurrentWindow:J

.field public mMaxPermits:I

.field public mPermitsGranted:I

.field public final mWindowSize:Ljava/time/Duration;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Ljava/time/Duration;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/selinux/QuotaLimiter;->mClock:Lcom/android/internal/os/Clock;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/selinux/QuotaLimiter;->mWindowSize:Ljava/time/Duration;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/selinux/QuotaLimiter;->mMaxPermits:I

    .line 9
    .line 10
    return-void
.end method