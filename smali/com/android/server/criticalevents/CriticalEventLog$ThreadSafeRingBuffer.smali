.class public Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mBuffer:Lcom/android/internal/util/RingBuffer;

.field public final mCapacity:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mCapacity:I

    .line 5
    .line 6
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mBuffer:Lcom/android/internal/util/RingBuffer;

    .line 12
    .line 13
    return-void
.end method
