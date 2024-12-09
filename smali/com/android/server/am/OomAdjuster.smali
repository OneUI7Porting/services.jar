.class public Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final VENDING_PKG:Ljava/lang/String;

.field public final mActiveUids:Lcom/android/server/am/ActiveUids;

.field public mAdjSeq:I

.field public mCFMS:Landroid/os/ICustomFrequencyManager;

.field public final mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

.field public final mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

.field public final mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public final mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public final mFollowUpUpdateSet:Landroid/util/ArraySet;

.field public final mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

.field public final mHeimdallAlwaysRunningMonitor:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

.field public final mInjector:Lcom/android/server/am/OomAdjuster$Injector;

.field public mLastFreeSwapPercent:D

.field public mLastReason:I

.field public final mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

.field public mNewNumAServiceProcs:I

.field public mNewNumServiceProcs:I

.field public mNextFollowUpUpdateUptimeMs:J

.field public mNextNoKillDebugMessageTime:J

.field public mNumCachedHiddenProcs:I

.field public mNumCachedProcessCount:I

.field public mNumCachedSlotCount:I

.field public mNumEmptyProcessCount:I

.field public mNumEmptySlotCount:I

.field public mNumNonCachedProcs:I

.field public mNumServiceProcs:I

.field public final mNumSlots:I

.field public mOomAdjUpdateOngoing:Z

.field public mPendingFullOomAdjUpdate:Z

.field public final mPendingProcessSet:Landroid/util/ArraySet;

.field public final mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcessGroupHandler:Landroid/os/Handler;

.field public final mProcessList:Lcom/android/server/am/ProcessList;

.field public mProcessStateCurTop:I

.field public final mProcessesInCycle:Landroid/util/ArraySet;

.field public final mProcsToOomAdj:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTmpBecameIdle:Ljava/util/ArrayList;

.field public final mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

.field public final mTmpProcessList:Ljava/util/ArrayList;

.field public final mTmpProcessSet:Landroid/util/ArraySet;

.field public final mTmpQueue:Ljava/util/ArrayDeque;

.field public final mTmpSchedGroup:[I

.field public final mTmpUidRecords:Lcom/android/server/am/ActiveUids;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/am/OomAdjuster$Injector;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/am/OomAdjuster$Injector;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mCFMS:Landroid/os/ICustomFrequencyManager;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 14
    .line 15
    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 16
    .line 17
    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 18
    .line 19
    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 20
    .line 21
    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 22
    .line 23
    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    new-array v4, v3, [I

    .line 27
    .line 28
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 31
    .line 32
    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedProcessCount:I

    .line 33
    .line 34
    new-instance v4, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v4, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v4, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance v4, Landroid/util/ArraySet;

    .line 54
    .line 55
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    .line 59
    .line 60
    new-instance v4, Landroid/util/ArraySet;

    .line 61
    .line 62
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 66
    .line 67
    new-instance v4, Landroid/util/ArraySet;

    .line 68
    .line 69
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 73
    .line 74
    new-instance v4, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    .line 80
    .line 81
    iput-boolean v2, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 82
    .line 83
    iput-boolean v2, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 84
    .line 85
    const/4 v4, 0x2

    .line 86
    iput v4, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 87
    .line 88
    new-instance v4, Landroid/util/ArraySet;

    .line 89
    .line 90
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    .line 94
    .line 95
    const-wide v4, 0x7fffffffffffffffL

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    iput-wide v4, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    .line 101
    .line 102
    const-string/jumbo v4, "com.android.vending"

    .line 103
    .line 104
    .line 105
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->VENDING_PKG:Ljava/lang/String;

    .line 106
    .line 107
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 108
    .line 109
    iput-wide v4, p0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    .line 110
    .line 111
    new-instance v4, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    .line 112
    .line 113
    invoke-direct {v4, p0}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    .line 114
    .line 115
    .line 116
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    .line 117
    .line 118
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 121
    .line 122
    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 123
    .line 124
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 125
    .line 126
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 127
    .line 128
    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 129
    .line 130
    iget-object p3, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 131
    .line 132
    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 133
    .line 134
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer;

    .line 135
    .line 136
    new-instance v4, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;

    .line 137
    .line 138
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-direct {v0, p1, v1, v4}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;)V

    .line 142
    .line 143
    .line 144
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 145
    .line 146
    new-instance v0, Lcom/android/server/am/CacheOomRanker;

    .line 147
    .line 148
    new-instance v1, Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-direct {v0, p1, v1}, Lcom/android/server/am/CacheOomRanker;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CacheOomRanker$ProcessDependencies;)V

    .line 154
    .line 155
    .line 156
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    .line 157
    .line 158
    new-instance v0, Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 159
    .line 160
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 161
    .line 162
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjusterDebugLogger;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ActivityManagerConstants;)V

    .line 163
    .line 164
    .line 165
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 166
    .line 167
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getInstance()Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 172
    .line 173
    sget-object v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 174
    .line 175
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mHeimdallAlwaysRunningMonitor:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 176
    .line 177
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 182
    .line 183
    new-instance v0, Landroid/os/Handler;

    .line 184
    .line 185
    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 186
    .line 187
    .line 188
    move-result-object p4

    .line 189
    new-instance v1, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;

    .line 190
    .line 191
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-direct {v0, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 195
    .line 196
    .line 197
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 198
    .line 199
    new-instance p4, Lcom/android/server/am/ActiveUids;

    .line 200
    .line 201
    invoke-direct {p4, p1, v2}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    .line 202
    .line 203
    .line 204
    iput-object p4, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 205
    .line 206
    new-instance p4, Ljava/util/ArrayDeque;

    .line 207
    .line 208
    iget v0, p3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 209
    .line 210
    shl-int/2addr v0, v3

    .line 211
    invoke-direct {p4, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 212
    .line 213
    .line 214
    iput-object p4, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 215
    .line 216
    const/16 p4, 0xa

    .line 217
    .line 218
    iput p4, p0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    .line 219
    .line 220
    sget-boolean p4, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    .line 221
    .line 222
    sget-object p4, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    .line 223
    .line 224
    iput-object p4, p0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 225
    .line 226
    invoke-virtual {p4, p1, p2, p3}, Lcom/android/server/am/DynamicHiddenApp;->initDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActivityManagerConstants;)V

    .line 227
    .line 228
    .line 229
    return-void
.end method

.method public static evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 8
    .line 9
    if-nez p0, :cond_2

    .line 10
    .line 11
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 12
    .line 13
    if-nez p0, :cond_2

    .line 14
    .line 15
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 16
    .line 17
    if-nez p0, :cond_2

    .line 18
    .line 19
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_2
    :goto_0
    return v0
.end method

.method public static getDefaultCapability(ILcom/android/server/am/ProcessRecord;)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->getDefaultProcessNetworkCapabilities(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq p0, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq p0, v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq p0, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eq p0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 22
    .line 23
    if-eqz p0, :cond_3

    .line 24
    .line 25
    const/4 v2, 0x6

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 v2, 0x10

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/16 v2, 0x7f

    .line 31
    .line 32
    :cond_3
    :goto_0
    or-int p0, v2, v0

    .line 33
    .line 34
    return p0
.end method

.method public static final oomAdjReasonToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "_unknown"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string/jumbo p0, "updateOomAdj_fgsfilter"

    .line 8
    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_1
    const-string/jumbo p0, "updateOomAdj_slowdown"

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    const-string/jumbo p0, "updateOomAdj_followUp"

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_3
    const-string/jumbo p0, "updateOomAdj_componentDisabled"

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_4
    const-string/jumbo p0, "updateOomAdj_restrictionChange"

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_5
    const-string/jumbo p0, "updateOomAdj_executingService"

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_6
    const-string/jumbo p0, "updateOomAdj_stopService"

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_7
    const-string/jumbo p0, "updateOomAdj_uidIdle"

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_8
    const-string/jumbo p0, "updateOomAdj_removeTask"

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_9
    const-string/jumbo p0, "updateOomAdj_shell"

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_a
    const-string/jumbo p0, "updateOomAdj_backup"

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_b
    const-string/jumbo p0, "updateOomAdj_systemInit"

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_c
    const-string/jumbo p0, "updateOomAdj_shortFgs"

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_d
    const-string/jumbo p0, "updateOomAdj_processEnd"

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_e
    const-string/jumbo p0, "updateOomAdj_processBegin"

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_f
    const-string/jumbo p0, "updateOomAdj_allowlistChange"

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_10
    const-string/jumbo p0, "updateOomAdj_uiVisibility"

    .line 72
    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_11
    const-string/jumbo p0, "updateOomAdj_removeProvider"

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_12
    const-string/jumbo p0, "updateOomAdj_getProvider"

    .line 80
    .line 81
    .line 82
    return-object p0

    .line 83
    :pswitch_13
    const-string/jumbo p0, "updateOomAdj_startService"

    .line 84
    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_14
    const-string/jumbo p0, "updateOomAdj_unbindService"

    .line 88
    .line 89
    .line 90
    return-object p0

    .line 91
    :pswitch_15
    const-string/jumbo p0, "updateOomAdj_bindService"

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_16
    const-string/jumbo p0, "updateOomAdj_startReceiver"

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :pswitch_17
    const-string/jumbo p0, "updateOomAdj_finishReceiver"

    .line 100
    .line 101
    .line 102
    return-object p0

    .line 103
    :pswitch_18
    const-string/jumbo p0, "updateOomAdj_activityChange"

    .line 104
    .line 105
    .line 106
    return-object p0

    .line 107
    :pswitch_19
    const-string/jumbo p0, "updateOomAdj_meh"

    .line 108
    .line 109
    .line 110
    return-object p0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public static promoteSchedGroupIfNecessary(IILcom/android/server/am/ProcessStateRecord;)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p0, v0, :cond_2

    .line 3
    .line 4
    iget-object p0, p2, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 5
    .line 6
    const-string/jumbo v0, "fg-service-act"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    iget-object p0, p2, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 16
    .line 17
    const-string/jumbo v0, "vis-activity"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    iget-object p0, p2, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 29
    .line 30
    const-string/jumbo v0, "service"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    :cond_0
    const/4 p0, 0x3

    .line 40
    if-ne p1, p0, :cond_2

    .line 41
    .line 42
    iget-object p0, p2, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 43
    .line 44
    const-string/jumbo p1, "provider"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    :cond_1
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_2
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public static setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    iget p1, v0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 14
    .line 15
    if-le p0, p1, :cond_1

    .line 16
    .line 17
    const/16 p0, 0xfa

    .line 18
    .line 19
    if-gt p1, p0, :cond_0

    .line 20
    .line 21
    const/4 p2, 0x2

    .line 22
    :cond_0
    move p0, p1

    .line 23
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 24
    .line 25
    .line 26
    return p2
.end method

.method public static updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iput-boolean v2, v0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    .line 14
    .line 15
    iget v2, v0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 16
    .line 17
    iget v3, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 18
    .line 19
    if-le v2, v3, :cond_0

    .line 20
    .line 21
    iput v3, v0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 24
    .line 25
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    iput-boolean p0, v0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 31
    .line 32
    :cond_1
    iget p0, v0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 33
    .line 34
    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 35
    .line 36
    or-int/2addr p0, v1

    .line 37
    iput p0, v0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 38
    .line 39
    :cond_2
    return-void
.end method


# virtual methods
.method public final applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJIZ)Z
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-wide/from16 v10, p3

    .line 6
    .line 7
    move-wide/from16 v12, p5

    .line 8
    .line 9
    const-string v2, "SLOWDOWN::OOM Request PID = "

    .line 10
    .line 11
    iget-object v14, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 12
    .line 13
    iget-object v15, v9, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    .line 14
    .line 15
    iget v0, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 16
    .line 17
    iget v3, v14, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    .line 18
    .line 19
    if-eq v0, v3, :cond_0

    .line 20
    .line 21
    iput v0, v14, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    .line 22
    .line 23
    :cond_0
    iget v0, v14, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 24
    .line 25
    iget v3, v14, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 26
    .line 27
    const/16 v4, 0x352

    .line 28
    .line 29
    if-eq v0, v3, :cond_1

    .line 30
    .line 31
    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 32
    .line 33
    invoke-virtual {v5}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    if-ge v0, v3, :cond_1

    .line 40
    .line 41
    if-ge v0, v4, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;->OOM_IMPROVEMENT:Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    .line 44
    .line 45
    invoke-virtual {v5, v9, v0}, Lcom/android/server/am/CachedAppOptimizer;->cancelCompactionForProcess(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 49
    .line 50
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 51
    .line 52
    const/16 v16, 0x7

    .line 53
    .line 54
    const/16 v17, 0x8

    .line 55
    .line 56
    if-eqz v0, :cond_18

    .line 57
    .line 58
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 59
    .line 60
    if-eqz v6, :cond_18

    .line 61
    .line 62
    iget v0, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 63
    .line 64
    iget v4, v9, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 65
    .line 66
    iget-object v7, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 67
    .line 68
    iget v3, v14, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 69
    .line 70
    iget v8, v14, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 71
    .line 72
    iget v5, v14, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 73
    .line 74
    iget v12, v14, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 75
    .line 76
    iget-object v13, v9, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 77
    .line 78
    iget-boolean v13, v13, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 79
    .line 80
    move-object/from16 v20, v2

    .line 81
    .line 82
    iget-boolean v2, v6, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 83
    .line 84
    if-nez v2, :cond_2

    .line 85
    .line 86
    goto/16 :goto_9

    .line 87
    .line 88
    :cond_2
    if-nez v13, :cond_12

    .line 89
    .line 90
    const-string v2, "PerProcessNandswap"

    .line 91
    .line 92
    move-object/from16 v21, v15

    .line 93
    .line 94
    const-string/jumbo v15, "nandswap "

    .line 95
    .line 96
    .line 97
    move-object/from16 v22, v14

    .line 98
    .line 99
    :try_start_0
    const-string/jumbo v14, "com.google.android.providers.media.module"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v14

    .line 106
    if-eqz v14, :cond_3

    .line 107
    .line 108
    goto/16 :goto_4

    .line 109
    .line 110
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isPageoutCachedEmptyEnable()Z

    .line 111
    .line 112
    .line 113
    move-result v14

    .line 114
    if-eqz v14, :cond_4

    .line 115
    .line 116
    const/16 v14, 0x10

    .line 117
    .line 118
    if-lt v12, v14, :cond_4

    .line 119
    .line 120
    const/16 v14, 0x13

    .line 121
    .line 122
    if-gt v12, v14, :cond_4

    .line 123
    .line 124
    const/16 v14, 0x384

    .line 125
    .line 126
    if-lt v8, v14, :cond_4

    .line 127
    .line 128
    const/16 v14, 0x3e7

    .line 129
    .line 130
    if-gt v8, v14, :cond_4

    .line 131
    .line 132
    const/16 v9, 0xe

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_4
    sget-object v14, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 136
    .line 137
    const-string/jumbo v14, "ro.slmk.chimera_quota_enable"

    .line 138
    .line 139
    .line 140
    const/4 v9, 0x0

    .line 141
    invoke-static {v14, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 142
    .line 143
    .line 144
    move-result v14

    .line 145
    if-nez v14, :cond_5

    .line 146
    .line 147
    const/16 v9, 0xfa

    .line 148
    .line 149
    if-lt v8, v9, :cond_5

    .line 150
    .line 151
    const/4 v9, 0x5

    .line 152
    if-ne v12, v9, :cond_5

    .line 153
    .line 154
    move/from16 v9, v17

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_5
    const/16 v9, -0x320

    .line 158
    .line 159
    if-eq v8, v9, :cond_c

    .line 160
    .line 161
    const/16 v9, -0x2bc

    .line 162
    .line 163
    if-eq v8, v9, :cond_c

    .line 164
    .line 165
    const/16 v9, 0x64

    .line 166
    .line 167
    if-eq v8, v9, :cond_b

    .line 168
    .line 169
    const/16 v9, 0xc8

    .line 170
    .line 171
    if-eq v8, v9, :cond_a

    .line 172
    .line 173
    const/16 v9, 0xe1

    .line 174
    .line 175
    if-eq v8, v9, :cond_9

    .line 176
    .line 177
    const/16 v9, 0xfa

    .line 178
    .line 179
    if-eq v8, v9, :cond_8

    .line 180
    .line 181
    const/16 v9, 0x1f4

    .line 182
    .line 183
    if-eq v8, v9, :cond_7

    .line 184
    .line 185
    const/16 v9, 0x320

    .line 186
    .line 187
    if-eq v8, v9, :cond_6

    .line 188
    .line 189
    const/4 v9, 0x0

    .line 190
    goto :goto_0

    .line 191
    :cond_6
    const/4 v9, 0x1

    .line 192
    goto :goto_0

    .line 193
    :cond_7
    const/4 v9, 0x2

    .line 194
    goto :goto_0

    .line 195
    :cond_8
    const/4 v9, 0x3

    .line 196
    goto :goto_0

    .line 197
    :cond_9
    const/4 v9, 0x4

    .line 198
    goto :goto_0

    .line 199
    :cond_a
    const/4 v9, 0x5

    .line 200
    goto :goto_0

    .line 201
    :cond_b
    const/4 v9, 0x6

    .line 202
    goto :goto_0

    .line 203
    :cond_c
    move/from16 v9, v16

    .line 204
    .line 205
    :goto_0
    if-eqz v9, :cond_11

    .line 206
    .line 207
    iget-object v14, v6, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 208
    .line 209
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v14, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 218
    .line 219
    if-nez v1, :cond_d

    .line 220
    .line 221
    new-instance v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 222
    .line 223
    invoke-direct {v1, v7, v4, v8, v12}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(Ljava/lang/String;III)V

    .line 224
    .line 225
    .line 226
    iget-object v14, v6, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 227
    .line 228
    move/from16 v23, v12

    .line 229
    .line 230
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    invoke-virtual {v14, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    :goto_1
    move v14, v13

    .line 238
    goto :goto_3

    .line 239
    :catch_0
    :goto_2
    move v14, v13

    .line 240
    :catch_1
    const-wide/16 v18, 0x0

    .line 241
    .line 242
    goto/16 :goto_5

    .line 243
    .line 244
    :catch_2
    move/from16 v23, v12

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_d
    move/from16 v23, v12

    .line 248
    .line 249
    iput v8, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    .line 251
    goto :goto_1

    .line 252
    :goto_3
    :try_start_2
    iget-wide v12, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 253
    .line 254
    const-wide/16 v18, 0x0

    .line 255
    .line 256
    cmp-long v24, v12, v18

    .line 257
    .line 258
    if-nez v24, :cond_e

    .line 259
    .line 260
    const-wide/32 v12, 0x83d60

    .line 261
    .line 262
    .line 263
    sub-long v12, v10, v12

    .line 264
    .line 265
    :try_start_3
    iput-wide v12, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    .line 266
    .line 267
    goto/16 :goto_6

    .line 268
    .line 269
    :cond_e
    sub-long v12, v10, v12

    .line 270
    .line 271
    const-wide/32 v24, 0x927c0

    .line 272
    .line 273
    .line 274
    cmp-long v12, v12, v24

    .line 275
    .line 276
    if-lez v12, :cond_13

    .line 277
    .line 278
    iput-wide v10, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    .line 279
    .line 280
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 281
    .line 282
    .line 283
    move-result v12

    .line 284
    if-eqz v12, :cond_f

    .line 285
    .line 286
    new-instance v12, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v13, " pkg:"

    .line 295
    .line 296
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v13, " pid:"

    .line 303
    .line 304
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v13, " curAdj:"

    .line 311
    .line 312
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v12

    .line 322
    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    :cond_f
    iget-object v12, v6, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    .line 326
    .line 327
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 328
    .line 329
    .line 330
    move-result v12

    .line 331
    int-to-long v12, v12

    .line 332
    const-wide/16 v24, 0x14

    .line 333
    .line 334
    cmp-long v12, v12, v24

    .line 335
    .line 336
    if-gez v12, :cond_10

    .line 337
    .line 338
    iget-object v12, v6, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    iget-object v1, v6, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 344
    .line 345
    const/4 v12, 0x0

    .line 346
    invoke-virtual {v1, v12, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 351
    .line 352
    .line 353
    goto :goto_6

    .line 354
    :cond_10
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_13

    .line 359
    .line 360
    const-string v1, "Skipping send NANDSWAP_NON_ACTIVITY_APP_MSG"

    .line 361
    .line 362
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 363
    .line 364
    .line 365
    goto :goto_6

    .line 366
    :cond_11
    :goto_4
    move/from16 v23, v12

    .line 367
    .line 368
    move v14, v13

    .line 369
    const-wide/16 v18, 0x0

    .line 370
    .line 371
    goto :goto_6

    .line 372
    :catch_3
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string/jumbo v9, "failed to tryNandswapNonActivityApp "

    .line 375
    .line 376
    .line 377
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v9, " "

    .line 384
    .line 385
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    goto :goto_6

    .line 399
    :cond_12
    move/from16 v23, v12

    .line 400
    .line 401
    move-object/from16 v22, v14

    .line 402
    .line 403
    move-object/from16 v21, v15

    .line 404
    .line 405
    const-wide/16 v18, 0x0

    .line 406
    .line 407
    move v14, v13

    .line 408
    :cond_13
    :goto_6
    sget v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 409
    .line 410
    if-lez v1, :cond_17

    .line 411
    .line 412
    const/16 v1, 0x2bc

    .line 413
    .line 414
    if-ne v3, v1, :cond_15

    .line 415
    .line 416
    const/16 v1, 0x352

    .line 417
    .line 418
    if-lt v8, v1, :cond_15

    .line 419
    .line 420
    const/16 v1, 0x3e7

    .line 421
    .line 422
    if-gt v8, v1, :cond_15

    .line 423
    .line 424
    if-eqz v14, :cond_15

    .line 425
    .line 426
    :try_start_4
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    if-nez v1, :cond_14

    .line 431
    .line 432
    goto :goto_7

    .line 433
    :cond_14
    new-instance v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 434
    .line 435
    invoke-direct {v1, v0, v7, v4, v8}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(ILjava/lang/String;II)V

    .line 436
    .line 437
    .line 438
    iget-object v0, v6, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    .line 439
    .line 440
    const/4 v2, 0x0

    .line 441
    const/4 v7, 0x6

    .line 442
    invoke-virtual {v0, v7, v2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 447
    .line 448
    .line 449
    goto :goto_7

    .line 450
    :catch_4
    move-exception v0

    .line 451
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 452
    .line 453
    .line 454
    :cond_15
    :goto_7
    const/16 v1, 0xc8

    .line 455
    .line 456
    const/4 v2, 0x5

    .line 457
    if-gt v3, v1, :cond_16

    .line 458
    .line 459
    if-le v5, v2, :cond_17

    .line 460
    .line 461
    :cond_16
    const/16 v3, 0x64

    .line 462
    .line 463
    if-lt v8, v3, :cond_17

    .line 464
    .line 465
    if-ge v8, v1, :cond_17

    .line 466
    .line 467
    move/from16 v1, v23

    .line 468
    .line 469
    if-ne v1, v2, :cond_17

    .line 470
    .line 471
    invoke-virtual {v6, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->notifyReentryAppToPPR(I)V

    .line 472
    .line 473
    .line 474
    :cond_17
    :goto_8
    move-object/from16 v1, p0

    .line 475
    .line 476
    goto :goto_a

    .line 477
    :cond_18
    move-object/from16 v20, v2

    .line 478
    .line 479
    :goto_9
    move-object/from16 v22, v14

    .line 480
    .line 481
    move-object/from16 v21, v15

    .line 482
    .line 483
    const-wide/16 v18, 0x0

    .line 484
    .line 485
    goto :goto_8

    .line 486
    :goto_a
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 487
    .line 488
    if-eqz v0, :cond_1f

    .line 489
    .line 490
    move-object/from16 v9, p1

    .line 491
    .line 492
    iget v2, v9, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 493
    .line 494
    iget-object v3, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 495
    .line 496
    move-object/from16 v12, v22

    .line 497
    .line 498
    iget v4, v12, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 499
    .line 500
    iget v5, v12, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 501
    .line 502
    iget-object v6, v9, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 503
    .line 504
    iget-boolean v6, v6, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 505
    .line 506
    iget-boolean v7, v12, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 507
    .line 508
    const-string v8, "GMR"

    .line 509
    .line 510
    const-string/jumbo v13, "bg : "

    .line 511
    .line 512
    .line 513
    const-string/jumbo v14, "bg_async : "

    .line 514
    .line 515
    .line 516
    const-string/jumbo v15, "fg : "

    .line 517
    .line 518
    .line 519
    const-string/jumbo v10, "fg_async : "

    .line 520
    .line 521
    .line 522
    :try_start_5
    sget-boolean v11, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    .line 523
    .line 524
    if-eqz v11, :cond_20

    .line 525
    .line 526
    iget-object v11, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 527
    .line 528
    if-nez v11, :cond_19

    .line 529
    .line 530
    goto/16 :goto_f

    .line 531
    .line 532
    :cond_19
    if-gtz v2, :cond_1a

    .line 533
    .line 534
    goto/16 :goto_f

    .line 535
    .line 536
    :cond_1a
    if-eq v4, v5, :cond_20

    .line 537
    .line 538
    const-string v11, " "

    .line 539
    .line 540
    const/16 v9, 0x352

    .line 541
    .line 542
    if-lt v5, v9, :cond_1c

    .line 543
    .line 544
    const/16 v9, 0x3e7

    .line 545
    .line 546
    if-gt v5, v9, :cond_1c

    .line 547
    .line 548
    if-nez v4, :cond_1c

    .line 549
    .line 550
    if-eqz v7, :cond_1c

    .line 551
    .line 552
    :try_start_6
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapOut()Ljava/lang/Boolean;

    .line 553
    .line 554
    .line 555
    move-result-object v7

    .line 556
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 557
    .line 558
    .line 559
    move-result v7

    .line 560
    if-eqz v7, :cond_1b

    .line 561
    .line 562
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    .line 563
    .line 564
    .line 565
    move-result-object v7

    .line 566
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 567
    .line 568
    .line 569
    move-result v7

    .line 570
    if-eqz v7, :cond_1b

    .line 571
    .line 572
    iget-object v7, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 573
    .line 574
    if-eqz v7, :cond_1b

    .line 575
    .line 576
    if-eqz v3, :cond_1b

    .line 577
    .line 578
    const/4 v9, 0x1

    .line 579
    invoke-virtual {v7, v9, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    goto :goto_b

    .line 583
    :catch_5
    move-exception v0

    .line 584
    goto/16 :goto_e

    .line 585
    .line 586
    :cond_1b
    :goto_b
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapIn()Ljava/lang/Boolean;

    .line 587
    .line 588
    .line 589
    move-result-object v7

    .line 590
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 591
    .line 592
    .line 593
    move-result v7

    .line 594
    if-eqz v7, :cond_1c

    .line 595
    .line 596
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    .line 597
    .line 598
    .line 599
    move-result-object v7

    .line 600
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 601
    .line 602
    .line 603
    move-result v7

    .line 604
    if-eqz v7, :cond_1d

    .line 605
    .line 606
    iget-object v7, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 607
    .line 608
    if-eqz v7, :cond_1d

    .line 609
    .line 610
    new-instance v7, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v7

    .line 628
    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .line 630
    .line 631
    iget-object v7, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 632
    .line 633
    iget-object v7, v7, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 634
    .line 635
    iget-object v7, v7, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 636
    .line 637
    const/4 v9, 0x0

    .line 638
    const/4 v10, 0x1

    .line 639
    invoke-virtual {v7, v10, v2, v9, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 640
    .line 641
    .line 642
    move-result-object v15

    .line 643
    invoke-virtual {v7, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 644
    .line 645
    .line 646
    :cond_1c
    :goto_c
    const/16 v7, 0x2bc

    .line 647
    .line 648
    goto :goto_d

    .line 649
    :cond_1d
    new-instance v7, Ljava/lang/StringBuilder;

    .line 650
    .line 651
    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v7

    .line 667
    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .line 669
    .line 670
    iget-object v7, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 671
    .line 672
    invoke-virtual {v7, v2}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->swapInImpl(I)I

    .line 673
    .line 674
    .line 675
    goto :goto_c

    .line 676
    :goto_d
    if-ne v5, v7, :cond_20

    .line 677
    .line 678
    const/16 v5, 0x352

    .line 679
    .line 680
    if-lt v4, v5, :cond_20

    .line 681
    .line 682
    const/16 v5, 0x3e7

    .line 683
    .line 684
    if-gt v4, v5, :cond_20

    .line 685
    .line 686
    if-eqz v6, :cond_20

    .line 687
    .line 688
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapOut()Ljava/lang/Boolean;

    .line 689
    .line 690
    .line 691
    move-result-object v4

    .line 692
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 693
    .line 694
    .line 695
    move-result v4

    .line 696
    if-eqz v4, :cond_20

    .line 697
    .line 698
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    .line 699
    .line 700
    .line 701
    move-result-object v4

    .line 702
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 703
    .line 704
    .line 705
    move-result v4

    .line 706
    if-eqz v4, :cond_1e

    .line 707
    .line 708
    iget-object v4, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 709
    .line 710
    if-eqz v4, :cond_1e

    .line 711
    .line 712
    new-instance v4, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .line 732
    .line 733
    iget-object v0, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 734
    .line 735
    iget-object v0, v0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 736
    .line 737
    iget-object v0, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 738
    .line 739
    const/4 v4, 0x0

    .line 740
    const/4 v5, 0x1

    .line 741
    invoke-virtual {v0, v5, v2, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    const-wide/16 v3, 0x7d0

    .line 746
    .line 747
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 748
    .line 749
    .line 750
    goto :goto_f

    .line 751
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 752
    .line 753
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v4

    .line 769
    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    .line 771
    .line 772
    iget-object v0, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 773
    .line 774
    invoke-virtual {v0, v2, v3}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->swapOut(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 775
    .line 776
    .line 777
    goto :goto_f

    .line 778
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 779
    .line 780
    const-string v3, "Failed to handle onOomAdjChanged: "

    .line 781
    .line 782
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .line 798
    .line 799
    goto :goto_f

    .line 800
    :cond_1f
    move-object/from16 v12, v22

    .line 801
    .line 802
    :cond_20
    :goto_f
    iget v9, v12, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 803
    .line 804
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 805
    .line 806
    move-object/from16 v10, p1

    .line 807
    .line 808
    invoke-virtual {v0, v10}, Lcom/android/server/am/DynamicHiddenApp;->setCustomADJAndGetProcState(Lcom/android/server/am/ProcessRecord;)I

    .line 809
    .line 810
    .line 811
    move-result v0

    .line 812
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 813
    .line 814
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 815
    .line 816
    if-eq v2, v3, :cond_2a

    .line 817
    .line 818
    if-eqz p8, :cond_21

    .line 819
    .line 820
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 821
    .line 822
    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    .line 823
    .line 824
    if-eqz v3, :cond_21

    .line 825
    .line 826
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    .line 827
    .line 828
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    .line 830
    .line 831
    goto :goto_10

    .line 832
    :cond_21
    iget v3, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 833
    .line 834
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 835
    .line 836
    invoke-static {v3, v4, v2, v0}, Lcom/android/server/am/ProcessList;->setOomAdj(IIII)V

    .line 837
    .line 838
    .line 839
    :goto_10
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mHeimdallAlwaysRunningMonitor:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 840
    .line 841
    if-eqz v0, :cond_27

    .line 842
    .line 843
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 844
    .line 845
    iget v3, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 846
    .line 847
    iget-object v7, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 848
    .line 849
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 850
    .line 851
    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 852
    .line 853
    iget v8, v12, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 854
    .line 855
    iget v11, v12, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 856
    .line 857
    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isEnable()Z

    .line 858
    .line 859
    .line 860
    move-result v2

    .line 861
    if-nez v2, :cond_22

    .line 862
    .line 863
    goto :goto_12

    .line 864
    :cond_22
    if-eqz v8, :cond_23

    .line 865
    .line 866
    const/16 v2, 0xfa

    .line 867
    .line 868
    if-le v8, v2, :cond_24

    .line 869
    .line 870
    :cond_23
    invoke-static {v11}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isAlwaysRunningAdj(I)Z

    .line 871
    .line 872
    .line 873
    move-result v2

    .line 874
    if-nez v2, :cond_26

    .line 875
    .line 876
    :cond_24
    invoke-static {v8}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isAlwaysRunningAdj(I)Z

    .line 877
    .line 878
    .line 879
    move-result v2

    .line 880
    if-eqz v2, :cond_25

    .line 881
    .line 882
    if-eqz v11, :cond_26

    .line 883
    .line 884
    const/16 v2, 0xfa

    .line 885
    .line 886
    if-le v11, v2, :cond_25

    .line 887
    .line 888
    goto :goto_11

    .line 889
    :cond_25
    if-eqz v11, :cond_26

    .line 890
    .line 891
    if-nez v8, :cond_27

    .line 892
    .line 893
    :cond_26
    :goto_11
    iget-object v13, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHandler:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;

    .line 894
    .line 895
    new-instance v14, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 896
    .line 897
    move-object v2, v14

    .line 898
    move v5, v11

    .line 899
    invoke-direct/range {v2 .. v7}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    const/4 v2, 0x1

    .line 903
    invoke-virtual {v13, v2, v8, v11, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 904
    .line 905
    .line 906
    move-result-object v3

    .line 907
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHandler:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;

    .line 908
    .line 909
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 910
    .line 911
    .line 912
    goto :goto_12

    .line 913
    :catch_6
    move-exception v0

    .line 914
    new-instance v2, Ljava/lang/StringBuilder;

    .line 915
    .line 916
    const-string v3, "Handler onOomAdjChanged catch exception "

    .line 917
    .line 918
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    const-string v3, "HeimdallAlwaysRunningMonitor"

    .line 922
    .line 923
    invoke-static {v0, v2, v3}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    :cond_27
    :goto_12
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 927
    .line 928
    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 929
    .line 930
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 931
    .line 932
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 933
    .line 934
    if-ne v0, v2, :cond_28

    .line 935
    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    .line 937
    .line 938
    const-string v2, "Set "

    .line 939
    .line 940
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 944
    .line 945
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 946
    .line 947
    .line 948
    const-string v2, " "

    .line 949
    .line 950
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    .line 952
    .line 953
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 954
    .line 955
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    const-string v2, " adj "

    .line 959
    .line 960
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    .line 962
    .line 963
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 964
    .line 965
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    const-string v2, ": "

    .line 969
    .line 970
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    iget-object v2, v12, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 974
    .line 975
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    .line 977
    .line 978
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    invoke-virtual {v1, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    :cond_28
    iget v0, v12, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 986
    .line 987
    iput v0, v12, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 988
    .line 989
    move-object/from16 v11, v21

    .line 990
    .line 991
    const/4 v4, 0x1

    .line 992
    if-eqz v21, :cond_29

    .line 993
    .line 994
    iput-boolean v4, v11, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    .line 995
    .line 996
    :cond_29
    const/16 v0, -0x2710

    .line 997
    .line 998
    iput v0, v12, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    .line 999
    .line 1000
    goto :goto_13

    .line 1001
    :cond_2a
    move-object/from16 v11, v21

    .line 1002
    .line 1003
    const/4 v4, 0x1

    .line 1004
    const/16 v3, 0xb4

    .line 1005
    .line 1006
    if-lt v0, v3, :cond_2b

    .line 1007
    .line 1008
    const/16 v3, 0xc8

    .line 1009
    .line 1010
    if-ge v0, v3, :cond_2b

    .line 1011
    .line 1012
    iget v3, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1013
    .line 1014
    iget v5, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1015
    .line 1016
    invoke-static {v3, v5, v2, v0}, Lcom/android/server/am/ProcessList;->setOomAdj(IIII)V

    .line 1017
    .line 1018
    .line 1019
    :cond_2b
    :goto_13
    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->mInfant:Z

    .line 1020
    .line 1021
    const/4 v8, 0x0

    .line 1022
    if-eqz v0, :cond_2c

    .line 1023
    .line 1024
    iput-boolean v8, v10, Lcom/android/server/am/ProcessRecord;->mInfant:Z

    .line 1025
    .line 1026
    :cond_2c
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 1027
    .line 1028
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    .line 1029
    .line 1030
    if-eqz v0, :cond_2d

    .line 1031
    .line 1032
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 1033
    .line 1034
    iget v0, v0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    .line 1035
    .line 1036
    if-nez v0, :cond_2d

    .line 1037
    .line 1038
    iget v0, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1039
    .line 1040
    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v0

    .line 1044
    if-eqz v0, :cond_2d

    .line 1045
    .line 1046
    iget-boolean v0, v12, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    .line 1047
    .line 1048
    if-nez v0, :cond_2d

    .line 1049
    .line 1050
    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    .line 1051
    .line 1052
    if-nez v0, :cond_2d

    .line 1053
    .line 1054
    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->mKeepSEMPrcp:Z

    .line 1055
    .line 1056
    if-nez v0, :cond_2d

    .line 1057
    .line 1058
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    .line 1059
    .line 1060
    const/16 v0, 0x16

    .line 1061
    .line 1062
    const/4 v7, 0x1

    .line 1063
    const/16 v3, 0xa

    .line 1064
    .line 1065
    const/4 v14, 0x1

    .line 1066
    move-object/from16 v2, p1

    .line 1067
    .line 1068
    move v5, v4

    .line 1069
    const/16 v15, 0xe

    .line 1070
    .line 1071
    move v4, v0

    .line 1072
    move v15, v5

    .line 1073
    move-object v5, v6

    .line 1074
    move v13, v8

    .line 1075
    move v8, v14

    .line 1076
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1077
    .line 1078
    .line 1079
    move v8, v13

    .line 1080
    goto/16 :goto_1a

    .line 1081
    .line 1082
    :cond_2d
    move v15, v4

    .line 1083
    move v13, v8

    .line 1084
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 1085
    .line 1086
    if-eq v3, v2, :cond_3e

    .line 1087
    .line 1088
    iput v2, v12, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 1089
    .line 1090
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1091
    .line 1092
    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 1093
    .line 1094
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1095
    .line 1096
    if-ne v0, v4, :cond_2e

    .line 1097
    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1099
    .line 1100
    const-string v4, "Setting sched group of "

    .line 1101
    .line 1102
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1106
    .line 1107
    const-string v5, " to "

    .line 1108
    .line 1109
    const-string v6, ": "

    .line 1110
    .line 1111
    invoke-static {v2, v4, v5, v6, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1112
    .line 1113
    .line 1114
    iget-object v4, v12, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 1115
    .line 1116
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v0

    .line 1123
    invoke-virtual {v1, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    :cond_2e
    const/4 v0, -0x2

    .line 1127
    if-eq v2, v0, :cond_34

    .line 1128
    .line 1129
    if-eqz v2, :cond_33

    .line 1130
    .line 1131
    if-eq v2, v15, :cond_32

    .line 1132
    .line 1133
    const/4 v4, 0x3

    .line 1134
    if-eq v2, v4, :cond_31

    .line 1135
    .line 1136
    const/4 v4, 0x4

    .line 1137
    if-eq v2, v4, :cond_31

    .line 1138
    .line 1139
    const/4 v4, 0x5

    .line 1140
    if-eq v2, v4, :cond_30

    .line 1141
    .line 1142
    const/4 v8, -0x1

    .line 1143
    const/4 v4, 0x6

    .line 1144
    if-eq v2, v4, :cond_2f

    .line 1145
    .line 1146
    goto :goto_14

    .line 1147
    :cond_2f
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    .line 1148
    .line 1149
    if-eqz v4, :cond_35

    .line 1150
    .line 1151
    const/16 v8, 0xa

    .line 1152
    .line 1153
    goto :goto_14

    .line 1154
    :cond_30
    const/16 v8, 0x9

    .line 1155
    .line 1156
    goto :goto_14

    .line 1157
    :cond_31
    const/4 v4, 0x5

    .line 1158
    move v8, v4

    .line 1159
    goto :goto_14

    .line 1160
    :cond_32
    move/from16 v8, v16

    .line 1161
    .line 1162
    goto :goto_14

    .line 1163
    :cond_33
    move v8, v13

    .line 1164
    goto :goto_14

    .line 1165
    :cond_34
    move/from16 v8, v17

    .line 1166
    .line 1167
    :cond_35
    :goto_14
    if-eq v2, v0, :cond_36

    .line 1168
    .line 1169
    if-ne v3, v0, :cond_3a

    .line 1170
    .line 1171
    :cond_36
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mCFMS:Landroid/os/ICustomFrequencyManager;

    .line 1172
    .line 1173
    if-nez v4, :cond_37

    .line 1174
    .line 1175
    const-string v4, "CustomFrequencyManagerService"

    .line 1176
    .line 1177
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v4

    .line 1181
    if-eqz v4, :cond_37

    .line 1182
    .line 1183
    invoke-static {v4}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v4

    .line 1187
    iput-object v4, v1, Lcom/android/server/am/OomAdjuster;->mCFMS:Landroid/os/ICustomFrequencyManager;

    .line 1188
    .line 1189
    :cond_37
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mCFMS:Landroid/os/ICustomFrequencyManager;

    .line 1190
    .line 1191
    if-eqz v4, :cond_3a

    .line 1192
    .line 1193
    :try_start_8
    const-string v4, "OomAdjuster"

    .line 1194
    .line 1195
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1196
    .line 1197
    move-object/from16 v6, v20

    .line 1198
    .line 1199
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1200
    .line 1201
    .line 1202
    iget v6, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1203
    .line 1204
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1205
    .line 1206
    .line 1207
    const-string v6, ", slowdown = "

    .line 1208
    .line 1209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    .line 1211
    .line 1212
    if-ne v2, v0, :cond_38

    .line 1213
    .line 1214
    move v6, v15

    .line 1215
    goto :goto_15

    .line 1216
    :cond_38
    move v6, v13

    .line 1217
    :goto_15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v5

    .line 1224
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    .line 1226
    .line 1227
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mCFMS:Landroid/os/ICustomFrequencyManager;

    .line 1228
    .line 1229
    iget v5, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1230
    .line 1231
    if-ne v2, v0, :cond_39

    .line 1232
    .line 1233
    move v0, v15

    .line 1234
    goto :goto_16

    .line 1235
    :cond_39
    move v0, v13

    .line 1236
    :goto_16
    const-string/jumbo v6, "slowdown"

    .line 1237
    .line 1238
    .line 1239
    invoke-interface {v4, v5, v0, v6}, Landroid/os/ICustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1240
    .line 1241
    .line 1242
    goto :goto_17

    .line 1243
    :catch_7
    move-exception v0

    .line 1244
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1245
    .line 1246
    .line 1247
    :cond_3a
    :goto_17
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 1248
    .line 1249
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1250
    .line 1251
    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1252
    .line 1253
    invoke-virtual {v0, v13, v4, v8, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v4

    .line 1257
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1258
    .line 1259
    .line 1260
    :try_start_9
    iget v0, v10, Lcom/android/server/am/ProcessRecord;->mRenderThreadTid:I

    .line 1261
    .line 1262
    const/4 v4, 0x3

    .line 1263
    if-ne v2, v4, :cond_3c

    .line 1264
    .line 1265
    if-eq v3, v4, :cond_3e

    .line 1266
    .line 1267
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 1268
    .line 1269
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->useFifoUiScheduling()Z

    .line 1273
    .line 1274
    .line 1275
    move-result v2

    .line 1276
    if-eqz v2, :cond_3b

    .line 1277
    .line 1278
    iget v0, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1279
    .line 1280
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    .line 1281
    .line 1282
    .line 1283
    move-result v0

    .line 1284
    iput v0, v12, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    .line 1285
    .line 1286
    invoke-static {v10, v15}, Lcom/android/server/am/ActivityManagerService;->setFifoPriority(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1287
    .line 1288
    .line 1289
    goto :goto_19

    .line 1290
    :cond_3b
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1291
    .line 1292
    const/16 v3, -0xa

    .line 1293
    .line 1294
    invoke-static {v2, v3}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 1295
    .line 1296
    .line 1297
    if-eqz v0, :cond_3e

    .line 1298
    .line 1299
    :try_start_a
    invoke-static {v0, v3}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 1300
    .line 1301
    .line 1302
    goto :goto_19

    .line 1303
    :cond_3c
    if-ne v3, v4, :cond_3e

    .line 1304
    .line 1305
    if-eq v2, v4, :cond_3e

    .line 1306
    .line 1307
    :try_start_b
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 1308
    .line 1309
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->useFifoUiScheduling()Z

    .line 1313
    .line 1314
    .line 1315
    move-result v2

    .line 1316
    if-eqz v2, :cond_3d

    .line 1317
    .line 1318
    invoke-static {v10, v13}, Lcom/android/server/am/ActivityManagerService;->setFifoPriority(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1319
    .line 1320
    .line 1321
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1322
    .line 1323
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    .line 1324
    .line 1325
    invoke-static {v2, v3}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1326
    .line 1327
    .line 1328
    goto :goto_18

    .line 1329
    :cond_3d
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1330
    .line 1331
    invoke-static {v2, v13}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1332
    .line 1333
    .line 1334
    :goto_18
    if-eqz v0, :cond_3e

    .line 1335
    .line 1336
    const/4 v2, -0x4

    .line 1337
    invoke-static {v0, v2}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 1338
    .line 1339
    .line 1340
    :catch_8
    :cond_3e
    :goto_19
    move v8, v15

    .line 1341
    :goto_1a
    iget-boolean v0, v12, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    .line 1342
    .line 1343
    iget-boolean v2, v12, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 1344
    .line 1345
    if-eq v0, v2, :cond_3f

    .line 1346
    .line 1347
    iput-boolean v2, v12, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    .line 1348
    .line 1349
    move/from16 v2, p7

    .line 1350
    .line 1351
    move v0, v15

    .line 1352
    goto :goto_1b

    .line 1353
    :cond_3f
    move/from16 v2, p7

    .line 1354
    .line 1355
    move v0, v13

    .line 1356
    :goto_1b
    invoke-virtual {v1, v10, v2, v13}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;IZ)V

    .line 1357
    .line 1358
    .line 1359
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 1360
    .line 1361
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1362
    .line 1363
    if-eq v2, v3, :cond_40

    .line 1364
    .line 1365
    invoke-virtual {v12, v3}, Lcom/android/server/am/ProcessStateRecord;->setReportedProcState(I)V

    .line 1366
    .line 1367
    .line 1368
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 1369
    .line 1370
    if-eqz v2, :cond_40

    .line 1371
    .line 1372
    :try_start_c
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 1373
    .line 1374
    invoke-interface {v2, v3}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_9

    .line 1375
    .line 1376
    .line 1377
    :catch_9
    :cond_40
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 1378
    .line 1379
    const/16 v3, 0x14

    .line 1380
    .line 1381
    if-eq v2, v3, :cond_41

    .line 1382
    .line 1383
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1384
    .line 1385
    sget-object v4, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 1386
    .line 1387
    aget v3, v4, v3

    .line 1388
    .line 1389
    aget v2, v4, v2

    .line 1390
    .line 1391
    if-eq v3, v2, :cond_42

    .line 1392
    .line 1393
    :cond_41
    move-wide/from16 v5, p3

    .line 1394
    .line 1395
    goto :goto_1c

    .line 1396
    :cond_42
    move-wide/from16 v5, p3

    .line 1397
    .line 1398
    move v7, v13

    .line 1399
    goto :goto_1d

    .line 1400
    :goto_1c
    iput-wide v5, v12, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    .line 1401
    .line 1402
    move v7, v15

    .line 1403
    :goto_1d
    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1404
    .line 1405
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1406
    .line 1407
    iget-object v14, v2, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 1408
    .line 1409
    monitor-enter v14

    .line 1410
    :try_start_d
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1411
    .line 1412
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1413
    .line 1414
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1415
    .line 1416
    .line 1417
    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1418
    .line 1419
    iput v4, v2, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 1420
    .line 1421
    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 1422
    .line 1423
    iput v4, v2, Lcom/android/server/am/ProcessProfileRecord;->mSetAdj:I

    .line 1424
    .line 1425
    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 1426
    .line 1427
    iput v4, v2, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    .line 1428
    .line 1429
    iget-wide v3, v3, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    .line 1430
    .line 1431
    iput-wide v3, v2, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    .line 1432
    .line 1433
    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1434
    .line 1435
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1436
    .line 1437
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1438
    .line 1439
    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1440
    .line 1441
    move-wide/from16 v5, p3

    .line 1442
    .line 1443
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 1444
    .line 1445
    .line 1446
    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1447
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 1448
    .line 1449
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1450
    .line 1451
    if-eq v2, v3, :cond_4b

    .line 1452
    .line 1453
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1454
    .line 1455
    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 1456
    .line 1457
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1458
    .line 1459
    if-ne v3, v4, :cond_43

    .line 1460
    .line 1461
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1462
    .line 1463
    const-string v4, "Proc state change of "

    .line 1464
    .line 1465
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1466
    .line 1467
    .line 1468
    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1469
    .line 1470
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    .line 1472
    .line 1473
    const-string v4, " to "

    .line 1474
    .line 1475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    .line 1477
    .line 1478
    iget v4, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1479
    .line 1480
    sget v5, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 1481
    .line 1482
    invoke-static {v4}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v4

    .line 1486
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    .line 1488
    .line 1489
    const-string v4, " ("

    .line 1490
    .line 1491
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    .line 1493
    .line 1494
    iget v4, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1495
    .line 1496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1497
    .line 1498
    .line 1499
    const-string v4, "): "

    .line 1500
    .line 1501
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    .line 1503
    .line 1504
    iget-object v4, v12, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 1505
    .line 1506
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v3

    .line 1513
    invoke-virtual {v1, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 1514
    .line 1515
    .line 1516
    :cond_43
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 1517
    .line 1518
    const/16 v4, 0xa

    .line 1519
    .line 1520
    if-ge v3, v4, :cond_44

    .line 1521
    .line 1522
    move v3, v15

    .line 1523
    goto :goto_1e

    .line 1524
    :cond_44
    move v3, v13

    .line 1525
    :goto_1e
    iget v5, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1526
    .line 1527
    if-ge v5, v4, :cond_45

    .line 1528
    .line 1529
    move v4, v15

    .line 1530
    goto :goto_1f

    .line 1531
    :cond_45
    move v4, v13

    .line 1532
    :goto_1f
    if-eqz v3, :cond_46

    .line 1533
    .line 1534
    if-nez v4, :cond_46

    .line 1535
    .line 1536
    move-wide/from16 v3, p3

    .line 1537
    .line 1538
    iput-wide v3, v12, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    .line 1539
    .line 1540
    iget-object v5, v12, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1541
    .line 1542
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 1543
    .line 1544
    iput-wide v3, v5, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    .line 1545
    .line 1546
    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1547
    .line 1548
    iget-object v5, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1549
    .line 1550
    const-wide/16 v6, 0x0

    .line 1551
    .line 1552
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1553
    .line 1554
    .line 1555
    :goto_20
    move-wide/from16 v5, p5

    .line 1556
    .line 1557
    goto :goto_21

    .line 1558
    :cond_46
    move-wide/from16 v3, p3

    .line 1559
    .line 1560
    goto :goto_20

    .line 1561
    :goto_21
    invoke-virtual {v1, v10, v5, v6}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 1562
    .line 1563
    .line 1564
    iget v7, v12, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 1565
    .line 1566
    const/4 v14, 0x2

    .line 1567
    if-gt v7, v14, :cond_47

    .line 1568
    .line 1569
    iget v13, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1570
    .line 1571
    if-le v13, v14, :cond_47

    .line 1572
    .line 1573
    iput-wide v3, v12, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    .line 1574
    .line 1575
    :cond_47
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1576
    .line 1577
    invoke-static {v7}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    .line 1578
    .line 1579
    .line 1580
    move-result v4

    .line 1581
    if-eqz v4, :cond_48

    .line 1582
    .line 1583
    invoke-static {v3}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    .line 1584
    .line 1585
    .line 1586
    move-result v4

    .line 1587
    if-nez v4, :cond_48

    .line 1588
    .line 1589
    iget v4, v12, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    .line 1590
    .line 1591
    add-int/2addr v4, v15

    .line 1592
    iput v4, v12, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    .line 1593
    .line 1594
    :cond_48
    iput v3, v12, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 1595
    .line 1596
    const/16 v4, 0xe

    .line 1597
    .line 1598
    if-lt v3, v4, :cond_49

    .line 1599
    .line 1600
    const/4 v3, 0x0

    .line 1601
    iput-boolean v3, v12, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    .line 1602
    .line 1603
    :cond_49
    if-nez p2, :cond_4a

    .line 1604
    .line 1605
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1606
    .line 1607
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1608
    .line 1609
    iget-object v3, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 1610
    .line 1611
    monitor-enter v3

    .line 1612
    :try_start_e
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1613
    .line 1614
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1615
    .line 1616
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    .line 1617
    .line 1618
    .line 1619
    move-result v4

    .line 1620
    invoke-static {v4, v10}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(ILcom/android/server/am/ProcessRecord;)V

    .line 1621
    .line 1622
    .line 1623
    monitor-exit v3

    .line 1624
    goto :goto_24

    .line 1625
    :catchall_0
    move-exception v0

    .line 1626
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1627
    throw v0

    .line 1628
    :cond_4a
    iput-boolean v15, v12, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    .line 1629
    .line 1630
    goto :goto_24

    .line 1631
    :cond_4b
    move-wide/from16 v5, p5

    .line 1632
    .line 1633
    const/4 v14, 0x2

    .line 1634
    iget-boolean v3, v12, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    .line 1635
    .line 1636
    if-eqz v3, :cond_4d

    .line 1637
    .line 1638
    invoke-virtual {v12, v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    .line 1639
    .line 1640
    .line 1641
    move-result v3

    .line 1642
    if-eqz v3, :cond_4c

    .line 1643
    .line 1644
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1645
    .line 1646
    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    .line 1647
    .line 1648
    goto :goto_22

    .line 1649
    :cond_4c
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1650
    .line 1651
    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 1652
    .line 1653
    :goto_22
    iget-wide v13, v12, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    .line 1654
    .line 1655
    sub-long v13, v5, v13

    .line 1656
    .line 1657
    cmp-long v3, v13, v3

    .line 1658
    .line 1659
    if-lez v3, :cond_4f

    .line 1660
    .line 1661
    invoke-virtual {v1, v10, v5, v6}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 1662
    .line 1663
    .line 1664
    goto :goto_24

    .line 1665
    :cond_4d
    invoke-virtual {v12, v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    .line 1666
    .line 1667
    .line 1668
    move-result v3

    .line 1669
    if-eqz v3, :cond_4e

    .line 1670
    .line 1671
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1672
    .line 1673
    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    .line 1674
    .line 1675
    goto :goto_23

    .line 1676
    :cond_4e
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1677
    .line 1678
    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 1679
    .line 1680
    :goto_23
    iget-wide v13, v12, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 1681
    .line 1682
    sub-long v13, v5, v13

    .line 1683
    .line 1684
    cmp-long v3, v13, v3

    .line 1685
    .line 1686
    if-lez v3, :cond_4f

    .line 1687
    .line 1688
    invoke-virtual {v1, v10, v5, v6}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 1689
    .line 1690
    .line 1691
    :cond_4f
    :goto_24
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 1692
    .line 1693
    iget v4, v12, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    .line 1694
    .line 1695
    if-eq v3, v4, :cond_50

    .line 1696
    .line 1697
    iput v3, v12, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    .line 1698
    .line 1699
    :cond_50
    iget-boolean v3, v12, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 1700
    .line 1701
    iget-boolean v4, v12, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    .line 1702
    .line 1703
    if-eq v3, v4, :cond_51

    .line 1704
    .line 1705
    iput-boolean v3, v12, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    .line 1706
    .line 1707
    if-nez v3, :cond_51

    .line 1708
    .line 1709
    iget-boolean v3, v12, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 1710
    .line 1711
    if-eqz v3, :cond_51

    .line 1712
    .line 1713
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1714
    .line 1715
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1716
    .line 1717
    new-instance v4, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;

    .line 1718
    .line 1719
    invoke-direct {v4, v1, v10}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V

    .line 1720
    .line 1721
    .line 1722
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1723
    .line 1724
    .line 1725
    :cond_51
    if-eqz v0, :cond_52

    .line 1726
    .line 1727
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1728
    .line 1729
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1730
    .line 1731
    iget-object v7, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1732
    .line 1733
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1734
    .line 1735
    invoke-virtual {v3, v4, v7}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 1736
    .line 1737
    .line 1738
    move-result-object v3

    .line 1739
    iget v4, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 1740
    .line 1741
    or-int/2addr v0, v4

    .line 1742
    iput v0, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 1743
    .line 1744
    iget-boolean v0, v12, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    .line 1745
    .line 1746
    iput-boolean v0, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    .line 1747
    .line 1748
    iget-boolean v0, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->triggered:Z

    .line 1749
    .line 1750
    if-eqz v0, :cond_52

    .line 1751
    .line 1752
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1753
    .line 1754
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1755
    .line 1756
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1757
    .line 1758
    const/16 v4, 0x1f

    .line 1759
    .line 1760
    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v0

    .line 1764
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1765
    .line 1766
    .line 1767
    const/4 v4, 0x0

    .line 1768
    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->triggered:Z

    .line 1769
    .line 1770
    :cond_52
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 1771
    .line 1772
    .line 1773
    move-result v0

    .line 1774
    if-eqz v0, :cond_56

    .line 1775
    .line 1776
    iget-boolean v0, v12, Lcom/android/server/am/ProcessStateRecord;->mNoKillOnBgRestrictedAndIdle:Z

    .line 1777
    .line 1778
    if-nez v0, :cond_56

    .line 1779
    .line 1780
    iget-boolean v0, v12, Lcom/android/server/am/ProcessStateRecord;->mSetCached:Z

    .line 1781
    .line 1782
    if-eqz v0, :cond_53

    .line 1783
    .line 1784
    iget-boolean v0, v12, Lcom/android/server/am/ProcessStateRecord;->mSetNoKillOnBgRestrictedAndIdle:Z

    .line 1785
    .line 1786
    if-eqz v0, :cond_56

    .line 1787
    .line 1788
    :cond_53
    iput-wide v5, v12, Lcom/android/server/am/ProcessStateRecord;->mLastCanKillOnBgRestrictedAndIdleTime:J

    .line 1789
    .line 1790
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1791
    .line 1792
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    .line 1793
    .line 1794
    const/16 v4, 0x3a

    .line 1795
    .line 1796
    if-nez v3, :cond_54

    .line 1797
    .line 1798
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1799
    .line 1800
    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 1801
    .line 1802
    .line 1803
    move-result v0

    .line 1804
    if-nez v0, :cond_56

    .line 1805
    .line 1806
    :cond_54
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 1807
    .line 1808
    iget v3, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1809
    .line 1810
    invoke-virtual {v0, v3}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    .line 1811
    .line 1812
    .line 1813
    move-result v0

    .line 1814
    if-eqz v0, :cond_55

    .line 1815
    .line 1816
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 1817
    .line 1818
    iget v3, v11, Lcom/android/server/am/UidRecord;->mUid:I

    .line 1819
    .line 1820
    iget v5, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1821
    .line 1822
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1823
    .line 1824
    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 1825
    .line 1826
    iget-object v0, v0, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 1827
    .line 1828
    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 1829
    .line 1830
    long-to-int v6, v6

    .line 1831
    const-string v7, ""

    .line 1832
    .line 1833
    const/4 v11, 0x2

    .line 1834
    move/from16 p2, v11

    .line 1835
    .line 1836
    move/from16 p3, v3

    .line 1837
    .line 1838
    move/from16 p4, v5

    .line 1839
    .line 1840
    move/from16 p5, v0

    .line 1841
    .line 1842
    move/from16 p6, v6

    .line 1843
    .line 1844
    move-object/from16 p7, v7

    .line 1845
    .line 1846
    invoke-static/range {p2 .. p7}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIILjava/lang/String;)V

    .line 1847
    .line 1848
    .line 1849
    :cond_55
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1850
    .line 1851
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1852
    .line 1853
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1854
    .line 1855
    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 1856
    .line 1857
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1858
    .line 1859
    .line 1860
    :cond_56
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 1861
    .line 1862
    .line 1863
    move-result v0

    .line 1864
    iput-boolean v0, v12, Lcom/android/server/am/ProcessStateRecord;->mSetCached:Z

    .line 1865
    .line 1866
    iget-boolean v0, v12, Lcom/android/server/am/ProcessStateRecord;->mNoKillOnBgRestrictedAndIdle:Z

    .line 1867
    .line 1868
    iput-boolean v0, v12, Lcom/android/server/am/ProcessStateRecord;->mSetNoKillOnBgRestrictedAndIdle:Z

    .line 1869
    .line 1870
    iget v0, v12, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 1871
    .line 1872
    if-ne v2, v0, :cond_57

    .line 1873
    .line 1874
    iget v0, v12, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 1875
    .line 1876
    if-eq v9, v0, :cond_59

    .line 1877
    .line 1878
    :cond_57
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 1879
    .line 1880
    iget v3, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1881
    .line 1882
    invoke-virtual {v0, v3}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    .line 1883
    .line 1884
    .line 1885
    move-result v0

    .line 1886
    if-eqz v0, :cond_59

    .line 1887
    .line 1888
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 1889
    .line 1890
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1891
    .line 1892
    iget v3, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1893
    .line 1894
    iget v4, v12, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 1895
    .line 1896
    iget v5, v12, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 1897
    .line 1898
    iget-object v6, v0, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 1899
    .line 1900
    iget v7, v6, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 1901
    .line 1902
    iget v6, v6, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 1903
    .line 1904
    invoke-static {v6}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    .line 1905
    .line 1906
    .line 1907
    move-result-object v6

    .line 1908
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v1

    .line 1912
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1913
    .line 1914
    .line 1915
    move-result-object v3

    .line 1916
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v7

    .line 1920
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1921
    .line 1922
    .line 1923
    move-result-object v4

    .line 1924
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v2

    .line 1928
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1929
    .line 1930
    .line 1931
    move-result-object v5

    .line 1932
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1933
    .line 1934
    .line 1935
    move-result-object v9

    .line 1936
    move-object/from16 p0, v1

    .line 1937
    .line 1938
    move-object/from16 p1, v3

    .line 1939
    .line 1940
    move-object/from16 p2, v7

    .line 1941
    .line 1942
    move-object/from16 p3, v4

    .line 1943
    .line 1944
    move-object/from16 p4, v2

    .line 1945
    .line 1946
    move-object/from16 p5, v5

    .line 1947
    .line 1948
    move-object/from16 p6, v9

    .line 1949
    .line 1950
    move-object/from16 p7, v6

    .line 1951
    .line 1952
    filled-new-array/range {p0 .. p7}, [Ljava/lang/Object;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v1

    .line 1956
    const/16 v2, 0x75a0

    .line 1957
    .line 1958
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1959
    .line 1960
    .line 1961
    const-string/jumbo v1, "procStateChanged"

    .line 1962
    .line 1963
    .line 1964
    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjusterDebugLogger;->maybeLogStacktrace(Ljava/lang/String;)V

    .line 1965
    .line 1966
    .line 1967
    iget-object v0, v0, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1968
    .line 1969
    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    .line 1970
    .line 1971
    if-nez v0, :cond_58

    .line 1972
    .line 1973
    goto :goto_25

    .line 1974
    :cond_58
    int-to-long v0, v0

    .line 1975
    :try_start_f
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_a

    .line 1976
    .line 1977
    .line 1978
    :catch_a
    :cond_59
    :goto_25
    return v8

    .line 1979
    :catchall_1
    move-exception v0

    .line 1980
    :try_start_10
    monitor-exit v14
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1981
    throw v0
.end method

.method public final assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 10
    .line 11
    iget-boolean v4, v3, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    .line 12
    .line 13
    const/16 v5, 0x38e

    .line 14
    .line 15
    const/16 v6, 0x3e9

    .line 16
    .line 17
    const/16 v7, 0x384

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x1

    .line 21
    if-eqz v4, :cond_3

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v10

    .line 32
    sub-int/2addr v2, v9

    .line 33
    :goto_0
    if-ltz v2, :cond_15

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 40
    .line 41
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 42
    .line 43
    iget-boolean v9, v0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 44
    .line 45
    if-nez v9, :cond_2

    .line 46
    .line 47
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 48
    .line 49
    if-eqz v9, :cond_2

    .line 50
    .line 51
    iget v9, v4, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 52
    .line 53
    if-lt v9, v6, :cond_2

    .line 54
    .line 55
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 56
    .line 57
    if-eqz v9, :cond_0

    .line 58
    .line 59
    iget-boolean v9, v9, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    .line 60
    .line 61
    if-eqz v9, :cond_0

    .line 62
    .line 63
    move v9, v7

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    iget v9, v4, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 66
    .line 67
    if-lt v9, v7, :cond_1

    .line 68
    .line 69
    iget-wide v12, v4, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    .line 70
    .line 71
    iget-wide v14, v3, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    .line 72
    .line 73
    add-long/2addr v12, v14

    .line 74
    cmp-long v9, v12, v10

    .line 75
    .line 76
    if-gez v9, :cond_1

    .line 77
    .line 78
    const/16 v9, 0x3b6

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    move v9, v5

    .line 82
    :goto_1
    invoke-virtual {v4, v9, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 83
    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 86
    .line 87
    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 92
    .line 93
    .line 94
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iget v4, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 98
    .line 99
    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 100
    .line 101
    sub-int/2addr v3, v4

    .line 102
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 103
    .line 104
    sub-int v4, v2, v4

    .line 105
    .line 106
    iget v10, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 107
    .line 108
    sub-int/2addr v4, v10

    .line 109
    if-le v4, v3, :cond_4

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    move v3, v4

    .line 113
    :goto_2
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    .line 114
    .line 115
    if-lez v10, :cond_5

    .line 116
    .line 117
    add-int/2addr v10, v4

    .line 118
    sub-int/2addr v10, v9

    .line 119
    goto :goto_3

    .line 120
    :cond_5
    move v10, v9

    .line 121
    :goto_3
    div-int/2addr v10, v4

    .line 122
    if-ge v10, v9, :cond_6

    .line 123
    .line 124
    move v10, v9

    .line 125
    :cond_6
    add-int/2addr v3, v4

    .line 126
    sub-int/2addr v3, v9

    .line 127
    div-int/2addr v3, v4

    .line 128
    if-ge v3, v9, :cond_7

    .line 129
    .line 130
    move v3, v9

    .line 131
    :cond_7
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 132
    .line 133
    if-eqz v0, :cond_8

    .line 134
    .line 135
    sget-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    .line 136
    .line 137
    if-eqz v4, :cond_8

    .line 138
    .line 139
    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 140
    .line 141
    iget-object v4, v4, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 144
    .line 145
    .line 146
    :cond_8
    sub-int/2addr v2, v9

    .line 147
    const/4 v4, -0x1

    .line 148
    const/16 v11, 0x389

    .line 149
    .line 150
    const/16 v12, 0x393

    .line 151
    .line 152
    move v9, v8

    .line 153
    move v14, v9

    .line 154
    move v15, v14

    .line 155
    move/from16 v16, v15

    .line 156
    .line 157
    move v13, v12

    .line 158
    move v12, v11

    .line 159
    move v11, v7

    .line 160
    move v7, v5

    .line 161
    move v5, v4

    .line 162
    :goto_4
    if-ltz v2, :cond_15

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v17

    .line 168
    move-object/from16 v8, v17

    .line 169
    .line 170
    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 171
    .line 172
    iget-object v6, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 173
    .line 174
    iget-boolean v1, v8, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 175
    .line 176
    if-nez v1, :cond_14

    .line 177
    .line 178
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 179
    .line 180
    if-eqz v1, :cond_14

    .line 181
    .line 182
    iget v1, v6, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 183
    .line 184
    move/from16 p0, v2

    .line 185
    .line 186
    const/16 v2, 0x3e9

    .line 187
    .line 188
    if-lt v1, v2, :cond_b

    .line 189
    .line 190
    iget v1, v6, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 191
    .line 192
    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 193
    .line 194
    packed-switch v1, :pswitch_data_0

    .line 195
    .line 196
    .line 197
    if-eq v12, v13, :cond_a

    .line 198
    .line 199
    add-int/lit8 v4, v4, 0x1

    .line 200
    .line 201
    if-lt v4, v3, :cond_a

    .line 202
    .line 203
    add-int/lit8 v1, v13, 0xa

    .line 204
    .line 205
    const/16 v4, 0x3e7

    .line 206
    .line 207
    move v12, v13

    .line 208
    if-le v1, v4, :cond_9

    .line 209
    .line 210
    const/4 v1, 0x0

    .line 211
    const/4 v4, 0x0

    .line 212
    const/16 v13, 0x3e7

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_9
    const/4 v4, 0x0

    .line 216
    move v13, v1

    .line 217
    :cond_a
    const/4 v1, 0x0

    .line 218
    :goto_5
    invoke-virtual {v6, v12, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v12}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    invoke-virtual {v6, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 226
    .line 227
    .line 228
    :cond_b
    :goto_6
    move/from16 v18, v3

    .line 229
    .line 230
    move/from16 v19, v4

    .line 231
    .line 232
    const/4 v4, 0x0

    .line 233
    goto/16 :goto_b

    .line 234
    .line 235
    :pswitch_0
    iget v1, v2, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 236
    .line 237
    move/from16 v18, v3

    .line 238
    .line 239
    if-eqz v1, :cond_f

    .line 240
    .line 241
    iget v3, v2, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    .line 242
    .line 243
    move/from16 v19, v4

    .line 244
    .line 245
    iget v4, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 246
    .line 247
    if-ne v14, v4, :cond_e

    .line 248
    .line 249
    if-ne v15, v1, :cond_e

    .line 250
    .line 251
    if-le v3, v9, :cond_d

    .line 252
    .line 253
    if-ge v11, v7, :cond_c

    .line 254
    .line 255
    const/16 v1, 0x3e7

    .line 256
    .line 257
    if-ge v11, v1, :cond_c

    .line 258
    .line 259
    add-int/lit8 v16, v16, 0x1

    .line 260
    .line 261
    :cond_c
    move v9, v3

    .line 262
    :cond_d
    const/4 v1, 0x1

    .line 263
    goto :goto_8

    .line 264
    :cond_e
    move v15, v1

    .line 265
    move v9, v3

    .line 266
    move v14, v4

    .line 267
    :goto_7
    const/4 v1, 0x0

    .line 268
    goto :goto_8

    .line 269
    :cond_f
    move/from16 v19, v4

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :goto_8
    if-nez v1, :cond_12

    .line 273
    .line 274
    if-eq v11, v7, :cond_12

    .line 275
    .line 276
    add-int/lit8 v5, v5, 0x1

    .line 277
    .line 278
    if-lt v5, v10, :cond_11

    .line 279
    .line 280
    add-int/lit8 v1, v7, 0xa

    .line 281
    .line 282
    const/16 v3, 0x3e7

    .line 283
    .line 284
    if-le v1, v3, :cond_10

    .line 285
    .line 286
    move v1, v3

    .line 287
    :cond_10
    const/4 v5, 0x0

    .line 288
    :goto_9
    const/16 v16, 0x0

    .line 289
    .line 290
    goto :goto_a

    .line 291
    :cond_11
    move v1, v7

    .line 292
    move v7, v11

    .line 293
    goto :goto_9

    .line 294
    :cond_12
    move v1, v7

    .line 295
    move v7, v11

    .line 296
    :goto_a
    add-int v3, v7, v16

    .line 297
    .line 298
    const/4 v4, 0x0

    .line 299
    invoke-virtual {v6, v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    invoke-virtual {v6, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 307
    .line 308
    .line 309
    if-eqz v0, :cond_13

    .line 310
    .line 311
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    .line 312
    .line 313
    if-eqz v2, :cond_13

    .line 314
    .line 315
    iget-object v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 316
    .line 317
    iget-object v3, v2, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    iget v6, v2, Lcom/android/server/am/BGProtectManager;->recentActivityProcessLimit:I

    .line 324
    .line 325
    if-ge v3, v6, :cond_13

    .line 326
    .line 327
    invoke-static {v8}, Lcom/android/server/am/BGProtectManager;->isCachedOrPickedActivityProcess(Lcom/android/server/am/ProcessRecord;)Z

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-eqz v3, :cond_13

    .line 332
    .line 333
    iget-object v2, v2, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    :cond_13
    move v11, v7

    .line 339
    move v7, v1

    .line 340
    goto :goto_b

    .line 341
    :cond_14
    move/from16 p0, v2

    .line 342
    .line 343
    goto :goto_6

    .line 344
    :goto_b
    add-int/lit8 v2, p0, -0x1

    .line 345
    .line 346
    move-object/from16 v1, p1

    .line 347
    .line 348
    move v8, v4

    .line 349
    move/from16 v3, v18

    .line 350
    .line 351
    move/from16 v4, v19

    .line 352
    .line 353
    const/16 v6, 0x3e9

    .line 354
    .line 355
    goto/16 :goto_4

    .line 356
    .line 357
    :cond_15
    return-void

    .line 358
    nop

    .line 359
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v6, 0x0

    .line 20
    :goto_0
    const/4 v7, 0x1

    .line 21
    if-ge v6, v4, :cond_0

    .line 22
    .line 23
    move-object/from16 v8, p1

    .line 24
    .line 25
    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 30
    .line 31
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 32
    .line 33
    iput-boolean v7, v10, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 34
    .line 35
    invoke-virtual {v3, v9}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    add-int/lit8 v6, v6, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v4, v2, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    :goto_1
    if-eqz v4, :cond_15

    .line 54
    .line 55
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    .line 59
    .line 60
    if-eqz v8, :cond_1

    .line 61
    .line 62
    iget v9, v8, Lcom/android/server/am/UidRecord;->mUid:I

    .line 63
    .line 64
    invoke-virtual {v2, v9, v8}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 68
    .line 69
    iget-object v9, v8, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    .line 70
    .line 71
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    sub-int/2addr v9, v7

    .line 76
    :goto_2
    const/16 v10, -0x384

    .line 77
    .line 78
    if-ltz v9, :cond_7

    .line 79
    .line 80
    invoke-virtual {v8, v9}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    const/4 v12, 0x2

    .line 85
    invoke-virtual {v11, v12}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    iget-object v13, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 90
    .line 91
    if-eqz v12, :cond_2

    .line 92
    .line 93
    iget-object v12, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 94
    .line 95
    iget-object v12, v12, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_2
    iget-object v12, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 99
    .line 100
    iget-object v12, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 101
    .line 102
    :goto_3
    if-eqz v12, :cond_6

    .line 103
    .line 104
    if-eq v12, v4, :cond_6

    .line 105
    .line 106
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 107
    .line 108
    iget v14, v13, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 109
    .line 110
    if-lt v14, v10, :cond_3

    .line 111
    .line 112
    if-gez v14, :cond_3

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_3
    iget-boolean v10, v13, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 116
    .line 117
    or-int/2addr v6, v10

    .line 118
    if-eqz v10, :cond_4

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_4
    const/16 v10, 0x20

    .line 122
    .line 123
    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    if-eqz v10, :cond_5

    .line 128
    .line 129
    const v10, 0x8000080

    .line 130
    .line 131
    .line 132
    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-eqz v10, :cond_5

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_5
    invoke-virtual {v3, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    iput-boolean v7, v13, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 143
    .line 144
    :cond_6
    :goto_4
    add-int/lit8 v9, v9, -0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_7
    iget-object v9, v4, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 148
    .line 149
    iget-object v11, v9, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    sub-int/2addr v11, v7

    .line 156
    :goto_5
    if-ltz v11, :cond_b

    .line 157
    .line 158
    iget-object v12, v9, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    check-cast v12, Lcom/android/server/am/ContentProviderConnection;

    .line 165
    .line 166
    iget-object v12, v12, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 167
    .line 168
    iget-object v12, v12, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 169
    .line 170
    if-eqz v12, :cond_a

    .line 171
    .line 172
    if-eq v12, v4, :cond_a

    .line 173
    .line 174
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 175
    .line 176
    iget v14, v13, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 177
    .line 178
    if-lt v14, v10, :cond_8

    .line 179
    .line 180
    if-gez v14, :cond_8

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_8
    iget-boolean v14, v13, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 184
    .line 185
    or-int/2addr v6, v14

    .line 186
    if-eqz v14, :cond_9

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_9
    invoke-virtual {v3, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    iput-boolean v7, v13, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 193
    .line 194
    :cond_a
    :goto_6
    add-int/lit8 v11, v11, -0x1

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_b
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 198
    .line 199
    iget-object v9, v9, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    .line 200
    .line 201
    iget v11, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 202
    .line 203
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    check-cast v9, Ljava/util/List;

    .line 208
    .line 209
    if-eqz v9, :cond_c

    .line 210
    .line 211
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    goto :goto_7

    .line 216
    :cond_c
    const/4 v11, 0x0

    .line 217
    :goto_7
    sub-int/2addr v11, v7

    .line 218
    :goto_8
    if-ltz v11, :cond_e

    .line 219
    .line 220
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 225
    .line 226
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 227
    .line 228
    iget-boolean v13, v13, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 229
    .line 230
    or-int/2addr v6, v13

    .line 231
    if-eqz v13, :cond_d

    .line 232
    .line 233
    goto :goto_9

    .line 234
    :cond_d
    invoke-virtual {v3, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 238
    .line 239
    iput-boolean v7, v12, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 240
    .line 241
    :goto_9
    add-int/lit8 v11, v11, -0x1

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_e
    iget-boolean v9, v4, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 245
    .line 246
    if-eqz v9, :cond_14

    .line 247
    .line 248
    iget-object v9, v8, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 249
    .line 250
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 251
    .line 252
    .line 253
    move-result v9

    .line 254
    sub-int/2addr v9, v7

    .line 255
    :goto_a
    if-ltz v9, :cond_14

    .line 256
    .line 257
    invoke-virtual {v8, v9}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    .line 258
    .line 259
    .line 260
    move-result-object v11

    .line 261
    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 262
    .line 263
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 264
    .line 265
    .line 266
    move-result v12

    .line 267
    sub-int/2addr v12, v7

    .line 268
    :goto_b
    if-ltz v12, :cond_13

    .line 269
    .line 270
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v13

    .line 274
    check-cast v13, Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 277
    .line 278
    .line 279
    move-result v14

    .line 280
    sub-int/2addr v14, v7

    .line 281
    :goto_c
    if-ltz v14, :cond_12

    .line 282
    .line 283
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v15

    .line 287
    check-cast v15, Lcom/android/server/am/ConnectionRecord;

    .line 288
    .line 289
    iget-object v15, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 290
    .line 291
    iget-object v15, v15, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    .line 292
    .line 293
    if-eqz v15, :cond_11

    .line 294
    .line 295
    if-eq v15, v4, :cond_11

    .line 296
    .line 297
    iget-object v5, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 298
    .line 299
    iget v7, v5, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 300
    .line 301
    if-lt v7, v10, :cond_f

    .line 302
    .line 303
    if-gez v7, :cond_f

    .line 304
    .line 305
    goto :goto_d

    .line 306
    :cond_f
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 307
    .line 308
    if-eqz v7, :cond_10

    .line 309
    .line 310
    goto :goto_d

    .line 311
    :cond_10
    invoke-virtual {v3, v15}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    const/4 v7, 0x1

    .line 315
    iput-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 316
    .line 317
    :cond_11
    :goto_d
    add-int/lit8 v14, v14, -0x1

    .line 318
    .line 319
    const/4 v7, 0x1

    .line 320
    goto :goto_c

    .line 321
    :cond_12
    add-int/lit8 v12, v12, -0x1

    .line 322
    .line 323
    const/4 v7, 0x1

    .line 324
    goto :goto_b

    .line 325
    :cond_13
    add-int/lit8 v9, v9, -0x1

    .line 326
    .line 327
    const/4 v7, 0x1

    .line 328
    goto :goto_a

    .line 329
    :cond_14
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 334
    .line 335
    const/4 v7, 0x1

    .line 336
    goto/16 :goto_1

    .line 337
    .line 338
    :cond_15
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-lez v0, :cond_16

    .line 343
    .line 344
    const/4 v2, 0x1

    .line 345
    sub-int/2addr v0, v2

    .line 346
    const/4 v2, 0x0

    .line 347
    :goto_e
    if-ge v2, v0, :cond_16

    .line 348
    .line 349
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 354
    .line 355
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 360
    .line 361
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 362
    .line 363
    const/4 v7, 0x0

    .line 364
    iput-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 365
    .line 366
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 367
    .line 368
    iput-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 369
    .line 370
    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    add-int/lit8 v2, v2, 0x1

    .line 377
    .line 378
    add-int/lit8 v0, v0, -0x1

    .line 379
    .line 380
    goto :goto_e

    .line 381
    :cond_16
    return v6
.end method

.method public final computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p3

    const/4 v9, 0x2

    const/4 v7, -0x1

    .line 1
    iget-object v5, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v6, 0x1

    const/4 v4, 0x0

    if-eqz p10, :cond_1

    .line 2
    iget v11, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 3
    iget v13, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    if-ne v11, v13, :cond_1

    .line 4
    iget v1, v5, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    if-ne v13, v1, :cond_0

    return v4

    .line 5
    :cond_0
    iput-boolean v6, v5, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    .line 6
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return v4

    .line 7
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialAdj(Lcom/android/server/am/ProcessRecord;)I

    move-result v13

    .line 8
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialProcState(Lcom/android/server/am/ProcessRecord;)I

    move-result v11

    .line 9
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialCapability(Lcom/android/server/am/ProcessRecord;)I

    move-result v12

    .line 10
    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const-wide v1, 0x7fffffffffffffffL

    .line 11
    iput-wide v1, v10, Lcom/android/server/am/ProcessStateRecord;->mFollowupUpdateUptimeMs:J

    .line 12
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    const/16 v10, 0x13

    if-nez v1, :cond_2

    .line 13
    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 14
    iput v0, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 15
    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 16
    invoke-virtual {v5, v10}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 17
    iput v10, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    const/16 v0, 0x3e7

    .line 18
    invoke-virtual {v5, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 19
    invoke-virtual {v5, v0, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 20
    iget v0, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 21
    iput v0, v5, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 22
    iput v4, v5, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    return v4

    .line 23
    :cond_2
    iput v4, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    const/4 v1, 0x0

    .line 24
    iput-object v1, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 25
    iput-object v1, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    if-eqz p10, :cond_3

    if-nez p7, :cond_5

    .line 26
    :cond_3
    iput-boolean v4, v5, Lcom/android/server/am/ProcessStateRecord;->mNoKillOnBgRestrictedAndIdle:Z

    .line 27
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    .line 28
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eqz v2, :cond_4

    .line 29
    iget-boolean v2, v2, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_0

    :cond_4
    move v2, v4

    .line 30
    :goto_0
    iput-boolean v2, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    .line 31
    :cond_5
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 32
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 33
    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 34
    iget v10, v5, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    const/4 v3, 0x3

    if-gtz v10, :cond_13

    if-ne v1, v2, :cond_6

    .line 35
    const-string v1, "Making fixed: "

    .line 36
    invoke-static {v1, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    .line 37
    :cond_6
    const-string/jumbo v1, "fixed"

    iput-object v1, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 38
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 39
    iput v1, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 40
    iget v1, v5, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 41
    invoke-virtual {v5, v1, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 42
    iput-boolean v4, v5, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 43
    invoke-virtual {v5, v9}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    const/16 v1, 0x7f

    .line 44
    iput v1, v5, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 45
    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 46
    iput-boolean v6, v5, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    if-ne v15, v14, :cond_7

    .line 47
    iput-boolean v4, v5, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    .line 48
    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 49
    const-string/jumbo v1, "pers-top-activity"

    iput-object v1, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    goto :goto_2

    .line 50
    :cond_7
    iget-boolean v1, v5, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    if-eqz v1, :cond_8

    .line 51
    iput-boolean v4, v5, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    .line 52
    const-string/jumbo v1, "pers-top-ui"

    iput-object v1, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    goto :goto_2

    .line 53
    :cond_8
    iget v1, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    if-ne v1, v7, :cond_a

    .line 54
    iget-object v1, v5, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 55
    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    move v1, v6

    goto :goto_1

    :cond_9
    move v1, v4

    .line 56
    :goto_1
    iput v1, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 57
    :cond_a
    iget v1, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    if-ne v1, v6, :cond_b

    .line 58
    iput-boolean v4, v5, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    .line 59
    :cond_b
    :goto_2
    iget-boolean v1, v5, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    if-nez v1, :cond_f

    .line 60
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v6, :cond_e

    .line 61
    iget-boolean v0, v5, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v0, :cond_c

    goto :goto_3

    .line 62
    :cond_c
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 63
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 64
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, v1, :cond_d

    goto :goto_4

    :cond_d
    const/4 v10, 0x5

    .line 65
    invoke-virtual {v5, v10}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 66
    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_4

    .line 67
    :cond_e
    :goto_3
    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 68
    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 69
    :cond_f
    :goto_4
    iget v0, v5, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 70
    iput v0, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 71
    iget v0, v5, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 72
    invoke-virtual {v5, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 73
    iget v0, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 74
    iput v0, v5, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 75
    iget-boolean v0, v15, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v0, :cond_10

    .line 76
    invoke-virtual {v5, v9}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 77
    :cond_10
    iget v0, v5, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    if-lt v0, v13, :cond_12

    .line 78
    iget v0, v5, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-ge v0, v11, :cond_11

    goto :goto_5

    :cond_11
    move v6, v4

    :cond_12
    :goto_5
    return v6

    :cond_13
    const/4 v10, 0x5

    .line 79
    iput-boolean v4, v5, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    .line 80
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    if-eqz p7, :cond_14

    .line 81
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialCapability(Lcom/android/server/am/ProcessRecord;)I

    move-result v27

    :goto_6
    move/from16 v28, v13

    goto :goto_7

    :cond_14
    move/from16 v27, v4

    goto :goto_6

    :goto_7
    if-ne v15, v14, :cond_17

    if-ne v3, v9, :cond_17

    .line 82
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v10, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 83
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 84
    iget v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    if-nez v10, :cond_15

    .line 85
    const-string/jumbo v10, "top-activity"

    iput-object v10, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const/4 v10, 0x3

    goto :goto_8

    .line 86
    :cond_15
    const-string/jumbo v10, "intermediate-top-activity"

    iput-object v10, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    move v10, v9

    :goto_8
    if-ne v1, v2, :cond_16

    .line 87
    const-string v13, "Making top: "

    .line 88
    invoke-static {v13, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_16
    move v13, v6

    move/from16 v31, v13

    move/from16 v7, v27

    move v6, v4

    :goto_9
    move/from16 v27, v31

    goto/16 :goto_15

    .line 89
    :cond_17
    iget-boolean v10, v5, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v10, :cond_19

    .line 90
    const-string/jumbo v10, "running-remote-anim"

    iput-object v10, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_18

    .line 91
    const-string v10, "Making running remote anim: "

    .line 92
    invoke-static {v10, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_18
    move v9, v3

    move v13, v4

    move/from16 v31, v6

    move/from16 v7, v27

    const/4 v10, 0x3

    move/from16 v27, v31

    const/16 v6, 0x64

    goto/16 :goto_15

    .line 93
    :cond_19
    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v10, :cond_1b

    .line 94
    const-string/jumbo v10, "instrumentation"

    iput-object v10, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const/16 v10, 0x10

    or-int/lit8 v27, v27, 0x10

    if-ne v1, v2, :cond_1a

    .line 95
    const-string v10, "Making instrumentation: "

    .line 96
    invoke-static {v10, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_1a
    move v6, v4

    move v13, v6

    move/from16 v31, v13

    move v10, v9

    move/from16 v7, v27

    const/4 v9, 0x4

    goto :goto_9

    .line 97
    :cond_1b
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    .line 98
    iget v13, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    if-ne v13, v7, :cond_22

    .line 99
    iget-object v13, v5, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 100
    iget-object v7, v5, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v13, v7}, Lcom/android/server/am/BroadcastQueueModernImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 101
    invoke-virtual {v13, v9}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v13

    if-ltz v13, :cond_1f

    .line 102
    invoke-virtual {v9}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v13

    if-nez v13, :cond_1c

    goto :goto_b

    .line 103
    :cond_1c
    iget v13, v9, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    iget v6, v9, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    if-le v13, v6, :cond_1d

    :goto_a
    const/4 v6, 0x2

    goto :goto_c

    .line 104
    :cond_1d
    iget-object v6, v9, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz v6, :cond_1e

    invoke-virtual {v6}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_a

    :cond_1e
    move v6, v4

    goto :goto_c

    :cond_1f
    :goto_b
    const/high16 v6, -0x80000000

    .line 105
    :goto_c
    aput v6, v10, v4

    const/high16 v9, -0x80000000

    if-eq v6, v9, :cond_20

    const/4 v9, 0x1

    goto :goto_d

    :cond_20
    move v9, v4

    .line 106
    :goto_d
    iput v9, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/16 v10, 0x20

    const/4 v13, 0x1

    if-ne v9, v13, :cond_21

    .line 107
    iput v6, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 108
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v6, v10}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_e

    .line 109
    :cond_21
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v6, v10}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    goto :goto_e

    :cond_22
    move v13, v6

    .line 110
    :goto_e
    iget v6, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    if-ne v6, v13, :cond_24

    .line 111
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    aget v10, v6, v4

    .line 112
    const-string/jumbo v6, "broadcast"

    iput-object v6, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_23

    .line 113
    const-string v6, "Making broadcast: "

    .line 114
    invoke-static {v6, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_23
    const/16 v6, 0xb

    move v13, v4

    move/from16 v31, v13

    move v9, v6

    move/from16 v7, v27

    const/16 v27, 0x1

    move/from16 v6, v31

    goto/16 :goto_15

    .line 115
    :cond_24
    iget-object v6, v8, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    .line 116
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_27

    .line 117
    iget-boolean v6, v8, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    if-eqz v6, :cond_25

    const/4 v10, 0x2

    goto :goto_f

    :cond_25
    move v10, v4

    .line 118
    :goto_f
    const-string/jumbo v6, "exec-service"

    iput-object v6, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_26

    .line 119
    const-string v6, "Making exec-service: "

    .line 120
    invoke-static {v6, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_26
    move v6, v4

    move v13, v6

    move/from16 v31, v13

    move/from16 v7, v27

    const/16 v9, 0xa

    const/16 v27, 0x1

    goto/16 :goto_15

    :cond_27
    if-ne v15, v14, :cond_29

    .line 121
    const-string/jumbo v6, "top-sleeping"

    iput-object v6, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_28

    .line 122
    const-string v6, "Making top (sleeping): "

    .line 123
    invoke-static {v6, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_28
    move v9, v3

    move v6, v4

    move v10, v6

    move v13, v10

    move/from16 v7, v27

    :goto_10
    const/16 v27, 0x1

    const/16 v31, 0x1

    goto/16 :goto_15

    .line 124
    :cond_29
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 125
    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 126
    iget-object v9, v6, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHasActivitiesKeptAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 127
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_2a

    :goto_11
    move v6, v4

    goto :goto_12

    .line 128
    :cond_2a
    iget-object v9, v6, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v9

    .line 129
    :try_start_0
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    .line 130
    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 131
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v6, 0x1

    goto :goto_12

    :catchall_0
    move-exception v0

    goto/16 :goto_68

    .line 132
    :cond_2c
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_11

    :goto_12
    if-eqz v6, :cond_2d

    .line 133
    const-string/jumbo v6, "force-keep-alive"

    iput-object v6, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    :goto_13
    move v9, v3

    move v10, v4

    move v13, v10

    move/from16 v7, v27

    const/16 v6, 0x64

    goto :goto_10

    .line 134
    :cond_2d
    iget-boolean v6, v15, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    if-eqz v6, :cond_2f

    .line 135
    const-string/jumbo v6, "dedicated"

    iput-object v6, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 136
    iget-object v6, v15, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 137
    iget-boolean v6, v6, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-eqz v6, :cond_2e

    goto :goto_13

    :cond_2e
    move v10, v4

    move v13, v10

    move/from16 v7, v27

    const/16 v6, 0x64

    :goto_14
    const/16 v9, 0x13

    goto :goto_10

    :cond_2f
    if-eqz p10, :cond_30

    .line 138
    iget-boolean v6, v5, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    if-nez v6, :cond_31

    .line 139
    :cond_30
    const-string/jumbo v6, "cch-empty"

    iput-object v6, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    :cond_31
    if-ne v1, v2, :cond_32

    .line 140
    const-string v6, "Making empty: "

    .line 141
    invoke-static {v6, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_32
    move/from16 v6, p2

    move v10, v4

    move v13, v10

    move/from16 v7, v27

    goto :goto_14

    :goto_15
    if-ne v15, v14, :cond_33

    const/4 v4, 0x1

    :cond_33
    if-nez v4, :cond_46

    .line 142
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v33

    if-eqz v33, :cond_46

    move/from16 v33, v7

    .line 143
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    move/from16 v34, v11

    .line 144
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    move/from16 v35, v12

    const/16 v12, -0x2710

    if-eq v11, v12, :cond_34

    const/16 v11, 0x10

    goto/16 :goto_19

    .line 145
    :cond_34
    iget-object v11, v5, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 146
    iput-object v11, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    .line 147
    iput v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 148
    iput-boolean v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 149
    iput-boolean v13, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    .line 150
    iput v9, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 151
    iput v10, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 152
    iput v2, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    .line 153
    iput v1, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    .line 154
    iput v3, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    .line 155
    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 156
    iget-object v3, v3, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 157
    iput-object v3, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 158
    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 159
    iget v3, v3, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v4, 0x10000

    and-int v6, v3, v4

    if-eqz v6, :cond_38

    .line 160
    iget v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iget-object v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    const-string/jumbo v9, "vis-activity"

    const/16 v10, 0x64

    if-le v4, v10, :cond_35

    .line 161
    iput v10, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 162
    iput-object v9, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 163
    iget v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v10, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v4, v10, :cond_35

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "Raise adj to vis-activity: "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 165
    :cond_35
    iget v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget v10, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    if-le v4, v10, :cond_36

    .line 166
    iput v10, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 167
    iput-object v9, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 168
    iget v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v9, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v4, v9, :cond_36

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Raise procstate to vis-activity (top): "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 170
    :cond_36
    iget v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const/4 v6, 0x2

    if-ge v4, v6, :cond_37

    .line 171
    iput v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    :cond_37
    const/4 v4, 0x1

    .line 172
    iput-boolean v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 173
    iput-boolean v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    :goto_16
    const/16 v11, 0x10

    goto/16 :goto_18

    :cond_38
    const/high16 v4, 0x20000

    and-int/2addr v4, v3

    if-eqz v4, :cond_3c

    .line 174
    iget v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iget-object v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    const-string/jumbo v9, "pause-activity"

    const/16 v10, 0xc8

    if-le v4, v10, :cond_39

    .line 175
    iput v10, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 176
    iput-object v9, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 177
    iget v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v10, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v4, v10, :cond_39

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "Raise adj to pause-activity: "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 179
    :cond_39
    iget v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget v10, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    if-le v4, v10, :cond_3a

    .line 180
    iput v10, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 181
    iput-object v9, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 182
    iget v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v9, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v4, v9, :cond_3a

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Raise procstate to pause-activity (top): "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 184
    :cond_3a
    iget v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const/4 v6, 0x2

    if-ge v4, v6, :cond_3b

    .line 185
    iput v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    :cond_3b
    const/4 v4, 0x1

    .line 186
    iput-boolean v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    const/4 v4, 0x0

    .line 187
    iput-boolean v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    goto :goto_16

    :cond_3c
    const/high16 v4, 0x40000

    and-int/2addr v4, v3

    if-eqz v4, :cond_40

    const/high16 v4, 0x80000

    and-int/2addr v4, v3

    if-eqz v4, :cond_3d

    const/4 v4, 0x1

    goto :goto_17

    :cond_3d
    const/4 v4, 0x0

    .line 188
    :goto_17
    iget v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iget-object v9, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    const-string/jumbo v10, "stop-activity"

    const/16 v11, 0xc8

    if-le v6, v11, :cond_3e

    .line 189
    iput v11, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 190
    iput-object v10, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 191
    iget v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v11, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v6, v11, :cond_3e

    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Raise adj to stop-activity: "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_3e
    if-nez v4, :cond_3f

    .line 193
    iget v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const/16 v6, 0xf

    if-le v4, v6, :cond_3f

    .line 194
    iput v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 195
    iput-object v10, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 196
    iget v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v4, v6, :cond_3f

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Raise procstate to stop-activity: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_3f
    const/4 v4, 0x1

    .line 198
    iput-boolean v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    const/4 v4, 0x0

    .line 199
    iput-boolean v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    goto/16 :goto_16

    .line 200
    :cond_40
    iget v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const/16 v11, 0x10

    if-le v4, v11, :cond_41

    .line 201
    iput v11, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 202
    const-string/jumbo v4, "cch-act"

    iput-object v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 203
    iget v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v4, v6, :cond_41

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Raise procstate to cached activity: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v6, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_41
    const/4 v4, 0x0

    .line 205
    iput-boolean v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    :goto_18
    const v4, 0xffff

    and-int/2addr v3, v4

    const/16 v4, 0x63

    .line 206
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 207
    iget v4, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iput v4, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 208
    iget-boolean v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    iput-boolean v6, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    .line 209
    iget-boolean v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    iput v6, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 210
    iget v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iput v6, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 211
    iget v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    iput v6, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 212
    iget-object v6, v7, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedAdjType:Ljava/lang/String;

    const/16 v6, 0x64

    if-ne v4, v6, :cond_42

    add-int/2addr v4, v3

    .line 213
    iput v4, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 214
    :cond_42
    :goto_19
    iget v6, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 215
    iget-boolean v4, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    .line 216
    iget v3, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v7, -0x1

    if-ne v3, v7, :cond_44

    .line 217
    iget-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 218
    iget v3, v3, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v7, 0x10000

    and-int/2addr v3, v7

    if-eqz v3, :cond_43

    const/4 v3, 0x1

    goto :goto_1a

    :cond_43
    const/4 v3, 0x0

    .line 219
    :goto_1a
    iput v3, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 220
    :cond_44
    iget v3, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_45

    const/4 v3, 0x1

    goto :goto_1b

    :cond_45
    const/4 v3, 0x0

    .line 221
    :goto_1b
    iget v9, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 222
    iget v7, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 223
    iget-object v10, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedAdjType:Ljava/lang/String;

    .line 224
    iput-object v10, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    move v12, v3

    :goto_1c
    move v13, v4

    goto :goto_1d

    :cond_46
    move/from16 v33, v7

    move/from16 v34, v11

    move/from16 v35, v12

    const/16 v11, 0x10

    move v7, v10

    move v12, v13

    goto :goto_1c

    :goto_1d
    const/16 v3, 0x12

    if-le v9, v3, :cond_4a

    .line 225
    iget v4, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    const/4 v10, -0x1

    if-ne v4, v10, :cond_47

    .line 226
    iget-object v4, v5, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 227
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 228
    iget-boolean v4, v4, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    .line 229
    iput v4, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 230
    :cond_47
    iget v4, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_48

    const/4 v4, 0x1

    goto :goto_1e

    :cond_48
    const/4 v4, 0x0

    :goto_1e
    if-eqz v4, :cond_4a

    .line 231
    const-string/jumbo v4, "cch-rec"

    iput-object v4, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_49

    .line 232
    const-string v4, "Raise procstate to cached recent: "

    .line 233
    invoke-static {v4, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_49
    move v9, v3

    .line 234
    :cond_4a
    iget-boolean v3, v8, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 235
    invoke-virtual {v8}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v4

    if-eqz v3, :cond_50

    .line 236
    iget-boolean v10, v8, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-nez v10, :cond_4b

    :goto_1f
    move/from16 v21, v7

    :goto_20
    const/4 v7, 0x0

    goto :goto_24

    .line 237
    :cond_4b
    invoke-virtual {v8}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v10

    if-eqz v10, :cond_4c

    goto :goto_1f

    .line 238
    :cond_4c
    iget-object v10, v8, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v10

    const/16 v21, 0x1

    add-int/lit8 v10, v10, -0x1

    :goto_21
    if-ltz v10, :cond_4f

    .line 239
    iget-object v11, v8, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ServiceRecord;

    .line 240
    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v21

    if-eqz v21, :cond_4e

    move/from16 v21, v7

    .line 241
    iget-object v7, v11, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-eqz v7, :cond_4d

    .line 242
    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord;->getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    move-result-wide v36

    cmp-long v7, v36, p5

    if-ltz v7, :cond_4d

    goto :goto_20

    :cond_4d
    :goto_22
    const/4 v7, -0x1

    goto :goto_23

    :cond_4e
    move/from16 v21, v7

    goto :goto_22

    :goto_23
    add-int/2addr v10, v7

    move/from16 v7, v21

    const/16 v11, 0x10

    goto :goto_21

    :cond_4f
    move/from16 v21, v7

    const/4 v7, 0x1

    :goto_24
    if-nez v7, :cond_51

    const/4 v7, 0x1

    :goto_25
    const/16 v10, 0xc8

    goto :goto_26

    :cond_50
    move/from16 v21, v7

    :cond_51
    const/4 v7, 0x0

    goto :goto_25

    :goto_26
    const/4 v11, 0x4

    if-gt v6, v10, :cond_53

    if-le v9, v11, :cond_52

    goto :goto_27

    :cond_52
    const/4 v4, 0x0

    goto :goto_2a

    :cond_53
    :goto_27
    if-eqz v3, :cond_54

    if-eqz v4, :cond_54

    .line 243
    const-string/jumbo v3, "fg-service"

    move v7, v11

    const/16 v4, 0xc8

    const/16 v10, 0x10

    goto :goto_29

    :cond_54
    if-eqz v7, :cond_55

    .line 244
    const-string/jumbo v3, "fg-service-short"

    const/16 v4, 0xe2

    move v7, v11

    :goto_28
    const/4 v10, 0x0

    goto :goto_29

    .line 245
    :cond_55
    iget-boolean v3, v5, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    if-eqz v3, :cond_56

    .line 246
    const-string/jumbo v3, "has-overlay-ui"

    const/16 v4, 0xc8

    const/4 v7, 0x6

    goto :goto_28

    :cond_56
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto :goto_28

    :goto_29
    if-eqz v3, :cond_58

    .line 247
    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_57

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Raise to "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_57
    move v6, v4

    move v9, v7

    move v4, v10

    const/16 v21, 0x2

    goto :goto_2a

    :cond_58
    move v4, v10

    .line 249
    :goto_2a
    iget-boolean v3, v8, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-eqz v3, :cond_5c

    const/16 v3, 0x32

    if-le v6, v3, :cond_5c

    move v7, v4

    .line 250
    iget-wide v3, v5, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    .line 251
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v25, v12

    iget-wide v11, v10, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long/2addr v3, v11

    cmp-long v3, v3, p5

    if-gtz v3, :cond_59

    .line 252
    iget v3, v5, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_5d

    .line 253
    :cond_59
    invoke-virtual {v8}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 254
    const-string/jumbo v3, "fg-service-act"

    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const/16 v6, 0x32

    goto :goto_2b

    .line 255
    :cond_5a
    const-string/jumbo v3, "fg-service-short-act"

    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const/16 v3, 0x33

    move v6, v3

    :goto_2b
    if-ne v1, v2, :cond_5b

    .line 256
    const-string v3, "Raise to recent fg: "

    .line 257
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    .line 258
    :cond_5b
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    .line 259
    invoke-static {}, Lcom/android/server/am/Flags;->followUpOomadjUpdates()Z

    goto :goto_2c

    :cond_5c
    move v7, v4

    move/from16 v25, v12

    .line 260
    :cond_5d
    :goto_2c
    iget-boolean v3, v8, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v3, :cond_5f

    .line 261
    iget-wide v3, v8, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v10, 0x0

    cmp-long v3, v3, v10

    if-lez v3, :cond_5e

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v10, v8, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    sub-long/2addr v3, v10

    iget-object v10, v8, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v10, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    cmp-long v3, v3, v10

    if-gez v3, :cond_5e

    goto :goto_2d

    :cond_5e
    const/4 v3, 0x0

    goto :goto_2e

    :cond_5f
    :goto_2d
    const/4 v3, 0x1

    :goto_2e
    if-eqz v3, :cond_62

    const/16 v3, 0x34

    if-le v6, v3, :cond_62

    .line 263
    iget-wide v10, v5, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    .line 264
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v4, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    add-long/2addr v10, v3

    cmp-long v3, v10, p5

    if-gtz v3, :cond_60

    .line 265
    iget v3, v5, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_62

    .line 266
    :cond_60
    const-string/jumbo v3, "top-ej-act"

    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_61

    .line 267
    const-string v3, "Raise to recent fg for EJ: "

    .line 268
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    .line 269
    :cond_61
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    .line 270
    invoke-static {}, Lcom/android/server/am/Flags;->followUpOomadjUpdates()Z

    const/16 v3, 0xc8

    const/16 v6, 0x34

    goto :goto_2f

    :cond_62
    const/16 v3, 0xc8

    :goto_2f
    if-gt v6, v3, :cond_63

    const/16 v4, 0x8

    if-le v9, v4, :cond_65

    .line 271
    :cond_63
    iget-object v4, v5, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    if-eqz v4, :cond_65

    .line 272
    const-string/jumbo v6, "force-imp"

    iput-object v6, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 273
    iput-object v4, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    if-ne v1, v2, :cond_64

    .line 274
    const-string v4, "Raise to force imp: "

    .line 275
    invoke-static {v4, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_64
    move v6, v3

    const/16 v9, 0x8

    const/16 v21, 0x2

    .line 276
    :cond_65
    iget v3, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_67

    .line 277
    iget-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 278
    iget-object v4, v3, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 279
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v3, v4, :cond_66

    const/4 v3, 0x1

    goto :goto_30

    :cond_66
    const/4 v3, 0x0

    .line 280
    :goto_30
    iput v3, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 281
    :cond_67
    iget v3, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_68

    const/4 v3, 0x1

    goto :goto_31

    :cond_68
    const/4 v3, 0x0

    :goto_31
    if-eqz v3, :cond_6c

    .line 282
    const-string/jumbo v3, "heavy"

    const/16 v4, 0x190

    if-le v6, v4, :cond_6a

    .line 283
    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_69

    .line 284
    const-string v6, "Raise adj to heavy: "

    .line 285
    invoke-static {v6, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_69
    move v6, v4

    const/16 v21, 0x0

    :cond_6a
    const/16 v4, 0xd

    if-le v9, v4, :cond_6c

    .line 286
    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_6b

    .line 287
    const-string v3, "Raise procstate to heavy: "

    .line 288
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_6b
    move v9, v4

    .line 289
    :cond_6c
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 290
    const-string/jumbo v3, "home"

    const/16 v4, 0x258

    if-le v6, v4, :cond_6e

    .line 291
    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_6d

    .line 292
    const-string v6, "Raise adj to home: "

    .line 293
    invoke-static {v6, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    .line 294
    :cond_6d
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v10, v6, Lcom/android/server/am/ActivityManagerService;->currentLauncherName:Ljava/lang/String;

    move v6, v4

    const/16 v21, 0x0

    :cond_6e
    const/16 v4, 0xe

    if-le v9, v4, :cond_70

    .line 295
    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_6f

    .line 296
    const-string v3, "Raise procstate to home: "

    .line 297
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_6f
    move v3, v6

    move v6, v4

    goto :goto_32

    :cond_70
    move v3, v6

    move v6, v9

    .line 298
    :goto_32
    iget v4, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    const/4 v9, -0x1

    if-ne v4, v9, :cond_72

    .line 299
    iget-object v4, v5, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 300
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 301
    iget-object v10, v4, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 302
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v4, v10, :cond_71

    const/4 v4, 0x1

    .line 303
    iput v4, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 304
    iget-object v10, v5, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_33

    :cond_71
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 305
    iput v10, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    goto :goto_33

    :cond_72
    const/4 v4, 0x1

    .line 306
    :goto_33
    iget v10, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    if-ne v10, v4, :cond_73

    const/4 v4, 0x1

    goto :goto_34

    :cond_73
    const/4 v4, 0x0

    :goto_34
    const/16 v12, 0x2bc

    if-eqz v4, :cond_7a

    .line 307
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v4

    if-eqz v4, :cond_7a

    const/16 v4, 0xf

    if-lt v6, v4, :cond_75

    .line 308
    iget v10, v5, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    if-ne v10, v4, :cond_75

    .line 309
    iget-wide v10, v5, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    .line 310
    sget-wide v36, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    add-long v10, v10, v36

    cmp-long v4, v10, p5

    if-gtz v4, :cond_75

    .line 311
    const-string/jumbo v3, "previous-expired"

    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_74

    .line 312
    const-string v3, "Expire prev adj: "

    .line 313
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_74
    const/16 v3, 0x384

    const/4 v4, 0x0

    const/16 v6, 0xf

    const/16 v10, 0xf

    goto :goto_37

    .line 314
    :cond_75
    const-string/jumbo v4, "previous"

    if-le v3, v12, :cond_77

    .line 315
    iput-object v4, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_76

    .line 316
    const-string v3, "Raise adj to prev: "

    .line 317
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_76
    move v3, v12

    const/16 v10, 0xf

    const/16 v21, 0x0

    goto :goto_35

    :cond_77
    const/16 v10, 0xf

    :goto_35
    if-le v6, v10, :cond_79

    .line 318
    iput-object v4, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_78

    .line 319
    const-string v4, "Raise procstate to prev: "

    .line 320
    invoke-static {v4, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_78
    move v6, v10

    .line 321
    :cond_79
    sget v4, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 322
    invoke-static {}, Lcom/android/server/am/Flags;->followUpOomadjUpdates()Z

    :goto_36
    move/from16 v4, v21

    goto :goto_37

    :cond_7a
    const/16 v10, 0xf

    goto :goto_36

    :goto_37
    if-eqz p7, :cond_7b

    .line 323
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 324
    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 325
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 326
    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 327
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 328
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_7b
    const/4 v11, 0x0

    move/from16 v48, v6

    move v6, v4

    move/from16 v4, v48

    .line 329
    invoke-virtual {v5, v3, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 330
    iput v4, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 331
    iput-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    .line 332
    iget-object v11, v5, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 333
    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v9, 0x80

    invoke-virtual {v11, v9}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 334
    iget v9, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 335
    iput v9, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 336
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v11, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/BackupRecord;

    if-eqz v9, :cond_81

    .line 337
    iget-object v9, v9, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v15, v9, :cond_81

    .line 338
    const-string/jumbo v9, "backup"

    const/16 v11, 0x12c

    if-le v3, v11, :cond_7e

    const/16 v10, 0x8

    if-le v4, v10, :cond_7c

    const/16 v4, 0x8

    .line 339
    :cond_7c
    iput-object v9, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_7d

    .line 340
    const-string v3, "Raise adj to backup: "

    .line 341
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_7d
    move v3, v11

    :cond_7e
    const/16 v10, 0x9

    if-le v4, v10, :cond_80

    .line 342
    iput-object v9, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_7f

    .line 343
    const-string v4, "Raise procstate to backup: "

    .line 344
    invoke-static {v4, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_7f
    move v4, v10

    :cond_80
    const/16 v31, 0x0

    .line 345
    :cond_81
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialIsCurBoundByNonBgRestrictedApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v9

    .line 346
    iput-boolean v9, v5, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    const/4 v9, 0x0

    .line 347
    iput-boolean v9, v5, Lcom/android/server/am/ProcessStateRecord;->mScheduleLikeTopApp:Z

    .line 348
    iget-object v9, v8, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    move/from16 v20, v7

    move v11, v9

    move/from16 v7, v33

    :goto_38
    if-ltz v11, :cond_82

    if-gtz v3, :cond_83

    if-eqz v6, :cond_83

    const/4 v9, 0x2

    if-le v4, v9, :cond_82

    goto :goto_39

    :cond_82
    move/from16 v40, v1

    move/from16 v38, v2

    move-object v14, v5

    move-object/from16 v41, v8

    move/from16 v46, v13

    move/from16 v44, v25

    move/from16 v45, v28

    move/from16 v42, v34

    move/from16 v43, v35

    const/4 v0, 0x1

    const/16 v10, 0x1f4

    const/4 v13, -0x1

    const/16 v16, 0x10

    goto/16 :goto_49

    .line 349
    :cond_83
    :goto_39
    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v9

    .line 350
    iget-boolean v12, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v12, :cond_86

    const/4 v12, 0x1

    .line 351
    iput-boolean v12, v5, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    .line 352
    iget-object v12, v5, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 353
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v10, 0x80

    invoke-virtual {v12, v10}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    .line 354
    const-string/jumbo v10, "started-services"

    const/16 v12, 0xa

    if-le v4, v12, :cond_85

    .line 355
    iput-object v10, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_84

    .line 356
    const-string v4, "Raise procstate to started service: "

    .line 357
    invoke-static {v4, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_84
    move v4, v12

    .line 358
    :cond_85
    iget-boolean v12, v9, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v12, :cond_87

    .line 359
    iget-boolean v12, v5, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    if-eqz v12, :cond_87

    .line 360
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v12

    if-nez v12, :cond_87

    const/16 v12, 0x1f4

    if-le v3, v12, :cond_86

    .line 361
    const-string/jumbo v10, "cch-started-ui-services"

    iput-object v10, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    :cond_86
    move/from16 v33, v11

    move/from16 v37, v13

    goto :goto_3b

    .line 362
    :cond_87
    iget-boolean v12, v9, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v12, :cond_88

    move/from16 v33, v11

    iget-wide v11, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move/from16 v36, v4

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v37, v13

    iget-wide v13, v4, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v11, v13

    cmp-long v4, p5, v11

    if-gez v4, :cond_8a

    goto :goto_3a

    :cond_88
    move/from16 v36, v4

    move/from16 v33, v11

    move/from16 v37, v13

    .line 363
    :goto_3a
    iget-boolean v4, v15, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-nez v4, :cond_8a

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_8a

    .line 364
    iput-object v10, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v2, :cond_89

    .line 365
    const-string v3, "Raise adj to started service: "

    .line 366
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    .line 367
    :cond_89
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    .line 368
    invoke-static {}, Lcom/android/server/am/Flags;->followUpOomadjUpdates()Z

    const/16 v3, 0x1f4

    :cond_8a
    const/16 v10, 0x1f4

    if-le v3, v10, :cond_8b

    .line 369
    const-string/jumbo v4, "cch-started-services"

    iput-object v4, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    :cond_8b
    move/from16 v4, v36

    .line 370
    :goto_3b
    iget-boolean v10, v9, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v10, :cond_91

    .line 371
    iget v10, v9, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 372
    invoke-virtual {v9}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v11

    if-eqz v11, :cond_91

    const/16 v12, 0x8

    and-int/lit8 v11, v10, 0x8

    if-eqz v11, :cond_8c

    const/4 v11, 0x1

    goto :goto_3c

    :cond_8c
    const/4 v11, 0x0

    :goto_3c
    or-int v11, v20, v11

    .line 373
    invoke-static {}, Landroid/media/audio/Flags;->roForegroundAudioControl()Z

    move-result v13

    if-eqz v13, :cond_8d

    or-int/lit8 v11, v11, 0x40

    :cond_8d
    const/4 v13, 0x1

    .line 374
    invoke-virtual {v5, v13}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v14

    if-eqz v14, :cond_90

    and-int/lit8 v13, v10, 0x40

    if-eqz v13, :cond_8e

    const/4 v13, 0x2

    goto :goto_3d

    :cond_8e
    const/4 v13, 0x0

    :goto_3d
    or-int/2addr v11, v13

    const/16 v13, 0x80

    and-int/2addr v10, v13

    if-eqz v10, :cond_8f

    const/4 v10, 0x4

    goto :goto_3e

    :cond_8f
    const/4 v10, 0x0

    :goto_3e
    or-int/2addr v10, v11

    move/from16 v20, v10

    :goto_3f
    const/4 v14, 0x6

    goto :goto_40

    :cond_90
    const/16 v13, 0x80

    const/4 v14, 0x6

    or-int/lit8 v10, v11, 0x6

    move/from16 v20, v10

    goto :goto_40

    :cond_91
    const/16 v12, 0x8

    const/16 v13, 0x80

    goto :goto_3f

    :goto_40
    if-nez p10, :cond_92

    move/from16 v40, v1

    move/from16 v38, v2

    move-object v14, v5

    move-object/from16 v41, v8

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v44, v25

    move/from16 v45, v28

    move/from16 v26, v33

    move/from16 v42, v34

    move/from16 v43, v35

    move/from16 v46, v37

    const/4 v0, 0x1

    :goto_41
    const/4 v13, -0x1

    const/16 v16, 0x10

    const/16 v18, 0xa

    goto/16 :goto_48

    :cond_92
    const/4 v10, 0x0

    .line 375
    invoke-virtual {v5, v3, v10}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 376
    iput v4, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 377
    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 378
    iput v7, v5, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 379
    iget-object v11, v9, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 380
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/16 v16, 0x1

    add-int/lit8 v9, v9, -0x1

    :goto_42
    if-ltz v9, :cond_93

    if-gtz v3, :cond_94

    if-eqz v6, :cond_94

    const/4 v10, 0x2

    if-le v4, v10, :cond_93

    goto :goto_43

    :cond_93
    move/from16 v40, v1

    move/from16 v38, v2

    move-object v14, v5

    move-object/from16 v41, v8

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v0, v16

    move/from16 v44, v25

    move/from16 v45, v28

    move/from16 v26, v33

    move/from16 v42, v34

    move/from16 v43, v35

    move/from16 v46, v37

    goto :goto_41

    .line 381
    :cond_94
    :goto_43
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    move/from16 v17, v7

    const/4 v7, 0x0

    .line 382
    :goto_44
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_98

    if-gtz v3, :cond_96

    if-eqz v6, :cond_96

    const/4 v12, 0x2

    if-le v4, v12, :cond_95

    goto :goto_45

    :cond_95
    move/from16 v40, v1

    move/from16 v38, v2

    move-object v14, v5

    move-object/from16 v41, v8

    move/from16 v23, v9

    move-object/from16 v29, v11

    move/from16 v22, v13

    move/from16 v0, v16

    move/from16 v44, v25

    move/from16 v45, v28

    move/from16 v26, v33

    move/from16 v42, v34

    move/from16 v43, v35

    move/from16 v46, v37

    const/4 v13, -0x1

    const/16 v16, 0x10

    const/16 v18, 0xa

    const/16 v21, 0x8

    goto/16 :goto_47

    :cond_96
    const/4 v12, 0x2

    .line 383
    :goto_45
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v12, v22

    check-cast v12, Lcom/android/server/am/ConnectionRecord;

    .line 384
    iget-object v13, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v13, v15, :cond_97

    move/from16 v40, v1

    move/from16 v38, v2

    move-object v14, v5

    move/from16 v32, v7

    move-object/from16 v41, v8

    move/from16 v23, v9

    move-object/from16 v19, v10

    move-object/from16 v29, v11

    move/from16 v0, v16

    move/from16 v44, v25

    move/from16 v45, v28

    move/from16 v26, v33

    move/from16 v42, v34

    move/from16 v43, v35

    move/from16 v46, v37

    const/16 v16, 0x10

    const/16 v18, 0xa

    const/16 v21, 0x8

    const/16 v22, 0x80

    goto/16 :goto_46

    :cond_97
    const/16 v17, 0x1

    const/16 v30, 0x0

    move v6, v1

    move-object/from16 v1, p0

    move v4, v2

    move-object v2, v12

    const/4 v12, 0x5

    move-object/from16 v3, p1

    move/from16 v38, v4

    move-object v4, v13

    move-object/from16 v39, v5

    move/from16 v40, v6

    move/from16 v13, v16

    move-wide/from16 v5, p5

    move/from16 v32, v7

    move-object/from16 v7, p3

    move-object/from16 v41, v8

    const/16 v16, 0x10

    move/from16 v8, p4

    move/from16 v23, v9

    move/from16 v9, p7

    move-object/from16 v19, v10

    move/from16 v10, p8

    move-object/from16 v29, v11

    move/from16 v26, v33

    move/from16 v42, v34

    const/16 v24, 0x4

    move/from16 v11, p9

    move/from16 v44, v25

    move/from16 v43, v35

    const/16 v18, 0xa

    const/16 v21, 0x8

    move/from16 v12, p2

    move v0, v13

    move/from16 v45, v28

    move/from16 v46, v37

    const/16 v22, 0x80

    move/from16 v13, v17

    move/from16 v14, v30

    .line 385
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/am/OomAdjuster;->computeServiceHostOomAdjLSP(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    move-object/from16 v14, v39

    .line 386
    iget v3, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 387
    iget v4, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 388
    iget v6, v14, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 389
    iget v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    move/from16 v17, v1

    :goto_46
    add-int/lit8 v7, v32, 0x1

    move/from16 v16, v0

    move-object v5, v14

    move-object/from16 v10, v19

    move/from16 v13, v22

    move/from16 v9, v23

    move/from16 v33, v26

    move-object/from16 v11, v29

    move/from16 v2, v38

    move/from16 v1, v40

    move-object/from16 v8, v41

    move/from16 v34, v42

    move/from16 v35, v43

    move/from16 v25, v44

    move/from16 v28, v45

    move/from16 v37, v46

    const/4 v14, 0x6

    move-object/from16 v0, p0

    goto/16 :goto_44

    :cond_98
    move/from16 v40, v1

    move/from16 v38, v2

    move-object v14, v5

    move-object/from16 v41, v8

    move/from16 v23, v9

    move-object/from16 v29, v11

    move/from16 v22, v13

    move/from16 v0, v16

    move/from16 v44, v25

    move/from16 v45, v28

    move/from16 v26, v33

    move/from16 v42, v34

    move/from16 v43, v35

    move/from16 v46, v37

    const/16 v16, 0x10

    const/16 v18, 0xa

    const/16 v21, 0x8

    const/4 v13, -0x1

    :goto_47
    add-int/lit8 v9, v23, -0x1

    move/from16 v16, v0

    move-object v5, v14

    move/from16 v7, v17

    move/from16 v12, v21

    move/from16 v13, v22

    move/from16 v33, v26

    move-object/from16 v11, v29

    move/from16 v2, v38

    move/from16 v1, v40

    move-object/from16 v8, v41

    move/from16 v34, v42

    move/from16 v35, v43

    move/from16 v25, v44

    move/from16 v28, v45

    move/from16 v37, v46

    const/4 v10, 0x0

    const/4 v14, 0x6

    move-object/from16 v0, p0

    goto/16 :goto_42

    :goto_48
    add-int/lit8 v11, v26, -0x1

    move-object/from16 v0, p0

    move-object v5, v14

    move/from16 v2, v38

    move/from16 v1, v40

    move-object/from16 v8, v41

    move/from16 v34, v42

    move/from16 v35, v43

    move/from16 v25, v44

    move/from16 v28, v45

    move/from16 v13, v46

    const/16 v12, 0x2bc

    move-object/from16 v14, p3

    goto/16 :goto_38

    .line 390
    :goto_49
    iget-object v12, v15, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 391
    iget-object v1, v12, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 392
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v0

    move v11, v1

    move v1, v4

    move v4, v6

    :goto_4a
    if-ltz v11, :cond_a3

    if-gtz v3, :cond_9a

    if-eqz v4, :cond_9a

    const/4 v9, 0x2

    if-le v1, v9, :cond_99

    goto :goto_4b

    :cond_99
    move-object/from16 v6, p0

    move v8, v0

    move/from16 v22, v9

    move-object v9, v12

    move-object v0, v14

    move/from16 v2, v38

    move/from16 v5, v40

    const/4 v10, 0x6

    goto/16 :goto_57

    :cond_9a
    const/4 v9, 0x2

    .line 393
    :goto_4b
    iget-object v2, v12, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/server/am/ContentProviderRecord;

    if-eqz p10, :cond_9d

    const/4 v5, 0x0

    .line 394
    invoke-virtual {v14, v3, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 395
    iput v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 396
    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 397
    iput v7, v14, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 398
    iget-object v2, v8, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    move/from16 v48, v7

    move v7, v2

    move/from16 v2, v48

    :goto_4c
    if-ltz v7, :cond_9b

    if-gtz v3, :cond_9c

    if-eqz v4, :cond_9c

    if-le v1, v9, :cond_9b

    goto :goto_4d

    :cond_9b
    move-object/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v11

    move-object/from16 v47, v12

    move-object v0, v14

    goto :goto_4e

    .line 399
    :cond_9c
    :goto_4d
    iget-object v1, v8, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;

    .line 400
    iget-object v4, v2, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move v0, v5

    move-wide/from16 v5, p5

    move/from16 v19, v7

    move-object/from16 v7, p3

    move-object/from16 v21, v8

    move/from16 v8, p4

    move/from16 v22, v9

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v23, v11

    move/from16 v11, p9

    move-object/from16 v47, v12

    move/from16 v12, p2

    move v0, v13

    move/from16 v13, v17

    move-object v0, v14

    move/from16 v14, v18

    .line 401
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/am/OomAdjuster;->computeProviderHostOomAdjLSP(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    .line 402
    iget v3, v0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 403
    iget v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 404
    iget v4, v0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 405
    iget v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    const/4 v5, -0x1

    add-int/lit8 v7, v19, -0x1

    move-object v14, v0

    move v13, v5

    move-object/from16 v8, v21

    move/from16 v9, v22

    move/from16 v11, v23

    move-object/from16 v12, v47

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/16 v10, 0x1f4

    goto :goto_4c

    :goto_4e
    move v11, v1

    move v7, v2

    :goto_4f
    move v9, v4

    move v4, v3

    goto :goto_50

    :cond_9d
    move-object/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v11

    move-object/from16 v47, v12

    move-object v0, v14

    move v11, v1

    goto :goto_4f

    .line 406
    :goto_50
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v1

    if-eqz v1, :cond_a2

    if-lez v4, :cond_9f

    const/4 v1, 0x0

    .line 407
    invoke-virtual {v0, v1, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 408
    const-string/jumbo v1, "ext-provider"

    iput-object v1, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    move-object/from16 v2, v21

    .line 409
    iget-object v1, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 410
    iput-object v1, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    move/from16 v2, v38

    move/from16 v5, v40

    if-ne v5, v2, :cond_9e

    .line 411
    const-string v1, "Raise adj to external provider: "

    const/4 v8, 0x1

    move-object/from16 v6, p0

    .line 412
    invoke-static {v1, v15, v6}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    goto :goto_51

    :cond_9e
    move-object/from16 v6, p0

    const/4 v8, 0x1

    :goto_51
    move/from16 v9, v22

    const/4 v4, 0x0

    :goto_52
    const/4 v10, 0x6

    goto :goto_53

    :cond_9f
    move-object/from16 v6, p0

    move/from16 v2, v38

    move/from16 v5, v40

    const/4 v8, 0x1

    goto :goto_52

    :goto_53
    if-le v11, v10, :cond_a1

    .line 413
    iput v10, v0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    if-ne v5, v2, :cond_a0

    .line 414
    const-string v1, "Raise procstate to external provider: "

    .line 415
    invoke-static {v1, v15, v6}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_a0
    move v3, v4

    move v4, v9

    move v1, v10

    :goto_54
    const/4 v9, -0x1

    goto :goto_56

    :cond_a1
    :goto_55
    move v3, v4

    move v4, v9

    move v1, v11

    goto :goto_54

    :cond_a2
    move-object/from16 v6, p0

    move/from16 v2, v38

    move/from16 v5, v40

    const/4 v8, 0x1

    const/4 v10, 0x6

    goto :goto_55

    :goto_56
    add-int/lit8 v11, v23, -0x1

    move-object v14, v0

    move/from16 v38, v2

    move/from16 v40, v5

    move v0, v8

    move v13, v9

    move-object/from16 v12, v47

    const/16 v10, 0x1f4

    goto/16 :goto_4a

    :cond_a3
    move-object/from16 v6, p0

    move v8, v0

    move-object v0, v14

    move/from16 v2, v38

    move/from16 v5, v40

    const/4 v10, 0x6

    const/16 v22, 0x2

    move-object v9, v12

    .line 416
    :goto_57
    iget-wide v11, v9, Lcom/android/server/am/ProcessProviderRecord;->mLastProviderTime:J

    .line 417
    iget-object v9, v6, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v13, v9, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v11, v13

    cmp-long v9, v11, p5

    if-lez v9, :cond_a8

    .line 418
    const-string/jumbo v9, "recent-provider"

    const/16 v11, 0x2bc

    if-le v3, v11, :cond_a5

    .line 419
    iput-object v9, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v5, v2, :cond_a4

    .line 420
    const-string v3, "Raise adj to recent provider: "

    .line 421
    invoke-static {v3, v15, v6}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    .line 422
    :cond_a4
    iget-object v3, v6, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 423
    invoke-static {}, Lcom/android/server/am/Flags;->followUpOomadjUpdates()Z

    move v12, v11

    const/16 v3, 0xf

    const/4 v4, 0x0

    goto :goto_58

    :cond_a5
    move v12, v3

    const/16 v3, 0xf

    :goto_58
    if-le v1, v3, :cond_a7

    .line 424
    iput-object v9, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v5, v2, :cond_a6

    .line 425
    const-string v1, "Raise procstate to recent provider: "

    .line 426
    invoke-static {v1, v15, v6}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    .line 427
    :cond_a6
    iget-object v1, v6, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 428
    invoke-static {}, Lcom/android/server/am/Flags;->followUpOomadjUpdates()Z

    move v1, v3

    :cond_a7
    move v11, v4

    move v3, v12

    :goto_59
    const/16 v2, 0x13

    goto :goto_5a

    :cond_a8
    move v11, v4

    goto :goto_59

    :goto_5a
    if-lt v1, v2, :cond_ab

    move-object/from16 v2, v41

    .line 429
    iget-boolean v4, v2, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    if-eqz v4, :cond_aa

    .line 430
    const-string/jumbo v1, "cch-client-act"

    iput-object v1, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const/16 v1, 0x11

    :cond_a9
    :goto_5b
    const/16 v4, 0x1f4

    goto :goto_5c

    .line 431
    :cond_aa
    iget-boolean v4, v2, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    if-eqz v4, :cond_a9

    .line 432
    const-string/jumbo v1, "cch-as-act"

    iput-object v1, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    move/from16 v1, v16

    goto :goto_5b

    :cond_ab
    move-object/from16 v2, v41

    goto :goto_5b

    :goto_5c
    if-ne v3, v4, :cond_b4

    if-eqz p4, :cond_b3

    if-nez p7, :cond_b3

    .line 433
    iget v4, v6, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v5, v6, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const/4 v9, 0x3

    div-int/2addr v5, v9

    if-le v4, v5, :cond_ac

    move v4, v8

    goto :goto_5d

    :cond_ac
    const/4 v4, 0x0

    .line 434
    :goto_5d
    iput-boolean v4, v0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    .line 435
    iget v5, v6, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    add-int/2addr v5, v8

    iput v5, v6, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    if-nez v4, :cond_b2

    .line 436
    iget-object v4, v6, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v4}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 437
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 438
    iget-wide v4, v4, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    goto :goto_5e

    .line 439
    :cond_ad
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 440
    iget-wide v4, v4, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 441
    :goto_5e
    iget-object v12, v6, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v12}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v12

    if-eqz v12, :cond_ae

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto :goto_5f

    .line 442
    :cond_ae
    iget-object v12, v6, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v12, v12, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    float-to-double v12, v12

    .line 443
    :goto_5f
    iget-object v14, v6, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 444
    iget-wide v9, v14, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    long-to-double v9, v9

    mul-double/2addr v9, v12

    .line 445
    iget-object v12, v6, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 446
    iget v13, v12, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_b0

    if-gtz v13, :cond_af

    :goto_60
    move v12, v8

    goto :goto_61

    :cond_af
    const/4 v12, 0x0

    goto :goto_61

    .line 447
    :cond_b0
    iget v12, v12, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-gtz v12, :cond_af

    goto :goto_60

    :goto_61
    if-nez v12, :cond_b1

    long-to-double v4, v4

    cmpl-double v4, v4, v9

    if-ltz v4, :cond_b1

    .line 448
    iput-boolean v8, v0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    .line 449
    iput-boolean v8, v0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    goto :goto_62

    .line 450
    :cond_b1
    iget v4, v6, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v4, v8

    iput v4, v6, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    goto :goto_62

    :cond_b2
    const/4 v4, 0x0

    .line 451
    iput-boolean v4, v0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    .line 452
    :cond_b3
    :goto_62
    iget-boolean v4, v0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    if-eqz v4, :cond_b4

    const/16 v3, 0x320

    .line 453
    :cond_b4
    iget-boolean v2, v2, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-eqz v2, :cond_b5

    or-int v7, v7, v20

    .line 454
    :cond_b5
    invoke-static {v1, v15}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(ILcom/android/server/am/ProcessRecord;)I

    move-result v2

    or-int/2addr v2, v7

    const/4 v4, 0x5

    if-le v1, v4, :cond_b6

    and-int/lit8 v2, v2, -0x11

    .line 455
    :cond_b6
    iget-boolean v5, v15, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    if-eqz v5, :cond_b7

    .line 456
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->setAttachingProcessStatesLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 457
    iget v1, v6, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 458
    iput v1, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 459
    iput v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    const/4 v0, 0x0

    return v0

    .line 460
    :cond_b7
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v5, :cond_b8

    .line 461
    invoke-static {v11, v1, v0}, Lcom/android/server/am/OomAdjuster;->promoteSchedGroupIfNecessary(IILcom/android/server/am/ProcessStateRecord;)Z

    move-result v7

    if-eqz v7, :cond_b8

    const/4 v11, 0x6

    .line 462
    :cond_b8
    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v7, :cond_b9

    .line 463
    iget-boolean v9, v7, Lcom/android/server/am/UidRecord;->mFGSFilter:Z

    if-eqz v9, :cond_b9

    const/4 v9, 0x4

    if-ne v1, v9, :cond_ba

    if-eqz v27, :cond_ba

    move v11, v4

    :cond_b9
    move/from16 v4, v42

    goto :goto_63

    :cond_ba
    move/from16 v4, v42

    if-ne v4, v9, :cond_bb

    const/4 v9, 0x0

    .line 464
    iput-boolean v9, v7, Lcom/android/server/am/UidRecord;->mFGSFilter:Z

    .line 465
    :cond_bb
    :goto_63
    iget-boolean v7, v0, Lcom/android/server/am/ProcessStateRecord;->mSlowAbnormal:Z

    if-eqz v7, :cond_bc

    const/4 v7, 0x3

    if-le v1, v7, :cond_bd

    if-eq v11, v7, :cond_bd

    .line 466
    iget v7, v0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const/16 v9, 0x352

    if-ge v7, v9, :cond_bd

    if-eqz v31, :cond_bc

    const/4 v11, -0x2

    :cond_bc
    const/4 v7, 0x0

    goto :goto_64

    :cond_bd
    const/4 v7, 0x0

    .line 467
    iput-boolean v7, v0, Lcom/android/server/am/ProcessStateRecord;->mSlowAbnormal:Z

    .line 468
    :goto_64
    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    move/from16 v13, v44

    .line 469
    invoke-virtual {v0, v13}, Lcom/android/server/am/ProcessStateRecord;->updateLastInvisibleTime(Z)V

    move/from16 v2, v46

    .line 470
    iput-boolean v2, v0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 471
    iget v2, v6, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 472
    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 473
    invoke-static {v15, v3, v11}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;II)I

    move-result v2

    .line 474
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 475
    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 476
    iput v1, v3, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 477
    invoke-virtual {v6, v0, v2}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V

    .line 478
    iget-boolean v1, v15, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v1, :cond_bf

    if-eqz v5, :cond_be

    const/4 v11, 0x6

    goto :goto_65

    :cond_be
    move/from16 v11, v22

    .line 479
    :goto_65
    invoke-virtual {v0, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 480
    :cond_bf
    iget v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    move/from16 v2, v45

    if-lt v1, v2, :cond_c1

    .line 481
    iget v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-lt v1, v4, :cond_c1

    .line 482
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    move/from16 v1, v43

    if-eq v0, v1, :cond_c0

    goto :goto_66

    :cond_c0
    move v6, v7

    goto :goto_67

    :cond_c1
    :goto_66
    move v6, v8

    :goto_67
    return v6

    .line 483
    :goto_68
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final computeProviderHostOomAdjLSP(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    move-object/from16 v14, p3

    .line 8
    .line 9
    move/from16 v15, p13

    .line 10
    .line 11
    iget-boolean v1, v13, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    .line 12
    .line 13
    const/4 v11, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return v11

    .line 17
    :cond_0
    iget-object v10, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 18
    .line 19
    iget-object v9, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 20
    .line 21
    if-ne v14, v13, :cond_1

    .line 22
    .line 23
    return v11

    .line 24
    :cond_1
    if-eqz p12, :cond_4

    .line 25
    .line 26
    if-eqz p9, :cond_3

    .line 27
    .line 28
    const/16 v16, 0x1

    .line 29
    .line 30
    const/16 v17, 0x1

    .line 31
    .line 32
    move-object/from16 v1, p0

    .line 33
    .line 34
    move-object/from16 v2, p3

    .line 35
    .line 36
    move/from16 v3, p11

    .line 37
    .line 38
    move-object/from16 v4, p6

    .line 39
    .line 40
    move/from16 v5, p7

    .line 41
    .line 42
    move-wide/from16 v6, p4

    .line 43
    .line 44
    move/from16 v8, p8

    .line 45
    .line 46
    move-object/from16 v18, v9

    .line 47
    .line 48
    move/from16 v9, v16

    .line 49
    .line 50
    move-object/from16 v19, v10

    .line 51
    .line 52
    move/from16 v10, p10

    .line 53
    .line 54
    move v12, v11

    .line 55
    move/from16 v11, v17

    .line 56
    .line 57
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    .line 58
    .line 59
    .line 60
    move-object/from16 v7, v18

    .line 61
    .line 62
    :cond_2
    :goto_0
    move-object/from16 v8, v19

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move-object/from16 v18, v9

    .line 66
    .line 67
    move-object/from16 v19, v10

    .line 68
    .line 69
    move v12, v11

    .line 70
    move-object/from16 v7, v18

    .line 71
    .line 72
    if-eqz p12, :cond_2

    .line 73
    .line 74
    iget v1, v7, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 75
    .line 76
    invoke-virtual {v7, v1, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 77
    .line 78
    .line 79
    iget v1, v7, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 80
    .line 81
    iput v1, v7, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :goto_1
    iget v4, v8, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 85
    .line 86
    iget v5, v8, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 87
    .line 88
    move-object/from16 v1, p0

    .line 89
    .line 90
    move-object/from16 v2, p2

    .line 91
    .line 92
    move-object v3, v7

    .line 93
    move/from16 v6, p8

    .line 94
    .line 95
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    return v12

    .line 102
    :cond_4
    move-object v7, v9

    .line 103
    move-object v8, v10

    .line 104
    move v12, v11

    .line 105
    :cond_5
    iget v1, v7, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 106
    .line 107
    iget v2, v7, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 108
    .line 109
    iget v3, v8, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 110
    .line 111
    iget v4, v8, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 112
    .line 113
    iget v5, v8, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 114
    .line 115
    iget v6, v8, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 116
    .line 117
    iget-object v9, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 118
    .line 119
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 120
    .line 121
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 122
    .line 123
    iget v10, v10, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 124
    .line 125
    iget-object v11, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 126
    .line 127
    iget v12, v11, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 128
    .line 129
    move/from16 v17, v9

    .line 130
    .line 131
    const/4 v9, 0x4

    .line 132
    if-ge v12, v9, :cond_6

    .line 133
    .line 134
    const/16 v11, 0x10

    .line 135
    .line 136
    const/16 v12, 0x10

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_6
    iget v11, v11, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 140
    .line 141
    const/16 v12, 0x10

    .line 142
    .line 143
    and-int/2addr v11, v12

    .line 144
    :goto_2
    or-int/2addr v11, v6

    .line 145
    if-lt v2, v12, :cond_7

    .line 146
    .line 147
    const/16 v2, 0x13

    .line 148
    .line 149
    :cond_7
    iget-object v12, v14, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 150
    .line 151
    iget-boolean v12, v12, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    .line 152
    .line 153
    if-eqz v12, :cond_8

    .line 154
    .line 155
    iget-object v12, v13, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 156
    .line 157
    invoke-virtual {v12, v15}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)Z

    .line 158
    .line 159
    .line 160
    :cond_8
    const/4 v12, 0x3

    .line 161
    if-nez v15, :cond_b

    .line 162
    .line 163
    iget-boolean v9, v8, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 164
    .line 165
    if-nez v9, :cond_a

    .line 166
    .line 167
    iget-boolean v9, v7, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 168
    .line 169
    if-nez v9, :cond_a

    .line 170
    .line 171
    if-le v2, v12, :cond_a

    .line 172
    .line 173
    const/4 v9, 0x4

    .line 174
    if-ne v2, v9, :cond_9

    .line 175
    .line 176
    iget-boolean v9, v7, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 177
    .line 178
    if-nez v9, :cond_9

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_9
    const/4 v9, 0x0

    .line 182
    goto :goto_4

    .line 183
    :cond_a
    :goto_3
    const/4 v9, 0x1

    .line 184
    :goto_4
    iput-boolean v9, v8, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 185
    .line 186
    :cond_b
    if-le v3, v1, :cond_f

    .line 187
    .line 188
    iget-boolean v9, v8, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    .line 189
    .line 190
    if-eqz v9, :cond_c

    .line 191
    .line 192
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    if-nez v9, :cond_c

    .line 197
    .line 198
    const/16 v9, 0xc8

    .line 199
    .line 200
    if-le v1, v9, :cond_c

    .line 201
    .line 202
    const-string/jumbo v1, "cch-ui-provider"

    .line 203
    .line 204
    .line 205
    move/from16 v18, v3

    .line 206
    .line 207
    const/4 v9, 0x0

    .line 208
    const/16 v16, 0x1

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_c
    const/4 v9, 0x0

    .line 212
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    invoke-virtual {v8, v1, v15}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 217
    .line 218
    .line 219
    move-result v16

    .line 220
    if-eqz v16, :cond_d

    .line 221
    .line 222
    const/16 v16, 0x1

    .line 223
    .line 224
    return v16

    .line 225
    :cond_d
    const/16 v16, 0x1

    .line 226
    .line 227
    const-string/jumbo v18, "provider"

    .line 228
    .line 229
    .line 230
    move-object/from16 v20, v18

    .line 231
    .line 232
    move/from16 v18, v1

    .line 233
    .line 234
    move-object/from16 v1, v20

    .line 235
    .line 236
    :goto_5
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 237
    .line 238
    .line 239
    move-result v19

    .line 240
    if-eqz v19, :cond_e

    .line 241
    .line 242
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 243
    .line 244
    .line 245
    move-result v19

    .line 246
    if-nez v19, :cond_e

    .line 247
    .line 248
    if-eqz v15, :cond_e

    .line 249
    .line 250
    return v16

    .line 251
    :cond_e
    move/from16 v9, v18

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_f
    const/4 v9, 0x0

    .line 255
    const/4 v1, 0x0

    .line 256
    move v9, v3

    .line 257
    :goto_6
    const/4 v12, 0x4

    .line 258
    if-gt v2, v12, :cond_12

    .line 259
    .line 260
    if-nez v1, :cond_10

    .line 261
    .line 262
    const-string/jumbo v1, "provider"

    .line 263
    .line 264
    .line 265
    :cond_10
    const/4 v12, 0x2

    .line 266
    if-ne v2, v12, :cond_11

    .line 267
    .line 268
    const/4 v2, 0x3

    .line 269
    goto :goto_7

    .line 270
    :cond_11
    const/4 v2, 0x5

    .line 271
    goto :goto_7

    .line 272
    :cond_12
    const/4 v12, 0x2

    .line 273
    :goto_7
    if-nez v15, :cond_14

    .line 274
    .line 275
    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 276
    .line 277
    move/from16 v19, v3

    .line 278
    .line 279
    move/from16 v18, v6

    .line 280
    .line 281
    const/16 v16, 0x0

    .line 282
    .line 283
    move-object/from16 v6, p1

    .line 284
    .line 285
    iget-object v3, v6, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 286
    .line 287
    if-eqz v3, :cond_13

    .line 288
    .line 289
    iget-object v3, v6, Lcom/android/server/am/ContentProviderConnection;->mProcStatsLock:Ljava/lang/Object;

    .line 290
    .line 291
    monitor-enter v3

    .line 292
    move/from16 p5, v11

    .line 293
    .line 294
    :try_start_0
    iget-object v11, v6, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 295
    .line 296
    move/from16 p9, v9

    .line 297
    .line 298
    move/from16 p6, v10

    .line 299
    .line 300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 301
    .line 302
    .line 303
    move-result-wide v9

    .line 304
    invoke-virtual {v11, v2, v12, v9, v10}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->trackProcState(IIJ)V

    .line 305
    .line 306
    .line 307
    monitor-exit v3

    .line 308
    goto :goto_8

    .line 309
    :catchall_0
    move-exception v0

    .line 310
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    throw v0

    .line 312
    :cond_13
    move/from16 p9, v9

    .line 313
    .line 314
    move/from16 p6, v10

    .line 315
    .line 316
    move/from16 p5, v11

    .line 317
    .line 318
    goto :goto_8

    .line 319
    :cond_14
    move/from16 v19, v3

    .line 320
    .line 321
    move/from16 v18, v6

    .line 322
    .line 323
    move/from16 p9, v9

    .line 324
    .line 325
    move/from16 p6, v10

    .line 326
    .line 327
    move/from16 p5, v11

    .line 328
    .line 329
    const/16 v16, 0x0

    .line 330
    .line 331
    move-object/from16 v6, p1

    .line 332
    .line 333
    :goto_8
    if-le v4, v2, :cond_17

    .line 334
    .line 335
    if-eqz v15, :cond_15

    .line 336
    .line 337
    iget v3, v8, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 338
    .line 339
    if-le v3, v2, :cond_16

    .line 340
    .line 341
    const/4 v3, 0x1

    .line 342
    return v3

    .line 343
    :cond_15
    iput v2, v8, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 344
    .line 345
    :cond_16
    move v3, v2

    .line 346
    goto :goto_9

    .line 347
    :cond_17
    move v3, v4

    .line 348
    :goto_9
    iget v7, v7, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 349
    .line 350
    if-le v7, v5, :cond_18

    .line 351
    .line 352
    const/4 v12, 0x2

    .line 353
    goto :goto_a

    .line 354
    :cond_18
    move v12, v5

    .line 355
    :goto_a
    if-eqz v1, :cond_19

    .line 356
    .line 357
    if-nez v15, :cond_19

    .line 358
    .line 359
    iput-object v1, v8, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 360
    .line 361
    const/4 v7, 0x1

    .line 362
    iput v7, v8, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    .line 363
    .line 364
    iput-object v14, v8, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 365
    .line 366
    iput v2, v8, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    .line 367
    .line 368
    iget-object v2, v6, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 369
    .line 370
    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 371
    .line 372
    iput-object v2, v8, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    .line 373
    .line 374
    move/from16 v6, p6

    .line 375
    .line 376
    move/from16 v2, v17

    .line 377
    .line 378
    if-ne v6, v2, :cond_19

    .line 379
    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    const-string v6, "Raise to "

    .line 383
    .line 384
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v1, ": "

    .line 391
    .line 392
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const-string v1, ", due to "

    .line 399
    .line 400
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    const-string v1, " adj="

    .line 407
    .line 408
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    move/from16 v1, p9

    .line 412
    .line 413
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v6, " procState="

    .line 417
    .line 418
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    sget v6, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 422
    .line 423
    invoke-static {v3}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-virtual {v0, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    :goto_b
    const/4 v2, 0x5

    .line 438
    goto :goto_c

    .line 439
    :cond_19
    move/from16 v1, p9

    .line 440
    .line 441
    goto :goto_b

    .line 442
    :goto_c
    if-le v3, v2, :cond_1a

    .line 443
    .line 444
    and-int/lit8 v11, p5, -0x11

    .line 445
    .line 446
    goto :goto_d

    .line 447
    :cond_1a
    move/from16 v11, p5

    .line 448
    .line 449
    :goto_d
    move/from16 v2, v19

    .line 450
    .line 451
    if-eqz v15, :cond_1c

    .line 452
    .line 453
    if-lt v1, v2, :cond_1b

    .line 454
    .line 455
    if-lt v3, v4, :cond_1b

    .line 456
    .line 457
    if-gt v12, v5, :cond_1b

    .line 458
    .line 459
    move/from16 v6, v18

    .line 460
    .line 461
    if-eq v11, v6, :cond_1c

    .line 462
    .line 463
    and-int v7, v11, v6

    .line 464
    .line 465
    if-ne v7, v6, :cond_1c

    .line 466
    .line 467
    :cond_1b
    const/4 v0, 0x1

    .line 468
    return v0

    .line 469
    :cond_1c
    if-ge v1, v2, :cond_1d

    .line 470
    .line 471
    invoke-static {v13, v1, v12}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;II)I

    .line 472
    .line 473
    .line 474
    move-result v12

    .line 475
    :cond_1d
    if-ge v3, v4, :cond_1e

    .line 476
    .line 477
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 478
    .line 479
    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 480
    .line 481
    .line 482
    iput v3, v1, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 483
    .line 484
    :cond_1e
    if-le v12, v5, :cond_1f

    .line 485
    .line 486
    invoke-virtual {v0, v8, v12}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V

    .line 487
    .line 488
    .line 489
    :cond_1f
    iput v11, v8, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 490
    .line 491
    return v16
.end method

.method public final computeServiceHostOomAdjLSP(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z
    .locals 28

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    move/from16 v14, p13

    .line 8
    .line 9
    const/16 v10, 0x8

    .line 10
    .line 11
    const/16 v9, 0x20

    .line 12
    .line 13
    iget-boolean v0, v13, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v8

    .line 19
    :cond_0
    iget-object v7, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 20
    .line 21
    move-object/from16 v0, p3

    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 24
    .line 25
    if-eqz p12, :cond_3

    .line 26
    .line 27
    iget-boolean v2, v13, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v2, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 38
    .line 39
    move-object v5, v1

    .line 40
    move-object/from16 v16, v2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object/from16 v16, v0

    .line 44
    .line 45
    move-object v5, v1

    .line 46
    :goto_0
    if-eqz p9, :cond_2

    .line 47
    .line 48
    const/16 v17, 0x1

    .line 49
    .line 50
    const/16 v18, 0x1

    .line 51
    .line 52
    move-object/from16 v0, p0

    .line 53
    .line 54
    move-object/from16 v1, v16

    .line 55
    .line 56
    move/from16 v2, p11

    .line 57
    .line 58
    move-object/from16 v3, p6

    .line 59
    .line 60
    move/from16 v4, p7

    .line 61
    .line 62
    move-object v15, v5

    .line 63
    move-wide/from16 v5, p4

    .line 64
    .line 65
    move-object/from16 v19, v7

    .line 66
    .line 67
    move/from16 v7, p8

    .line 68
    .line 69
    move/from16 v8, v17

    .line 70
    .line 71
    move/from16 v9, p10

    .line 72
    .line 73
    move/from16 v10, v18

    .line 74
    .line 75
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    .line 76
    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move-object v15, v5

    .line 81
    move-object/from16 v19, v7

    .line 82
    .line 83
    iget v0, v15, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    invoke-virtual {v15, v0, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 87
    .line 88
    .line 89
    iget v0, v15, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 90
    .line 91
    iput v0, v15, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 92
    .line 93
    :goto_1
    move-object/from16 v7, v16

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    move-object/from16 v19, v7

    .line 97
    .line 98
    move v6, v8

    .line 99
    move-object v7, v0

    .line 100
    move-object v15, v1

    .line 101
    :goto_2
    iget v8, v15, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 102
    .line 103
    iget v9, v15, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 104
    .line 105
    const/4 v10, 0x2

    .line 106
    if-ge v9, v10, :cond_4

    .line 107
    .line 108
    move-object/from16 v4, v19

    .line 109
    .line 110
    const/16 v16, 0x1

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    move/from16 v16, v6

    .line 114
    .line 115
    move-object/from16 v4, v19

    .line 116
    .line 117
    :goto_3
    iget v3, v4, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 118
    .line 119
    iget v2, v4, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 120
    .line 121
    iget v1, v4, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 122
    .line 123
    iget v0, v4, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 124
    .line 125
    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 126
    .line 127
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 128
    .line 129
    iget-object v10, v11, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 130
    .line 131
    iget v10, v10, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 132
    .line 133
    if-nez v14, :cond_7

    .line 134
    .line 135
    iget-boolean v6, v4, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 136
    .line 137
    if-nez v6, :cond_6

    .line 138
    .line 139
    iget-boolean v6, v15, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 140
    .line 141
    if-nez v6, :cond_6

    .line 142
    .line 143
    const/4 v6, 0x3

    .line 144
    if-le v9, v6, :cond_6

    .line 145
    .line 146
    const/4 v6, 0x4

    .line 147
    if-ne v9, v6, :cond_5

    .line 148
    .line 149
    iget-boolean v6, v15, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 150
    .line 151
    if-nez v6, :cond_5

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_5
    const/4 v6, 0x0

    .line 155
    goto :goto_5

    .line 156
    :cond_6
    :goto_4
    const/4 v6, 0x1

    .line 157
    :goto_5
    iput-boolean v6, v4, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 158
    .line 159
    :cond_7
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 160
    .line 161
    iget-boolean v6, v6, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    .line 162
    .line 163
    if-eqz v6, :cond_8

    .line 164
    .line 165
    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 166
    .line 167
    invoke-virtual {v6, v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)Z

    .line 168
    .line 169
    .line 170
    :cond_8
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 171
    .line 172
    move/from16 v17, v1

    .line 173
    .line 174
    iget v1, v6, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 175
    .line 176
    move/from16 v18, v10

    .line 177
    .line 178
    const/4 v10, 0x4

    .line 179
    if-ge v1, v10, :cond_9

    .line 180
    .line 181
    const/16 v1, 0x10

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_9
    iget v1, v6, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 185
    .line 186
    const/16 v6, 0x10

    .line 187
    .line 188
    and-int/2addr v1, v6

    .line 189
    :goto_6
    or-int/2addr v1, v0

    .line 190
    const/16 v6, 0x20

    .line 191
    .line 192
    invoke-virtual {v12, v6}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    const-string/jumbo v6, "service"

    .line 197
    .line 198
    .line 199
    move-object/from16 p11, v6

    .line 200
    .line 201
    if-eqz v10, :cond_42

    .line 202
    .line 203
    const/16 v10, 0x1000

    .line 204
    .line 205
    invoke-virtual {v12, v10}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 206
    .line 207
    .line 208
    move-result v23

    .line 209
    if-eqz v23, :cond_a

    .line 210
    .line 211
    iget v10, v15, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 212
    .line 213
    or-int/2addr v1, v10

    .line 214
    :cond_a
    iget v10, v15, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 215
    .line 216
    const/16 v6, 0x8

    .line 217
    .line 218
    and-int/2addr v10, v6

    .line 219
    if-eqz v10, :cond_c

    .line 220
    .line 221
    const/4 v10, 0x5

    .line 222
    if-gt v9, v10, :cond_b

    .line 223
    .line 224
    const/high16 v10, 0x20000

    .line 225
    .line 226
    invoke-virtual {v12, v10}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 227
    .line 228
    .line 229
    move-result v10

    .line 230
    if-eqz v10, :cond_c

    .line 231
    .line 232
    :cond_b
    or-int/2addr v1, v6

    .line 233
    :cond_c
    iget v10, v15, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 234
    .line 235
    const/16 v21, 0x20

    .line 236
    .line 237
    and-int/lit8 v22, v10, 0x20

    .line 238
    .line 239
    const/4 v6, 0x6

    .line 240
    if-eqz v22, :cond_e

    .line 241
    .line 242
    if-gt v9, v6, :cond_e

    .line 243
    .line 244
    move-object/from16 v22, v7

    .line 245
    .line 246
    iget-wide v6, v12, Lcom/android/server/am/ConnectionRecord;->flags:J

    .line 247
    .line 248
    const-wide v24, 0x100000000L

    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    and-long v6, v6, v24

    .line 254
    .line 255
    const-wide/16 v24, 0x0

    .line 256
    .line 257
    cmp-long v6, v6, v24

    .line 258
    .line 259
    if-eqz v6, :cond_d

    .line 260
    .line 261
    or-int/lit8 v1, v1, 0x20

    .line 262
    .line 263
    :cond_d
    :goto_7
    const/16 v6, 0x40

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_e
    move-object/from16 v22, v7

    .line 267
    .line 268
    goto :goto_7

    .line 269
    :goto_8
    and-int/lit8 v7, v10, 0x40

    .line 270
    .line 271
    if-eqz v7, :cond_f

    .line 272
    .line 273
    iget-boolean v7, v13, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 274
    .line 275
    if-eqz v7, :cond_f

    .line 276
    .line 277
    or-int/2addr v1, v6

    .line 278
    :cond_f
    move v6, v1

    .line 279
    if-eqz p12, :cond_11

    .line 280
    .line 281
    move v7, v0

    .line 282
    move-object/from16 v0, p0

    .line 283
    .line 284
    move/from16 v10, v17

    .line 285
    .line 286
    move-object/from16 v1, p2

    .line 287
    .line 288
    move/from16 p12, v2

    .line 289
    .line 290
    move-object v2, v15

    .line 291
    move/from16 v17, v3

    .line 292
    .line 293
    move/from16 v3, p12

    .line 294
    .line 295
    move/from16 v21, v7

    .line 296
    .line 297
    move-object v7, v4

    .line 298
    move/from16 v4, v17

    .line 299
    .line 300
    move/from16 v26, v5

    .line 301
    .line 302
    move/from16 v24, v10

    .line 303
    .line 304
    const/4 v10, 0x1

    .line 305
    move/from16 v5, p8

    .line 306
    .line 307
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_10

    .line 312
    .line 313
    const/4 v0, 0x0

    .line 314
    return v0

    .line 315
    :cond_10
    :goto_9
    const/16 v0, 0x10

    .line 316
    .line 317
    goto :goto_a

    .line 318
    :cond_11
    move/from16 v21, v0

    .line 319
    .line 320
    move/from16 p12, v2

    .line 321
    .line 322
    move-object v7, v4

    .line 323
    move/from16 v26, v5

    .line 324
    .line 325
    move/from16 v24, v17

    .line 326
    .line 327
    const/4 v10, 0x1

    .line 328
    move/from16 v17, v3

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :goto_a
    if-lt v9, v0, :cond_12

    .line 332
    .line 333
    const/16 v9, 0x13

    .line 334
    .line 335
    :cond_12
    invoke-virtual {v12, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    const-string/jumbo v0, "cch-bound-ui-services"

    .line 340
    .line 341
    .line 342
    const/4 v2, 0x0

    .line 343
    if-eqz v1, :cond_19

    .line 344
    .line 345
    const/16 v1, 0x384

    .line 346
    .line 347
    if-ge v8, v1, :cond_13

    .line 348
    .line 349
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 350
    .line 351
    invoke-virtual {v1, v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)Z

    .line 352
    .line 353
    .line 354
    :cond_13
    iget-boolean v1, v7, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    .line 355
    .line 356
    if-eqz v1, :cond_16

    .line 357
    .line 358
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-nez v1, :cond_16

    .line 363
    .line 364
    move/from16 v3, v17

    .line 365
    .line 366
    if-le v3, v8, :cond_14

    .line 367
    .line 368
    move-object v2, v0

    .line 369
    :cond_14
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-eqz v1, :cond_15

    .line 374
    .line 375
    if-eqz v14, :cond_15

    .line 376
    .line 377
    return v10

    .line 378
    :cond_15
    move/from16 v10, p12

    .line 379
    .line 380
    move v8, v3

    .line 381
    goto :goto_c

    .line 382
    :cond_16
    move/from16 v3, v17

    .line 383
    .line 384
    iget-object v1, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 385
    .line 386
    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 387
    .line 388
    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 389
    .line 390
    iget-object v1, v11, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 391
    .line 392
    iget-wide v10, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    .line 393
    .line 394
    add-long/2addr v4, v10

    .line 395
    cmp-long v1, p4, v4

    .line 396
    .line 397
    if-ltz v1, :cond_18

    .line 398
    .line 399
    if-le v3, v8, :cond_17

    .line 400
    .line 401
    const-string/jumbo v2, "cch-bound-services"

    .line 402
    .line 403
    .line 404
    :cond_17
    move v8, v3

    .line 405
    :cond_18
    :goto_b
    move v10, v9

    .line 406
    goto :goto_c

    .line 407
    :cond_19
    move/from16 v3, v17

    .line 408
    .line 409
    goto :goto_b

    .line 410
    :goto_c
    const/high16 v1, 0x10000000

    .line 411
    .line 412
    if-le v3, v8, :cond_1a

    .line 413
    .line 414
    iget-boolean v4, v7, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    .line 415
    .line 416
    const/16 v5, 0xc8

    .line 417
    .line 418
    if-eqz v4, :cond_1b

    .line 419
    .line 420
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    if-nez v4, :cond_1b

    .line 425
    .line 426
    if-le v8, v5, :cond_1b

    .line 427
    .line 428
    const/16 v4, 0x384

    .line 429
    .line 430
    if-lt v3, v4, :cond_1a

    .line 431
    .line 432
    move-object/from16 v4, p0

    .line 433
    .line 434
    move/from16 v8, p12

    .line 435
    .line 436
    :goto_d
    move v5, v3

    .line 437
    move/from16 v2, v24

    .line 438
    .line 439
    const/4 v9, 0x0

    .line 440
    goto/16 :goto_14

    .line 441
    .line 442
    :cond_1a
    move-object/from16 v4, p0

    .line 443
    .line 444
    goto/16 :goto_13

    .line 445
    .line 446
    :cond_1b
    const/16 v0, 0x48

    .line 447
    .line 448
    invoke-virtual {v12, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    if-eqz v0, :cond_1e

    .line 453
    .line 454
    const/16 v0, -0x2bc

    .line 455
    .line 456
    if-lt v8, v0, :cond_1c

    .line 457
    .line 458
    move-object/from16 v4, p0

    .line 459
    .line 460
    goto/16 :goto_11

    .line 461
    .line 462
    :cond_1c
    move-object/from16 v4, p0

    .line 463
    .line 464
    if-nez v14, :cond_1d

    .line 465
    .line 466
    iget v5, v4, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 467
    .line 468
    const/4 v8, 0x0

    .line 469
    invoke-virtual {v12, v8, v5}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    .line 470
    .line 471
    .line 472
    :cond_1d
    move v5, v0

    .line 473
    const/4 v0, 0x2

    .line 474
    const/4 v8, 0x0

    .line 475
    const/4 v9, 0x1

    .line 476
    goto/16 :goto_12

    .line 477
    .line 478
    :cond_1e
    move-object/from16 v4, p0

    .line 479
    .line 480
    const/16 v0, 0x100

    .line 481
    .line 482
    invoke-virtual {v12, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-eqz v0, :cond_1f

    .line 487
    .line 488
    if-gt v8, v5, :cond_1f

    .line 489
    .line 490
    const/16 v0, 0xfa

    .line 491
    .line 492
    if-lt v3, v0, :cond_20

    .line 493
    .line 494
    :goto_e
    move/from16 v8, p12

    .line 495
    .line 496
    move v5, v0

    .line 497
    :goto_f
    move/from16 v0, v24

    .line 498
    .line 499
    const/4 v9, 0x0

    .line 500
    goto/16 :goto_12

    .line 501
    .line 502
    :cond_1f
    const/16 v0, 0x64

    .line 503
    .line 504
    :cond_20
    const/high16 v11, 0x10000

    .line 505
    .line 506
    invoke-virtual {v12, v11}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 507
    .line 508
    .line 509
    move-result v17

    .line 510
    if-eqz v17, :cond_22

    .line 511
    .line 512
    const/4 v9, 0x4

    .line 513
    invoke-virtual {v12, v9}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    .line 514
    .line 515
    .line 516
    move-result v17

    .line 517
    if-eqz v17, :cond_22

    .line 518
    .line 519
    if-ge v8, v5, :cond_22

    .line 520
    .line 521
    if-lt v3, v5, :cond_21

    .line 522
    .line 523
    const/16 v0, 0xc9

    .line 524
    .line 525
    goto :goto_e

    .line 526
    :cond_21
    move v0, v5

    .line 527
    :cond_22
    invoke-virtual {v12, v11}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 528
    .line 529
    .line 530
    move-result v9

    .line 531
    if-eqz v9, :cond_23

    .line 532
    .line 533
    const/4 v9, 0x4

    .line 534
    invoke-virtual {v12, v9}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 535
    .line 536
    .line 537
    move-result v11

    .line 538
    if-eqz v11, :cond_23

    .line 539
    .line 540
    if-ge v8, v5, :cond_23

    .line 541
    .line 542
    const/16 v0, 0xe3

    .line 543
    .line 544
    if-lt v3, v0, :cond_23

    .line 545
    .line 546
    goto :goto_e

    .line 547
    :cond_23
    const/high16 v9, 0x40000000    # 2.0f

    .line 548
    .line 549
    invoke-virtual {v12, v9}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 550
    .line 551
    .line 552
    move-result v9

    .line 553
    if-eqz v9, :cond_25

    .line 554
    .line 555
    if-ge v8, v5, :cond_25

    .line 556
    .line 557
    if-lt v3, v5, :cond_24

    .line 558
    .line 559
    :goto_10
    move/from16 v8, p12

    .line 560
    .line 561
    goto :goto_f

    .line 562
    :cond_24
    move v0, v5

    .line 563
    :cond_25
    if-lt v8, v5, :cond_26

    .line 564
    .line 565
    :goto_11
    move v5, v8

    .line 566
    move/from16 v0, v24

    .line 567
    .line 568
    const/4 v9, 0x0

    .line 569
    move/from16 v8, p12

    .line 570
    .line 571
    goto :goto_12

    .line 572
    :cond_26
    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 573
    .line 574
    .line 575
    move-result v5

    .line 576
    if-eqz v5, :cond_27

    .line 577
    .line 578
    const/16 v5, 0x64

    .line 579
    .line 580
    if-gt v8, v5, :cond_28

    .line 581
    .line 582
    if-le v3, v5, :cond_28

    .line 583
    .line 584
    goto :goto_10

    .line 585
    :cond_27
    const/16 v5, 0x64

    .line 586
    .line 587
    :cond_28
    if-le v3, v5, :cond_29

    .line 588
    .line 589
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    goto :goto_e

    .line 594
    :cond_29
    move/from16 v8, p12

    .line 595
    .line 596
    move v5, v3

    .line 597
    goto :goto_f

    .line 598
    :goto_12
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 599
    .line 600
    .line 601
    move-result v11

    .line 602
    if-nez v11, :cond_2a

    .line 603
    .line 604
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 605
    .line 606
    .line 607
    move-result v11

    .line 608
    if-eqz v11, :cond_2a

    .line 609
    .line 610
    if-eqz v14, :cond_2a

    .line 611
    .line 612
    const/4 v11, 0x1

    .line 613
    return v11

    .line 614
    :cond_2a
    if-le v3, v5, :cond_2b

    .line 615
    .line 616
    invoke-virtual {v7, v5, v14}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 617
    .line 618
    .line 619
    move v2, v0

    .line 620
    move-object/from16 v0, p11

    .line 621
    .line 622
    goto :goto_14

    .line 623
    :cond_2b
    move v5, v3

    .line 624
    move-object/from16 v27, v2

    .line 625
    .line 626
    move v2, v0

    .line 627
    move-object/from16 v0, v27

    .line 628
    .line 629
    goto :goto_14

    .line 630
    :goto_13
    move/from16 v8, p12

    .line 631
    .line 632
    move-object v0, v2

    .line 633
    goto/16 :goto_d

    .line 634
    .line 635
    :goto_14
    const v11, 0x800004

    .line 636
    .line 637
    .line 638
    invoke-virtual {v12, v11}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    .line 639
    .line 640
    .line 641
    move-result v11

    .line 642
    if-eqz v11, :cond_35

    .line 643
    .line 644
    iget v11, v15, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 645
    .line 646
    if-le v11, v2, :cond_2c

    .line 647
    .line 648
    const/16 v1, 0x40

    .line 649
    .line 650
    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 651
    .line 652
    .line 653
    move-result v2

    .line 654
    if-eqz v2, :cond_2d

    .line 655
    .line 656
    move v2, v11

    .line 657
    :cond_2c
    const/4 v1, 0x2

    .line 658
    goto :goto_15

    .line 659
    :cond_2d
    const/4 v1, 0x2

    .line 660
    const/4 v2, 0x2

    .line 661
    :goto_15
    if-ge v10, v1, :cond_31

    .line 662
    .line 663
    const/high16 v1, 0x10000000

    .line 664
    .line 665
    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 666
    .line 667
    .line 668
    move-result v1

    .line 669
    if-eqz v1, :cond_2e

    .line 670
    .line 671
    const/4 v10, 0x4

    .line 672
    goto :goto_18

    .line 673
    :cond_2e
    const/high16 v1, 0x4000000

    .line 674
    .line 675
    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 676
    .line 677
    .line 678
    move-result v1

    .line 679
    if-eqz v1, :cond_2f

    .line 680
    .line 681
    :goto_16
    const/4 v10, 0x5

    .line 682
    goto :goto_18

    .line 683
    :cond_2f
    iget-object v1, v4, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 684
    .line 685
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 686
    .line 687
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    const/4 v10, 0x1

    .line 692
    if-ne v1, v10, :cond_30

    .line 693
    .line 694
    const/high16 v1, 0x2000000

    .line 695
    .line 696
    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 697
    .line 698
    .line 699
    move-result v1

    .line 700
    if-eqz v1, :cond_30

    .line 701
    .line 702
    goto :goto_16

    .line 703
    :cond_30
    const/4 v10, 0x6

    .line 704
    goto :goto_18

    .line 705
    :cond_31
    if-ne v10, v1, :cond_34

    .line 706
    .line 707
    const/4 v1, 0x0

    .line 708
    invoke-virtual {v15, v1}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    .line 709
    .line 710
    .line 711
    move-result v10

    .line 712
    if-eqz v10, :cond_33

    .line 713
    .line 714
    const/16 v1, 0x1000

    .line 715
    .line 716
    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    if-eqz v1, :cond_32

    .line 721
    .line 722
    iget v1, v15, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 723
    .line 724
    :goto_17
    or-int/2addr v6, v1

    .line 725
    :cond_32
    const/4 v10, 0x3

    .line 726
    goto :goto_18

    .line 727
    :cond_33
    iget v1, v15, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 728
    .line 729
    goto :goto_17

    .line 730
    :cond_34
    :goto_18
    move v1, v6

    .line 731
    goto :goto_19

    .line 732
    :cond_35
    const/high16 v1, 0x800000

    .line 733
    .line 734
    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    .line 735
    .line 736
    .line 737
    move-result v1

    .line 738
    if-eqz v1, :cond_36

    .line 739
    .line 740
    const/16 v1, 0x8

    .line 741
    .line 742
    if-ge v10, v1, :cond_34

    .line 743
    .line 744
    move v10, v1

    .line 745
    goto :goto_18

    .line 746
    :cond_36
    const/4 v1, 0x7

    .line 747
    if-ge v10, v1, :cond_34

    .line 748
    .line 749
    move v1, v6

    .line 750
    const/4 v10, 0x7

    .line 751
    :goto_19
    const/high16 v6, 0x80000

    .line 752
    .line 753
    invoke-virtual {v12, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 754
    .line 755
    .line 756
    move-result v6

    .line 757
    if-eqz v6, :cond_38

    .line 758
    .line 759
    if-eqz v16, :cond_38

    .line 760
    .line 761
    if-eqz v14, :cond_37

    .line 762
    .line 763
    move/from16 v6, v24

    .line 764
    .line 765
    const/4 v2, 0x3

    .line 766
    if-ge v6, v2, :cond_39

    .line 767
    .line 768
    const/4 v11, 0x1

    .line 769
    return v11

    .line 770
    :cond_37
    move/from16 v6, v24

    .line 771
    .line 772
    const/4 v2, 0x3

    .line 773
    const/4 v11, 0x1

    .line 774
    iput-boolean v11, v7, Lcom/android/server/am/ProcessStateRecord;->mScheduleLikeTopApp:Z

    .line 775
    .line 776
    goto :goto_1a

    .line 777
    :cond_38
    move/from16 v6, v24

    .line 778
    .line 779
    :cond_39
    :goto_1a
    if-nez v9, :cond_3a

    .line 780
    .line 781
    if-nez v14, :cond_3a

    .line 782
    .line 783
    iget v9, v4, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 784
    .line 785
    invoke-virtual {v12, v10, v9}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    .line 786
    .line 787
    .line 788
    :cond_3a
    if-le v8, v10, :cond_3e

    .line 789
    .line 790
    if-eqz v14, :cond_3b

    .line 791
    .line 792
    iget v8, v7, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 793
    .line 794
    if-le v8, v10, :cond_3c

    .line 795
    .line 796
    const/4 v8, 0x1

    .line 797
    return v8

    .line 798
    :cond_3b
    iput v10, v7, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 799
    .line 800
    :cond_3c
    if-nez v0, :cond_3d

    .line 801
    .line 802
    move-object/from16 v0, p11

    .line 803
    .line 804
    :cond_3d
    move v8, v10

    .line 805
    :cond_3e
    const/4 v9, 0x7

    .line 806
    if-ge v8, v9, :cond_3f

    .line 807
    .line 808
    const/high16 v9, 0x20000000

    .line 809
    .line 810
    invoke-virtual {v12, v9}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 811
    .line 812
    .line 813
    move-result v9

    .line 814
    if-eqz v9, :cond_3f

    .line 815
    .line 816
    if-nez v14, :cond_3f

    .line 817
    .line 818
    const/4 v9, 0x1

    .line 819
    invoke-virtual {v13, v9}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 820
    .line 821
    .line 822
    :cond_3f
    if-eqz v0, :cond_41

    .line 823
    .line 824
    if-nez v14, :cond_41

    .line 825
    .line 826
    iput-object v0, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 827
    .line 828
    const/4 v9, 0x2

    .line 829
    iput v9, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    .line 830
    .line 831
    move-object/from16 v9, v22

    .line 832
    .line 833
    iput-object v9, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 834
    .line 835
    iput v10, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    .line 836
    .line 837
    iget-object v11, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 838
    .line 839
    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 840
    .line 841
    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 842
    .line 843
    iput-object v11, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    .line 844
    .line 845
    move/from16 v15, v18

    .line 846
    .line 847
    move/from16 v11, v26

    .line 848
    .line 849
    move/from16 p4, v1

    .line 850
    .line 851
    if-ne v15, v11, :cond_40

    .line 852
    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    .line 854
    .line 855
    move/from16 p5, v2

    .line 856
    .line 857
    const-string v2, "Raise to "

    .line 858
    .line 859
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    const-string v0, ": "

    .line 866
    .line 867
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    const-string v0, ", due to "

    .line 874
    .line 875
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    const-string v0, " adj="

    .line 882
    .line 883
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    const-string v0, " procState="

    .line 890
    .line 891
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    sget v0, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 895
    .line 896
    invoke-static {v8}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    .line 902
    .line 903
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    invoke-virtual {v4, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    goto :goto_1b

    .line 911
    :cond_40
    move/from16 p5, v2

    .line 912
    .line 913
    goto :goto_1b

    .line 914
    :cond_41
    move/from16 p4, v1

    .line 915
    .line 916
    move/from16 p5, v2

    .line 917
    .line 918
    move/from16 v15, v18

    .line 919
    .line 920
    move/from16 v11, v26

    .line 921
    .line 922
    :goto_1b
    move/from16 v0, p4

    .line 923
    .line 924
    move/from16 v1, p5

    .line 925
    .line 926
    move v2, v8

    .line 927
    move v9, v10

    .line 928
    move v8, v5

    .line 929
    goto :goto_1c

    .line 930
    :cond_42
    move/from16 v21, v0

    .line 931
    .line 932
    move/from16 p12, v2

    .line 933
    .line 934
    move-object v7, v4

    .line 935
    move-object v4, v11

    .line 936
    move/from16 v6, v17

    .line 937
    .line 938
    move/from16 v15, v18

    .line 939
    .line 940
    const/16 v0, 0x384

    .line 941
    .line 942
    move v11, v5

    .line 943
    if-ge v8, v0, :cond_43

    .line 944
    .line 945
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 946
    .line 947
    invoke-virtual {v0, v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)Z

    .line 948
    .line 949
    .line 950
    :cond_43
    move/from16 v2, p12

    .line 951
    .line 952
    move v0, v1

    .line 953
    move v8, v3

    .line 954
    move v1, v6

    .line 955
    :goto_1c
    const/high16 v5, 0x8000000

    .line 956
    .line 957
    invoke-virtual {v12, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 958
    .line 959
    .line 960
    move-result v5

    .line 961
    if-eqz v5, :cond_45

    .line 962
    .line 963
    if-nez v14, :cond_44

    .line 964
    .line 965
    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 966
    .line 967
    const/4 v10, 0x1

    .line 968
    iput-boolean v10, v5, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    .line 969
    .line 970
    :cond_44
    const/16 v5, 0x10

    .line 971
    .line 972
    if-gt v9, v5, :cond_45

    .line 973
    .line 974
    if-le v2, v5, :cond_45

    .line 975
    .line 976
    const-string/jumbo v2, "cch-as-act"

    .line 977
    .line 978
    .line 979
    iput-object v2, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 980
    .line 981
    move v10, v5

    .line 982
    goto :goto_1d

    .line 983
    :cond_45
    move v10, v2

    .line 984
    :goto_1d
    iget-object v2, v12, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 985
    .line 986
    const/16 v5, 0x80

    .line 987
    .line 988
    invoke-virtual {v12, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 989
    .line 990
    .line 991
    move-result v5

    .line 992
    if-eqz v5, :cond_4a

    .line 993
    .line 994
    if-eqz v2, :cond_4a

    .line 995
    .line 996
    if-lez v8, :cond_4a

    .line 997
    .line 998
    iget-object v5, v2, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    .line 999
    .line 1000
    iget-boolean v5, v5, Lcom/android/server/wm/ActivityRecord;->mVisibleForServiceConnection:Z

    .line 1001
    .line 1002
    if-eqz v5, :cond_4a

    .line 1003
    .line 1004
    const/4 v5, 0x0

    .line 1005
    invoke-virtual {v7, v5, v14}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 1006
    .line 1007
    .line 1008
    move-result v8

    .line 1009
    if-eqz v8, :cond_46

    .line 1010
    .line 1011
    const/4 v9, 0x1

    .line 1012
    return v9

    .line 1013
    :cond_46
    const/4 v8, 0x4

    .line 1014
    const/4 v9, 0x1

    .line 1015
    invoke-virtual {v12, v8}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v16

    .line 1019
    if-eqz v16, :cond_48

    .line 1020
    .line 1021
    const/16 v5, 0x40

    .line 1022
    .line 1023
    invoke-virtual {v12, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v1

    .line 1027
    if-eqz v1, :cond_47

    .line 1028
    .line 1029
    goto :goto_1e

    .line 1030
    :cond_47
    const/4 v8, 0x2

    .line 1031
    goto :goto_1e

    .line 1032
    :cond_48
    move v8, v1

    .line 1033
    :goto_1e
    if-nez v14, :cond_49

    .line 1034
    .line 1035
    move-object/from16 v1, p11

    .line 1036
    .line 1037
    iput-object v1, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 1038
    .line 1039
    const/4 v1, 0x2

    .line 1040
    iput v1, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    .line 1041
    .line 1042
    iput-object v2, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 1043
    .line 1044
    iput v10, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    .line 1045
    .line 1046
    iget-object v1, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 1047
    .line 1048
    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 1049
    .line 1050
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 1051
    .line 1052
    iput-object v1, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    .line 1053
    .line 1054
    if-ne v15, v11, :cond_49

    .line 1055
    .line 1056
    const-string v1, "Raise to service w/activity: "

    .line 1057
    .line 1058
    invoke-static {v1, v13, v4}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    .line 1059
    .line 1060
    .line 1061
    :cond_49
    move v1, v8

    .line 1062
    const/4 v8, 0x0

    .line 1063
    goto :goto_1f

    .line 1064
    :cond_4a
    const/4 v9, 0x1

    .line 1065
    :goto_1f
    invoke-static {v10, v13}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(ILcom/android/server/am/ProcessRecord;)I

    .line 1066
    .line 1067
    .line 1068
    move-result v2

    .line 1069
    or-int/2addr v0, v2

    .line 1070
    const/4 v2, 0x5

    .line 1071
    if-le v10, v2, :cond_4b

    .line 1072
    .line 1073
    and-int/lit8 v0, v0, -0x11

    .line 1074
    .line 1075
    :cond_4b
    move/from16 v2, p12

    .line 1076
    .line 1077
    if-lt v8, v3, :cond_4d

    .line 1078
    .line 1079
    if-lt v10, v2, :cond_4d

    .line 1080
    .line 1081
    if-gt v1, v6, :cond_4d

    .line 1082
    .line 1083
    move/from16 v5, v21

    .line 1084
    .line 1085
    if-eq v0, v5, :cond_4c

    .line 1086
    .line 1087
    and-int v11, v0, v5

    .line 1088
    .line 1089
    if-ne v11, v5, :cond_4c

    .line 1090
    .line 1091
    goto :goto_20

    .line 1092
    :cond_4c
    const/16 v20, 0x0

    .line 1093
    .line 1094
    goto :goto_21

    .line 1095
    :cond_4d
    :goto_20
    move/from16 v20, v9

    .line 1096
    .line 1097
    :goto_21
    if-eqz v14, :cond_4e

    .line 1098
    .line 1099
    return v20

    .line 1100
    :cond_4e
    if-ge v8, v3, :cond_4f

    .line 1101
    .line 1102
    invoke-static {v13, v8, v1}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;II)I

    .line 1103
    .line 1104
    .line 1105
    move-result v1

    .line 1106
    :cond_4f
    if-ge v10, v2, :cond_50

    .line 1107
    .line 1108
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1109
    .line 1110
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 1111
    .line 1112
    .line 1113
    iput v10, v2, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 1114
    .line 1115
    :cond_50
    if-le v1, v6, :cond_51

    .line 1116
    .line 1117
    invoke-virtual {v4, v7, v1}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V

    .line 1118
    .line 1119
    .line 1120
    :cond_51
    iput v0, v7, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 1121
    .line 1122
    return v20
.end method

.method public final dumpCacheOomRankerSettings(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "  oom_re_ranking_rss_weight="

    .line 7
    .line 8
    const-string v1, "  oom_re_ranking_uses_weight="

    .line 9
    .line 10
    const-string v2, "  oom_re_ranking_lru_weight="

    .line 11
    .line 12
    const-string v3, "  oom_re_ranking_number_to_re_rank="

    .line 13
    .line 14
    const-string v4, "  use_oom_re_ranking="

    .line 15
    .line 16
    const-string v5, "CacheOomRanker settings"

    .line 17
    .line 18
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v5, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v5

    .line 24
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v4, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    .line 30
    .line 31
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->getNumberToReRank()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget v2, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget v1, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget p0, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    .line 100
    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    monitor-exit v5

    .line 112
    return-void

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    throw p0
.end method

.method public final dumpCachedAppOptimizerSettings(Ljava/io/PrintWriter;)V
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "  compact_proc_state_throttle="

    .line 7
    .line 8
    const-string v1, "  compact_full_delta_rss_throttle_kb="

    .line 9
    .line 10
    const-string v2, "  compact_full_rss_throttle_kb="

    .line 11
    .line 12
    const-string v3, "  compact_statsd_sample_rate="

    .line 13
    .line 14
    const-string v4, "  compact_throttle_max_oom_adj="

    .line 15
    .line 16
    const-string v5, "  compact_throttle_min_oom_adj="

    .line 17
    .line 18
    const-string v6, "  compact_throttle_4="

    .line 19
    .line 20
    const-string v7, "  compact_throttle_3="

    .line 21
    .line 22
    const-string v8, "  compact_throttle_2="

    .line 23
    .line 24
    const-string v9, "  compact_throttle_1="

    .line 25
    .line 26
    const-string v10, "  use_compaction="

    .line 27
    .line 28
    const-string v11, "CachedAppOptimizer settings"

    .line 29
    .line 30
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v11, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v11

    .line 36
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-boolean v10, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 42
    .line 43
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v10, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-wide v12, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 59
    .line 60
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v9, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-wide v12, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 76
    .line 77
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 93
    .line 94
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-wide v8, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 110
    .line 111
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 127
    .line 128
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-wide v6, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 144
    .line 145
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 161
    .line 162
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 178
    .line 179
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 195
    .line 196
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    .line 212
    .line 213
    const/4 v2, 0x0

    .line 214
    new-array v3, v2, [Ljava/lang/Integer;

    .line 215
    .line 216
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const-string v0, " Per-Process Compaction Stats"

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const-wide/16 v3, 0x0

    .line 250
    .line 251
    move-wide v5, v3

    .line 252
    move-wide v7, v5

    .line 253
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_0

    .line 258
    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    check-cast v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;

    .line 264
    .line 265
    new-instance v9, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string v10, "-----"

    .line 271
    .line 272
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    iget-object v10, v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;->processName:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v10, "-----"

    .line 281
    .line 282
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-wide v9, v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 293
    .line 294
    add-long/2addr v5, v9

    .line 295
    iget-wide v9, v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 296
    .line 297
    add-long/2addr v7, v9

    .line 298
    invoke-virtual {v1, p1}, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->dump(Ljava/io/PrintWriter;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 302
    .line 303
    .line 304
    goto :goto_0

    .line 305
    :catchall_0
    move-exception p0

    .line 306
    goto/16 :goto_9

    .line 307
    .line 308
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 309
    .line 310
    .line 311
    const-string v0, " Per-Source Compaction Stats"

    .line 312
    .line 313
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPerSourceCompactStats:Ljava/util/EnumMap;

    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-eqz v1, :cond_1

    .line 331
    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    check-cast v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;

    .line 337
    .line 338
    new-instance v9, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    const-string v10, "-----"

    .line 344
    .line 345
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    iget-object v10, v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;->sourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 349
    .line 350
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v10, "-----"

    .line 354
    .line 355
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1, p1}, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->dump(Ljava/io/PrintWriter;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 369
    .line 370
    .line 371
    goto :goto_1

    .line 372
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 373
    .line 374
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    const-string v1, "Total Compactions Performed by profile: "

    .line 381
    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v1, " some, "

    .line 389
    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v1, " full"

    .line 397
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    const-string v1, "Total compactions downgraded: "

    .line 414
    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    iget-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionDowngrades:J

    .line 419
    .line 420
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    const-string v0, "Total compactions cancelled by reason: "

    .line 431
    .line 432
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_2

    .line 450
    .line 451
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    check-cast v1, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    .line 456
    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    const-string v6, "    "

    .line 463
    .line 464
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v6, ": "

    .line 471
    .line 472
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    iget-object v6, p0, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    .line 476
    .line 477
    invoke-virtual {v6, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    goto :goto_2

    .line 492
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 493
    .line 494
    .line 495
    const-string v0, " System Compaction Memory Stats"

    .line 496
    .line 497
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .line 504
    .line 505
    const-string v1, "    Compactions Performed: "

    .line 506
    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .line 524
    .line 525
    const-string v1, "    Total Memory Freed (KB): "

    .line 526
    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    const-string v1, "    Avg Mem Freed per Compact (KB): "

    .line 546
    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    const-wide/16 v3, 0x0

    .line 551
    .line 552
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 563
    .line 564
    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    .line 566
    .line 567
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .line 569
    .line 570
    const-string v1, "  Tracking last compaction stats for "

    .line 571
    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 576
    .line 577
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    .line 578
    .line 579
    .line 580
    move-result v1

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    const-string v1, " processes."

    .line 585
    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    const-string v0, "Last Compaction per process stats:"

    .line 597
    .line 598
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    const-string v0, "    (ProcessName,Source,DeltaAnonRssKBs,ZramConsumedKBs,AnonMemFreedKBs,CompactEfficiency,CompactCost(ms/MB),procState,oomAdj,oomAdjReason)"

    .line 602
    .line 603
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 607
    .line 608
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 617
    .line 618
    .line 619
    move-result v1

    .line 620
    if-eqz v1, :cond_3

    .line 621
    .line 622
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    check-cast v1, Ljava/util/Map$Entry;

    .line 627
    .line 628
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    check-cast v1, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;

    .line 633
    .line 634
    invoke-virtual {v1, p1}, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->dump(Ljava/io/PrintWriter;)V

    .line 635
    .line 636
    .line 637
    goto :goto_3

    .line 638
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 639
    .line 640
    .line 641
    const-string v0, "Last 20 Compactions Stats:"

    .line 642
    .line 643
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    const-string v0, "    (ProcessName,Source,DeltaAnonRssKBs,ZramConsumedKBs,AnonMemFreedKBs,CompactEfficiency,CompactCost(ms/MB),procState,oomAdj,oomAdjReason)"

    .line 647
    .line 648
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionStatsHistory:Ljava/util/LinkedList;

    .line 652
    .line 653
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 658
    .line 659
    .line 660
    move-result v1

    .line 661
    if-eqz v1, :cond_4

    .line 662
    .line 663
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    check-cast v1, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;

    .line 668
    .line 669
    invoke-virtual {v1, p1}, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->dump(Ljava/io/PrintWriter;)V

    .line 670
    .line 671
    .line 672
    goto :goto_4

    .line 673
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 674
    .line 675
    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    .line 677
    .line 678
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    .line 680
    .line 681
    const-string v1, "  use_freezer="

    .line 682
    .line 683
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 687
    .line 688
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    .line 699
    .line 700
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    .line 702
    .line 703
    const-string v1, "  freeze_statsd_sample_rate="

    .line 704
    .line 705
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 709
    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    .line 721
    .line 722
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    .line 724
    .line 725
    const-string v1, "  freeze_debounce_timeout="

    .line 726
    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 731
    .line 732
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    .line 743
    .line 744
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    .line 746
    .line 747
    const-string v1, "  freeze_exempt_inst_pkg="

    .line 748
    .line 749
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerExemptInstPkg:Z

    .line 753
    .line 754
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    .line 765
    .line 766
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 767
    .line 768
    .line 769
    const-string v1, "  freeze_binder_enabled="

    .line 770
    .line 771
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderEnabled:Z

    .line 775
    .line 776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 777
    .line 778
    .line 779
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    .line 787
    .line 788
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    .line 790
    .line 791
    const-string v1, "  freeze_binder_threshold="

    .line 792
    .line 793
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    .line 797
    .line 798
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    .line 809
    .line 810
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    .line 812
    .line 813
    const-string v1, "  freeze_binder_divisor="

    .line 814
    .line 815
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderDivisor:J

    .line 819
    .line 820
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    .line 831
    .line 832
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    .line 834
    .line 835
    const-string v1, "  freeze_binder_offset="

    .line 836
    .line 837
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    .line 841
    .line 842
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    .line 853
    .line 854
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 855
    .line 856
    .line 857
    const-string v1, "  freeze_binder_callback_enabled="

    .line 858
    .line 859
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackEnabled:Z

    .line 863
    .line 864
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    .line 875
    .line 876
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 877
    .line 878
    .line 879
    const-string v1, "  freeze_binder_callback_throttle="

    .line 880
    .line 881
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackThrottle:J

    .line 885
    .line 886
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    .line 897
    .line 898
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    .line 900
    .line 901
    const-string v1, "  freeze_binder_async_threshold="

    .line 902
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    .line 907
    .line 908
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 919
    .line 920
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 921
    .line 922
    .line 923
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 925
    .line 926
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 927
    .line 928
    .line 929
    move-result v1

    .line 930
    new-instance v3, Ljava/lang/StringBuilder;

    .line 931
    .line 932
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 933
    .line 934
    .line 935
    const-string v4, "  Apps frozen: "

    .line 936
    .line 937
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v3

    .line 947
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    move v3, v2

    .line 951
    :goto_5
    if-ge v3, v1, :cond_6

    .line 952
    .line 953
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 954
    .line 955
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v4

    .line 959
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 960
    .line 961
    new-instance v5, Ljava/lang/StringBuilder;

    .line 962
    .line 963
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 964
    .line 965
    .line 966
    const-string v6, "    "

    .line 967
    .line 968
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    .line 970
    .line 971
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 972
    .line 973
    iget-wide v6, v6, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    .line 974
    .line 975
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 976
    .line 977
    .line 978
    const-string v6, ": "

    .line 979
    .line 980
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    .line 982
    .line 983
    iget v6, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 984
    .line 985
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 986
    .line 987
    .line 988
    const-string v6, " "

    .line 989
    .line 990
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    .line 992
    .line 993
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 994
    .line 995
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 999
    .line 1000
    iget-boolean v4, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    .line 1001
    .line 1002
    if-eqz v4, :cond_5

    .line 1003
    .line 1004
    const-string v4, " (sticky)"

    .line 1005
    .line 1006
    goto :goto_6

    .line 1007
    :catchall_1
    move-exception p0

    .line 1008
    goto :goto_8

    .line 1009
    :cond_5
    const-string v4, ""

    .line 1010
    .line 1011
    :goto_6
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v4

    .line 1018
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    add-int/lit8 v3, v3, 0x1

    .line 1022
    .line 1023
    goto :goto_5

    .line 1024
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 1025
    .line 1026
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1027
    .line 1028
    .line 1029
    move-result v1

    .line 1030
    if-nez v1, :cond_7

    .line 1031
    .line 1032
    const-string v1, "  Pending compactions:"

    .line 1033
    .line 1034
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    .line 1036
    .line 1037
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 1038
    .line 1039
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1040
    .line 1041
    .line 1042
    move-result v1

    .line 1043
    :goto_7
    if-ge v2, v1, :cond_7

    .line 1044
    .line 1045
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 1046
    .line 1047
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v3

    .line 1051
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1052
    .line 1053
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1056
    .line 1057
    .line 1058
    const-string v5, "    pid: "

    .line 1059
    .line 1060
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    .line 1063
    iget v5, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1064
    .line 1065
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    const-string v5, ". name: "

    .line 1069
    .line 1070
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    .line 1072
    .line 1073
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1074
    .line 1075
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    .line 1078
    const-string v5, ". hasPendingCompact: "

    .line 1079
    .line 1080
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1084
    .line 1085
    iget-boolean v3, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    .line 1086
    .line 1087
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v3

    .line 1094
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    .line 1096
    .line 1097
    add-int/lit8 v2, v2, 0x1

    .line 1098
    .line 1099
    goto :goto_7

    .line 1100
    :cond_7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1101
    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1102
    .line 1103
    .line 1104
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1105
    const-string p0, "FCA Feature enable:true"

    .line 1106
    .line 1107
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    return-void

    .line 1111
    :goto_8
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1112
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1113
    .line 1114
    .line 1115
    throw p0

    .line 1116
    :goto_9
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1117
    throw p0
.end method

.method public final enqueuePendingTopAppIfNecessaryLSP()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->enqueuePendingTopAppIfNecessaryLocked()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->enqueuePendingTopAppIfNecessaryLocked()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return v1
.end method

.method public final evaluateProviderConnectionAdd(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-static/range {p1 .. p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    move-object/from16 v2, p2

    .line 11
    .line 12
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 13
    .line 14
    iget v3, v1, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 15
    .line 16
    move-object/from16 v4, p1

    .line 17
    .line 18
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 19
    .line 20
    iget v6, v5, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 21
    .line 22
    if-gt v3, v6, :cond_1

    .line 23
    .line 24
    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 25
    .line 26
    iget v3, v5, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 27
    .line 28
    if-gt v1, v3, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    return v0

    .line 32
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    const/4 v10, 0x0

    .line 48
    const/16 v11, 0x384

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v12, 0x0

    .line 54
    const/4 v13, 0x0

    .line 55
    const/4 v14, 0x1

    .line 56
    move-object v0, p0

    .line 57
    move-object/from16 v2, p2

    .line 58
    .line 59
    move-object/from16 v3, p1

    .line 60
    .line 61
    move-wide v4, v5

    .line 62
    move-object v6, v7

    .line 63
    move v7, v8

    .line 64
    move v8, v9

    .line 65
    move v9, v12

    .line 66
    move v12, v13

    .line 67
    move v13, v14

    .line 68
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/OomAdjuster;->computeProviderHostOomAdjLSP(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    return v0
.end method

.method public getInitialAdj(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 4
    .line 5
    return p0
.end method

.method public getInitialCapability(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 4
    .line 5
    return p0
.end method

.method public getInitialIsCurBoundByNonBgRestrictedApp(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 4
    .line 5
    return p0
.end method

.method public getInitialProcState(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 4
    .line 5
    return p0
.end method

.method public handleUserSwitchedLocked()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/OomAdjuster;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final idleUidsLocked()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 14
    .line 15
    const/16 v3, 0x3a

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    .line 19
    .line 20
    if-gtz v1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 33
    .line 34
    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 35
    .line 36
    sub-long v6, v4, v6

    .line 37
    .line 38
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 45
    .line 46
    .line 47
    :cond_1
    const/4 v2, 0x1

    .line 48
    sub-int/2addr v1, v2

    .line 49
    const-wide/16 v8, 0x0

    .line 50
    .line 51
    move-wide v11, v8

    .line 52
    const/4 v13, 0x0

    .line 53
    :goto_0
    if-ltz v1, :cond_9

    .line 54
    .line 55
    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 56
    .line 57
    invoke-virtual {v14, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    .line 58
    .line 59
    .line 60
    move-result-object v14

    .line 61
    move-wide/from16 v16, v11

    .line 62
    .line 63
    iget-wide v10, v14, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 64
    .line 65
    move-wide/from16 v18, v4

    .line 66
    .line 67
    iget-wide v3, v14, Lcom/android/server/am/UidRecord;->mLastIdleTimeIfStillIdle:J

    .line 68
    .line 69
    cmp-long v5, v10, v8

    .line 70
    .line 71
    if-lez v5, :cond_2

    .line 72
    .line 73
    iget-boolean v5, v14, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 74
    .line 75
    if-eqz v5, :cond_3

    .line 76
    .line 77
    cmp-long v3, v3, v8

    .line 78
    .line 79
    if-nez v3, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move-wide/from16 v4, v18

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    :goto_1
    cmp-long v3, v10, v6

    .line 86
    .line 87
    if-gtz v3, :cond_5

    .line 88
    .line 89
    iget v3, v14, Lcom/android/server/am/UidRecord;->mUid:I

    .line 90
    .line 91
    const/16 v4, 0x7567

    .line 92
    .line 93
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 94
    .line 95
    .line 96
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 97
    .line 98
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 99
    .line 100
    .line 101
    monitor-enter v3

    .line 102
    :try_start_0
    iput-boolean v2, v14, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 103
    .line 104
    iput-boolean v2, v14, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    .line 105
    .line 106
    move-wide/from16 v4, v18

    .line 107
    .line 108
    iput-wide v4, v14, Lcom/android/server/am/UidRecord;->mLastIdleTimeIfStillIdle:J

    .line 109
    .line 110
    cmp-long v10, v4, v8

    .line 111
    .line 112
    if-lez v10, :cond_4

    .line 113
    .line 114
    iput-wide v4, v14, Lcom/android/server/am/UidRecord;->mRealLastIdleTime:J

    .line 115
    .line 116
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 118
    .line 119
    .line 120
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 121
    .line 122
    iget v10, v14, Lcom/android/server/am/UidRecord;->mUid:I

    .line 123
    .line 124
    invoke-virtual {v3, v10, v14}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :cond_5
    move-wide/from16 v4, v18

    .line 135
    .line 136
    cmp-long v3, v16, v8

    .line 137
    .line 138
    if-eqz v3, :cond_6

    .line 139
    .line 140
    cmp-long v3, v16, v10

    .line 141
    .line 142
    if-lez v3, :cond_7

    .line 143
    .line 144
    :cond_6
    move-wide/from16 v16, v10

    .line 145
    .line 146
    :cond_7
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 147
    .line 148
    iget v10, v14, Lcom/android/server/am/UidRecord;->mUid:I

    .line 149
    .line 150
    invoke-virtual {v3, v10}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-eqz v3, :cond_8

    .line 155
    .line 156
    move v13, v2

    .line 157
    :cond_8
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 158
    .line 159
    move-wide/from16 v11, v16

    .line 160
    .line 161
    const/16 v3, 0x3a

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_9
    move-wide/from16 v16, v11

    .line 165
    .line 166
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 167
    .line 168
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 169
    .line 170
    if-eqz v1, :cond_a

    .line 171
    .line 172
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 173
    .line 174
    .line 175
    :cond_a
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 176
    .line 177
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 178
    .line 179
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    .line 180
    .line 181
    if-eqz v1, :cond_d

    .line 182
    .line 183
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 184
    .line 185
    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 186
    .line 187
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    const/4 v10, 0x0

    .line 192
    :goto_3
    if-ge v10, v2, :cond_d

    .line 193
    .line 194
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 195
    .line 196
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 201
    .line 202
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    .line 203
    .line 204
    .line 205
    move-result-wide v6

    .line 206
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 207
    .line 208
    iget-wide v14, v3, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 209
    .line 210
    sub-long/2addr v6, v14

    .line 211
    cmp-long v3, v6, v8

    .line 212
    .line 213
    if-lez v3, :cond_c

    .line 214
    .line 215
    cmp-long v3, v16, v8

    .line 216
    .line 217
    if-eqz v3, :cond_b

    .line 218
    .line 219
    cmp-long v3, v16, v6

    .line 220
    .line 221
    if-lez v3, :cond_c

    .line 222
    .line 223
    :cond_b
    move-wide/from16 v16, v6

    .line 224
    .line 225
    :cond_c
    add-int/lit8 v10, v10, 0x1

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_d
    cmp-long v1, v16, v8

    .line 229
    .line 230
    if-lez v1, :cond_f

    .line 231
    .line 232
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 233
    .line 234
    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 235
    .line 236
    add-long v16, v16, v1

    .line 237
    .line 238
    sub-long v1, v16, v4

    .line 239
    .line 240
    if-eqz v13, :cond_e

    .line 241
    .line 242
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 243
    .line 244
    iget-object v3, v3, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 245
    .line 246
    iget v7, v3, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 247
    .line 248
    long-to-int v8, v1

    .line 249
    const-string v9, ""

    .line 250
    .line 251
    const/4 v6, 0x0

    .line 252
    const/4 v4, 0x3

    .line 253
    const/4 v5, 0x0

    .line 254
    invoke-static/range {v4 .. v9}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIILjava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_e
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 258
    .line 259
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 260
    .line 261
    const/16 v3, 0x3a

    .line 262
    .line 263
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 264
    .line 265
    .line 266
    :cond_f
    return-void
.end method

.method public maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 14
    .line 15
    .line 16
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :catchall_1
    move-exception p0

    .line 28
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 16
    .line 17
    invoke-static {v2}, Landroid/app/ActivityManager;->isProcStateConsideredInteraction(I)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x6

    .line 23
    const/4 v5, 0x0

    .line 24
    const-wide/16 v6, 0x0

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iput-wide v6, v0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 29
    .line 30
    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 33
    .line 34
    iput-wide v6, v2, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    iget v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 38
    .line 39
    const/4 v8, 0x4

    .line 40
    if-gt v2, v8, :cond_5

    .line 41
    .line 42
    iget-wide v8, v0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 43
    .line 44
    cmp-long v2, v8, v6

    .line 45
    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    iput-wide p2, v0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 53
    .line 54
    iput-wide p2, v2, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    .line 55
    .line 56
    :cond_2
    move v3, v5

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    if-eqz v1, :cond_4

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 61
    .line 62
    iget-wide v10, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 66
    .line 67
    iget-wide v10, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 68
    .line 69
    :goto_0
    add-long/2addr v8, v10

    .line 70
    cmp-long v2, p2, v8

    .line 71
    .line 72
    if-lez v2, :cond_2

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    if-gt v2, v4, :cond_6

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_6
    move v3, v5

    .line 79
    :goto_1
    iput-wide v6, v0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 80
    .line 81
    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 82
    .line 83
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 84
    .line 85
    iput-wide v6, v2, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    .line 86
    .line 87
    :goto_2
    if-eqz v1, :cond_7

    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 90
    .line 91
    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 95
    .line 96
    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 97
    .line 98
    :goto_3
    if-eqz v3, :cond_9

    .line 99
    .line 100
    iget-boolean v8, v0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    .line 101
    .line 102
    if-eqz v8, :cond_8

    .line 103
    .line 104
    iget-wide v8, v0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    .line 105
    .line 106
    sub-long v8, p2, v8

    .line 107
    .line 108
    cmp-long v1, v8, v1

    .line 109
    .line 110
    if-lez v1, :cond_9

    .line 111
    .line 112
    :cond_8
    iput-wide p2, v0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    .line 113
    .line 114
    iget-object v1, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 115
    .line 116
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 117
    .line 118
    iput-wide p2, v1, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    .line 119
    .line 120
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    if-eqz p2, :cond_9

    .line 127
    .line 128
    :goto_4
    array-length p3, p2

    .line 129
    if-ge v5, p3, :cond_9

    .line 130
    .line 131
    iget-object p3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 132
    .line 133
    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 134
    .line 135
    aget-object v1, p2, v5

    .line 136
    .line 137
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 138
    .line 139
    invoke-virtual {p3, v2, v4, v1}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(IILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    add-int/lit8 v5, v5, 0x1

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_9
    iput-boolean v3, v0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    .line 146
    .line 147
    if-nez v3, :cond_a

    .line 148
    .line 149
    iput-wide v6, v0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    .line 150
    .line 151
    iget-object p0, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 152
    .line 153
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 154
    .line 155
    iput-wide v6, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    .line 156
    .line 157
    :cond_a
    return-void
.end method

.method public onProcessEndLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProcessOomAdjChanged(ILcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProcessStateChanged(ILcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onWakefulnessChanged(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    sget-object p1, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;->SCREEN_ON:Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 17
    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 36
    .line 37
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/CachedAppOptimizer;->cancelCompactionForProcess(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_2
    return-void
.end method

.method public performUpdateOomAdjLSP(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 2
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 3
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 4
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    return-void
.end method

.method public performUpdateOomAdjLSP(ILcom/android/server/am/ProcessRecord;)V
    .locals 13

    .line 6
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 7
    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 8
    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v11, 0x40

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 10
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 11
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v5, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->enqueuePendingTopAppIfNecessaryLSP()I

    move-result v5

    iput v5, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 13
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, v5, v4, v6}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    move-result v7

    .line 14
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move-object v5, v6

    move v6, v7

    move v7, v9

    .line 16
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    goto :goto_0

    .line 17
    :cond_0
    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    const/16 v3, 0x3e9

    if-ne v1, v3, :cond_1

    .line 18
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p0, v4}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    .line 20
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    move v8, p1

    .line 23
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJIZ)Z

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 25
    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mPendingStartActivityUids:Lcom/android/server/am/PendingStartActivityUids;

    .line 26
    monitor-enter v1

    .line 27
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit v1

    .line 29
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    .line 30
    monitor-exit v1

    throw v0
.end method

.method public performUpdateOomAdjPendingTargetsLocked(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-wide/16 v8, 0x40

    .line 14
    .line 15
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->enqueuePendingTopAppIfNecessaryLSP()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 29
    .line 30
    invoke-virtual {p0, v1, v0, v5}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 36
    .line 37
    .line 38
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 39
    .line 40
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 41
    .line 42
    .line 43
    monitor-enter v10

    .line 44
    const/4 v6, 0x1

    .line 45
    const/4 v7, 0x0

    .line 46
    move-object v1, p0

    .line 47
    move v2, p1

    .line 48
    move-object v4, v0

    .line 49
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    .line 50
    .line 51
    .line 52
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPendingStartActivityUids:Lcom/android/server/am/PendingStartActivityUids;

    .line 62
    .line 63
    monitor-enter p0

    .line 64
    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    monitor-exit p0

    .line 70
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    monitor-exit p0

    .line 76
    throw p1

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public final postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v10, 0x0

    .line 4
    iput v10, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 5
    .line 6
    iput v10, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 9
    .line 10
    iget-object v11, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 19
    .line 20
    iget-wide v2, v2, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    .line 21
    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    cmp-long v4, v2, v4

    .line 25
    .line 26
    const/4 v12, 0x1

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 30
    .line 31
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    .line 32
    .line 33
    xor-int/2addr v2, v12

    .line 34
    move v13, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 37
    .line 38
    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    .line 39
    .line 40
    add-long/2addr v2, v4

    .line 41
    cmp-long v2, v2, p3

    .line 42
    .line 43
    if-lez v2, :cond_1

    .line 44
    .line 45
    move v13, v10

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v13, v12

    .line 48
    :goto_0
    if-nez v13, :cond_2

    .line 49
    .line 50
    iget-wide v2, v0, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    .line 51
    .line 52
    cmp-long v2, v2, p3

    .line 53
    .line 54
    if-gez v2, :cond_2

    .line 55
    .line 56
    const-string v2, "OomAdjuster"

    .line 57
    .line 58
    const-string v3, "Not killing cached processes"

    .line 59
    .line 60
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    const-wide/16 v2, 0x1388

    .line 64
    .line 65
    add-long v2, p3, v2

    .line 66
    .line 67
    iput-wide v2, v0, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    .line 68
    .line 69
    :cond_2
    const v2, 0x7fffffff

    .line 70
    .line 71
    .line 72
    if-eqz v13, :cond_3

    .line 73
    .line 74
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 75
    .line 76
    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 77
    .line 78
    move v14, v3

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move v14, v2

    .line 81
    :goto_1
    if-eqz v13, :cond_4

    .line 82
    .line 83
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 84
    .line 85
    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 86
    .line 87
    sub-int/2addr v2, v14

    .line 88
    :cond_4
    move v15, v2

    .line 89
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 90
    .line 91
    if-eqz v2, :cond_9

    .line 92
    .line 93
    iget-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    .line 94
    .line 95
    if-nez v3, :cond_5

    .line 96
    .line 97
    new-instance v3, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 106
    .line 107
    .line 108
    :goto_2
    iput v10, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 109
    .line 110
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 111
    .line 112
    iget-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    .line 113
    .line 114
    if-nez v3, :cond_6

    .line 115
    .line 116
    new-instance v3, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 125
    .line 126
    .line 127
    :goto_3
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 128
    .line 129
    iget-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    .line 130
    .line 131
    if-nez v3, :cond_7

    .line 132
    .line 133
    new-instance v3, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 142
    .line 143
    .line 144
    :goto_4
    iput v10, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 145
    .line 146
    iget-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    .line 147
    .line 148
    if-nez v3, :cond_8

    .line 149
    .line 150
    new-instance v3, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    iput-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 159
    .line 160
    .line 161
    :cond_9
    :goto_5
    sget-boolean v16, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    .line 162
    .line 163
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    .line 164
    .line 165
    float-to-double v8, v2

    .line 166
    if-eqz v16, :cond_a

    .line 167
    .line 168
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreeSwapPercent()D

    .line 169
    .line 170
    .line 171
    move-result-wide v2

    .line 172
    :goto_6
    move-wide v6, v2

    .line 173
    goto :goto_7

    .line 174
    :cond_a
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 175
    .line 176
    goto :goto_6

    .line 177
    :goto_7
    sub-int/2addr v1, v12

    .line 178
    move v5, v1

    .line 179
    move v1, v10

    .line 180
    move v2, v1

    .line 181
    move v3, v2

    .line 182
    move/from16 v18, v3

    .line 183
    .line 184
    move/from16 v24, v18

    .line 185
    .line 186
    const/16 v17, 0x0

    .line 187
    .line 188
    :goto_8
    const-wide/32 v25, 0x1b7740

    .line 189
    .line 190
    .line 191
    const-wide/16 v27, 0x3e8

    .line 192
    .line 193
    if-ltz v5, :cond_4a

    .line 194
    .line 195
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v19

    .line 199
    move-object/from16 v10, v19

    .line 200
    .line 201
    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 202
    .line 203
    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 204
    .line 205
    iget-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 206
    .line 207
    if-nez v4, :cond_49

    .line 208
    .line 209
    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 210
    .line 211
    if-eqz v4, :cond_49

    .line 212
    .line 213
    iget-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->mExcessiveResourceUsage:Z

    .line 214
    .line 215
    if-eqz v4, :cond_b

    .line 216
    .line 217
    const-string v4, "OomAdjuster"

    .line 218
    .line 219
    move/from16 v20, v1

    .line 220
    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    move/from16 v21, v2

    .line 224
    .line 225
    const-string v2, "Excessive Resource Usage detectd task: "

    .line 226
    .line 227
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 231
    .line 232
    invoke-static {v2}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v2, " : "

    .line 240
    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    goto :goto_9

    .line 259
    :cond_b
    move/from16 v20, v1

    .line 260
    .line 261
    move/from16 v21, v2

    .line 262
    .line 263
    :goto_9
    iget v1, v12, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 264
    .line 265
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 266
    .line 267
    if-ne v1, v2, :cond_c

    .line 268
    .line 269
    const/16 v22, 0x1

    .line 270
    .line 271
    move/from16 v4, v20

    .line 272
    .line 273
    move-object/from16 v1, p0

    .line 274
    .line 275
    move/from16 v36, v21

    .line 276
    .line 277
    move-object v2, v10

    .line 278
    move/from16 v37, v3

    .line 279
    .line 280
    move/from16 v3, p9

    .line 281
    .line 282
    move/from16 v38, v4

    .line 283
    .line 284
    move/from16 v19, v5

    .line 285
    .line 286
    move-wide/from16 v4, p3

    .line 287
    .line 288
    move-wide/from16 v39, v6

    .line 289
    .line 290
    move-wide/from16 v6, p5

    .line 291
    .line 292
    move-wide/from16 v20, v8

    .line 293
    .line 294
    move/from16 v8, p1

    .line 295
    .line 296
    move/from16 v9, v22

    .line 297
    .line 298
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJIZ)Z

    .line 299
    .line 300
    .line 301
    goto :goto_a

    .line 302
    :cond_c
    move/from16 v37, v3

    .line 303
    .line 304
    move/from16 v19, v5

    .line 305
    .line 306
    move-wide/from16 v39, v6

    .line 307
    .line 308
    move/from16 v38, v20

    .line 309
    .line 310
    move/from16 v36, v21

    .line 311
    .line 312
    move-wide/from16 v20, v8

    .line 313
    .line 314
    :goto_a
    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    .line 315
    .line 316
    if-eqz v1, :cond_d

    .line 317
    .line 318
    invoke-static {v10}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 319
    .line 320
    .line 321
    move v7, v13

    .line 322
    move v3, v14

    .line 323
    move/from16 v13, v24

    .line 324
    .line 325
    move/from16 v6, v36

    .line 326
    .line 327
    move/from16 v5, v37

    .line 328
    .line 329
    move/from16 v8, v38

    .line 330
    .line 331
    goto/16 :goto_23

    .line 332
    .line 333
    :cond_d
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 334
    .line 335
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 336
    .line 337
    const/16 v4, 0x11

    .line 338
    .line 339
    if-eqz v2, :cond_35

    .line 340
    .line 341
    sget-boolean v6, Lcom/android/server/am/BGProtectManager;->mAMSExceptionEnable:Z

    .line 342
    .line 343
    iget-object v2, v2, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 344
    .line 345
    if-eqz v6, :cond_15

    .line 346
    .line 347
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    iget-boolean v6, v10, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 351
    .line 352
    if-eqz v6, :cond_15

    .line 353
    .line 354
    iget v6, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 355
    .line 356
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    sget-object v7, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 361
    .line 362
    sget-object v8, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 363
    .line 364
    const/16 v9, 0x64

    .line 365
    .line 366
    if-ge v6, v9, :cond_10

    .line 367
    .line 368
    iget v6, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 369
    .line 370
    invoke-virtual {v8}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    if-gt v6, v8, :cond_e

    .line 375
    .line 376
    :goto_b
    const/4 v6, 0x1

    .line 377
    :goto_c
    const/4 v7, 0x0

    .line 378
    goto :goto_d

    .line 379
    :cond_e
    iget v6, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 380
    .line 381
    sget-object v8, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 382
    .line 383
    invoke-virtual {v8}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 384
    .line 385
    .line 386
    move-result v8

    .line 387
    if-ne v6, v8, :cond_f

    .line 388
    .line 389
    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    .line 390
    .line 391
    if-eqz v6, :cond_f

    .line 392
    .line 393
    goto :goto_b

    .line 394
    :cond_f
    iget v6, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 395
    .line 396
    invoke-virtual {v7}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 397
    .line 398
    .line 399
    move-result v7

    .line 400
    if-ne v6, v7, :cond_13

    .line 401
    .line 402
    goto :goto_b

    .line 403
    :cond_10
    iget-boolean v6, v2, Lcom/android/server/am/BGProtectManager;->mKnoxAMSExceptionEnable:Z

    .line 404
    .line 405
    if-eqz v6, :cond_13

    .line 406
    .line 407
    iget v6, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 408
    .line 409
    invoke-virtual {v8}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 410
    .line 411
    .line 412
    move-result v8

    .line 413
    if-lt v6, v8, :cond_11

    .line 414
    .line 415
    iget v6, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 416
    .line 417
    sget-object v8, Lcom/android/server/am/BGProtectManager$exceptFlag;->KNOXONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 418
    .line 419
    invoke-virtual {v8}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 420
    .line 421
    .line 422
    move-result v8

    .line 423
    if-gt v6, v8, :cond_11

    .line 424
    .line 425
    goto :goto_b

    .line 426
    :cond_11
    iget v6, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 427
    .line 428
    sget-object v8, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 429
    .line 430
    invoke-virtual {v8}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 431
    .line 432
    .line 433
    move-result v8

    .line 434
    if-ne v6, v8, :cond_12

    .line 435
    .line 436
    const/4 v6, 0x0

    .line 437
    const/4 v7, 0x1

    .line 438
    goto :goto_d

    .line 439
    :cond_12
    iget v6, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 440
    .line 441
    invoke-virtual {v7}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 442
    .line 443
    .line 444
    move-result v7

    .line 445
    if-ne v6, v7, :cond_13

    .line 446
    .line 447
    goto :goto_b

    .line 448
    :cond_13
    const/4 v6, 0x0

    .line 449
    goto :goto_c

    .line 450
    :goto_d
    iget-object v8, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 451
    .line 452
    iget v8, v8, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 453
    .line 454
    if-eq v8, v4, :cond_14

    .line 455
    .line 456
    goto :goto_e

    .line 457
    :cond_14
    iget v8, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 458
    .line 459
    sget-object v9, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 460
    .line 461
    invoke-virtual {v9}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 462
    .line 463
    .line 464
    move-result v9

    .line 465
    if-ne v8, v9, :cond_16

    .line 466
    .line 467
    const/4 v6, 0x1

    .line 468
    goto :goto_e

    .line 469
    :cond_15
    const/4 v6, 0x0

    .line 470
    const/4 v7, 0x0

    .line 471
    :cond_16
    :goto_e
    iget v8, v2, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    .line 472
    .line 473
    const/4 v9, 0x1

    .line 474
    if-eq v8, v9, :cond_17

    .line 475
    .line 476
    iget v2, v2, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    .line 477
    .line 478
    if-ne v2, v9, :cond_18

    .line 479
    .line 480
    :cond_17
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 481
    .line 482
    if-lez v2, :cond_18

    .line 483
    .line 484
    const/4 v8, 0x3

    .line 485
    if-ge v2, v8, :cond_18

    .line 486
    .line 487
    move v7, v9

    .line 488
    :cond_18
    if-eq v6, v9, :cond_19

    .line 489
    .line 490
    if-eqz v7, :cond_19

    .line 491
    .line 492
    const/4 v6, 0x2

    .line 493
    :cond_19
    invoke-static {v10}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    if-eqz v2, :cond_1a

    .line 498
    .line 499
    const/4 v6, 0x2

    .line 500
    :cond_1a
    iget-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 501
    .line 502
    const/4 v7, 0x1

    .line 503
    if-ne v2, v7, :cond_1b

    .line 504
    .line 505
    const/4 v6, 0x3

    .line 506
    :cond_1b
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 507
    .line 508
    if-nez v2, :cond_1c

    .line 509
    .line 510
    const/4 v6, 0x4

    .line 511
    :cond_1c
    if-ne v2, v7, :cond_1d

    .line 512
    .line 513
    const/4 v6, 0x5

    .line 514
    :cond_1d
    iget-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->isForKeeping:Z

    .line 515
    .line 516
    if-eqz v2, :cond_1f

    .line 517
    .line 518
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 519
    .line 520
    .line 521
    move-result-wide v7

    .line 522
    iget-wide v4, v10, Lcom/android/server/am/ProcessRecord;->appKeepingTime:J

    .line 523
    .line 524
    sub-long/2addr v7, v4

    .line 525
    cmp-long v4, v7, v27

    .line 526
    .line 527
    if-lez v4, :cond_1e

    .line 528
    .line 529
    const/4 v4, 0x0

    .line 530
    iput-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->isForKeeping:Z

    .line 531
    .line 532
    goto :goto_f

    .line 533
    :cond_1e
    const/4 v6, 0x6

    .line 534
    :cond_1f
    :goto_f
    iget-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    .line 535
    .line 536
    const/4 v5, 0x1

    .line 537
    if-ne v4, v5, :cond_20

    .line 538
    .line 539
    const/16 v6, 0x8

    .line 540
    .line 541
    :cond_20
    if-lez v6, :cond_35

    .line 542
    .line 543
    iget-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 544
    .line 545
    const/16 v7, 0x352

    .line 546
    .line 547
    const-wide/16 v2, -0x1

    .line 548
    .line 549
    if-ne v4, v5, :cond_27

    .line 550
    .line 551
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 552
    .line 553
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 557
    .line 558
    iget v5, v5, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 559
    .line 560
    packed-switch v5, :pswitch_data_0

    .line 561
    .line 562
    .line 563
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 564
    .line 565
    .line 566
    move-result-wide v5

    .line 567
    iget-wide v8, v10, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    .line 568
    .line 569
    sub-long/2addr v5, v8

    .line 570
    cmp-long v8, v8, v2

    .line 571
    .line 572
    const-string v9, "ActivityManager"

    .line 573
    .line 574
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 575
    .line 576
    if-eqz v8, :cond_22

    .line 577
    .line 578
    const-wide/16 v22, 0xbb8

    .line 579
    .line 580
    cmp-long v3, v5, v22

    .line 581
    .line 582
    if-lez v3, :cond_22

    .line 583
    .line 584
    sget-wide v22, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    .line 585
    .line 586
    const-wide/16 v25, 0x2af8

    .line 587
    .line 588
    cmp-long v3, v22, v25

    .line 589
    .line 590
    if-gtz v3, :cond_22

    .line 591
    .line 592
    iget v2, v2, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 593
    .line 594
    if-le v2, v7, :cond_21

    .line 595
    .line 596
    const-string v2, "AL_Kill : over 3 sec"

    .line 597
    .line 598
    const/16 v3, 0xd

    .line 599
    .line 600
    invoke-virtual {v10, v3, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    .line 601
    .line 602
    .line 603
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    .line 604
    .line 605
    if-eqz v2, :cond_21

    .line 606
    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    .line 608
    .line 609
    const-string v3, "AL_Kill : over 3 sec: "

    .line 610
    .line 611
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    invoke-static {v9, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .line 623
    .line 624
    :cond_21
    const/4 v2, 0x0

    .line 625
    iput-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 626
    .line 627
    const-wide/16 v2, -0x1

    .line 628
    .line 629
    iput-wide v2, v10, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    .line 630
    .line 631
    goto :goto_10

    .line 632
    :cond_22
    iget v3, v4, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 633
    .line 634
    iget v5, v4, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchLimit:I

    .line 635
    .line 636
    if-ge v3, v5, :cond_23

    .line 637
    .line 638
    iget-object v2, v4, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    .line 639
    .line 640
    const/4 v3, 0x0

    .line 641
    invoke-virtual {v2, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 642
    .line 643
    .line 644
    iget v2, v4, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 645
    .line 646
    const/4 v3, 0x1

    .line 647
    add-int/2addr v2, v3

    .line 648
    iput v2, v4, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 649
    .line 650
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    .line 651
    .line 652
    if-eqz v2, :cond_25

    .line 653
    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    .line 655
    .line 656
    const-string v3, "Active App Launch process < 2 : "

    .line 657
    .line 658
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 662
    .line 663
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    const-string v3, ", "

    .line 667
    .line 668
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    iget-boolean v5, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 672
    .line 673
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    iget v4, v4, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 680
    .line 681
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    iget-wide v3, v10, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    .line 688
    .line 689
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    invoke-static {v9, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    .line 698
    .line 699
    goto :goto_10

    .line 700
    :cond_23
    iget v2, v2, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 701
    .line 702
    if-le v2, v7, :cond_24

    .line 703
    .line 704
    const-string v2, "AL_Kill : over 1 slots"

    .line 705
    .line 706
    const/16 v3, 0xd

    .line 707
    .line 708
    invoke-virtual {v10, v3, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    .line 709
    .line 710
    .line 711
    :cond_24
    const/4 v2, 0x0

    .line 712
    iput-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 713
    .line 714
    const-wide/16 v2, -0x1

    .line 715
    .line 716
    iput-wide v2, v10, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    .line 717
    .line 718
    :cond_25
    :goto_10
    :pswitch_0
    move v7, v13

    .line 719
    move/from16 v41, v14

    .line 720
    .line 721
    :cond_26
    :goto_11
    move/from16 v13, v24

    .line 722
    .line 723
    move/from16 v6, v36

    .line 724
    .line 725
    :goto_12
    move/from16 v5, v37

    .line 726
    .line 727
    move/from16 v8, v38

    .line 728
    .line 729
    goto/16 :goto_1c

    .line 730
    .line 731
    :cond_27
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 732
    .line 733
    if-nez v2, :cond_2c

    .line 734
    .line 735
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 736
    .line 737
    iget-object v2, v2, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 738
    .line 739
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 740
    .line 741
    .line 742
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 743
    .line 744
    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 745
    .line 746
    packed-switch v3, :pswitch_data_1

    .line 747
    .line 748
    .line 749
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 750
    .line 751
    .line 752
    move-result-wide v3

    .line 753
    iget-wide v5, v10, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    .line 754
    .line 755
    sub-long/2addr v3, v5

    .line 756
    iget-object v8, v2, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 757
    .line 758
    const-string v9, " slots kill a"

    .line 759
    .line 760
    if-eqz v8, :cond_2a

    .line 761
    .line 762
    iget v7, v8, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 763
    .line 764
    if-nez v7, :cond_28

    .line 765
    .line 766
    move v7, v13

    .line 767
    move/from16 v41, v14

    .line 768
    .line 769
    iget-wide v13, v8, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    .line 770
    .line 771
    cmp-long v5, v5, v13

    .line 772
    .line 773
    if-lez v5, :cond_29

    .line 774
    .line 775
    const-wide/16 v5, -0x1

    .line 776
    .line 777
    iput-wide v5, v8, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    .line 778
    .line 779
    const/4 v5, -0x1

    .line 780
    iput v5, v8, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 781
    .line 782
    iget-object v5, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 783
    .line 784
    iget v6, v5, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 785
    .line 786
    const/16 v13, 0x13

    .line 787
    .line 788
    if-lt v6, v13, :cond_29

    .line 789
    .line 790
    iget v5, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 791
    .line 792
    const/16 v6, 0x352

    .line 793
    .line 794
    if-le v5, v6, :cond_29

    .line 795
    .line 796
    new-instance v5, Ljava/lang/StringBuilder;

    .line 797
    .line 798
    const-string v6, "ML_Kill: over "

    .line 799
    .line 800
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    iget v6, v2, Lcom/android/server/am/BGProtectManager;->NapProcessSlotLimit:I

    .line 804
    .line 805
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v5

    .line 815
    const/16 v6, 0xd

    .line 816
    .line 817
    invoke-virtual {v8, v6, v5}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    .line 818
    .line 819
    .line 820
    goto :goto_13

    .line 821
    :cond_28
    move v7, v13

    .line 822
    move/from16 v41, v14

    .line 823
    .line 824
    :cond_29
    :goto_13
    iput-object v10, v2, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 825
    .line 826
    goto :goto_14

    .line 827
    :cond_2a
    move v7, v13

    .line 828
    move/from16 v41, v14

    .line 829
    .line 830
    new-instance v5, Ljava/lang/StringBuilder;

    .line 831
    .line 832
    const-string/jumbo v6, "app launch time is "

    .line 833
    .line 834
    .line 835
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    iget-wide v13, v10, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    .line 839
    .line 840
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    const-string v6, " tmp time is "

    .line 844
    .line 845
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v5

    .line 852
    const-string v6, "DynamicHiddenApp_BGProtectManager"

    .line 853
    .line 854
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    .line 856
    .line 857
    iput-object v10, v2, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 858
    .line 859
    :goto_14
    iget v5, v10, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 860
    .line 861
    if-nez v5, :cond_2b

    .line 862
    .line 863
    iget-wide v5, v10, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    .line 864
    .line 865
    const-wide/16 v13, -0x1

    .line 866
    .line 867
    cmp-long v5, v5, v13

    .line 868
    .line 869
    if-eqz v5, :cond_2b

    .line 870
    .line 871
    cmp-long v5, v3, v25

    .line 872
    .line 873
    if-lez v5, :cond_2b

    .line 874
    .line 875
    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 876
    .line 877
    iget v6, v5, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 878
    .line 879
    const/16 v8, 0x13

    .line 880
    .line 881
    if-lt v6, v8, :cond_2b

    .line 882
    .line 883
    iget v5, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 884
    .line 885
    const/16 v6, 0x352

    .line 886
    .line 887
    if-le v5, v6, :cond_2b

    .line 888
    .line 889
    new-instance v5, Ljava/lang/StringBuilder;

    .line 890
    .line 891
    const-string v6, "ML_Kill: timeout "

    .line 892
    .line 893
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v3

    .line 906
    const/16 v4, 0xd

    .line 907
    .line 908
    invoke-virtual {v10, v4, v3}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    .line 909
    .line 910
    .line 911
    const/4 v3, 0x0

    .line 912
    iput-object v3, v2, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 913
    .line 914
    goto/16 :goto_11

    .line 915
    .line 916
    :cond_2b
    :goto_15
    const/4 v3, 0x0

    .line 917
    goto/16 :goto_11

    .line 918
    .line 919
    :pswitch_1
    move v7, v13

    .line 920
    move/from16 v41, v14

    .line 921
    .line 922
    goto :goto_15

    .line 923
    :cond_2c
    move v7, v13

    .line 924
    move/from16 v41, v14

    .line 925
    .line 926
    const/4 v3, 0x0

    .line 927
    iget v4, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 928
    .line 929
    const/16 v2, 0x10

    .line 930
    .line 931
    if-eq v4, v2, :cond_2e

    .line 932
    .line 933
    const/16 v2, 0x11

    .line 934
    .line 935
    if-eq v4, v2, :cond_2e

    .line 936
    .line 937
    const/16 v5, 0x13

    .line 938
    .line 939
    if-eq v4, v5, :cond_2d

    .line 940
    .line 941
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 942
    .line 943
    const/4 v5, 0x1

    .line 944
    add-int/2addr v4, v5

    .line 945
    iput v4, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 946
    .line 947
    :cond_2d
    :goto_16
    const/4 v4, 0x2

    .line 948
    goto :goto_17

    .line 949
    :cond_2e
    const/4 v5, 0x1

    .line 950
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 951
    .line 952
    add-int/2addr v4, v5

    .line 953
    iput v4, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 954
    .line 955
    goto :goto_16

    .line 956
    :goto_17
    if-ne v6, v4, :cond_26

    .line 957
    .line 958
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 959
    .line 960
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 961
    .line 962
    .line 963
    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 964
    .line 965
    iget v5, v5, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 966
    .line 967
    const/16 v6, 0x10

    .line 968
    .line 969
    if-eq v5, v6, :cond_31

    .line 970
    .line 971
    const/16 v2, 0x11

    .line 972
    .line 973
    if-eq v5, v2, :cond_31

    .line 974
    .line 975
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 976
    .line 977
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 978
    .line 979
    .line 980
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 981
    .line 982
    .line 983
    move-result-wide v4

    .line 984
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 985
    .line 986
    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 987
    .line 988
    const/16 v8, 0x13

    .line 989
    .line 990
    if-ne v6, v8, :cond_2f

    .line 991
    .line 992
    iget-object v2, v2, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 993
    .line 994
    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 995
    .line 996
    move/from16 v6, v36

    .line 997
    .line 998
    if-le v6, v2, :cond_30

    .line 999
    .line 1000
    iget-wide v8, v10, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    .line 1001
    .line 1002
    cmp-long v2, v8, p7

    .line 1003
    .line 1004
    if-gez v2, :cond_30

    .line 1005
    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    const-string/jumbo v8, "empty for "

    .line 1009
    .line 1010
    .line 1011
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1012
    .line 1013
    .line 1014
    iget-wide v8, v10, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    .line 1015
    .line 1016
    sub-long/2addr v4, v8

    .line 1017
    div-long v4, v4, v27

    .line 1018
    .line 1019
    const-string/jumbo v8, "s"

    .line 1020
    .line 1021
    .line 1022
    invoke-static {v2, v4, v5, v8}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v32

    .line 1026
    const-string/jumbo v33, "empty for too long"

    .line 1027
    .line 1028
    .line 1029
    const/16 v31, 0x4

    .line 1030
    .line 1031
    const/16 v34, 0x1

    .line 1032
    .line 1033
    const/16 v30, 0xd

    .line 1034
    .line 1035
    const/16 v35, 0x1

    .line 1036
    .line 1037
    move-object/from16 v29, v10

    .line 1038
    .line 1039
    invoke-virtual/range {v29 .. v35}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1040
    .line 1041
    .line 1042
    goto :goto_18

    .line 1043
    :cond_2f
    move/from16 v6, v36

    .line 1044
    .line 1045
    :cond_30
    :goto_18
    move/from16 v13, v24

    .line 1046
    .line 1047
    goto/16 :goto_12

    .line 1048
    .line 1049
    :cond_31
    move/from16 v6, v36

    .line 1050
    .line 1051
    move/from16 v5, v37

    .line 1052
    .line 1053
    add-int/lit8 v2, v5, 0x1

    .line 1054
    .line 1055
    if-le v2, v15, :cond_32

    .line 1056
    .line 1057
    iget v5, v10, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 1058
    .line 1059
    const/4 v8, 0x2

    .line 1060
    if-ne v5, v8, :cond_32

    .line 1061
    .line 1062
    const-string v5, "ActivityManager"

    .line 1063
    .line 1064
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1065
    .line 1066
    const-string v9, "PWHL_KNOX - "

    .line 1067
    .line 1068
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1069
    .line 1070
    .line 1071
    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1072
    .line 1073
    const-string v13, " in Cached"

    .line 1074
    .line 1075
    invoke-static {v8, v9, v13, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    .line 1077
    .line 1078
    iget-object v4, v4, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 1079
    .line 1080
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1081
    .line 1082
    if-eqz v4, :cond_32

    .line 1083
    .line 1084
    iget v5, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1085
    .line 1086
    iget v8, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1087
    .line 1088
    const-string v9, "Convert from hidden to empty knox"

    .line 1089
    .line 1090
    check-cast v4, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 1091
    .line 1092
    iget-object v13, v4, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1093
    .line 1094
    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1095
    .line 1096
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1097
    .line 1098
    .line 1099
    monitor-enter v13

    .line 1100
    :try_start_0
    iget-object v14, v4, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1101
    .line 1102
    invoke-virtual {v14, v5, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v5

    .line 1106
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1107
    .line 1108
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1109
    .line 1110
    iget-object v8, v4, Lcom/android/server/wm/RootWindowContainer;->mDestroyTargetAllActivitiesRunnable:Lcom/android/server/wm/RootWindowContainer$2;

    .line 1111
    .line 1112
    iput-object v5, v8, Lcom/android/server/wm/RootWindowContainer$2;->val$rootTask:Lcom/android/server/wm/ConfigurationContainer;

    .line 1113
    .line 1114
    iput-object v9, v8, Lcom/android/server/wm/RootWindowContainer$2;->val$enterPipThrowable:Ljava/lang/Object;

    .line 1115
    .line 1116
    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1117
    .line 1118
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1119
    .line 1120
    invoke-virtual {v4, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1121
    .line 1122
    .line 1123
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1124
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1125
    .line 1126
    .line 1127
    goto :goto_19

    .line 1128
    :catchall_0
    move-exception v0

    .line 1129
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1130
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1131
    .line 1132
    .line 1133
    throw v0

    .line 1134
    :cond_32
    :goto_19
    iget v4, v1, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 1135
    .line 1136
    if-eqz v4, :cond_34

    .line 1137
    .line 1138
    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1139
    .line 1140
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1141
    .line 1142
    move/from16 v8, v38

    .line 1143
    .line 1144
    if-ne v8, v5, :cond_33

    .line 1145
    .line 1146
    move/from16 v13, v24

    .line 1147
    .line 1148
    if-ne v13, v4, :cond_33

    .line 1149
    .line 1150
    add-int/lit8 v18, v18, 0x1

    .line 1151
    .line 1152
    move/from16 v24, v13

    .line 1153
    .line 1154
    goto :goto_1a

    .line 1155
    :cond_33
    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1156
    .line 1157
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1158
    .line 1159
    move/from16 v24, v4

    .line 1160
    .line 1161
    move v8, v5

    .line 1162
    goto :goto_1a

    .line 1163
    :cond_34
    const/4 v8, 0x0

    .line 1164
    const/16 v24, 0x0

    .line 1165
    .line 1166
    :goto_1a
    move v5, v2

    .line 1167
    move v2, v6

    .line 1168
    :goto_1b
    move/from16 v3, v41

    .line 1169
    .line 1170
    goto/16 :goto_20

    .line 1171
    .line 1172
    :cond_35
    move v7, v13

    .line 1173
    move/from16 v41, v14

    .line 1174
    .line 1175
    move/from16 v13, v24

    .line 1176
    .line 1177
    move/from16 v6, v36

    .line 1178
    .line 1179
    move/from16 v5, v37

    .line 1180
    .line 1181
    move/from16 v8, v38

    .line 1182
    .line 1183
    const/4 v3, 0x0

    .line 1184
    iget v4, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1185
    .line 1186
    const/16 v9, 0x10

    .line 1187
    .line 1188
    if-eq v4, v9, :cond_3d

    .line 1189
    .line 1190
    const/16 v2, 0x11

    .line 1191
    .line 1192
    if-eq v4, v2, :cond_3d

    .line 1193
    .line 1194
    const/16 v2, 0x13

    .line 1195
    .line 1196
    if-eq v4, v2, :cond_36

    .line 1197
    .line 1198
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 1199
    .line 1200
    const/4 v4, 0x1

    .line 1201
    add-int/2addr v2, v4

    .line 1202
    iput v2, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 1203
    .line 1204
    goto :goto_1c

    .line 1205
    :cond_36
    iget-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 1206
    .line 1207
    if-eqz v2, :cond_37

    .line 1208
    .line 1209
    goto :goto_1c

    .line 1210
    :cond_37
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1211
    .line 1212
    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 1213
    .line 1214
    if-le v6, v2, :cond_38

    .line 1215
    .line 1216
    iget-wide v3, v10, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    .line 1217
    .line 1218
    cmp-long v2, v3, p7

    .line 1219
    .line 1220
    if-gez v2, :cond_38

    .line 1221
    .line 1222
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1223
    .line 1224
    const-string/jumbo v3, "empty for "

    .line 1225
    .line 1226
    .line 1227
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1228
    .line 1229
    .line 1230
    iget-wide v3, v10, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    .line 1231
    .line 1232
    sub-long v3, p3, v3

    .line 1233
    .line 1234
    div-long v3, v3, v27

    .line 1235
    .line 1236
    const-string/jumbo v9, "s"

    .line 1237
    .line 1238
    .line 1239
    invoke-static {v2, v3, v4, v9}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v32

    .line 1243
    const-string/jumbo v33, "empty for too long"

    .line 1244
    .line 1245
    .line 1246
    const/16 v30, 0xd

    .line 1247
    .line 1248
    const/16 v35, 0x1

    .line 1249
    .line 1250
    const/16 v31, 0x4

    .line 1251
    .line 1252
    const/16 v34, 0x1

    .line 1253
    .line 1254
    move-object/from16 v29, v10

    .line 1255
    .line 1256
    invoke-virtual/range {v29 .. v35}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1257
    .line 1258
    .line 1259
    :goto_1c
    move v2, v6

    .line 1260
    move/from16 v24, v13

    .line 1261
    .line 1262
    goto :goto_1b

    .line 1263
    :cond_38
    add-int/lit8 v2, v6, 0x1

    .line 1264
    .line 1265
    move/from16 v3, v41

    .line 1266
    .line 1267
    if-le v2, v3, :cond_3a

    .line 1268
    .line 1269
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 1270
    .line 1271
    iget-object v4, v4, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 1272
    .line 1273
    invoke-virtual {v4, v10}, Lcom/android/server/am/BGProtectManager;->isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z

    .line 1274
    .line 1275
    .line 1276
    move-result v4

    .line 1277
    if-eqz v4, :cond_39

    .line 1278
    .line 1279
    goto :goto_1d

    .line 1280
    :cond_39
    const-string/jumbo v4, "empty #"

    .line 1281
    .line 1282
    .line 1283
    invoke-static {v2, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v32

    .line 1287
    const-string/jumbo v33, "too many empty"

    .line 1288
    .line 1289
    .line 1290
    const/16 v30, 0xd

    .line 1291
    .line 1292
    const/16 v35, 0x1

    .line 1293
    .line 1294
    const/16 v31, 0x3

    .line 1295
    .line 1296
    const/16 v34, 0x1

    .line 1297
    .line 1298
    move-object/from16 v29, v10

    .line 1299
    .line 1300
    invoke-virtual/range {v29 .. v35}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1301
    .line 1302
    .line 1303
    goto :goto_1d

    .line 1304
    :cond_3a
    if-eqz v16, :cond_3c

    .line 1305
    .line 1306
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 1307
    .line 1308
    iget-object v4, v4, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 1309
    .line 1310
    invoke-virtual {v4, v10}, Lcom/android/server/am/BGProtectManager;->isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v4

    .line 1314
    if-eqz v4, :cond_3b

    .line 1315
    .line 1316
    goto :goto_1d

    .line 1317
    :cond_3b
    move-object/from16 v17, v10

    .line 1318
    .line 1319
    :cond_3c
    :goto_1d
    move/from16 v24, v13

    .line 1320
    .line 1321
    goto/16 :goto_20

    .line 1322
    .line 1323
    :cond_3d
    move/from16 v3, v41

    .line 1324
    .line 1325
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 1326
    .line 1327
    const/4 v4, 0x1

    .line 1328
    add-int/2addr v2, v4

    .line 1329
    iput v2, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 1330
    .line 1331
    add-int/lit8 v2, v5, 0x1

    .line 1332
    .line 1333
    iget v4, v1, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 1334
    .line 1335
    if-eqz v4, :cond_3f

    .line 1336
    .line 1337
    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1338
    .line 1339
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1340
    .line 1341
    if-ne v8, v5, :cond_3e

    .line 1342
    .line 1343
    if-ne v13, v4, :cond_3e

    .line 1344
    .line 1345
    add-int/lit8 v18, v18, 0x1

    .line 1346
    .line 1347
    move/from16 v24, v13

    .line 1348
    .line 1349
    goto :goto_1e

    .line 1350
    :cond_3e
    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1351
    .line 1352
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1353
    .line 1354
    move/from16 v24, v4

    .line 1355
    .line 1356
    move v8, v5

    .line 1357
    goto :goto_1e

    .line 1358
    :cond_3f
    const/4 v8, 0x0

    .line 1359
    const/16 v24, 0x0

    .line 1360
    .line 1361
    :goto_1e
    sub-int v4, v2, v18

    .line 1362
    .line 1363
    if-le v4, v15, :cond_42

    .line 1364
    .line 1365
    iget v4, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1366
    .line 1367
    const/16 v5, 0x10

    .line 1368
    .line 1369
    if-eq v4, v5, :cond_40

    .line 1370
    .line 1371
    goto :goto_1f

    .line 1372
    :cond_40
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    .line 1373
    .line 1374
    .line 1375
    move-result v4

    .line 1376
    if-eqz v4, :cond_41

    .line 1377
    .line 1378
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->VENDING_PKG:Ljava/lang/String;

    .line 1379
    .line 1380
    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1381
    .line 1382
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1383
    .line 1384
    .line 1385
    move-result v4

    .line 1386
    if-eqz v4, :cond_41

    .line 1387
    .line 1388
    const-string v4, "GATE"

    .line 1389
    .line 1390
    const-string v5, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    .line 1391
    .line 1392
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    .line 1394
    .line 1395
    :cond_41
    const-string/jumbo v4, "cached #"

    .line 1396
    .line 1397
    .line 1398
    invoke-static {v2, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v32

    .line 1402
    const-string/jumbo v33, "too many cached"

    .line 1403
    .line 1404
    .line 1405
    const/16 v30, 0xd

    .line 1406
    .line 1407
    const/16 v35, 0x1

    .line 1408
    .line 1409
    const/16 v31, 0x2

    .line 1410
    .line 1411
    const/16 v34, 0x1

    .line 1412
    .line 1413
    move-object/from16 v29, v10

    .line 1414
    .line 1415
    invoke-virtual/range {v29 .. v35}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1416
    .line 1417
    .line 1418
    goto :goto_1f

    .line 1419
    :cond_42
    if-eqz v16, :cond_44

    .line 1420
    .line 1421
    iget v4, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1422
    .line 1423
    const/16 v5, 0x10

    .line 1424
    .line 1425
    if-eq v4, v5, :cond_43

    .line 1426
    .line 1427
    goto :goto_1f

    .line 1428
    :cond_43
    move v5, v2

    .line 1429
    move v2, v6

    .line 1430
    move-object/from16 v17, v10

    .line 1431
    .line 1432
    goto :goto_20

    .line 1433
    :cond_44
    :goto_1f
    move v5, v2

    .line 1434
    move v2, v6

    .line 1435
    :goto_20
    iget-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->mExcessiveResourceUsage:Z

    .line 1436
    .line 1437
    if-eqz v4, :cond_45

    .line 1438
    .line 1439
    iget v4, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1440
    .line 1441
    packed-switch v4, :pswitch_data_2

    .line 1442
    .line 1443
    .line 1444
    goto :goto_21

    .line 1445
    :pswitch_2
    const-string v4, "OomAdjuster"

    .line 1446
    .line 1447
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1448
    .line 1449
    const-string v9, "ERU task kill: "

    .line 1450
    .line 1451
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v9

    .line 1458
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    .line 1460
    .line 1461
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v6

    .line 1465
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    .line 1467
    .line 1468
    const-string v4, "Excessive resource usage"

    .line 1469
    .line 1470
    const/16 v6, 0x9

    .line 1471
    .line 1472
    invoke-virtual {v10, v6, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    .line 1473
    .line 1474
    .line 1475
    :cond_45
    :goto_21
    iget-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 1476
    .line 1477
    if-eqz v4, :cond_46

    .line 1478
    .line 1479
    iget-object v4, v1, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 1480
    .line 1481
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 1482
    .line 1483
    .line 1484
    move-result v4

    .line 1485
    if-gtz v4, :cond_46

    .line 1486
    .line 1487
    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    .line 1488
    .line 1489
    if-nez v4, :cond_46

    .line 1490
    .line 1491
    const-string/jumbo v33, "isolated not needed"

    .line 1492
    .line 1493
    .line 1494
    const/16 v30, 0xd

    .line 1495
    .line 1496
    const/16 v35, 0x1

    .line 1497
    .line 1498
    const/16 v31, 0x11

    .line 1499
    .line 1500
    const/16 v34, 0x1

    .line 1501
    .line 1502
    move-object/from16 v29, v10

    .line 1503
    .line 1504
    move-object/from16 v32, v33

    .line 1505
    .line 1506
    invoke-virtual/range {v29 .. v35}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1507
    .line 1508
    .line 1509
    goto :goto_22

    .line 1510
    :cond_46
    iget-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 1511
    .line 1512
    if-eqz v4, :cond_47

    .line 1513
    .line 1514
    iget-object v1, v1, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 1515
    .line 1516
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 1517
    .line 1518
    .line 1519
    move-result v1

    .line 1520
    if-gtz v1, :cond_47

    .line 1521
    .line 1522
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 1523
    .line 1524
    if-nez v1, :cond_47

    .line 1525
    .line 1526
    const-string/jumbo v33, "sandbox not needed"

    .line 1527
    .line 1528
    .line 1529
    const/16 v30, 0xd

    .line 1530
    .line 1531
    const/16 v35, 0x1

    .line 1532
    .line 1533
    const/16 v31, 0x1c

    .line 1534
    .line 1535
    const/16 v34, 0x1

    .line 1536
    .line 1537
    move-object/from16 v29, v10

    .line 1538
    .line 1539
    move-object/from16 v32, v33

    .line 1540
    .line 1541
    invoke-virtual/range {v29 .. v35}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1542
    .line 1543
    .line 1544
    goto :goto_22

    .line 1545
    :cond_47
    invoke-static {v10}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1546
    .line 1547
    .line 1548
    :goto_22
    iget v1, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1549
    .line 1550
    const/16 v4, 0xe

    .line 1551
    .line 1552
    if-lt v1, v4, :cond_48

    .line 1553
    .line 1554
    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 1555
    .line 1556
    :cond_48
    move v1, v8

    .line 1557
    goto :goto_24

    .line 1558
    :cond_49
    move/from16 v19, v5

    .line 1559
    .line 1560
    move-wide/from16 v39, v6

    .line 1561
    .line 1562
    move-wide/from16 v20, v8

    .line 1563
    .line 1564
    move v7, v13

    .line 1565
    move/from16 v13, v24

    .line 1566
    .line 1567
    move v8, v1

    .line 1568
    move v6, v2

    .line 1569
    move v5, v3

    .line 1570
    move v3, v14

    .line 1571
    :goto_23
    move v2, v6

    .line 1572
    move v1, v8

    .line 1573
    move/from16 v24, v13

    .line 1574
    .line 1575
    :goto_24
    add-int/lit8 v4, v19, -0x1

    .line 1576
    .line 1577
    move v14, v3

    .line 1578
    move v3, v5

    .line 1579
    move v13, v7

    .line 1580
    move-wide/from16 v8, v20

    .line 1581
    .line 1582
    move-wide/from16 v6, v39

    .line 1583
    .line 1584
    const/4 v12, 0x1

    .line 1585
    move v5, v4

    .line 1586
    goto/16 :goto_8

    .line 1587
    .line 1588
    :cond_4a
    move v5, v3

    .line 1589
    move-wide/from16 v39, v6

    .line 1590
    .line 1591
    move-wide/from16 v20, v8

    .line 1592
    .line 1593
    move v7, v13

    .line 1594
    const/4 v8, 0x2

    .line 1595
    move v6, v2

    .line 1596
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    .line 1597
    .line 1598
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1599
    .line 1600
    .line 1601
    move-result v1

    .line 1602
    if-nez v1, :cond_50

    .line 1603
    .line 1604
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    .line 1605
    .line 1606
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1607
    .line 1608
    .line 1609
    move-result v2

    .line 1610
    if-nez v2, :cond_4b

    .line 1611
    .line 1612
    const/4 v12, 0x0

    .line 1613
    goto :goto_27

    .line 1614
    :cond_4b
    const/16 v3, 0x34

    .line 1615
    .line 1616
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v4

    .line 1620
    const/16 v9, 0xb

    .line 1621
    .line 1622
    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1623
    .line 1624
    .line 1625
    const/4 v10, 0x0

    .line 1626
    const/4 v11, 0x0

    .line 1627
    :goto_25
    if-ge v10, v2, :cond_4f

    .line 1628
    .line 1629
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v12

    .line 1633
    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 1634
    .line 1635
    iget v12, v12, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1636
    .line 1637
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v13

    .line 1641
    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 1642
    .line 1643
    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1644
    .line 1645
    iget v13, v13, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 1646
    .line 1647
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v14

    .line 1651
    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 1652
    .line 1653
    iget v14, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1654
    .line 1655
    if-lez v12, :cond_4c

    .line 1656
    .line 1657
    const/16 v15, 0x3e9

    .line 1658
    .line 1659
    if-ne v13, v15, :cond_4d

    .line 1660
    .line 1661
    :cond_4c
    const/4 v12, 0x0

    .line 1662
    goto :goto_26

    .line 1663
    :cond_4d
    const/4 v15, 0x3

    .line 1664
    if-lt v11, v15, :cond_4e

    .line 1665
    .line 1666
    const/4 v15, 0x0

    .line 1667
    invoke-static {v4, v15}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1668
    .line 1669
    .line 1670
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1671
    .line 1672
    .line 1673
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 1674
    .line 1675
    .line 1676
    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1677
    .line 1678
    .line 1679
    const/4 v11, 0x0

    .line 1680
    :cond_4e
    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1681
    .line 1682
    .line 1683
    invoke-virtual {v4, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1684
    .line 1685
    .line 1686
    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1687
    .line 1688
    .line 1689
    const/4 v12, 0x0

    .line 1690
    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1691
    .line 1692
    .line 1693
    const/4 v13, 0x1

    .line 1694
    add-int/2addr v11, v13

    .line 1695
    :goto_26
    add-int/lit8 v10, v10, 0x1

    .line 1696
    .line 1697
    goto :goto_25

    .line 1698
    :cond_4f
    const/4 v10, 0x0

    .line 1699
    const/4 v12, 0x0

    .line 1700
    invoke-static {v4, v10}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1701
    .line 1702
    .line 1703
    :goto_27
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    .line 1704
    .line 1705
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1706
    .line 1707
    .line 1708
    goto :goto_28

    .line 1709
    :cond_50
    const/4 v12, 0x0

    .line 1710
    :goto_28
    if-eqz v16, :cond_51

    .line 1711
    .line 1712
    if-eqz v7, :cond_51

    .line 1713
    .line 1714
    move-wide/from16 v2, v39

    .line 1715
    .line 1716
    cmpg-double v1, v2, v20

    .line 1717
    .line 1718
    if-gez v1, :cond_52

    .line 1719
    .line 1720
    if-eqz v17, :cond_52

    .line 1721
    .line 1722
    iget-wide v9, v0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    .line 1723
    .line 1724
    cmpg-double v1, v2, v9

    .line 1725
    .line 1726
    if-gez v1, :cond_52

    .line 1727
    .line 1728
    const-string/jumbo v21, "swap low and too many cached"

    .line 1729
    .line 1730
    .line 1731
    const/16 v18, 0xd

    .line 1732
    .line 1733
    const/16 v23, 0x1

    .line 1734
    .line 1735
    const/16 v19, 0x2

    .line 1736
    .line 1737
    const/16 v22, 0x1

    .line 1738
    .line 1739
    move-object/from16 v20, v21

    .line 1740
    .line 1741
    invoke-virtual/range {v17 .. v23}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1742
    .line 1743
    .line 1744
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1745
    .line 1746
    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 1747
    .line 1748
    if-gez v1, :cond_52

    .line 1749
    .line 1750
    iput v5, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedProcessCount:I

    .line 1751
    .line 1752
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 1753
    .line 1754
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1755
    .line 1756
    .line 1757
    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    .line 1758
    .line 1759
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 1760
    .line 1761
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1762
    .line 1763
    .line 1764
    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 1765
    .line 1766
    goto :goto_29

    .line 1767
    :cond_51
    move-wide/from16 v2, v39

    .line 1768
    .line 1769
    :cond_52
    :goto_29
    iput-wide v2, v0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    .line 1770
    .line 1771
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1772
    .line 1773
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1774
    .line 1775
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mOnTrimReclaimer:Lcom/android/server/am/AppProfiler$OnTrimReclaimer;

    .line 1776
    .line 1777
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1778
    .line 1779
    .line 1780
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    .line 1781
    .line 1782
    if-eqz v2, :cond_53

    .line 1783
    .line 1784
    iget-boolean v3, v2, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    .line 1785
    .line 1786
    if-eqz v3, :cond_53

    .line 1787
    .line 1788
    iget-object v3, v2, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    .line 1789
    .line 1790
    monitor-enter v3

    .line 1791
    :try_start_2
    iget v4, v2, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    .line 1792
    .line 1793
    monitor-exit v3

    .line 1794
    goto :goto_2b

    .line 1795
    :catchall_1
    move-exception v0

    .line 1796
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1797
    throw v0

    .line 1798
    :cond_53
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1799
    .line 1800
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1801
    .line 1802
    iget v3, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 1803
    .line 1804
    if-gt v5, v3, :cond_56

    .line 1805
    .line 1806
    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 1807
    .line 1808
    if-gt v6, v2, :cond_56

    .line 1809
    .line 1810
    add-int v3, v5, v6

    .line 1811
    .line 1812
    const/4 v2, 0x3

    .line 1813
    if-gt v3, v2, :cond_54

    .line 1814
    .line 1815
    move v10, v2

    .line 1816
    goto :goto_2a

    .line 1817
    :cond_54
    const/4 v2, 0x5

    .line 1818
    if-gt v3, v2, :cond_55

    .line 1819
    .line 1820
    move v10, v8

    .line 1821
    goto :goto_2a

    .line 1822
    :cond_55
    const/4 v10, 0x1

    .line 1823
    :goto_2a
    move v4, v10

    .line 1824
    goto :goto_2b

    .line 1825
    :cond_56
    move v4, v12

    .line 1826
    :goto_2b
    iget v2, v1, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 1827
    .line 1828
    const/4 v3, -0x1

    .line 1829
    if-eq v2, v3, :cond_57

    .line 1830
    .line 1831
    const/4 v3, 0x1

    .line 1832
    goto :goto_2c

    .line 1833
    :cond_57
    move v3, v12

    .line 1834
    :goto_2c
    if-eqz v3, :cond_58

    .line 1835
    .line 1836
    move v4, v2

    .line 1837
    :cond_58
    iget v2, v1, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1838
    .line 1839
    if-le v4, v2, :cond_5a

    .line 1840
    .line 1841
    if-nez v3, :cond_5a

    .line 1842
    .line 1843
    iget-boolean v2, v1, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    .line 1844
    .line 1845
    if-eqz v2, :cond_59

    .line 1846
    .line 1847
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1848
    .line 1849
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1850
    .line 1851
    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 1852
    .line 1853
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1854
    .line 1855
    .line 1856
    move-result v2

    .line 1857
    iget v3, v1, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    .line 1858
    .line 1859
    if-lt v2, v3, :cond_5a

    .line 1860
    .line 1861
    :cond_59
    iget v4, v1, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1862
    .line 1863
    :cond_5a
    iget v2, v1, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1864
    .line 1865
    if-eq v4, v2, :cond_5b

    .line 1866
    .line 1867
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1868
    .line 1869
    .line 1870
    move-result-object v3

    .line 1871
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1872
    .line 1873
    .line 1874
    move-result-object v2

    .line 1875
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 1876
    .line 1877
    .line 1878
    move-result-object v2

    .line 1879
    const/16 v3, 0x7562

    .line 1880
    .line 1881
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1882
    .line 1883
    .line 1884
    const/16 v2, 0xf

    .line 1885
    .line 1886
    invoke-static {v2, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 1887
    .line 1888
    .line 1889
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    .line 1890
    .line 1891
    iget v3, v1, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1892
    .line 1893
    const/4 v7, 0x4

    .line 1894
    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 1895
    .line 1896
    .line 1897
    move-result-object v2

    .line 1898
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1899
    .line 1900
    .line 1901
    :cond_5b
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    .line 1902
    .line 1903
    add-int v3, v5, v6

    .line 1904
    .line 1905
    iget v5, v2, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppHighWatermark:I

    .line 1906
    .line 1907
    if-le v3, v5, :cond_5c

    .line 1908
    .line 1909
    iput v3, v2, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppHighWatermark:I

    .line 1910
    .line 1911
    div-long v5, p3, v27

    .line 1912
    .line 1913
    long-to-int v3, v5

    .line 1914
    iput v3, v2, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mUptimeInSeconds:I

    .line 1915
    .line 1916
    iget-object v2, v2, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    .line 1917
    .line 1918
    iget-object v3, v2, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1919
    .line 1920
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1921
    .line 1922
    const/16 v5, 0x4f

    .line 1923
    .line 1924
    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1925
    .line 1926
    .line 1927
    iget-object v2, v2, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1928
    .line 1929
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1930
    .line 1931
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1932
    .line 1933
    .line 1934
    move-result-object v3

    .line 1935
    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1936
    .line 1937
    .line 1938
    move-result-object v2

    .line 1939
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1940
    .line 1941
    .line 1942
    :cond_5c
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1943
    .line 1944
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1945
    .line 1946
    iget-object v2, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 1947
    .line 1948
    monitor-enter v2

    .line 1949
    :try_start_3
    iget-object v3, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1950
    .line 1951
    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1952
    .line 1953
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1954
    .line 1955
    if-eqz v3, :cond_5e

    .line 1956
    .line 1957
    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 1958
    .line 1959
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1960
    .line 1961
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 1962
    .line 1963
    if-nez v3, :cond_5d

    .line 1964
    .line 1965
    goto :goto_2d

    .line 1966
    :cond_5d
    move v10, v12

    .line 1967
    goto :goto_2e

    .line 1968
    :cond_5e
    :goto_2d
    const/4 v10, 0x1

    .line 1969
    :goto_2e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1970
    .line 1971
    .line 1972
    move-result-wide v6

    .line 1973
    invoke-virtual {v5, v4, v6, v7, v10}, Lcom/android/server/am/ProcessStatsService;->setMemFactorLocked(IJZ)V

    .line 1974
    .line 1975
    .line 1976
    iget-object v3, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1977
    .line 1978
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1979
    .line 1980
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    .line 1981
    .line 1982
    .line 1983
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1984
    iput v4, v1, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1985
    .line 1986
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1987
    .line 1988
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1989
    .line 1990
    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 1991
    .line 1992
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1993
    .line 1994
    .line 1995
    move-result v2

    .line 1996
    iput v2, v1, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    .line 1997
    .line 1998
    iget-object v1, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1999
    .line 2000
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2001
    .line 2002
    new-instance v2, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;

    .line 2003
    .line 2004
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2005
    .line 2006
    .line 2007
    const/4 v3, 0x1

    .line 2008
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    .line 2009
    .line 2010
    .line 2011
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 2012
    .line 2013
    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 2014
    .line 2015
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2016
    .line 2017
    iget-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    .line 2018
    .line 2019
    if-eqz v2, :cond_5f

    .line 2020
    .line 2021
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2022
    .line 2023
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities()V

    .line 2024
    .line 2025
    .line 2026
    :cond_5f
    move-object/from16 v1, p2

    .line 2027
    .line 2028
    move-wide/from16 v2, p5

    .line 2029
    .line 2030
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    .line 2031
    .line 2032
    .line 2033
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2034
    .line 2035
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2036
    .line 2037
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 2038
    .line 2039
    monitor-enter v1

    .line 2040
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 2041
    .line 2042
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2043
    .line 2044
    .line 2045
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2046
    .line 2047
    .line 2048
    move-result-wide v2

    .line 2049
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2050
    .line 2051
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2052
    .line 2053
    iget-wide v5, v4, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 2054
    .line 2055
    add-long v5, v5, v25

    .line 2056
    .line 2057
    cmp-long v5, v2, v5

    .line 2058
    .line 2059
    if-lez v5, :cond_61

    .line 2060
    .line 2061
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2062
    .line 2063
    .line 2064
    move-result-wide v5

    .line 2065
    iget-object v7, v4, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 2066
    .line 2067
    iget-wide v7, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 2068
    .line 2069
    sget-wide v9, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    .line 2070
    .line 2071
    add-long/2addr v7, v9

    .line 2072
    cmp-long v5, v5, v7

    .line 2073
    .line 2074
    if-lez v5, :cond_60

    .line 2075
    .line 2076
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2077
    .line 2078
    .line 2079
    move-result-wide v5

    .line 2080
    iget-object v7, v4, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 2081
    .line 2082
    iget-wide v7, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 2083
    .line 2084
    sget-wide v9, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    .line 2085
    .line 2086
    add-long/2addr v7, v9

    .line 2087
    cmp-long v5, v5, v7

    .line 2088
    .line 2089
    if-lez v5, :cond_60

    .line 2090
    .line 2091
    const/4 v5, 0x1

    .line 2092
    iput-boolean v5, v4, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 2093
    .line 2094
    :cond_60
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2095
    .line 2096
    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 2097
    .line 2098
    new-instance v6, Lcom/android/server/am/ActivityManagerService$22;

    .line 2099
    .line 2100
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2101
    .line 2102
    const/4 v7, 0x1

    .line 2103
    invoke-direct {v6, v7, v4}, Lcom/android/server/am/ActivityManagerService$22;-><init>(ILjava/lang/Object;)V

    .line 2104
    .line 2105
    .line 2106
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2107
    .line 2108
    .line 2109
    goto :goto_2f

    .line 2110
    :catchall_2
    move-exception v0

    .line 2111
    goto :goto_30

    .line 2112
    :cond_61
    :goto_2f
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2113
    .line 2114
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2115
    .line 2116
    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 2117
    .line 2118
    iget-object v4, v4, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 2119
    .line 2120
    invoke-virtual {v4, v0, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->updateTrackingAssociationsLocked(IJ)V

    .line 2121
    .line 2122
    .line 2123
    monitor-exit v1

    .line 2124
    return-void

    .line 2125
    :goto_30
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2126
    throw v0

    .line 2127
    :catchall_3
    move-exception v0

    .line 2128
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2129
    throw v0

    .line 2130
    nop

    .line 2131
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2132
    .line 2133
    .line 2134
    .line 2135
    .line 2136
    .line 2137
    .line 2138
    .line 2139
    .line 2140
    .line 2141
    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2142
    .line 2143
    .line 2144
    .line 2145
    .line 2146
    .line 2147
    .line 2148
    .line 2149
    .line 2150
    .line 2151
    :pswitch_data_2
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final reportOomAdjMessageLocked(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "ActivityManager"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 18
    .line 19
    const/16 v1, 0x46

    .line 20
    .line 21
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public resetInternal()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setAttachingProcessStatesLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x6

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 10
    .line 11
    iget v3, v2, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 12
    .line 13
    iget v4, v2, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 14
    .line 15
    iget-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 16
    .line 17
    if-eqz v5, :cond_1

    .line 18
    .line 19
    const/4 v5, 0x7

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/16 v5, 0x13

    .line 22
    .line 23
    :goto_1
    iget-boolean v6, v2, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    if-eqz v6, :cond_5

    .line 27
    .line 28
    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 29
    .line 30
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->useFifoUiScheduling()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/4 v8, 0x1

    .line 38
    if-eqz v6, :cond_2

    .line 39
    .line 40
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 41
    .line 42
    invoke-static {v6, v8}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :catch_0
    move-exception v1

    .line 47
    goto :goto_5

    .line 48
    :cond_2
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 49
    .line 50
    const/16 v9, -0xa

    .line 51
    .line 52
    invoke-static {v6, v9}, Landroid/os/Process;->setThreadPriority(II)V

    .line 53
    .line 54
    .line 55
    :goto_2
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 56
    .line 57
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eq v6, v8, :cond_4

    .line 64
    .line 65
    iget-boolean v6, v2, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    if-eqz v6, :cond_3

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    move v1, v5

    .line 71
    goto :goto_4

    .line 72
    :cond_4
    :goto_3
    const/4 v0, 0x3

    .line 73
    :goto_4
    const/16 v5, 0x7f

    .line 74
    .line 75
    move v10, v5

    .line 76
    move v5, v1

    .line 77
    move v1, v10

    .line 78
    goto :goto_6

    .line 79
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v8, "Failed to pre-set top priority to "

    .line 82
    .line 83
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v8, " "

    .line 90
    .line 91
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v6, "OomAdjuster"

    .line 102
    .line 103
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_5
    move v1, v7

    .line 107
    :goto_6
    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 111
    .line 112
    .line 113
    iput v5, v2, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 114
    .line 115
    iput v1, v2, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 116
    .line 117
    invoke-virtual {v2, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v7, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 121
    .line 122
    .line 123
    const/4 v0, 0x0

    .line 124
    iput-object v0, v2, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    .line 125
    .line 126
    iput-boolean v7, v2, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    .line 127
    .line 128
    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/OomAdjuster;->onProcessStateChanged(ILcom/android/server/am/ProcessRecord;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/OomAdjuster;->onProcessOomAdjChanged(ILcom/android/server/am/ProcessRecord;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    iget-boolean p0, p1, Lcom/android/server/am/ProcessStateRecord;->mScheduleLikeTopApp:Z

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    if-le p2, v0, :cond_0

    .line 22
    .line 23
    move p2, v0

    .line 24
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z
    .locals 3

    .line 1
    iget-boolean v0, p2, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    iput-boolean v2, v0, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget v0, p2, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 19
    .line 20
    if-ge v0, p0, :cond_0

    .line 21
    .line 22
    if-eqz p5, :cond_0

    .line 23
    .line 24
    iget p0, p2, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 25
    .line 26
    if-lt p0, p3, :cond_0

    .line 27
    .line 28
    iget p0, p2, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 29
    .line 30
    if-lt p0, p4, :cond_0

    .line 31
    .line 32
    iget p0, p2, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 35
    .line 36
    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 37
    .line 38
    and-int/2addr p1, p0

    .line 39
    if-ne p1, p0, :cond_0

    .line 40
    .line 41
    return v2

    .line 42
    :cond_0
    return v1
.end method

.method public final unfreezeTemporarily(ILcom/android/server/am/ProcessRecord;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 11
    .line 12
    iget-boolean v2, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    iget-boolean v1, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 31
    .line 32
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    const/4 p2, 0x0

    .line 45
    :goto_0
    if-ge p2, p0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 52
    .line 53
    iget-wide v3, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 54
    .line 55
    invoke-virtual {v0, p1, v3, v4, v2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(IJLcom/android/server/am/ProcessRecord;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 p2, p2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;IZ)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-boolean v2, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-static {p2}, Lcom/android/server/am/CachedAppOptimizer;->getUnfreezeReasonCodeFromOomAdjReason(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(ILcom/android/server/am/ProcessRecord;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 34
    .line 35
    iget v3, v2, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 36
    .line 37
    const/16 v4, 0x352

    .line 38
    .line 39
    if-lt v3, v4, :cond_4

    .line 40
    .line 41
    if-nez v1, :cond_4

    .line 42
    .line 43
    iget-boolean v0, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    .line 44
    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    if-nez p3, :cond_3

    .line 49
    .line 50
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 51
    .line 52
    invoke-static {p1, v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const-wide/16 v0, 0x0

    .line 61
    .line 62
    invoke-static {p1, v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    iget p3, v2, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 71
    .line 72
    if-ge p3, v4, :cond_5

    .line 73
    .line 74
    invoke-static {p2}, Lcom/android/server/am/CachedAppOptimizer;->getUnfreezeReasonCodeFromOomAdjReason(I)I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(ILcom/android/server/am/ProcessRecord;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    :goto_0
    return-void
.end method

.method public final updateOomAdjFollowUpTargetsLocked()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide v2, 0x7fffffffffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide v2, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    .line 16
    .line 17
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    add-int/lit8 v4, v4, -0x1

    .line 24
    .line 25
    move-wide v5, v2

    .line 26
    :goto_0
    if-ltz v4, :cond_4

    .line 27
    .line 28
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    .line 29
    .line 30
    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 35
    .line 36
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 37
    .line 38
    iget-wide v8, v8, Lcom/android/server/am/ProcessStateRecord;->mFollowupUpdateUptimeMs:J

    .line 39
    .line 40
    iget-boolean v10, v7, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 41
    .line 42
    if-eqz v10, :cond_0

    .line 43
    .line 44
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    cmp-long v10, v8, v0

    .line 51
    .line 52
    if-gtz v10, :cond_1

    .line 53
    .line 54
    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 55
    .line 56
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 60
    .line 61
    iput-wide v2, v7, Lcom/android/server/am/ProcessStateRecord;->mFollowupUpdateUptimeMs:J

    .line 62
    .line 63
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    .line 64
    .line 65
    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    cmp-long v7, v8, v5

    .line 70
    .line 71
    if-gez v7, :cond_2

    .line 72
    .line 73
    move-wide v5, v8

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    cmp-long v7, v8, v2

    .line 76
    .line 77
    if-nez v7, :cond_3

    .line 78
    .line 79
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    .line 80
    .line 81
    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    cmp-long v2, v5, v2

    .line 88
    .line 89
    if-eqz v2, :cond_7

    .line 90
    .line 91
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 92
    .line 93
    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    .line 94
    .line 95
    add-long v7, v5, v2

    .line 96
    .line 97
    iget-wide v9, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    .line 98
    .line 99
    cmp-long v4, v7, v9

    .line 100
    .line 101
    if-ltz v4, :cond_5

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    add-long/2addr v0, v2

    .line 105
    cmp-long v2, v5, v0

    .line 106
    .line 107
    if-gez v2, :cond_6

    .line 108
    .line 109
    move-wide v5, v0

    .line 110
    :cond_6
    iput-wide v5, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 115
    .line 116
    const/16 v1, 0x56

    .line 117
    .line 118
    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 119
    .line 120
    .line 121
    :cond_7
    :goto_2
    const/16 v0, 0x17

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v12, p1

    .line 4
    .line 5
    const/4 v13, 0x0

    .line 6
    const/4 v14, 0x1

    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    move v15, v14

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v15, v13

    .line 12
    :goto_0
    if-eqz v15, :cond_1

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 17
    .line 18
    move-object v11, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object/from16 v11, p3

    .line 21
    .line 22
    :goto_1
    if-nez p4, :cond_3

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 33
    .line 34
    iget-object v3, v2, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 37
    .line 38
    .line 39
    move v3, v13

    .line 40
    :goto_2
    if-ge v3, v1, :cond_2

    .line 41
    .line 42
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 43
    .line 44
    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iget v5, v4, Lcom/android/server/am/UidRecord;->mUid:I

    .line 49
    .line 50
    invoke-virtual {v2, v5, v4}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move-object v10, v2

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    move-object/from16 v10, p4

    .line 59
    .line 60
    :goto_3
    iput v12, v0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 61
    .line 62
    const-wide/16 v8, 0x40

    .line 63
    .line 64
    if-eqz p6, :cond_4

    .line 65
    .line 66
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v16

    .line 82
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 88
    .line 89
    .line 90
    move-result-wide v18

    .line 91
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 92
    .line 93
    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    .line 94
    .line 95
    sub-long v20, v16, v1

    .line 96
    .line 97
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 102
    .line 103
    add-int/2addr v1, v14

    .line 104
    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 105
    .line 106
    if-eqz v15, :cond_5

    .line 107
    .line 108
    iput v13, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 109
    .line 110
    iput v13, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 111
    .line 112
    :cond_5
    iget-object v1, v10, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    sub-int/2addr v1, v14

    .line 119
    :goto_4
    const/16 v2, 0x13

    .line 120
    .line 121
    if-ltz v1, :cond_6

    .line 122
    .line 123
    invoke-virtual {v10, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iput v2, v3, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 128
    .line 129
    iput-boolean v13, v3, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 130
    .line 131
    iput v13, v3, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 132
    .line 133
    add-int/lit8 v1, v1, -0x1

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_6
    if-nez v15, :cond_8

    .line 137
    .line 138
    if-eqz p5, :cond_7

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_7
    move/from16 v22, v13

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_8
    :goto_5
    move/from16 v22, v14

    .line 145
    .line 146
    :goto_6
    add-int/lit8 v1, v6, -0x1

    .line 147
    .line 148
    move v3, v1

    .line 149
    :goto_7
    const/16 v7, 0x3e9

    .line 150
    .line 151
    if-ltz v3, :cond_a

    .line 152
    .line 153
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 158
    .line 159
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 160
    .line 161
    iput-boolean v13, v4, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 162
    .line 163
    iget v5, v4, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 164
    .line 165
    iget v8, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 166
    .line 167
    if-eq v5, v8, :cond_9

    .line 168
    .line 169
    iput-boolean v13, v4, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    .line 170
    .line 171
    iput v2, v4, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 172
    .line 173
    invoke-virtual {v4, v7, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 174
    .line 175
    .line 176
    iput v13, v4, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    .line 177
    .line 178
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 179
    .line 180
    .line 181
    iput-boolean v13, v4, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 182
    .line 183
    :cond_9
    add-int/lit8 v3, v3, -0x1

    .line 184
    .line 185
    const-wide/16 v8, 0x40

    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_a
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 189
    .line 190
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 191
    .line 192
    .line 193
    move v9, v1

    .line 194
    move/from16 v23, v13

    .line 195
    .line 196
    :goto_8
    if-ltz v9, :cond_c

    .line 197
    .line 198
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    move-object v2, v1

    .line 203
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 204
    .line 205
    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 206
    .line 207
    iget-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 208
    .line 209
    if-nez v1, :cond_b

    .line 210
    .line 211
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 212
    .line 213
    if-eqz v1, :cond_b

    .line 214
    .line 215
    iput-boolean v13, v8, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    .line 216
    .line 217
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 218
    .line 219
    iput v12, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastOomAdjChangeReason:I

    .line 220
    .line 221
    const/16 v24, 0x1

    .line 222
    .line 223
    const/16 v3, 0x3e9

    .line 224
    .line 225
    const/16 v25, 0x0

    .line 226
    .line 227
    move-object/from16 v1, p0

    .line 228
    .line 229
    move-object/from16 v4, p2

    .line 230
    .line 231
    move v5, v15

    .line 232
    move v14, v6

    .line 233
    move v13, v7

    .line 234
    move-wide/from16 v6, v16

    .line 235
    .line 236
    move-object v13, v8

    .line 237
    const-wide/16 v26, 0x40

    .line 238
    .line 239
    move/from16 v8, v25

    .line 240
    .line 241
    move/from16 v25, v9

    .line 242
    .line 243
    move/from16 v9, v22

    .line 244
    .line 245
    move-object/from16 v28, v10

    .line 246
    .line 247
    move/from16 v10, p1

    .line 248
    .line 249
    move-object v12, v11

    .line 250
    move/from16 v11, v24

    .line 251
    .line 252
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    .line 253
    .line 254
    .line 255
    iget-boolean v1, v13, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    .line 256
    .line 257
    or-int v23, v23, v1

    .line 258
    .line 259
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 260
    .line 261
    iput v1, v13, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 262
    .line 263
    goto :goto_9

    .line 264
    :cond_b
    move v14, v6

    .line 265
    move/from16 v25, v9

    .line 266
    .line 267
    move-object/from16 v28, v10

    .line 268
    .line 269
    move-object v12, v11

    .line 270
    const-wide/16 v26, 0x40

    .line 271
    .line 272
    :goto_9
    add-int/lit8 v9, v25, -0x1

    .line 273
    .line 274
    move-object v11, v12

    .line 275
    move v6, v14

    .line 276
    move-object/from16 v10, v28

    .line 277
    .line 278
    const/16 v7, 0x3e9

    .line 279
    .line 280
    const/4 v13, 0x0

    .line 281
    const/4 v14, 0x1

    .line 282
    move/from16 v12, p1

    .line 283
    .line 284
    goto :goto_8

    .line 285
    :cond_c
    move v14, v6

    .line 286
    move-object/from16 v28, v10

    .line 287
    .line 288
    move-object v12, v11

    .line 289
    const-wide/16 v26, 0x40

    .line 290
    .line 291
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    .line 292
    .line 293
    iget-object v2, v1, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 294
    .line 295
    monitor-enter v2

    .line 296
    :try_start_0
    iget-boolean v1, v1, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    .line 297
    .line 298
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 299
    if-eqz v1, :cond_1e

    .line 300
    .line 301
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    .line 302
    .line 303
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 304
    .line 305
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 306
    .line 307
    iget v2, v2, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 308
    .line 309
    iget-object v4, v1, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 310
    .line 311
    monitor-enter v4

    .line 312
    :try_start_1
    iget v5, v1, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    .line 313
    .line 314
    iget v6, v1, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    .line 315
    .line 316
    iget v7, v1, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    .line 317
    .line 318
    iget v8, v1, Lcom/android/server/am/CacheOomRanker;->mPreserveTopNApps:I

    .line 319
    .line 320
    iget-boolean v9, v1, Lcom/android/server/am/CacheOomRanker;->mUseFrequentRss:Z

    .line 321
    .line 322
    iget-wide v10, v1, Lcom/android/server/am/CacheOomRanker;->mRssUpdateRateMs:J

    .line 323
    .line 324
    iget-object v13, v1, Lcom/android/server/am/CacheOomRanker;->mLruPositions:[I

    .line 325
    .line 326
    iget-object v15, v1, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 327
    .line 328
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 329
    if-eqz v13, :cond_1e

    .line 330
    .line 331
    if-nez v15, :cond_d

    .line 332
    .line 333
    goto/16 :goto_19

    .line 334
    .line 335
    :cond_d
    move-object/from16 v24, v12

    .line 336
    .line 337
    const/4 v0, 0x0

    .line 338
    const/4 v4, 0x0

    .line 339
    :goto_a
    if-ge v4, v2, :cond_10

    .line 340
    .line 341
    array-length v12, v15

    .line 342
    if-ge v0, v12, :cond_10

    .line 343
    .line 344
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v12

    .line 348
    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 349
    .line 350
    move/from16 v25, v14

    .line 351
    .line 352
    iget-boolean v14, v12, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 353
    .line 354
    if-nez v14, :cond_e

    .line 355
    .line 356
    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 357
    .line 358
    if-eqz v14, :cond_e

    .line 359
    .line 360
    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 361
    .line 362
    iget v14, v14, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 363
    .line 364
    move/from16 p5, v6

    .line 365
    .line 366
    const/16 v6, 0x3e9

    .line 367
    .line 368
    if-lt v14, v6, :cond_f

    .line 369
    .line 370
    aget-object v6, v15, v0

    .line 371
    .line 372
    iput-object v12, v6, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 373
    .line 374
    const/4 v12, 0x0

    .line 375
    iput v12, v6, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    .line 376
    .line 377
    aput v4, v13, v0

    .line 378
    .line 379
    add-int/lit8 v0, v0, 0x1

    .line 380
    .line 381
    goto :goto_b

    .line 382
    :cond_e
    move/from16 p5, v6

    .line 383
    .line 384
    :cond_f
    :goto_b
    add-int/lit8 v4, v4, 0x1

    .line 385
    .line 386
    move/from16 v6, p5

    .line 387
    .line 388
    move/from16 v14, v25

    .line 389
    .line 390
    goto :goto_a

    .line 391
    :cond_10
    move/from16 p5, v6

    .line 392
    .line 393
    move/from16 v25, v14

    .line 394
    .line 395
    const/4 v6, 0x0

    .line 396
    :goto_c
    if-ge v4, v2, :cond_13

    .line 397
    .line 398
    if-ge v6, v8, :cond_13

    .line 399
    .line 400
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v12

    .line 404
    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 405
    .line 406
    iget-boolean v14, v12, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 407
    .line 408
    if-nez v14, :cond_11

    .line 409
    .line 410
    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 411
    .line 412
    if-eqz v14, :cond_11

    .line 413
    .line 414
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 415
    .line 416
    iget v12, v12, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 417
    .line 418
    const/16 v14, 0x3e9

    .line 419
    .line 420
    if-lt v12, v14, :cond_12

    .line 421
    .line 422
    add-int/lit8 v6, v6, 0x1

    .line 423
    .line 424
    goto :goto_d

    .line 425
    :cond_11
    const/16 v14, 0x3e9

    .line 426
    .line 427
    :cond_12
    :goto_d
    add-int/lit8 v4, v4, 0x1

    .line 428
    .line 429
    goto :goto_c

    .line 430
    :cond_13
    if-ge v6, v8, :cond_14

    .line 431
    .line 432
    sub-int/2addr v8, v6

    .line 433
    sub-int/2addr v0, v8

    .line 434
    if-gez v0, :cond_14

    .line 435
    .line 436
    const/4 v0, 0x0

    .line 437
    :cond_14
    if-eqz v9, :cond_19

    .line 438
    .line 439
    move-object v6, v3

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 441
    .line 442
    .line 443
    move-result-wide v2

    .line 444
    const/4 v4, 0x0

    .line 445
    :goto_e
    if-ge v4, v0, :cond_18

    .line 446
    .line 447
    aget-object v8, v15, v4

    .line 448
    .line 449
    iget-object v12, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 450
    .line 451
    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 452
    .line 453
    move-object/from16 v29, v6

    .line 454
    .line 455
    move/from16 p3, v7

    .line 456
    .line 457
    iget-wide v6, v14, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRssTimeMs:J

    .line 458
    .line 459
    sub-long v6, v2, v6

    .line 460
    .line 461
    move-object/from16 v30, v13

    .line 462
    .line 463
    iget-wide v13, v14, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    .line 464
    .line 465
    const-wide/16 v31, 0x0

    .line 466
    .line 467
    cmp-long v13, v13, v31

    .line 468
    .line 469
    if-eqz v13, :cond_15

    .line 470
    .line 471
    cmp-long v6, v6, v10

    .line 472
    .line 473
    if-gez v6, :cond_15

    .line 474
    .line 475
    goto :goto_f

    .line 476
    :cond_15
    iget-object v6, v1, Lcom/android/server/am/CacheOomRanker;->mProcessDependencies:Lcom/android/server/am/CacheOomRanker$ProcessDependencies;

    .line 477
    .line 478
    iget v7, v12, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 479
    .line 480
    check-cast v6, Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl;

    .line 481
    .line 482
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    invoke-static {v7}, Landroid/os/Process;->getRss(I)[J

    .line 486
    .line 487
    .line 488
    move-result-object v6

    .line 489
    if-eqz v6, :cond_17

    .line 490
    .line 491
    array-length v7, v6

    .line 492
    if-nez v7, :cond_16

    .line 493
    .line 494
    goto :goto_10

    .line 495
    :cond_16
    iget-object v7, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 496
    .line 497
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 498
    .line 499
    const/4 v12, 0x0

    .line 500
    aget-wide v13, v6, v12

    .line 501
    .line 502
    iput-wide v13, v8, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    .line 503
    .line 504
    iput-wide v2, v8, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRssTimeMs:J

    .line 505
    .line 506
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 507
    .line 508
    iput-wide v13, v6, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 509
    .line 510
    :goto_f
    add-int/lit8 v4, v4, 0x1

    .line 511
    .line 512
    move/from16 v7, p3

    .line 513
    .line 514
    move-object/from16 v6, v29

    .line 515
    .line 516
    move-object/from16 v13, v30

    .line 517
    .line 518
    goto :goto_e

    .line 519
    :cond_17
    :goto_10
    const-string v0, "OomAdjuster"

    .line 520
    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    const-string v2, "Process.getRss returned bad value, not re-ranking: "

    .line 524
    .line 525
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    invoke-static {v6}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .line 541
    .line 542
    goto/16 :goto_1a

    .line 543
    .line 544
    :cond_18
    move-object/from16 v29, v6

    .line 545
    .line 546
    :goto_11
    move/from16 p3, v7

    .line 547
    .line 548
    move-object/from16 v30, v13

    .line 549
    .line 550
    const/4 v2, 0x0

    .line 551
    goto :goto_12

    .line 552
    :cond_19
    move-object/from16 v29, v3

    .line 553
    .line 554
    goto :goto_11

    .line 555
    :goto_12
    cmpl-float v3, v5, v2

    .line 556
    .line 557
    if-lez v3, :cond_1a

    .line 558
    .line 559
    sget-object v3, Lcom/android/server/am/CacheOomRanker;->LAST_ACTIVITY_TIME_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 560
    .line 561
    const/4 v4, 0x0

    .line 562
    invoke-static {v15, v4, v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 563
    .line 564
    .line 565
    invoke-static {v15, v5}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    .line 566
    .line 567
    .line 568
    goto :goto_13

    .line 569
    :cond_1a
    const/4 v4, 0x0

    .line 570
    :goto_13
    cmpl-float v3, p3, v2

    .line 571
    .line 572
    if-lez v3, :cond_1c

    .line 573
    .line 574
    if-eqz v9, :cond_1b

    .line 575
    .line 576
    sget-object v1, Lcom/android/server/am/CacheOomRanker;->RSS_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 577
    .line 578
    invoke-static {v15, v4, v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 579
    .line 580
    .line 581
    :goto_14
    move/from16 v1, p3

    .line 582
    .line 583
    goto :goto_15

    .line 584
    :cond_1b
    iget-object v1, v1, Lcom/android/server/am/CacheOomRanker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 585
    .line 586
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 587
    .line 588
    iget-object v1, v1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 589
    .line 590
    monitor-enter v1

    .line 591
    :try_start_2
    sget-object v2, Lcom/android/server/am/CacheOomRanker;->LAST_RSS_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 592
    .line 593
    invoke-static {v15, v4, v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 594
    .line 595
    .line 596
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 597
    goto :goto_14

    .line 598
    :goto_15
    invoke-static {v15, v1}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    .line 599
    .line 600
    .line 601
    :cond_1c
    const/4 v1, 0x0

    .line 602
    goto :goto_16

    .line 603
    :catchall_0
    move-exception v0

    .line 604
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 605
    throw v0

    .line 606
    :goto_16
    cmpl-float v1, p5, v1

    .line 607
    .line 608
    if-lez v1, :cond_1d

    .line 609
    .line 610
    sget-object v1, Lcom/android/server/am/CacheOomRanker;->CACHE_USE_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 611
    .line 612
    const/4 v12, 0x0

    .line 613
    invoke-static {v15, v12, v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 614
    .line 615
    .line 616
    move/from16 v1, p5

    .line 617
    .line 618
    invoke-static {v15, v1}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    .line 619
    .line 620
    .line 621
    goto :goto_17

    .line 622
    :cond_1d
    const/4 v12, 0x0

    .line 623
    :goto_17
    sget-object v1, Lcom/android/server/am/CacheOomRanker;->SCORED_PROCESS_RECORD_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 624
    .line 625
    invoke-static {v15, v12, v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 626
    .line 627
    .line 628
    move v1, v12

    .line 629
    :goto_18
    if-ge v1, v0, :cond_1f

    .line 630
    .line 631
    aget v2, v30, v1

    .line 632
    .line 633
    aget-object v3, v15, v1

    .line 634
    .line 635
    iget-object v3, v3, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 636
    .line 637
    move-object/from16 v4, v29

    .line 638
    .line 639
    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    aget-object v2, v15, v1

    .line 643
    .line 644
    const/4 v3, 0x0

    .line 645
    iput-object v3, v2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 646
    .line 647
    add-int/lit8 v1, v1, 0x1

    .line 648
    .line 649
    goto :goto_18

    .line 650
    :catchall_1
    move-exception v0

    .line 651
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 652
    throw v0

    .line 653
    :cond_1e
    :goto_19
    move-object/from16 v24, v12

    .line 654
    .line 655
    move/from16 v25, v14

    .line 656
    .line 657
    :goto_1a
    const/4 v12, 0x0

    .line 658
    :cond_1f
    if-eqz v22, :cond_25

    .line 659
    .line 660
    move v0, v12

    .line 661
    :goto_1b
    if-eqz v23, :cond_25

    .line 662
    .line 663
    const/16 v1, 0xa

    .line 664
    .line 665
    if-ge v0, v1, :cond_25

    .line 666
    .line 667
    add-int/lit8 v0, v0, 0x1

    .line 668
    .line 669
    move v1, v12

    .line 670
    move/from16 v13, v25

    .line 671
    .line 672
    :goto_1c
    if-ge v1, v13, :cond_21

    .line 673
    .line 674
    move-object/from16 v14, v24

    .line 675
    .line 676
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 681
    .line 682
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 683
    .line 684
    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 685
    .line 686
    if-nez v4, :cond_20

    .line 687
    .line 688
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 689
    .line 690
    if-eqz v2, :cond_20

    .line 691
    .line 692
    iget-boolean v2, v3, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    .line 693
    .line 694
    if-eqz v2, :cond_20

    .line 695
    .line 696
    iget v2, v3, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 697
    .line 698
    const/4 v15, 0x1

    .line 699
    sub-int/2addr v2, v15

    .line 700
    iput v2, v3, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 701
    .line 702
    iget v2, v3, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 703
    .line 704
    sub-int/2addr v2, v15

    .line 705
    iput v2, v3, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 706
    .line 707
    goto :goto_1d

    .line 708
    :cond_20
    const/4 v15, 0x1

    .line 709
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    .line 710
    .line 711
    move-object/from16 v24, v14

    .line 712
    .line 713
    goto :goto_1c

    .line 714
    :cond_21
    move-object/from16 v14, v24

    .line 715
    .line 716
    const/4 v15, 0x1

    .line 717
    move v11, v12

    .line 718
    move/from16 v23, v11

    .line 719
    .line 720
    :goto_1e
    if-ge v11, v13, :cond_24

    .line 721
    .line 722
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    move-object v2, v1

    .line 727
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 728
    .line 729
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 730
    .line 731
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 732
    .line 733
    if-nez v3, :cond_22

    .line 734
    .line 735
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 736
    .line 737
    if-eqz v3, :cond_22

    .line 738
    .line 739
    iget-boolean v1, v1, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    .line 740
    .line 741
    if-eqz v1, :cond_22

    .line 742
    .line 743
    const/4 v5, 0x1

    .line 744
    const/4 v8, 0x1

    .line 745
    const/16 v3, 0x3e9

    .line 746
    .line 747
    const/4 v9, 0x1

    .line 748
    const/16 v22, 0x1

    .line 749
    .line 750
    move-object/from16 v1, p0

    .line 751
    .line 752
    move-object/from16 v4, p2

    .line 753
    .line 754
    move-wide/from16 v6, v16

    .line 755
    .line 756
    move/from16 v10, p1

    .line 757
    .line 758
    move/from16 v24, v11

    .line 759
    .line 760
    move/from16 v11, v22

    .line 761
    .line 762
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    if-eqz v1, :cond_23

    .line 767
    .line 768
    move/from16 v23, v15

    .line 769
    .line 770
    goto :goto_1f

    .line 771
    :cond_22
    move/from16 v24, v11

    .line 772
    .line 773
    :cond_23
    :goto_1f
    add-int/lit8 v11, v24, 0x1

    .line 774
    .line 775
    goto :goto_1e

    .line 776
    :cond_24
    move/from16 v25, v13

    .line 777
    .line 778
    move-object/from16 v24, v14

    .line 779
    .line 780
    goto :goto_1b

    .line 781
    :cond_25
    move-object/from16 v0, p0

    .line 782
    .line 783
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 784
    .line 785
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 786
    .line 787
    .line 788
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 789
    .line 790
    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 791
    .line 792
    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    .line 793
    .line 794
    .line 795
    const/4 v10, 0x1

    .line 796
    move-object/from16 v1, p0

    .line 797
    .line 798
    move/from16 v2, p1

    .line 799
    .line 800
    move-object/from16 v3, v28

    .line 801
    .line 802
    move-wide/from16 v4, v16

    .line 803
    .line 804
    move-wide/from16 v6, v18

    .line 805
    .line 806
    move-wide/from16 v8, v20

    .line 807
    .line 808
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/OomAdjuster;->postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V

    .line 809
    .line 810
    .line 811
    if-eqz p6, :cond_26

    .line 812
    .line 813
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    .line 814
    .line 815
    .line 816
    :cond_26
    return-void

    .line 817
    :catchall_2
    move-exception v0

    .line 818
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 819
    throw v0
.end method

.method public final updateOomAdjLSP(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 22
    .line 23
    .line 24
    throw v1

    .line 25
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 26
    .line 27
    return-void
.end method

.method public final updateOomAdjPendingTargetsLocked(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 14
    .line 15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 16
    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    const/4 v0, 0x1

    .line 48
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjPendingTargetsLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    .line 52
    .line 53
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_1
    move-exception v0

    .line 60
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public final updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 8
    .line 9
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 18
    .line 19
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v5, v1, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, 0x1

    .line 33
    sub-int/2addr v5, v6

    .line 34
    :goto_0
    if-ltz v5, :cond_24

    .line 35
    .line 36
    invoke-virtual {v1, v5}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iget v8, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 41
    .line 42
    const/16 v9, 0x14

    .line 43
    .line 44
    if-eq v8, v9, :cond_23

    .line 45
    .line 46
    iget v10, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 47
    .line 48
    if-ne v10, v8, :cond_1

    .line 49
    .line 50
    iget v8, v7, Lcom/android/server/am/UidRecord;->mSetCapability:I

    .line 51
    .line 52
    iget v10, v7, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 53
    .line 54
    if-ne v8, v10, :cond_1

    .line 55
    .line 56
    iget-boolean v8, v7, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    .line 57
    .line 58
    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    .line 59
    .line 60
    if-ne v8, v10, :cond_1

    .line 61
    .line 62
    iget-boolean v8, v7, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    .line 63
    .line 64
    if-eqz v8, :cond_23

    .line 65
    .line 66
    :cond_1
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 67
    .line 68
    iget v10, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 69
    .line 70
    invoke-virtual {v8, v10}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    iget v10, v7, Lcom/android/server/am/UidRecord;->mSetCapability:I

    .line 75
    .line 76
    iget v11, v7, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 77
    .line 78
    if-eq v10, v11, :cond_2

    .line 79
    .line 80
    const-string v10, "ActivityManager"

    .line 81
    .line 82
    new-instance v11, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v12, "Changes in "

    .line 85
    .line 86
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget v12, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 90
    .line 91
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v12, " "

    .line 95
    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget v12, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 100
    .line 101
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v12, " to "

    .line 105
    .line 106
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget v12, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 110
    .line 111
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v12, ", "

    .line 115
    .line 116
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget v12, v7, Lcom/android/server/am/UidRecord;->mSetCapability:I

    .line 120
    .line 121
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v12, " to "

    .line 125
    .line 126
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget v12, v7, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 130
    .line 131
    const-string v13, ""

    .line 132
    .line 133
    invoke-static {v11, v12, v13, v10}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_2
    iget v10, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 137
    .line 138
    invoke-static {v10}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    const-wide/16 v12, 0x0

    .line 143
    .line 144
    if-eqz v10, :cond_a

    .line 145
    .line 146
    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    .line 147
    .line 148
    if-nez v10, :cond_a

    .line 149
    .line 150
    iget v10, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 151
    .line 152
    invoke-static {v10}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    if-eqz v10, :cond_3

    .line 157
    .line 158
    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    .line 159
    .line 160
    if-nez v10, :cond_3

    .line 161
    .line 162
    iget-wide v14, v7, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 163
    .line 164
    cmp-long v14, v14, v12

    .line 165
    .line 166
    if-nez v14, :cond_7

    .line 167
    .line 168
    :cond_3
    iput-wide v2, v7, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 169
    .line 170
    if-eqz v8, :cond_4

    .line 171
    .line 172
    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 173
    .line 174
    iget v15, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 175
    .line 176
    iget-object v14, v14, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 177
    .line 178
    iget v10, v14, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 179
    .line 180
    long-to-int v11, v2

    .line 181
    iget v14, v14, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 182
    .line 183
    invoke-static {v14}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v20

    .line 187
    const/16 v17, 0x0

    .line 188
    .line 189
    const/16 v14, 0xa

    .line 190
    .line 191
    move/from16 v16, v15

    .line 192
    .line 193
    move v15, v14

    .line 194
    move/from16 v18, v10

    .line 195
    .line 196
    move/from16 v19, v11

    .line 197
    .line 198
    invoke-static/range {v15 .. v20}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_4
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 202
    .line 203
    iget-boolean v11, v10, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    .line 204
    .line 205
    const/16 v14, 0x3a

    .line 206
    .line 207
    if-nez v11, :cond_5

    .line 208
    .line 209
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 210
    .line 211
    invoke-virtual {v10, v14}, Landroid/os/Handler;->hasMessages(I)Z

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    if-nez v10, :cond_7

    .line 216
    .line 217
    :cond_5
    if-eqz v8, :cond_6

    .line 218
    .line 219
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 220
    .line 221
    iget v11, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 222
    .line 223
    iget-object v15, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 224
    .line 225
    iget-wide v12, v15, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 226
    .line 227
    iget-object v10, v10, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 228
    .line 229
    iget v10, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 230
    .line 231
    long-to-int v12, v12

    .line 232
    const-string v20, ""

    .line 233
    .line 234
    const/4 v15, 0x1

    .line 235
    const/16 v17, 0x0

    .line 236
    .line 237
    move/from16 v16, v11

    .line 238
    .line 239
    move/from16 v18, v10

    .line 240
    .line 241
    move/from16 v19, v12

    .line 242
    .line 243
    invoke-static/range {v15 .. v20}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIILjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :cond_6
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 247
    .line 248
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 249
    .line 250
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 251
    .line 252
    iget-wide v11, v11, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 253
    .line 254
    invoke-virtual {v10, v14, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 255
    .line 256
    .line 257
    :cond_7
    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 258
    .line 259
    if-eqz v10, :cond_9

    .line 260
    .line 261
    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    .line 262
    .line 263
    if-nez v10, :cond_9

    .line 264
    .line 265
    iget v10, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 266
    .line 267
    if-eq v10, v9, :cond_8

    .line 268
    .line 269
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    :cond_8
    const/16 v21, 0x2

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_9
    const/16 v21, 0x0

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_a
    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 279
    .line 280
    if-eqz v10, :cond_b

    .line 281
    .line 282
    iget v10, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 283
    .line 284
    const/16 v11, 0x7566

    .line 285
    .line 286
    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(II)I

    .line 287
    .line 288
    .line 289
    const/4 v10, 0x0

    .line 290
    iput-boolean v10, v7, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 291
    .line 292
    const/4 v11, 0x4

    .line 293
    :goto_1
    const-wide/16 v12, 0x0

    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_b
    const/4 v11, 0x0

    .line 297
    goto :goto_1

    .line 298
    :goto_2
    iput-wide v12, v7, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 299
    .line 300
    iput-wide v12, v7, Lcom/android/server/am/UidRecord;->mLastIdleTimeIfStillIdle:J

    .line 301
    .line 302
    if-eqz v8, :cond_c

    .line 303
    .line 304
    iget-object v12, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 305
    .line 306
    iget v14, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 307
    .line 308
    iget-object v12, v12, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 309
    .line 310
    iget v15, v12, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 311
    .line 312
    iget v12, v12, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 313
    .line 314
    invoke-static {v12}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v18

    .line 318
    const/16 v13, 0xb

    .line 319
    .line 320
    const/4 v12, 0x0

    .line 321
    const/16 v17, 0x0

    .line 322
    .line 323
    move/from16 v16, v15

    .line 324
    .line 325
    move v15, v12

    .line 326
    invoke-static/range {v13 .. v18}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIILjava/lang/String;)V

    .line 327
    .line 328
    .line 329
    :cond_c
    move/from16 v21, v11

    .line 330
    .line 331
    :goto_3
    iget v11, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 332
    .line 333
    const/16 v12, 0xb

    .line 334
    .line 335
    if-le v11, v12, :cond_d

    .line 336
    .line 337
    move v13, v6

    .line 338
    goto :goto_4

    .line 339
    :cond_d
    const/4 v13, 0x0

    .line 340
    :goto_4
    iget v14, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 341
    .line 342
    if-le v14, v12, :cond_e

    .line 343
    .line 344
    move v12, v6

    .line 345
    goto :goto_5

    .line 346
    :cond_e
    const/4 v12, 0x0

    .line 347
    :goto_5
    if-ne v13, v12, :cond_f

    .line 348
    .line 349
    if-ne v11, v9, :cond_11

    .line 350
    .line 351
    :cond_f
    if-eqz v12, :cond_10

    .line 352
    .line 353
    const/16 v9, 0x8

    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_10
    const/16 v9, 0x10

    .line 357
    .line 358
    :goto_6
    or-int v21, v21, v9

    .line 359
    .line 360
    :cond_11
    iget v9, v7, Lcom/android/server/am/UidRecord;->mSetCapability:I

    .line 361
    .line 362
    iget v12, v7, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 363
    .line 364
    if-eq v9, v12, :cond_12

    .line 365
    .line 366
    or-int/lit8 v21, v21, 0x20

    .line 367
    .line 368
    :cond_12
    const/high16 v13, -0x80000000

    .line 369
    .line 370
    if-eq v11, v14, :cond_13

    .line 371
    .line 372
    or-int v21, v21, v13

    .line 373
    .line 374
    :cond_13
    iget-boolean v15, v7, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    .line 375
    .line 376
    if-eqz v15, :cond_14

    .line 377
    .line 378
    or-int/lit8 v21, v21, 0x40

    .line 379
    .line 380
    :cond_14
    move/from16 v15, v21

    .line 381
    .line 382
    iput v14, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 383
    .line 384
    iput v12, v7, Lcom/android/server/am/UidRecord;->mSetCapability:I

    .line 385
    .line 386
    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    .line 387
    .line 388
    iput-boolean v10, v7, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    .line 389
    .line 390
    iget-boolean v6, v7, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 391
    .line 392
    iput-boolean v6, v7, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    .line 393
    .line 394
    const/4 v6, 0x0

    .line 395
    iput-boolean v6, v7, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    .line 396
    .line 397
    if-eqz v8, :cond_15

    .line 398
    .line 399
    if-ne v14, v11, :cond_16

    .line 400
    .line 401
    if-eq v12, v9, :cond_15

    .line 402
    .line 403
    goto :goto_7

    .line 404
    :cond_15
    move v1, v13

    .line 405
    goto :goto_9

    .line 406
    :cond_16
    :goto_7
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 407
    .line 408
    iget v6, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 409
    .line 410
    iget-object v13, v8, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 411
    .line 412
    iget v1, v13, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 413
    .line 414
    iget v13, v13, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 415
    .line 416
    invoke-static {v13}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v29

    .line 420
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 421
    .line 422
    .line 423
    move-result-object v22

    .line 424
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    .line 426
    .line 427
    move-result-object v23

    .line 428
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 429
    .line 430
    .line 431
    move-result-object v24

    .line 432
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 433
    .line 434
    .line 435
    move-result-object v25

    .line 436
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object v26

    .line 440
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v27

    .line 444
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v28

    .line 448
    filled-new-array/range {v22 .. v29}, [Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    const/16 v6, 0x759f

    .line 453
    .line 454
    invoke-static {v6, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 455
    .line 456
    .line 457
    const-string/jumbo v1, "uidStateChanged"

    .line 458
    .line 459
    .line 460
    invoke-virtual {v8, v1}, Lcom/android/server/am/OomAdjusterDebugLogger;->maybeLogStacktrace(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    iget-object v1, v8, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 464
    .line 465
    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    .line 466
    .line 467
    if-nez v1, :cond_17

    .line 468
    .line 469
    goto :goto_8

    .line 470
    :cond_17
    int-to-long v8, v1

    .line 471
    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .line 473
    .line 474
    :catch_0
    :goto_8
    const/high16 v1, -0x80000000

    .line 475
    .line 476
    :goto_9
    and-int/2addr v1, v15

    .line 477
    if-nez v1, :cond_18

    .line 478
    .line 479
    and-int/lit8 v6, v15, 0x20

    .line 480
    .line 481
    if-eqz v6, :cond_1a

    .line 482
    .line 483
    :cond_18
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 484
    .line 485
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 486
    .line 487
    iget v8, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 488
    .line 489
    iget v9, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 490
    .line 491
    check-cast v6, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 492
    .line 493
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 494
    .line 495
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 496
    .line 497
    monitor-enter v6

    .line 498
    :try_start_1
    iget-object v10, v6, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    .line 499
    .line 500
    invoke-virtual {v10, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 501
    .line 502
    .line 503
    move-result v8

    .line 504
    if-ltz v8, :cond_19

    .line 505
    .line 506
    iget-object v10, v6, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    .line 507
    .line 508
    invoke-virtual {v10, v8, v9}, Landroid/util/SparseIntArray;->setValueAt(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    .line 510
    .line 511
    goto :goto_a

    .line 512
    :catchall_0
    move-exception v0

    .line 513
    goto/16 :goto_e

    .line 514
    .line 515
    :cond_19
    :goto_a
    monitor-exit v6

    .line 516
    :cond_1a
    if-eqz v15, :cond_1b

    .line 517
    .line 518
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 519
    .line 520
    const/4 v8, -0x1

    .line 521
    invoke-virtual {v6, v7, v8, v15}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 522
    .line 523
    .line 524
    :cond_1b
    if-nez v1, :cond_1c

    .line 525
    .line 526
    and-int/lit8 v1, v15, 0x20

    .line 527
    .line 528
    if-eqz v1, :cond_1d

    .line 529
    .line 530
    :cond_1c
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 531
    .line 532
    iget v6, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 533
    .line 534
    iget v8, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 535
    .line 536
    iget v9, v7, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 537
    .line 538
    invoke-virtual {v1, v6, v8, v9}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 539
    .line 540
    .line 541
    :cond_1d
    iget-boolean v1, v7, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 542
    .line 543
    if-eqz v1, :cond_23

    .line 544
    .line 545
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 546
    .line 547
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 548
    .line 549
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 550
    .line 551
    iget v6, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 552
    .line 553
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 554
    .line 555
    .line 556
    move-result v6

    .line 557
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 562
    .line 563
    if-eqz v1, :cond_23

    .line 564
    .line 565
    iget-object v6, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    .line 566
    .line 567
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 568
    .line 569
    .line 570
    move-result v6

    .line 571
    const/4 v8, 0x1

    .line 572
    sub-int/2addr v6, v8

    .line 573
    const/4 v8, 0x0

    .line 574
    :goto_b
    if-ltz v6, :cond_22

    .line 575
    .line 576
    iget-object v9, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    .line 577
    .line 578
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v9

    .line 582
    check-cast v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 583
    .line 584
    iget v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    .line 585
    .line 586
    iget v11, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 587
    .line 588
    if-ne v10, v11, :cond_21

    .line 589
    .line 590
    iget v10, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 591
    .line 592
    const/4 v11, 0x2

    .line 593
    if-gt v10, v11, :cond_20

    .line 594
    .line 595
    iget-boolean v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 596
    .line 597
    if-nez v10, :cond_1e

    .line 598
    .line 599
    const/4 v10, 0x1

    .line 600
    iput-boolean v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 601
    .line 602
    move v8, v10

    .line 603
    goto :goto_c

    .line 604
    :cond_1e
    const/4 v10, 0x1

    .line 605
    :goto_c
    iput-boolean v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    .line 606
    .line 607
    :cond_1f
    const/4 v10, 0x0

    .line 608
    goto :goto_d

    .line 609
    :cond_20
    iget-boolean v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 610
    .line 611
    if-eqz v10, :cond_1f

    .line 612
    .line 613
    const/4 v10, 0x0

    .line 614
    iput-boolean v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 615
    .line 616
    const/4 v8, 0x1

    .line 617
    goto :goto_d

    .line 618
    :cond_21
    const/4 v10, 0x0

    .line 619
    const/4 v11, 0x2

    .line 620
    :goto_d
    add-int/lit8 v6, v6, -0x1

    .line 621
    .line 622
    goto :goto_b

    .line 623
    :cond_22
    if-eqz v8, :cond_23

    .line 624
    .line 625
    const-wide/16 v8, 0x0

    .line 626
    .line 627
    invoke-static {v1, v8, v9}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 628
    .line 629
    .line 630
    goto :goto_f

    .line 631
    :goto_e
    monitor-exit v6

    .line 632
    throw v0

    .line 633
    :cond_23
    :goto_f
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 634
    .line 635
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    .line 636
    .line 637
    iget v6, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 638
    .line 639
    invoke-virtual {v1, v6, v2, v3}, Landroid/app/ActivityManagerInternal;->deletePendingTopUid(IJ)V

    .line 640
    .line 641
    .line 642
    add-int/lit8 v5, v5, -0x1

    .line 643
    .line 644
    move-object/from16 v1, p1

    .line 645
    .line 646
    const/4 v6, 0x1

    .line 647
    goto/16 :goto_0

    .line 648
    .line 649
    :cond_24
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 650
    .line 651
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 652
    .line 653
    if-eqz v1, :cond_25

    .line 654
    .line 655
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 656
    .line 657
    .line 658
    :cond_25
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 659
    .line 660
    .line 661
    move-result v1

    .line 662
    if-lez v1, :cond_26

    .line 663
    .line 664
    const/4 v2, 0x1

    .line 665
    sub-int/2addr v1, v2

    .line 666
    :goto_10
    if-ltz v1, :cond_26

    .line 667
    .line 668
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 669
    .line 670
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 671
    .line 672
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    check-cast v3, Lcom/android/server/am/UidRecord;

    .line 677
    .line 678
    iget v3, v3, Lcom/android/server/am/UidRecord;->mUid:I

    .line 679
    .line 680
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    .line 681
    .line 682
    .line 683
    add-int/lit8 v1, v1, -0x1

    .line 684
    .line 685
    goto :goto_10

    .line 686
    :cond_26
    return-void
.end method
