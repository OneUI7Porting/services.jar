.class public final synthetic Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(JLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;->f$0:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;->f$0:J

    .line 4
    .line 5
    iget-object v3, v0, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    .line 8
    .line 9
    move-object/from16 v14, p1

    .line 10
    .line 11
    check-cast v14, Lcom/android/server/job/controllers/JobStatus;

    .line 12
    .line 13
    iget-object v4, v14, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    invoke-static {v4, v1, v2}, Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/android/server/job/controllers/JobStatus;

    .line 22
    .line 23
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v4, Ljava/lang/Long;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v8

    .line 39
    iget-wide v12, v14, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    iget-wide v4, v14, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    .line 43
    .line 44
    move-wide v15, v12

    .line 45
    iget-wide v11, v14, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    .line 46
    .line 47
    move-wide/from16 v17, v4

    .line 48
    .line 49
    move-object v4, v2

    .line 50
    move-object v5, v14

    .line 51
    move-wide/from16 v19, v11

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    move v11, v1

    .line 55
    move-wide/from16 v21, v15

    .line 56
    .line 57
    move-wide/from16 v12, v17

    .line 58
    .line 59
    move-object v1, v14

    .line 60
    move-wide/from16 v14, v19

    .line 61
    .line 62
    move-wide/from16 v16, v21

    .line 63
    .line 64
    invoke-direct/range {v4 .. v17}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIIJJJ)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_0
    return-void
.end method