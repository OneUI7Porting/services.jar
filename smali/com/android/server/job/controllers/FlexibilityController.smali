.class public final Lcom/android/server/job/controllers/FlexibilityController;
.super Lcom/android/server/job/controllers/StateController;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final DEBUG:Z

.field static final FLEXIBLE_CONSTRAINTS:I = 0x10000007


# instance fields
.field public mAppliedConstraints:I

.field public mDeadlineProximityLimitMs:J

.field public mFallbackFlexibilityAdditionalScoreTimeFactors:Landroid/util/SparseLongArray;

.field public mFallbackFlexibilityDeadlineMs:J

.field public mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

.field public mFallbackFlexibilityDeadlines:Landroid/util/SparseLongArray;

.field final mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

.field final mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

.field public mFlexibilityEnabled:Z

.field final mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

.field public final mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

.field public final mJobScoreTrackers:Landroid/util/SparseArrayMap;

.field public final mJobsToCheck:Landroid/util/ArraySet;

.field public final mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

.field public mLocalOverride:Z

.field public mMaxRescheduledDeadline:J

.field public mMinTimeBetweenFlexibilityAlarmsMs:J

.field public final mPackagesToCheck:Landroid/util/ArraySet;

.field public mPercentsToDropConstraints:Landroid/util/SparseArray;

.field final mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

.field final mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

.field final mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

.field public mRescheduledJobDeadline:J

.field mSatisfiedFlexibleConstraints:I

.field public final mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

.field public final mSupportedFlexConstraints:I

.field public mUnseenConstraintGracePeriodMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "JobScheduler.Flex"

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/FlexibilityController;->DEBUG:Z

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/PrefetchController;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, 0x5265c00

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineMs:J

    .line 8
    .line 9
    sget-object p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlines:Landroid/util/SparseLongArray;

    .line 12
    .line 13
    sget-object p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    sget-object p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityAdditionalScoreTimeFactors:Landroid/util/SparseLongArray;

    .line 20
    .line 21
    const-wide/32 v2, 0x36ee80

    .line 22
    .line 23
    .line 24
    iput-wide v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mRescheduledJobDeadline:J

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mMaxRescheduledDeadline:J

    .line 27
    .line 28
    const-wide/32 v0, 0xf731400

    .line 29
    .line 30
    .line 31
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 35
    .line 36
    const-wide/32 v0, 0xea60

    .line 37
    .line 38
    .line 39
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mMinTimeBetweenFlexibilityAlarmsMs:J

    .line 40
    .line 41
    const-wide/32 v0, 0xdbba0

    .line 42
    .line 43
    .line 44
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mDeadlineProximityLimitMs:J

    .line 45
    .line 46
    new-instance v0, Landroid/util/SparseLongArray;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 52
    .line 53
    new-instance v0, Landroid/util/SparseArrayMap;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    .line 59
    .line 60
    new-instance v0, Lcom/android/server/job/controllers/FlexibilityController$1;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/FlexibilityController$1;-><init>(Lcom/android/server/job/controllers/FlexibilityController;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    .line 66
    .line 67
    new-instance v0, Landroid/util/SparseArrayMap;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 73
    .line 74
    new-instance v0, Landroid/util/ArraySet;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 80
    .line 81
    new-instance v0, Landroid/util/ArraySet;

    .line 82
    .line 83
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPackagesToCheck:Landroid/util/ArraySet;

    .line 87
    .line 88
    new-instance v0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 89
    .line 90
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;-><init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/os/Looper;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "android.hardware.type.automotive"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_1

    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const-string v1, "android.hardware.type.embedded"

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_0
    const v0, 0x10000007

    .line 133
    .line 134
    .line 135
    iput v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    .line 139
    .line 140
    :goto_1
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 141
    .line 142
    iget v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    .line 143
    .line 144
    and-int/2addr v0, v1

    .line 145
    if-eqz v0, :cond_2

    .line 146
    .line 147
    const/4 p1, 0x1

    .line 148
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 149
    .line 150
    new-instance p1, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 151
    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;-><init>(Lcom/android/server/job/controllers/FlexibilityController;I)V

    .line 157
    .line 158
    .line 159
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 160
    .line 161
    new-instance p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 162
    .line 163
    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;-><init>(Lcom/android/server/job/controllers/FlexibilityController;)V

    .line 164
    .line 165
    .line 166
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 167
    .line 168
    new-instance p1, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    .line 169
    .line 170
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 171
    .line 172
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;-><init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/content/Context;Landroid/os/Looper;)V

    .line 181
    .line 182
    .line 183
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    .line 184
    .line 185
    sget-object p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    .line 186
    .line 187
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPercentsToDropConstraints:Landroid/util/SparseArray;

    .line 188
    .line 189
    iput-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 190
    .line 191
    new-instance p1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 192
    .line 193
    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;-><init>(Lcom/android/server/job/controllers/FlexibilityController;)V

    .line 194
    .line 195
    .line 196
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 197
    .line 198
    iget-boolean p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 199
    .line 200
    if-eqz p0, :cond_3

    .line 201
    .line 202
    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$mstartTracking(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    .line 203
    .line 204
    .line 205
    :cond_3
    return-void
.end method


# virtual methods
.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 9
    .line 10
    .line 11
    const-string v0, "FlexibilityController"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, ":"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string/jumbo v1, "fc_applied_constraints"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 34
    .line 35
    .line 36
    const-string v0, "("

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-static {v0, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string/jumbo v0, "nothing"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    const-string v0, ")"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEADLINE_PROXIMITY_LIMIT_MS:J

    .line 61
    .line 62
    const-string/jumbo v2, "fc_flexibility_deadline_proximity_limit_ms"

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_MS:J

    .line 69
    .line 70
    const-string/jumbo v2, "fc_fallback_flexibility_deadline_ms"

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 77
    .line 78
    const-string/jumbo v1, "fc_fallback_flexibility_deadlines"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 89
    .line 90
    const-string/jumbo v1, "fc_fallback_flexibility_deadline_scores"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 101
    .line 102
    const-string/jumbo v1, "fc_fallback_flexibility_deadline_additional_score_time_factors"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 110
    .line 111
    .line 112
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    .line 113
    .line 114
    const-string/jumbo v2, "fc_min_time_between_flexibility_alarms_ms"

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    .line 121
    .line 122
    const-string/jumbo v1, "fc_percents_to_drop_flexible_constraints"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 130
    .line 131
    .line 132
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->RESCHEDULED_JOB_DEADLINE_MS:J

    .line 133
    .line 134
    const-string/jumbo v2, "fc_rescheduled_job_deadline_ms"

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MAX_RESCHEDULED_DEADLINE_MS:J

    .line 141
    .line 142
    const-string/jumbo v2, "fc_max_rescheduled_deadline_ms"

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J

    .line 149
    .line 150
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    const-string/jumbo v0, "fc_unseen_constraint_grace_period_ms"

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLocalOverride:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Local override active"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const-string v0, "Applied Flexible Constraints:"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 21
    .line 22
    .line 23
    const-string v0, "Satisfied Flexible Constraints:"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    const-string v0, "Time since constraint combos last seen:"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    move v1, v0

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ge v1, v2, :cond_3

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iget v3, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 73
    .line 74
    if-ne v2, v3, :cond_1

    .line 75
    .line 76
    const-string v3, "0ms"

    .line 77
    .line 78
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 83
    .line 84
    invoke-virtual {v3, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    invoke-static {v3, v4, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    const-string v3, ":"

    .line 92
    .line 93
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    if-eqz v2, :cond_2

    .line 97
    .line 98
    invoke-static {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    const-string v2, " none"

    .line 103
    .line 104
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 108
    .line 109
    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    const-string v2, "Special apps:"

    .line 125
    .line 126
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 130
    .line 131
    .line 132
    iget-object v2, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 133
    .line 134
    monitor-enter v2

    .line 135
    move v3, v0

    .line 136
    :goto_3
    :try_start_0
    iget-object v4, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 137
    .line 138
    invoke-virtual {v4}, Landroid/util/SparseSetArray;->size()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-ge v3, v4, :cond_4

    .line 143
    .line 144
    const-string v4, "User "

    .line 145
    .line 146
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v4, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 150
    .line 151
    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 156
    .line 157
    .line 158
    const-string v4, ": "

    .line 159
    .line 160
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v4, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 164
    .line 165
    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->valuesAt(I)Landroid/util/ArraySet;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    add-int/lit8 v3, v3, 0x1

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :catchall_0
    move-exception p0

    .line 176
    goto/16 :goto_8

    .line 177
    .line 178
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 179
    .line 180
    .line 181
    const-string v3, "Carrier privileged packages:"

    .line 182
    .line 183
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 187
    .line 188
    .line 189
    move v3, v0

    .line 190
    :goto_4
    iget-object v4, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 191
    .line 192
    invoke-virtual {v4}, Landroid/util/SparseSetArray;->size()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-ge v3, v4, :cond_5

    .line 197
    .line 198
    iget-object v4, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 199
    .line 200
    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 205
    .line 206
    .line 207
    const-string v4, ": "

    .line 208
    .line 209
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v4, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 213
    .line 214
    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->valuesAt(I)Landroid/util/ArraySet;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    add-int/lit8 v3, v3, 0x1

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 228
    .line 229
    .line 230
    const-string v3, "Power allowlisted packages: "

    .line 231
    .line 232
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    .line 236
    .line 237
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 245
    .line 246
    .line 247
    iget-object v9, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 248
    .line 249
    move v10, v0

    .line 250
    :goto_5
    iget-object v1, v9, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-ge v10, v1, :cond_8

    .line 257
    .line 258
    iget-object v1, v9, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    move-object v11, v1

    .line 265
    check-cast v11, Landroid/util/ArraySet;

    .line 266
    .line 267
    move v12, v0

    .line 268
    :goto_6
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-ge v12, v1, :cond_7

    .line 273
    .line 274
    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    move-object v2, v1

    .line 279
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 280
    .line 281
    invoke-virtual {p2, v2}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_6

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_6
    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 289
    .line 290
    .line 291
    const-string v1, " from "

    .line 292
    .line 293
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget v1, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 297
    .line 298
    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 299
    .line 300
    .line 301
    const-string v1, "-> Num Required Constraints: "

    .line 302
    .line 303
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 311
    .line 312
    .line 313
    const-string v1, ", lifecycle=["

    .line 314
    .line 315
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v1, v9, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 319
    .line 320
    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J

    .line 321
    .line 322
    .line 323
    move-result-wide v5

    .line 324
    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 325
    .line 326
    .line 327
    const-string v3, ", ("

    .line 328
    .line 329
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, v2, v7, v8}, Lcom/android/server/job/controllers/FlexibilityController;->getCurPercentOfLifecycleLocked(Lcom/android/server/job/controllers/JobStatus;J)I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 337
    .line 338
    .line 339
    const-string v1, "%), "

    .line 340
    .line 341
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget-object v1, v9, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 345
    .line 346
    move-wide v3, v7

    .line 347
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    .line 348
    .line 349
    .line 350
    move-result-wide v1

    .line 351
    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 352
    .line 353
    .line 354
    const-string v1, "]"

    .line 355
    .line 356
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 360
    .line 361
    .line 362
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 363
    .line 364
    goto :goto_6

    .line 365
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 366
    .line 367
    goto :goto_5

    .line 368
    :cond_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 369
    .line 370
    .line 371
    const-string p2, "Job scores:"

    .line 372
    .line 373
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 377
    .line 378
    .line 379
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 380
    .line 381
    new-instance v0, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;

    .line 382
    .line 383
    invoke-direct {v0, p1, v7, v8}, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;J)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p2, v0}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 390
    .line 391
    .line 392
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 393
    .line 394
    .line 395
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    .line 396
    .line 397
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 398
    .line 399
    .line 400
    return-void

    .line 401
    :goto_8
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    throw p0
.end method

.method public getCurPercentOfLifecycleLocked(Lcom/android/server/job/controllers/JobStatus;J)I
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v6

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-wide v2, p2

    .line 8
    move-wide v4, v6

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    const-wide v0, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v0, p0, v0

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    cmp-long v0, v6, p2

    .line 23
    .line 24
    if-ltz v0, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    cmp-long v0, p2, p0

    .line 28
    .line 29
    if-gtz v0, :cond_2

    .line 30
    .line 31
    cmp-long v0, p0, v6

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sub-long/2addr p2, v6

    .line 37
    const-wide/16 v0, 0x64

    .line 38
    .line 39
    mul-long/2addr p2, v0

    .line 40
    sub-long/2addr p0, v6

    .line 41
    div-long/2addr p2, p0

    .line 42
    long-to-int p0, p2

    .line 43
    return p0

    .line 44
    :cond_2
    :goto_0
    const/16 p0, 0x64

    .line 45
    .line 46
    return p0

    .line 47
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public getFcConfig()Lcom/android/server/job/controllers/FlexibilityController$FcConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 8

    .line 1
    iget-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    iget-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 10
    .line 11
    :cond_0
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 12
    .line 13
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    iget-wide v6, p1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 32
    .line 33
    sub-long/2addr v6, v4

    .line 34
    add-long/2addr v6, v0

    .line 35
    const-wide/16 v0, 0x2

    .line 36
    .line 37
    div-long v0, v6, v0

    .line 38
    .line 39
    :cond_1
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPrefetch()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    iget v7, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v4, v7, p1, v5, v6}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    .line 67
    .line 68
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v6, v7, p1, v2}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/Long;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    const-wide v6, 0x7fffffffffffffffL

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    cmp-long p1, v4, v6

    .line 88
    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/android/server/job/controllers/PrefetchController;->getLaunchTimeThresholdMs()J

    .line 94
    .line 95
    .line 96
    move-result-wide p0

    .line 97
    sub-long/2addr v4, p0

    .line 98
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    :cond_2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 103
    .line 104
    .line 105
    move-result-wide p0

    .line 106
    return-wide p0

    .line 107
    :cond_3
    return-wide v0
.end method

.method public getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPrefetch()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 8
    .line 9
    const-wide v2, 0x7fffffffffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iget-wide v4, p1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object p3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/time/Clock;->millis()J

    .line 26
    .line 27
    .line 28
    move-result-wide p3

    .line 29
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 30
    .line 31
    invoke-virtual {p2, p1, v1, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    cmp-long p3, v4, v2

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 38
    .line 39
    if-eqz p3, :cond_0

    .line 40
    .line 41
    iget-wide p3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    .line 42
    .line 43
    sub-long/2addr p1, p3

    .line 44
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide p0

    .line 48
    return-wide p0

    .line 49
    :cond_0
    cmp-long p3, p1, v2

    .line 50
    .line 51
    if-eqz p3, :cond_1

    .line 52
    .line 53
    iget-wide p3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    .line 54
    .line 55
    sub-long/2addr p1, p3

    .line 56
    return-wide p1

    .line 57
    :cond_1
    return-wide v2

    .line 58
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v6, 0x1

    .line 63
    if-le v0, v6, :cond_3

    .line 64
    .line 65
    iget-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mRescheduledJobDeadline:J

    .line 66
    .line 67
    long-to-float p2, p2

    .line 68
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    add-int/lit8 p1, p1, -0x2

    .line 73
    .line 74
    invoke-static {p2, p1}, Ljava/lang/Math;->scalb(FI)F

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    float-to-long p1, p1

    .line 79
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mMaxRescheduledDeadline:J

    .line 80
    .line 81
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 82
    .line 83
    .line 84
    move-result-wide p0

    .line 85
    add-long/2addr p0, p4

    .line 86
    return-wide p0

    .line 87
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 92
    .line 93
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/job/controllers/FlexibilityController;->getScoreLocked(ILjava/lang/String;J)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    iget-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineMs:J

    .line 98
    .line 99
    const-wide/16 v6, 0x3

    .line 100
    .line 101
    mul-long/2addr v6, p2

    .line 102
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlines:Landroid/util/SparseLongArray;

    .line 103
    .line 104
    invoke-virtual {v1, v0, p2, p3}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 105
    .line 106
    .line 107
    move-result-wide p2

    .line 108
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityAdditionalScoreTimeFactors:Landroid/util/SparseLongArray;

    .line 109
    .line 110
    const-wide/32 v8, 0xea60

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0, v8, v9}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    int-to-long p0, p1

    .line 118
    mul-long/2addr v0, p0

    .line 119
    add-long/2addr v0, p2

    .line 120
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 121
    .line 122
    .line 123
    move-result-wide p0

    .line 124
    add-long/2addr p0, p4

    .line 125
    cmp-long p2, v4, v2

    .line 126
    .line 127
    if-nez p2, :cond_4

    .line 128
    .line 129
    return-wide p0

    .line 130
    :cond_4
    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 131
    .line 132
    .line 133
    move-result-wide p0

    .line 134
    return-wide p0
.end method

.method public getNextConstraintDropTimeElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v6

    .line 2
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-wide v4, v6

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide v4

    move-wide v2, v6

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/FlexibilityController;->getNextConstraintDropTimeElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getNextConstraintDropTimeElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J
    .locals 3

    .line 7
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/FlexibilityController;->getPercentsToDropConstraints(I)[I

    move-result-object p0

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p4, v0

    if-eqz v2, :cond_1

    .line 8
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    .line 9
    array-length v2, p0

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    aget p0, p0, p1

    sub-long/2addr p4, p2

    int-to-long p0, p0

    mul-long/2addr p4, p0

    const-wide/16 p0, 0x64

    .line 11
    div-long/2addr p4, p0

    add-long/2addr p4, p2

    return-wide p4

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public final getPercentsToDropConstraints(I)[I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPercentsToDropConstraints:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, [I

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "No %-to-drop for priority "

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "JobScheduler.Flex"

    .line 30
    .line 31
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/16 p0, 0x46

    .line 35
    .line 36
    const/16 p1, 0x50

    .line 37
    .line 38
    const/16 v0, 0x32

    .line 39
    .line 40
    const/16 v1, 0x3c

    .line 41
    .line 42
    filled-new-array {v0, v1, p0, p1}, [I

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :cond_0
    return-object p0
.end method

.method public getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 0

    .line 1
    iget-boolean p1, p1, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/high16 p1, 0x10000000

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    or-int/lit8 p1, p1, 0x7

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 12
    .line 13
    and-int/2addr p0, p1

    .line 14
    return p0
.end method

.method public getScoreLocked(ILjava/lang/String;J)I
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    .line 14
    .line 15
    cmp-long p2, p3, v0

    .line 16
    .line 17
    if-gez p2, :cond_1

    .line 18
    .line 19
    iget p0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScore:I

    .line 20
    .line 21
    move p1, p0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const-wide/32 v0, 0x5265c00

    .line 24
    .line 25
    .line 26
    sub-long/2addr p3, v0

    .line 27
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    .line 28
    .line 29
    array-length v2, p2

    .line 30
    const-wide v3, 0x7fffffffffffffffL

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    move-wide v4, v3

    .line 36
    move v3, p1

    .line 37
    :goto_0
    if-ge p1, v2, :cond_3

    .line 38
    .line 39
    aget-object v6, p2, p1

    .line 40
    .line 41
    if-eqz v6, :cond_2

    .line 42
    .line 43
    iget-wide v7, v6, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    .line 44
    .line 45
    cmp-long v9, v7, p3

    .line 46
    .line 47
    if-ltz v9, :cond_2

    .line 48
    .line 49
    iget v6, v6, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->score:I

    .line 50
    .line 51
    add-int/2addr v3, v6

    .line 52
    cmp-long v6, v4, v7

    .line 53
    .line 54
    if-lez v6, :cond_2

    .line 55
    .line 56
    move-wide v4, v7

    .line 57
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iput v3, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScore:I

    .line 61
    .line 62
    add-long/2addr v4, v0

    .line 63
    iput-wide v4, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    .line 64
    .line 65
    move p1, v3

    .line 66
    :goto_1
    return p1
.end method

.method public hasEnoughSatisfiedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    iget-boolean v1, p1, Lcom/android/server/job/controllers/JobStatus;->mTransportAffinitiesSatisfied:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/high16 v1, 0x10000000

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    :goto_0
    or-int/lit8 v1, v1, 0x7

    .line 16
    .line 17
    and-int/2addr v0, v1

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v3, 0x1

    .line 27
    if-lt v0, v1, :cond_1

    .line 28
    .line 29
    return v3

    .line 30
    :cond_1
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    iget-wide v6, p0, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    .line 40
    .line 41
    cmp-long v1, v4, v6

    .line 42
    .line 43
    if-gez v1, :cond_2

    .line 44
    .line 45
    return v2

    .line 46
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    not-int p1, p1

    .line 51
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    sub-int/2addr v1, v3

    .line 58
    :goto_1
    if-ltz v1, :cond_6

    .line 59
    .line 60
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 61
    .line 62
    invoke-virtual {v6, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    and-int v7, v6, p1

    .line 67
    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    iget-object v7, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 72
    .line 73
    invoke-virtual {v7, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    sub-long v7, v4, v7

    .line 78
    .line 79
    iget-wide v9, p0, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    .line 80
    .line 81
    cmp-long v7, v7, v9

    .line 82
    .line 83
    if-gtz v7, :cond_4

    .line 84
    .line 85
    move v7, v3

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    move v7, v2

    .line 88
    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-le v6, v0, :cond_5

    .line 93
    .line 94
    if-eqz v7, :cond_5

    .line 95
    .line 96
    return v2

    .line 97
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    return v3
.end method

.method public isConstraintSatisfied(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 6
    .line 7
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x28

    .line 14
    .line 15
    if-eq v0, v1, :cond_5

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 18
    .line 19
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/16 v1, 0x1e

    .line 26
    .line 27
    const/16 v2, 0x12c

    .line 28
    .line 29
    if-lt v0, v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-ge v0, v2, :cond_5

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-lt v0, v2, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 44
    .line 45
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 46
    .line 47
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v3, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v3

    .line 52
    :try_start_0
    iget-object v4, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 53
    .line 54
    const/4 v5, -0x1

    .line 55
    invoke-virtual {v4, v5, v2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    monitor-exit v3

    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    monitor-exit v3

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    monitor-exit v3

    .line 76
    goto :goto_1

    .line 77
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0

    .line 79
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->hasEnoughSatisfiedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_4

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    const/4 p0, 0x0

    .line 95
    goto :goto_3

    .line 96
    :cond_5
    :goto_2
    const/4 p0, 0x1

    .line 97
    :goto_3
    return p0
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    .line 17
    .line 18
    const/high16 v2, 0x200000

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    invoke-virtual {p1, v2, v0, v1, p0}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    iput p2, p1, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 47
    .line 48
    .line 49
    const/16 p2, 0x80

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    .line 55
    .line 56
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    .line 1
    const/16 p2, 0x80

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 15
    .line 16
    iget-object p2, p2, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Landroid/util/ArraySet;

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onAppRemovedLocked(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 11
    .line 12
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 21
    .line 22
    invoke-virtual {v1, v0, p2}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    :goto_0
    if-ltz v0, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 43
    .line 44
    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 45
    .line 46
    if-ne v2, p1, :cond_0

    .line 47
    .line 48
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    :cond_0
    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 57
    .line 58
    if-ne v2, p1, :cond_2

    .line 59
    .line 60
    iget-object v1, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    return-void

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p0
.end method

.method public final onConstantsUpdatedLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2, p0}, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onSystemServicesReady()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mDeviceIdleInternal:Lcom/android/server/DeviceIdleInternal;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 36
    .line 37
    iget-boolean v2, v1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 42
    .line 43
    new-instance v2, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-direct {v2, v3, p0}, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 55
    .line 56
    new-instance v2, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;

    .line 57
    .line 58
    const/4 v3, 0x2

    .line 59
    invoke-direct {v2, v3, p0}, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    :goto_0
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method

.method public final onUidBiasChangedLocked(III)V
    .locals 9

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    if-ge p2, v0, :cond_0

    .line 4
    .line 5
    if-ge p3, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object p3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-object p3, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 18
    .line 19
    iget-object v2, p3, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v3, Landroid/util/ArraySet;

    .line 27
    .line 28
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1, v3}, Lcom/android/server/job/JobStore$JobSet;->getJobsBySourceUid(ILjava/util/Set;)V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    move v4, v2

    .line 36
    move v5, v4

    .line 37
    :goto_0
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-ge v4, v6, :cond_2

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 48
    .line 49
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0, v6}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    const/high16 v8, 0x200000

    .line 60
    .line 61
    invoke-virtual {v6, v8, v0, v1, v7}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 62
    .line 63
    .line 64
    iget-object v6, v6, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 65
    .line 66
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isPrefetch()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    or-int/2addr v5, v6

    .line 71
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    if-eqz v5, :cond_4

    .line 75
    .line 76
    const/16 v3, 0x28

    .line 77
    .line 78
    if-ne p2, v3, :cond_4

    .line 79
    .line 80
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-virtual {p3, p1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-nez p1, :cond_3

    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    if-ge v2, p3, :cond_4

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    check-cast p3, Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    .line 104
    .line 105
    const-wide/16 v4, 0x0

    .line 106
    .line 107
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v3, p2, p3, v4}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Ljava/lang/Long;

    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 118
    .line 119
    .line 120
    move-result-wide v4

    .line 121
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 122
    .line 123
    .line 124
    move-result-wide v4

    .line 125
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v3, p2, p3, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    return-void
.end method

.method public final onUserRemovedLocked(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 14
    .line 15
    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ne v1, p1, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    add-int/lit8 v0, v0, -0x1

    .line 54
    .line 55
    :goto_1
    if-ltz v0, :cond_4

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 64
    .line 65
    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 66
    .line 67
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eq v2, p1, :cond_2

    .line 72
    .line 73
    iget v1, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 74
    .line 75
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-ne v1, p1, :cond_3

    .line 80
    .line 81
    :cond_2
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    return-void

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p0
.end method

.method public final prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 2
    .line 3
    const/16 v1, 0x28

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    sget-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 17
    .line 18
    div-int/lit8 v3, v0, 0x64

    .line 19
    .line 20
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 29
    .line 30
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    new-instance v1, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    .line 43
    .line 44
    invoke-direct {v1}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 48
    .line 49
    invoke-virtual {p0, v2, p1, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_1
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 58
    .line 59
    .line 60
    move-result-wide p0

    .line 61
    invoke-virtual {v1, v0, p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->addScore(IJ)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final prepareForUpdatedConstantsLocked()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 5
    .line 6
    return-void
.end method

.method public final processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, 0x1

    .line 8
    move-object/from16 v5, p0

    .line 9
    .line 10
    iget-object v5, v5, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 11
    .line 12
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/16 v6, 0x64

    .line 16
    .line 17
    const/16 v7, 0xc8

    .line 18
    .line 19
    const/16 v8, 0x12c

    .line 20
    .line 21
    const/16 v9, 0x190

    .line 22
    .line 23
    const/16 v10, 0x1f4

    .line 24
    .line 25
    const/16 v11, 0x2c

    .line 26
    .line 27
    const-wide/32 v12, 0x5265c00

    .line 28
    .line 29
    .line 30
    const/4 v14, 0x0

    .line 31
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v15

    .line 35
    sparse-switch v15, :sswitch_data_0

    .line 36
    .line 37
    .line 38
    :goto_0
    move v15, v3

    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :sswitch_0
    const-string/jumbo v15, "fc_fallback_flexibility_deadline_ms"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v15

    .line 48
    if-nez v15, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/16 v15, 0xa

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :sswitch_1
    const-string/jumbo v15, "fc_applied_constraints"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v15

    .line 62
    if-nez v15, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/16 v15, 0x9

    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :sswitch_2
    const-string/jumbo v15, "fc_fallback_flexibility_deadline_additional_score_time_factors"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v15

    .line 76
    if-nez v15, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const/16 v15, 0x8

    .line 80
    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :sswitch_3
    const-string/jumbo v15, "fc_unseen_constraint_grace_period_ms"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v15

    .line 90
    if-nez v15, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const/4 v15, 0x7

    .line 94
    goto :goto_1

    .line 95
    :sswitch_4
    const-string/jumbo v15, "fc_percents_to_drop_flexible_constraints"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    if-nez v15, :cond_4

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    const/4 v15, 0x6

    .line 106
    goto :goto_1

    .line 107
    :sswitch_5
    const-string/jumbo v15, "fc_flexibility_deadline_proximity_limit_ms"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v15

    .line 114
    if-nez v15, :cond_5

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    const/4 v15, 0x5

    .line 118
    goto :goto_1

    .line 119
    :sswitch_6
    const-string/jumbo v15, "fc_fallback_flexibility_deadlines"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    if-nez v15, :cond_6

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    const/4 v15, 0x4

    .line 130
    goto :goto_1

    .line 131
    :sswitch_7
    const-string/jumbo v15, "fc_rescheduled_job_deadline_ms"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v15

    .line 138
    if-nez v15, :cond_7

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_7
    const/4 v15, 0x3

    .line 142
    goto :goto_1

    .line 143
    :sswitch_8
    const-string/jumbo v15, "fc_fallback_flexibility_deadline_scores"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v15

    .line 150
    if-nez v15, :cond_8

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_8
    const/4 v15, 0x2

    .line 154
    goto :goto_1

    .line 155
    :sswitch_9
    const-string/jumbo v15, "fc_max_rescheduled_deadline_ms"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v15

    .line 162
    if-nez v15, :cond_9

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_9
    move v15, v4

    .line 166
    goto :goto_1

    .line 167
    :sswitch_a
    const-string/jumbo v15, "fc_min_time_between_flexibility_alarms_ms"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v15

    .line 174
    if-nez v15, :cond_a

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_a
    move v15, v2

    .line 179
    :goto_1
    packed-switch v15, :pswitch_data_0

    .line 180
    .line 181
    .line 182
    goto/16 :goto_7

    .line 183
    .line 184
    :pswitch_0
    invoke-virtual {v0, v1, v12, v13}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 185
    .line 186
    .line 187
    move-result-wide v0

    .line 188
    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_MS:J

    .line 189
    .line 190
    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 191
    .line 192
    iget-wide v3, v2, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineMs:J

    .line 193
    .line 194
    cmp-long v3, v3, v0

    .line 195
    .line 196
    if-eqz v3, :cond_14

    .line 197
    .line 198
    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineMs:J

    .line 199
    .line 200
    goto/16 :goto_7

    .line 201
    .line 202
    :pswitch_1
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 207
    .line 208
    iget v6, v1, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    .line 209
    .line 210
    and-int/2addr v0, v6

    .line 211
    iput v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    .line 212
    .line 213
    iget v6, v1, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 214
    .line 215
    if-eq v6, v0, :cond_14

    .line 216
    .line 217
    iput v0, v1, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 218
    .line 219
    iput-boolean v4, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 220
    .line 221
    if-eqz v0, :cond_b

    .line 222
    .line 223
    iput-boolean v4, v1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 224
    .line 225
    iget-object v0, v1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 226
    .line 227
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    .line 228
    .line 229
    iget-object v6, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 230
    .line 231
    monitor-enter v6

    .line 232
    :try_start_0
    iget-object v0, v0, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 239
    .line 240
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 241
    .line 242
    invoke-static {v0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$mstartTracking(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_7

    .line 246
    .line 247
    :catchall_0
    move-exception v0

    .line 248
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    throw v0

    .line 250
    :cond_b
    iput-boolean v2, v1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 251
    .line 252
    iget-object v0, v1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 253
    .line 254
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    .line 255
    .line 256
    iget-object v2, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 257
    .line 258
    monitor-enter v2

    .line 259
    :try_start_2
    iget-object v0, v0, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 265
    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 266
    .line 267
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 268
    .line 269
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 270
    .line 271
    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 272
    .line 273
    iget-object v2, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mBroadcastReceiver:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;

    .line 274
    .line 275
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 276
    .line 277
    .line 278
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 279
    .line 280
    monitor-enter v1

    .line 281
    :try_start_3
    iget-object v2, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 282
    .line 283
    invoke-virtual {v2}, Landroid/util/SparseSetArray;->clear()V

    .line 284
    .line 285
    .line 286
    iget-object v2, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    .line 287
    .line 288
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 289
    .line 290
    .line 291
    iget-object v2, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 292
    .line 293
    invoke-virtual {v2}, Landroid/util/SparseSetArray;->clear()V

    .line 294
    .line 295
    .line 296
    iget-object v2, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    .line 297
    .line 298
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    sub-int/2addr v2, v4

    .line 303
    :goto_2
    if-ltz v2, :cond_c

    .line 304
    .line 305
    iget-object v4, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 306
    .line 307
    iget-object v5, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    .line 308
    .line 309
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    check-cast v5, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    .line 314
    .line 315
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 316
    .line 317
    .line 318
    add-int/2addr v2, v3

    .line 319
    goto :goto_2

    .line 320
    :catchall_1
    move-exception v0

    .line 321
    goto :goto_3

    .line 322
    :cond_c
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    .line 323
    .line 324
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 325
    .line 326
    .line 327
    monitor-exit v1

    .line 328
    goto/16 :goto_7

    .line 329
    .line 330
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 331
    throw v0

    .line 332
    :catchall_2
    move-exception v0

    .line 333
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 334
    throw v0

    .line 335
    :pswitch_2
    invoke-virtual {v0, v1, v14}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 340
    .line 341
    sget-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 342
    .line 343
    invoke-static {v0, v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePriorityToLongKeyValueString(Ljava/lang/String;Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_14

    .line 348
    .line 349
    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 350
    .line 351
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 352
    .line 353
    iput-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityAdditionalScoreTimeFactors:Landroid/util/SparseLongArray;

    .line 354
    .line 355
    iput-boolean v4, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 356
    .line 357
    goto/16 :goto_7

    .line 358
    .line 359
    :pswitch_3
    const-wide/32 v2, 0xf731400

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 363
    .line 364
    .line 365
    move-result-wide v0

    .line 366
    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J

    .line 367
    .line 368
    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 369
    .line 370
    iget-wide v6, v2, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    .line 371
    .line 372
    cmp-long v3, v6, v0

    .line 373
    .line 374
    if-eqz v3, :cond_14

    .line 375
    .line 376
    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    .line 377
    .line 378
    iput-boolean v4, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 379
    .line 380
    goto/16 :goto_7

    .line 381
    .line 382
    :pswitch_4
    invoke-virtual {v0, v1, v14}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    .line 387
    .line 388
    sget-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    .line 389
    .line 390
    new-instance v3, Landroid/util/KeyValueListParser;

    .line 391
    .line 392
    invoke-direct {v3, v11}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 393
    .line 394
    .line 395
    :try_start_5
    invoke-virtual {v3, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    .line 396
    .line 397
    .line 398
    goto :goto_4

    .line 399
    :catch_0
    move-exception v0

    .line 400
    move-object v11, v0

    .line 401
    const-string v0, "JobScheduler.Flex"

    .line 402
    .line 403
    const-string v12, "Bad percent to drop key value string given"

    .line 404
    .line 405
    invoke-static {v0, v12, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3, v14}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    :goto_4
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    check-cast v0, [I

    .line 416
    .line 417
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v11

    .line 421
    check-cast v11, [I

    .line 422
    .line 423
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v12

    .line 427
    check-cast v12, [I

    .line 428
    .line 429
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v13

    .line 433
    check-cast v13, [I

    .line 434
    .line 435
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v15

    .line 439
    check-cast v15, [I

    .line 440
    .line 441
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    invoke-virtual {v3, v4, v14}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    invoke-static {v4}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v10

    .line 457
    invoke-virtual {v3, v10, v14}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v10

    .line 461
    invoke-static {v10}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    .line 462
    .line 463
    .line 464
    move-result-object v10

    .line 465
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v9

    .line 469
    invoke-virtual {v3, v9, v14}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v9

    .line 473
    invoke-static {v9}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    .line 474
    .line 475
    .line 476
    move-result-object v9

    .line 477
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v8

    .line 481
    invoke-virtual {v3, v8, v14}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v8

    .line 485
    invoke-static {v8}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    .line 486
    .line 487
    .line 488
    move-result-object v8

    .line 489
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v7

    .line 493
    invoke-virtual {v3, v7, v14}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    invoke-static {v3}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    const/16 v7, 0x1f4

    .line 502
    .line 503
    if-nez v4, :cond_d

    .line 504
    .line 505
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    check-cast v4, [I

    .line 510
    .line 511
    :cond_d
    invoke-virtual {v1, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 512
    .line 513
    .line 514
    const/16 v4, 0x190

    .line 515
    .line 516
    if-nez v10, :cond_e

    .line 517
    .line 518
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v7

    .line 522
    move-object v10, v7

    .line 523
    check-cast v10, [I

    .line 524
    .line 525
    :cond_e
    invoke-virtual {v1, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    const/16 v4, 0x12c

    .line 529
    .line 530
    if-nez v9, :cond_f

    .line 531
    .line 532
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v7

    .line 536
    move-object v9, v7

    .line 537
    check-cast v9, [I

    .line 538
    .line 539
    :cond_f
    invoke-virtual {v1, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 540
    .line 541
    .line 542
    const/16 v4, 0xc8

    .line 543
    .line 544
    if-nez v8, :cond_10

    .line 545
    .line 546
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v7

    .line 550
    move-object v8, v7

    .line 551
    check-cast v8, [I

    .line 552
    .line 553
    :cond_10
    invoke-virtual {v1, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    if-nez v3, :cond_11

    .line 557
    .line 558
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    move-object v3, v2

    .line 563
    check-cast v3, [I

    .line 564
    .line 565
    :cond_11
    invoke-virtual {v1, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    const/16 v2, 0x1f4

    .line 569
    .line 570
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    check-cast v2, [I

    .line 575
    .line 576
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 577
    .line 578
    .line 579
    move-result v0

    .line 580
    if-eqz v0, :cond_12

    .line 581
    .line 582
    const/16 v2, 0x190

    .line 583
    .line 584
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    check-cast v0, [I

    .line 589
    .line 590
    invoke-static {v11, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    if-eqz v0, :cond_12

    .line 595
    .line 596
    const/16 v2, 0x12c

    .line 597
    .line 598
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    check-cast v0, [I

    .line 603
    .line 604
    invoke-static {v12, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    if-eqz v0, :cond_12

    .line 609
    .line 610
    const/16 v2, 0xc8

    .line 611
    .line 612
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    check-cast v0, [I

    .line 617
    .line 618
    invoke-static {v13, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    if-eqz v0, :cond_12

    .line 623
    .line 624
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    check-cast v0, [I

    .line 629
    .line 630
    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    if-nez v0, :cond_14

    .line 635
    .line 636
    :cond_12
    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 637
    .line 638
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    .line 639
    .line 640
    iput-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController;->mPercentsToDropConstraints:Landroid/util/SparseArray;

    .line 641
    .line 642
    const/4 v1, 0x1

    .line 643
    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 644
    .line 645
    goto/16 :goto_7

    .line 646
    .line 647
    :pswitch_5
    const-wide/32 v2, 0xdbba0

    .line 648
    .line 649
    .line 650
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 651
    .line 652
    .line 653
    move-result-wide v0

    .line 654
    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEADLINE_PROXIMITY_LIMIT_MS:J

    .line 655
    .line 656
    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 657
    .line 658
    iget-wide v3, v2, Lcom/android/server/job/controllers/FlexibilityController;->mDeadlineProximityLimitMs:J

    .line 659
    .line 660
    cmp-long v3, v3, v0

    .line 661
    .line 662
    if-eqz v3, :cond_14

    .line 663
    .line 664
    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mDeadlineProximityLimitMs:J

    .line 665
    .line 666
    const/4 v1, 0x1

    .line 667
    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 668
    .line 669
    goto/16 :goto_7

    .line 670
    .line 671
    :pswitch_6
    invoke-virtual {v0, v1, v14}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 676
    .line 677
    sget-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 678
    .line 679
    invoke-static {v0, v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePriorityToLongKeyValueString(Ljava/lang/String;Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)Z

    .line 680
    .line 681
    .line 682
    move-result v0

    .line 683
    if-eqz v0, :cond_14

    .line 684
    .line 685
    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 686
    .line 687
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 688
    .line 689
    iput-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlines:Landroid/util/SparseLongArray;

    .line 690
    .line 691
    const/4 v1, 0x1

    .line 692
    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 693
    .line 694
    goto/16 :goto_7

    .line 695
    .line 696
    :pswitch_7
    const-wide/32 v2, 0x36ee80

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 700
    .line 701
    .line 702
    move-result-wide v0

    .line 703
    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->RESCHEDULED_JOB_DEADLINE_MS:J

    .line 704
    .line 705
    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 706
    .line 707
    iget-wide v3, v2, Lcom/android/server/job/controllers/FlexibilityController;->mRescheduledJobDeadline:J

    .line 708
    .line 709
    cmp-long v3, v3, v0

    .line 710
    .line 711
    if-eqz v3, :cond_14

    .line 712
    .line 713
    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mRescheduledJobDeadline:J

    .line 714
    .line 715
    const/4 v1, 0x1

    .line 716
    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 717
    .line 718
    goto/16 :goto_7

    .line 719
    .line 720
    :pswitch_8
    invoke-virtual {v0, v1, v14}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 725
    .line 726
    sget-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 727
    .line 728
    new-instance v3, Landroid/util/KeyValueListParser;

    .line 729
    .line 730
    invoke-direct {v3, v11}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 731
    .line 732
    .line 733
    :try_start_6
    invoke-virtual {v3, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    .line 734
    .line 735
    .line 736
    :goto_5
    const/16 v4, 0x1f4

    .line 737
    .line 738
    goto :goto_6

    .line 739
    :catch_1
    move-exception v0

    .line 740
    move-object v4, v0

    .line 741
    const-string v0, "JobScheduler.Flex"

    .line 742
    .line 743
    const-string v7, "Bad string given"

    .line 744
    .line 745
    invoke-static {v0, v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    .line 747
    .line 748
    invoke-virtual {v3, v14}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    goto :goto_5

    .line 752
    :goto_6
    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 753
    .line 754
    .line 755
    move-result v0

    .line 756
    const/16 v7, 0x190

    .line 757
    .line 758
    invoke-virtual {v1, v7}, Landroid/util/SparseIntArray;->get(I)I

    .line 759
    .line 760
    .line 761
    move-result v8

    .line 762
    const/16 v9, 0x12c

    .line 763
    .line 764
    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->get(I)I

    .line 765
    .line 766
    .line 767
    move-result v10

    .line 768
    const/16 v11, 0xc8

    .line 769
    .line 770
    invoke-virtual {v1, v11}, Landroid/util/SparseIntArray;->get(I)I

    .line 771
    .line 772
    .line 773
    move-result v12

    .line 774
    invoke-virtual {v1, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 775
    .line 776
    .line 777
    move-result v13

    .line 778
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v14

    .line 782
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 783
    .line 784
    .line 785
    move-result v15

    .line 786
    invoke-virtual {v3, v14, v15}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 787
    .line 788
    .line 789
    move-result v4

    .line 790
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v14

    .line 794
    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    .line 795
    .line 796
    .line 797
    move-result v15

    .line 798
    invoke-virtual {v3, v14, v15}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 799
    .line 800
    .line 801
    move-result v7

    .line 802
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v14

    .line 806
    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    .line 807
    .line 808
    .line 809
    move-result v15

    .line 810
    invoke-virtual {v3, v14, v15}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 811
    .line 812
    .line 813
    move-result v14

    .line 814
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v15

    .line 818
    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->get(I)I

    .line 819
    .line 820
    .line 821
    move-result v9

    .line 822
    invoke-virtual {v3, v15, v9}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 823
    .line 824
    .line 825
    move-result v9

    .line 826
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v15

    .line 830
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 831
    .line 832
    .line 833
    move-result v2

    .line 834
    invoke-virtual {v3, v15, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 835
    .line 836
    .line 837
    move-result v2

    .line 838
    const/16 v3, 0x1f4

    .line 839
    .line 840
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 841
    .line 842
    .line 843
    const/16 v3, 0x190

    .line 844
    .line 845
    invoke-virtual {v1, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 846
    .line 847
    .line 848
    const/16 v3, 0x12c

    .line 849
    .line 850
    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v1, v11, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v1, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 857
    .line 858
    .line 859
    if-ne v0, v4, :cond_13

    .line 860
    .line 861
    if-ne v8, v7, :cond_13

    .line 862
    .line 863
    if-ne v10, v14, :cond_13

    .line 864
    .line 865
    if-ne v12, v9, :cond_13

    .line 866
    .line 867
    if-eq v13, v2, :cond_14

    .line 868
    .line 869
    :cond_13
    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 870
    .line 871
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 872
    .line 873
    iput-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

    .line 874
    .line 875
    const/4 v1, 0x1

    .line 876
    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 877
    .line 878
    goto :goto_7

    .line 879
    :pswitch_9
    invoke-virtual {v0, v1, v12, v13}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 880
    .line 881
    .line 882
    move-result-wide v0

    .line 883
    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MAX_RESCHEDULED_DEADLINE_MS:J

    .line 884
    .line 885
    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 886
    .line 887
    iget-wide v3, v2, Lcom/android/server/job/controllers/FlexibilityController;->mMaxRescheduledDeadline:J

    .line 888
    .line 889
    cmp-long v3, v3, v0

    .line 890
    .line 891
    if-eqz v3, :cond_14

    .line 892
    .line 893
    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mMaxRescheduledDeadline:J

    .line 894
    .line 895
    const/4 v1, 0x1

    .line 896
    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 897
    .line 898
    goto :goto_7

    .line 899
    :pswitch_a
    const-wide/32 v2, 0xea60

    .line 900
    .line 901
    .line 902
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 903
    .line 904
    .line 905
    move-result-wide v0

    .line 906
    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    .line 907
    .line 908
    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 909
    .line 910
    iget-wide v3, v2, Lcom/android/server/job/controllers/FlexibilityController;->mMinTimeBetweenFlexibilityAlarmsMs:J

    .line 911
    .line 912
    cmp-long v3, v3, v0

    .line 913
    .line 914
    if-eqz v3, :cond_14

    .line 915
    .line 916
    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mMinTimeBetweenFlexibilityAlarmsMs:J

    .line 917
    .line 918
    iget-object v2, v2, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    .line 919
    .line 920
    invoke-virtual {v2, v0, v1}, Lcom/android/server/utils/AlarmQueue;->setMinTimeBetweenAlarmsMs(J)V

    .line 921
    .line 922
    .line 923
    const/4 v1, 0x1

    .line 924
    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 925
    .line 926
    :cond_14
    :goto_7
    return-void

    .line 927
    :sswitch_data_0
    .sparse-switch
        -0x777ea8fd -> :sswitch_a
        -0x5dcd0a55 -> :sswitch_9
        -0x2f1814d9 -> :sswitch_8
        -0x2035877c -> :sswitch_7
        0x5fa939a -> :sswitch_6
        0x22a4f609 -> :sswitch_5
        0x274d921d -> :sswitch_4
        0x2c861644 -> :sswitch_3
        0x6c3c0f71 -> :sswitch_2
        0x6c903af2 -> :sswitch_1
        0x71a3d7ac -> :sswitch_0
    .end sparse-switch

    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setConstraintSatisfied(IJZ)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setConstraintSatisfied:  constraint: "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 8
    .line 9
    and-int/2addr v2, p1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v3

    .line 16
    :goto_0
    if-ne v2, p4, :cond_1

    .line 17
    .line 18
    monitor-exit v1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    sget-boolean v2, Lcom/android/server/job/controllers/FlexibilityController;->DEBUG:Z

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    const-string v2, "JobScheduler.Flex"

    .line 27
    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " state: "

    .line 37
    .line 38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 52
    .line 53
    iget v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 54
    .line 55
    invoke-virtual {v0, v2, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 56
    .line 57
    .line 58
    if-nez p4, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 61
    .line 62
    invoke-virtual {v0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 66
    .line 67
    not-int p3, p1

    .line 68
    and-int/2addr p2, p3

    .line 69
    if-eqz p4, :cond_4

    .line 70
    .line 71
    move p3, p1

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move p3, v3

    .line 74
    :goto_1
    or-int/2addr p2, p3

    .line 75
    iput p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 76
    .line 77
    const/high16 p2, 0x10000000

    .line 78
    .line 79
    and-int/2addr p1, p2

    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 84
    :cond_5
    iget-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 89
    .line 90
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 95
    .line 96
    .line 97
    :cond_6
    monitor-exit v1

    .line 98
    return-void

    .line 99
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw p0
.end method

.method public final setLocalPolicyForTesting(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLocalOverride:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v1, p2, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 10
    .line 11
    if-eq v1, p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_3

    .line 18
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 19
    :goto_1
    iput-boolean p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLocalOverride:Z

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 27
    .line 28
    iget p1, p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    .line 29
    .line 30
    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 31
    .line 32
    :goto_2
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 41
    .line 42
    .line 43
    :cond_3
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final startTrackingLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0

    .line 22
    :cond_0
    :goto_0
    return-void
.end method

.method public final unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 2
    .line 3
    const/16 v1, 0x28

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 9
    .line 10
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 11
    .line 12
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const-string p0, "JobScheduler.Flex"

    .line 23
    .line 24
    const-string p1, "Unprepared a job that didn\'t result in a score change"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getPriority()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

    .line 37
    .line 38
    sget-object v1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 39
    .line 40
    div-int/lit8 v2, p1, 0x64

    .line 41
    .line 42
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    neg-int p0, p0

    .line 51
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->addScore(IJ)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
