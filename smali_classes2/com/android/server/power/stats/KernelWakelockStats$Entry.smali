.class public final Lcom/android/server/power/stats/KernelWakelockStats$Entry;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public activeTimeUs:J

.field public count:I

.field public totalTimeUs:J

.field public version:I


# direct methods
.method public constructor <init>(IIJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->activeTimeUs:J

    .line 9
    .line 10
    iput p2, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    .line 11
    .line 12
    return-void
.end method
