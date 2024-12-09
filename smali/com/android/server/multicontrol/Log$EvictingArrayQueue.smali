.class public final Lcom/android/server/multicontrol/Log$EvictingArrayQueue;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mCapacity:I

.field public final mElements:Ljava/util/ArrayList;

.field public final mLock:Ljava/lang/Object;

.field public mPointer:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mPointer:I

    .line 13
    .line 14
    iput p1, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mCapacity:I

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget v2, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mCapacity:I

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    move v2, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v4

    .line 19
    :goto_0
    if-ge v4, v1, :cond_2

    .line 20
    .line 21
    iget-object v5, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget v6, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mPointer:I

    .line 26
    .line 27
    add-int/2addr v6, v4

    .line 28
    add-int/2addr v6, v3

    .line 29
    iget v7, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mCapacity:I

    .line 30
    .line 31
    rem-int/2addr v6, v7

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    move v6, v4

    .line 36
    :goto_1
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method
