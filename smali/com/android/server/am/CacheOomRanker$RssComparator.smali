.class public final Lcom/android/server/am/CacheOomRanker$RssComparator;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/CacheOomRanker$RssComparator;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/am/CacheOomRanker$RssComparator;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 7
    .line 8
    check-cast p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 9
    .line 10
    iget p0, p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    .line 11
    .line 12
    iget p1, p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    .line 13
    .line 14
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :pswitch_0
    check-cast p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 20
    .line 21
    check-cast p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 22
    .line 23
    iget-object p0, p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 26
    .line 27
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 28
    .line 29
    iget-object p0, p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 32
    .line 33
    iget-wide p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 34
    .line 35
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :pswitch_1
    check-cast p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 41
    .line 42
    check-cast p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 43
    .line 44
    iget-object p0, p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 45
    .line 46
    iget-wide p0, p0, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    .line 47
    .line 48
    iget-object p2, p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 49
    .line 50
    iget-wide v0, p2, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    .line 51
    .line 52
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0

    .line 57
    :pswitch_2
    check-cast p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 58
    .line 59
    check-cast p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 60
    .line 61
    iget-object p0, p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 64
    .line 65
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    .line 66
    .line 67
    int-to-long p0, p0

    .line 68
    iget-object p2, p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 69
    .line 70
    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 71
    .line 72
    iget p2, p2, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    .line 73
    .line 74
    int-to-long v0, p2

    .line 75
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    return p0

    .line 80
    :pswitch_3
    check-cast p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 81
    .line 82
    check-cast p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 83
    .line 84
    iget-object p0, p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 87
    .line 88
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    .line 89
    .line 90
    iget-object p0, p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 93
    .line 94
    iget-wide p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    .line 95
    .line 96
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    return p0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method