.class public final Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final label:Ljava/lang/String;

.field public final lastNandswapTimeDiff:J

.field public final ppnState:I

.field public subitems:Ljava/util/ArrayList;

.field public final swap:J

.field public final writeback:J


# direct methods
.method public constructor <init>(IJJJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p8, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->label:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->swap:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->writeback:J

    .line 9
    .line 10
    iput p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->ppnState:I

    .line 11
    .line 12
    iput-wide p6, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->lastNandswapTimeDiff:J

    .line 13
    .line 14
    return-void
.end method
