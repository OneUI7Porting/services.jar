.class public final Lcom/android/server/PinnerService$PinnedFile;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final bytesPinned:I

.field public final fileName:Ljava/lang/String;

.field public groupName:Ljava/lang/String;

.field public mAddress:J

.field public final mapSize:I

.field public final pinnedDeps:Ljava/util/ArrayList;

.field public used_pinlist:Z


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/PinnerService$PinnedFile;->groupName:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/PinnerService$PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    .line 14
    .line 15
    iput-wide p3, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    .line 16
    .line 17
    iput p1, p0, Lcom/android/server/PinnerService$PinnedFile;->mapSize:I

    .line 18
    .line 19
    iput-object p5, p0, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 20
    .line 21
    iput p2, p0, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-ltz v2, :cond_0

    .line 8
    .line 9
    iget v2, p0, Lcom/android/server/PinnerService$PinnedFile;->mapSize:I

    .line 10
    .line 11
    int-to-long v2, v2

    .line 12
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v0, -0x1

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/PinnerService$PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/server/PinnerService$PinnedFile;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-void
.end method

.method public final finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
