.class public final Lcom/android/server/am/ActivityManagerConstants;
.super Landroid/database/ContentObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

.field public static final ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

.field public static BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

.field public static BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

.field public static BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

.field public static final DEFAULT_ENABLE_NEW_OOM_ADJ:Z

.field public static final DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

.field public static DEFAULT_MAX_CACHED_PROCESSES:I

.field public static final DEFAULT_SERVICE_BACKGROUND_TIMEOUT:J

.field public static final DEFAULT_SERVICE_TIMEOUT:J

.field public static EMPTY_RATE:F

.field public static final ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

.field public static final FORCE_ENABLE_PSS_PROFILING_URI:Landroid/net/Uri;

.field public static final FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

.field public static LOW_SWAP_THRESHOLD_PERCENT:F

.field public static MAX_PREVIOUS_TIME:J

.field public static MIN_ASSOC_LOG_DURATION:J

.field public static MIN_CRASH_INTERVAL:I

.field public static PROACTIVE_KILLS_ENABLED:Z

.field public static PROCESS_CRASH_COUNT_LIMIT:I

.field public static PROCESS_CRASH_COUNT_RESET_INTERVAL:J


# instance fields
.field public APP_PROFILER_PSS_PROFILING_DISABLED:Z

.field public BACKGROUND_SETTLE_TIME:J

.field public BG_START_TIMEOUT:J

.field public BOUND_SERVICE_CRASH_RESTART_DURATION:J

.field public BOUND_SERVICE_MAX_CRASH_RETRY:J

.field public CONTENT_PROVIDER_RETAIN_TIME:J

.field public CUR_MAX_CACHED_PROCESSES:I

.field public CUR_MAX_EMPTY_PROCESSES:I

.field public CUR_TRIM_CACHED_PROCESSES:I

.field public CUR_TRIM_EMPTY_PROCESSES:I

.field public CUSTOM_CUR_TRIM_CACHED_PROCESSES:I

.field public CUSTOM_CUR_TRIM_EMPTY_PROCESSES:I

.field public final ENABLE_BATCHING_OOM_ADJ:Z

.field public final ENABLE_NEW_OOMADJ:Z

.field public FGSERVICE_MIN_REPORT_TIME:J

.field public FGSERVICE_MIN_SHOWN_TIME:J

.field public FGSERVICE_SCREEN_ON_AFTER_TIME:J

.field public FGSERVICE_SCREEN_ON_BEFORE_TIME:J

.field public FGS_BOOT_COMPLETED_ALLOWLIST:I

.field public FLAG_PROCESS_START_ASYNC:Z

.field public FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

.field public FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

.field public FULL_PSS_LOWERED_INTERVAL:J

.field public FULL_PSS_MIN_INTERVAL:J

.field public GC_MIN_INTERVAL:J

.field public GC_TIMEOUT:J

.field public final IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

.field public final IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

.field public final KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

.field public MAX_CACHED_PROCESSES:I

.field public MAX_PHANTOM_PROCESSES:I

.field public MAX_SERVICE_INACTIVITY:J

.field public MEMORY_INFO_THROTTLE_TIME:J

.field public OOMADJ_UPDATE_QUICK:Z

.field public PENDINGINTENT_WARNING_THRESHOLD:I

.field public POWER_CHECK_INTERVAL:J

.field public POWER_CHECK_MAX_CPU_1:I

.field public POWER_CHECK_MAX_CPU_2:I

.field public POWER_CHECK_MAX_CPU_3:I

.field public POWER_CHECK_MAX_CPU_4:I

.field public PSS_TO_RSS_THRESHOLD_MODIFIER:F

.field public final SERVICE_BACKGROUND_TIMEOUT:J

.field public SERVICE_BG_ACTIVITY_START_TIMEOUT:J

.field public SERVICE_MIN_RESTART_TIME_BETWEEN:J

.field public SERVICE_RESET_RUN_DURATION:J

.field public SERVICE_RESTART_DURATION:J

.field public SERVICE_RESTART_DURATION_FACTOR:I

.field public final SERVICE_TIMEOUT:J

.field public SERVICE_USAGE_INTERACTION_TIME_POST_S:J

.field public SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

.field public TIERED_CACHED_ADJ_DECAY_TIME:J

.field public TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

.field public volatile TOP_TO_FGS_GRACE_DURATION:J

.field public USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

.field public USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

.field public USE_TIERED_CACHED_ADJ:Z

.field public volatile mBootTimeTempAllowlistDuration:J

.field public volatile mComponentAliasOverrides:Ljava/lang/String;

.field public final mCustomizedMaxCachedProcesses:I

.field public volatile mDataSyncFgsTimeoutDuration:J

.field public final mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

.field public final mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

.field public final mDefaultBinderHeavyHitterAutoSamplerThreshold:F

.field public final mDefaultBinderHeavyHitterWatcherBatchSize:I

.field public final mDefaultBinderHeavyHitterWatcherEnabled:Z

.field public final mDefaultBinderHeavyHitterWatcherThreshold:F

.field public final mDefaultDisableAppProfilerPssProfiling:Z

.field public final mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

.field public final mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

.field public final mDefaultPssToRssThresholdModifier:F

.field public volatile mDeferBootCompletedBroadcast:I

.field public volatile mEnableComponentAlias:Z

.field public mEnableExtraServiceRestartDelayOnMemPressure:Z

.field public volatile mEnableProcStateStacktrace:Z

.field public volatile mEnableWaitForFinishAttachApplication:Z

.field public mExtraServiceRestartDelayOnMemPressure:[J

.field public volatile mFgToBgFgsGraceDuration:J

.field public volatile mFgsAllowOptOut:Z

.field public volatile mFgsAtomSampleRate:F

.field public volatile mFgsCrashExtraWaitDuration:J

.field public volatile mFgsNotificationDeferralExclusionTime:J

.field public volatile mFgsNotificationDeferralExclusionTimeForShort:J

.field public volatile mFgsNotificationDeferralInterval:J

.field public volatile mFgsNotificationDeferralIntervalForShort:J

.field public volatile mFgsStartAllowedLogSampleRate:F

.field public volatile mFgsStartDeniedLogSampleRate:F

.field public volatile mFgsStartForegroundTimeoutMs:J

.field public volatile mFgsStartRestrictionCheckCallerTargetSdk:Z

.field public volatile mFgsStartRestrictionNotificationEnabled:Z

.field public volatile mFlagActivityStartsLoggingEnabled:Z

.field public volatile mFlagBackgroundActivityStartsEnabled:Z

.field public volatile mFlagBackgroundFgsStartRestrictionEnabled:Z

.field public volatile mFlagFgsNotificationDeferralApiGated:Z

.field public volatile mFlagFgsNotificationDeferralEnabled:Z

.field public volatile mFlagFgsStartRestrictionEnabled:Z

.field public volatile mFlagSystemExemptPowerRestrictionsEnabled:Z

.field public volatile mForceEnablePssProfiling:Z

.field public volatile mKillBgRestrictedAndCachedIdle:Z

.field public volatile mKillBgRestrictedAndCachedIdleSettleTimeMs:J

.field public volatile mMaxEmptyTimeMillis:J

.field public volatile mMaxServiceConnectionsPerProcess:I

.field public volatile mMediaProcessingFgsTimeoutDuration:J

.field public volatile mNetworkAccessTimeoutMs:J

.field public volatile mNoKillCachedProcessesPostBootCompletedDurationMillis:J

.field public volatile mNoKillCachedProcessesUntilBootCompleted:Z

.field public final mOnDeviceConfigChangedForComponentAliasListener:Lcom/android/server/am/ActivityManagerConstants$1;

.field public final mOnDeviceConfigChangedListener:Lcom/android/server/am/ActivityManagerConstants$1;

.field public mOverrideMaxCachedProcesses:I

.field public final mParser:Landroid/util/KeyValueListParser;

.field public volatile mPrioritizeAlarmBroadcasts:Z

.field public volatile mProcStateDebugSetProcStateDelay:I

.field public volatile mProcStateDebugSetUidStateDelay:I

.field public volatile mProcStateDebugUids:Landroid/util/SparseBooleanArray;

.field public volatile mProcessKillTimeoutMs:J

.field public volatile mPushMessagingOverQuotaBehavior:I

.field public mResolver:Landroid/content/ContentResolver;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public volatile mServiceBindAlmostPerceptibleTimeoutMs:J

.field public volatile mServiceStartForegroundAnrDelayMs:I

.field public volatile mServiceStartForegroundTimeoutMs:I

.field public volatile mShortFgsAnrExtraWaitDuration:J

.field public volatile mShortFgsProcStateExtraWaitDuration:J

.field public volatile mShortFgsTimeoutDuration:J

.field public final mSystemServerAutomaticHeapDumpEnabled:Z

.field public final mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

.field public final mSystemServerAutomaticHeapDumpPssThresholdBytes:J

.field public volatile mVisibleToInvisibleUijScheduleGraceDurationMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string/jumbo v0, "ro.slmk.fha_cached_max"

    .line 2
    .line 3
    .line 4
    const-string v1, "1024"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/am/Flags;->oomadjusterCorrectnessRewrite()Z

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_ENABLE_NEW_OOM_ADJ:Z

    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/am/Flags;->batchingOomAdj()Z

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    new-array v0, v0, [J

    .line 27
    .line 28
    fill-array-data v0, :array_0

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    .line 32
    .line 33
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    .line 34
    .line 35
    mul-int/lit16 v0, v0, 0x7530

    .line 36
    .line 37
    int-to-long v0, v0

    .line 38
    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_SERVICE_TIMEOUT:J

    .line 39
    .line 40
    const-wide/16 v2, 0xa

    .line 41
    .line 42
    mul-long/2addr v0, v2

    .line 43
    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_SERVICE_BACKGROUND_TIMEOUT:J

    .line 44
    .line 45
    const-string/jumbo v0, "ro.slmk.fha_empty_rate"

    .line 46
    .line 47
    .line 48
    const-string v1, "0.5"

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    .line 59
    .line 60
    const-wide/32 v0, 0xea60

    .line 61
    .line 62
    .line 63
    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    .line 64
    .line 65
    const v0, 0x1d4c0

    .line 66
    .line 67
    .line 68
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 69
    .line 70
    const-wide/32 v0, 0x2932e00

    .line 71
    .line 72
    .line 73
    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    .line 74
    .line 75
    const/16 v0, 0xc

    .line 76
    .line 77
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    .line 78
    .line 79
    const-string v0, "activity_manager_constants"

    .line 80
    .line 81
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    .line 86
    .line 87
    const-string v0, "activity_starts_logging_enabled"

    .line 88
    .line 89
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    .line 94
    .line 95
    const-string/jumbo v0, "foreground_service_starts_logging_enabled"

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    .line 103
    .line 104
    const-string/jumbo v0, "enable_automatic_system_server_heap_dumps"

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    .line 112
    .line 113
    const-string/jumbo v0, "force_enable_pss_profiling"

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_ENABLE_PSS_PROFILING_URI:Landroid/net/Uri;

    .line 121
    .line 122
    const-wide/32 v0, 0x493e0

    .line 123
    .line 124
    .line 125
    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    .line 129
    .line 130
    const v0, 0x3dcccccd    # 0.1f

    .line 131
    .line 132
    .line 133
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    .line 134
    .line 135
    return-void

    .line 136
    nop

    .line 137
    :array_0
    .array-data 8
        0x0
        0x2710
        0x4e20
        0x7530
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$UiHandler;)V
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
    invoke-direct {v0, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v2, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    .line 17
    .line 18
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableProcStateStacktrace:Z

    .line 19
    .line 20
    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    .line 21
    .line 22
    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    .line 23
    .line 24
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 25
    .line 26
    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 27
    .line 28
    const-wide/32 v4, 0xea60

    .line 29
    .line 30
    .line 31
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 32
    .line 33
    const-wide/16 v6, 0x7d0

    .line 34
    .line 35
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    .line 36
    .line 37
    const-wide/16 v6, 0xbb8

    .line 38
    .line 39
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    .line 40
    .line 41
    const-wide/16 v6, 0x3e8

    .line 42
    .line 43
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    .line 44
    .line 45
    const-wide/16 v8, 0x1388

    .line 46
    .line 47
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    .line 48
    .line 49
    const v2, 0x40000718    # 2.000433f

    .line 50
    .line 51
    .line 52
    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->FGS_BOOT_COMPLETED_ALLOWLIST:I

    .line 53
    .line 54
    const-wide/16 v10, 0x4e20

    .line 55
    .line 56
    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 57
    .line 58
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    .line 59
    .line 60
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    .line 64
    .line 65
    const-wide/32 v12, 0x124f80

    .line 66
    .line 67
    .line 68
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    .line 69
    .line 70
    const-wide/32 v12, 0x493e0

    .line 71
    .line 72
    .line 73
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    .line 74
    .line 75
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 76
    .line 77
    const/16 v14, 0x19

    .line 78
    .line 79
    iput v14, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    .line 80
    .line 81
    iput v14, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    .line 82
    .line 83
    const/16 v14, 0xa

    .line 84
    .line 85
    iput v14, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    .line 86
    .line 87
    const/4 v14, 0x2

    .line 88
    iput v14, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    .line 89
    .line 90
    const-wide/32 v14, 0x1b7740

    .line 91
    .line 92
    .line 93
    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 94
    .line 95
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    .line 96
    .line 97
    const-wide/32 v8, 0x6ddd00

    .line 98
    .line 99
    .line 100
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 101
    .line 102
    const-wide/32 v8, 0x927c0

    .line 103
    .line 104
    .line 105
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    .line 106
    .line 107
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 108
    .line 109
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 110
    .line 111
    const/4 v8, 0x4

    .line 112
    iput v8, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    .line 113
    .line 114
    const-wide/16 v8, 0x2710

    .line 115
    .line 116
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 117
    .line 118
    sget-wide v6, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_SERVICE_TIMEOUT:J

    .line 119
    .line 120
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_TIMEOUT:J

    .line 121
    .line 122
    sget-wide v6, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_SERVICE_BACKGROUND_TIMEOUT:J

    .line 123
    .line 124
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BACKGROUND_TIMEOUT:J

    .line 125
    .line 126
    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    .line 127
    .line 128
    const-wide/16 v6, 0x3a98

    .line 129
    .line 130
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    .line 131
    .line 132
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    .line 133
    .line 134
    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    .line 135
    .line 136
    const-wide/16 v14, 0x10

    .line 137
    .line 138
    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    .line 139
    .line 140
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    .line 141
    .line 142
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    .line 143
    .line 144
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    .line 145
    .line 146
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    .line 147
    .line 148
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    .line 149
    .line 150
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    .line 151
    .line 152
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    .line 153
    .line 154
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mForceEnablePssProfiling:Z

    .line 155
    .line 156
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    .line 157
    .line 158
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    .line 159
    .line 160
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    .line 161
    .line 162
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    .line 163
    .line 164
    iget-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    .line 165
    .line 166
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralIntervalForShort:J

    .line 167
    .line 168
    const-wide/32 v12, 0x1d4c0

    .line 169
    .line 170
    .line 171
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    .line 172
    .line 173
    iget-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    .line 174
    .line 175
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTimeForShort:J

    .line 176
    .line 177
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    .line 178
    .line 179
    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 180
    .line 181
    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    .line 182
    .line 183
    const-wide/16 v10, 0x1388

    .line 184
    .line 185
    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    .line 186
    .line 187
    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mVisibleToInvisibleUijScheduleGraceDurationMs:J

    .line 188
    .line 189
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    .line 190
    .line 191
    const/high16 v10, 0x3f800000    # 1.0f

    .line 192
    .line 193
    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    .line 194
    .line 195
    const/high16 v11, 0x3e800000    # 0.25f

    .line 196
    .line 197
    iput v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    .line 198
    .line 199
    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    .line 200
    .line 201
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    .line 202
    .line 203
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 204
    .line 205
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    .line 206
    .line 207
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    .line 208
    .line 209
    sget-object v10, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    .line 210
    .line 211
    iput-object v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    .line 212
    .line 213
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    .line 214
    .line 215
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    .line 216
    .line 217
    const/4 v10, 0x6

    .line 218
    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    .line 219
    .line 220
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mPrioritizeAlarmBroadcasts:Z

    .line 221
    .line 222
    const/16 v10, 0x7530

    .line 223
    .line 224
    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    .line 225
    .line 226
    const/16 v10, 0x2710

    .line 227
    .line 228
    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    .line 229
    .line 230
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    .line 231
    .line 232
    const-string v6, ""

    .line 233
    .line 234
    iput-object v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    .line 235
    .line 236
    const/16 v6, 0xbb8

    .line 237
    .line 238
    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mMaxServiceConnectionsPerProcess:I

    .line 239
    .line 240
    new-instance v6, Landroid/util/KeyValueListParser;

    .line 241
    .line 242
    const/16 v7, 0x2c

    .line 243
    .line 244
    invoke-direct {v6, v7}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 245
    .line 246
    .line 247
    iput-object v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 248
    .line 249
    const/4 v6, -0x1

    .line 250
    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 251
    .line 252
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    .line 253
    .line 254
    const-wide/16 v6, 0x0

    .line 255
    .line 256
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    .line 257
    .line 258
    iget v6, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 259
    .line 260
    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    const/4 v7, 0x2

    .line 265
    div-int/2addr v6, v7

    .line 266
    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 267
    .line 268
    iget v6, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 269
    .line 270
    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    sub-int/2addr v6, v7

    .line 275
    const/4 v7, 0x3

    .line 276
    div-int/2addr v6, v7

    .line 277
    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 278
    .line 279
    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_EMPTY_PROCESSES:I

    .line 280
    .line 281
    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_CACHED_PROCESSES:I

    .line 282
    .line 283
    const-wide v10, 0xd693a400L

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    .line 289
    .line 290
    new-instance v6, Landroid/util/ArraySet;

    .line 291
    .line 292
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 293
    .line 294
    .line 295
    iput-object v6, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    .line 296
    .line 297
    new-instance v10, Landroid/util/ArraySet;

    .line 298
    .line 299
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 300
    .line 301
    .line 302
    iput-object v10, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    .line 303
    .line 304
    const/16 v11, 0x7d0

    .line 305
    .line 306
    iput v11, v0, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    .line 307
    .line 308
    new-instance v11, Landroid/util/ArraySet;

    .line 309
    .line 310
    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 311
    .line 312
    .line 313
    iput-object v11, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    .line 314
    .line 315
    const/16 v12, 0x20

    .line 316
    .line 317
    iput v12, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    .line 318
    .line 319
    const-wide/16 v12, 0xc8

    .line 320
    .line 321
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    .line 322
    .line 323
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    .line 324
    .line 325
    const-wide/32 v12, 0x2bf20

    .line 326
    .line 327
    .line 328
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    .line 329
    .line 330
    const-wide/16 v12, 0x1388

    .line 331
    .line 332
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsProcStateExtraWaitDuration:J

    .line 333
    .line 334
    const-wide/32 v12, 0x1499700

    .line 335
    .line 336
    .line 337
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    .line 338
    .line 339
    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    .line 340
    .line 341
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableWaitForFinishAttachApplication:Z

    .line 342
    .line 343
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsAnrExtraWaitDuration:J

    .line 344
    .line 345
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsCrashExtraWaitDuration:J

    .line 346
    .line 347
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    .line 348
    .line 349
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    .line 350
    .line 351
    sget-boolean v4, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_ENABLE_NEW_OOM_ADJ:Z

    .line 352
    .line 353
    iput-boolean v4, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_NEW_OOMADJ:Z

    .line 354
    .line 355
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    .line 356
    .line 357
    const-wide/16 v8, 0x3e8

    .line 358
    .line 359
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    .line 360
    .line 361
    new-instance v5, Lcom/android/server/am/ActivityManagerConstants$1;

    .line 362
    .line 363
    invoke-direct {v5, v0, v3}, Lcom/android/server/am/ActivityManagerConstants$1;-><init>(Lcom/android/server/am/ActivityManagerConstants;I)V

    .line 364
    .line 365
    .line 366
    iput-object v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Lcom/android/server/am/ActivityManagerConstants$1;

    .line 367
    .line 368
    new-instance v5, Lcom/android/server/am/ActivityManagerConstants$1;

    .line 369
    .line 370
    invoke-direct {v5, v0, v2}, Lcom/android/server/am/ActivityManagerConstants$1;-><init>(Lcom/android/server/am/ActivityManagerConstants;I)V

    .line 371
    .line 372
    .line 373
    iput-object v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedForComponentAliasListener:Lcom/android/server/am/ActivityManagerConstants$1;

    .line 374
    .line 375
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 376
    .line 377
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 378
    .line 379
    if-eqz v5, :cond_0

    .line 380
    .line 381
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    const v8, 0x111012a

    .line 386
    .line 387
    .line 388
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 389
    .line 390
    .line 391
    move-result v5

    .line 392
    if-eqz v5, :cond_0

    .line 393
    .line 394
    goto :goto_0

    .line 395
    :cond_0
    move v2, v3

    .line 396
    :goto_0
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    .line 397
    .line 398
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    iput-object v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    const v5, 0x10e0068

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    int-to-long v8, v2

    .line 416
    const-wide/32 v12, 0x19000

    .line 417
    .line 418
    .line 419
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 420
    .line 421
    .line 422
    move-result-wide v8

    .line 423
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPssThresholdBytes:J

    .line 424
    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    const v5, 0x10700c1

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    iput-object v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    .line 441
    .line 442
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    const v8, 0x10700c2

    .line 447
    .line 448
    .line 449
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    invoke-static {v5}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 454
    .line 455
    .line 456
    move-result-object v5

    .line 457
    invoke-interface {v5}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 462
    .line 463
    .line 464
    move-result-object v8

    .line 465
    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    check-cast v5, Ljava/util/List;

    .line 470
    .line 471
    iput-object v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    .line 472
    .line 473
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 474
    .line 475
    .line 476
    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 477
    .line 478
    .line 479
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    const v5, 0x111012f

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherEnabled:Z

    .line 491
    .line 492
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 493
    .line 494
    .line 495
    move-result-object v5

    .line 496
    const v6, 0x10e006d

    .line 497
    .line 498
    .line 499
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    iput v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherBatchSize:I

    .line 504
    .line 505
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 506
    .line 507
    .line 508
    move-result-object v6

    .line 509
    const v8, 0x10500df

    .line 510
    .line 511
    .line 512
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getFloat(I)F

    .line 513
    .line 514
    .line 515
    move-result v6

    .line 516
    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherThreshold:F

    .line 517
    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 519
    .line 520
    .line 521
    move-result-object v8

    .line 522
    const v9, 0x111012e

    .line 523
    .line 524
    .line 525
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 526
    .line 527
    .line 528
    move-result v8

    .line 529
    iput-boolean v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

    .line 530
    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 532
    .line 533
    .line 534
    move-result-object v9

    .line 535
    const v10, 0x10e006c

    .line 536
    .line 537
    .line 538
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    .line 539
    .line 540
    .line 541
    move-result v9

    .line 542
    iput v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

    .line 543
    .line 544
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 545
    .line 546
    .line 547
    move-result-object v10

    .line 548
    const v12, 0x10500de

    .line 549
    .line 550
    .line 551
    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getFloat(I)F

    .line 552
    .line 553
    .line 554
    move-result v10

    .line 555
    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerThreshold:F

    .line 556
    .line 557
    sput-boolean v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    .line 558
    .line 559
    sput v5, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    .line 560
    .line 561
    sput v6, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 562
    .line 563
    sput-boolean v8, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    .line 564
    .line 565
    sput v9, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    .line 566
    .line 567
    sput v10, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

    .line 568
    .line 569
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 570
    .line 571
    new-instance v5, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;

    .line 572
    .line 573
    const/4 v6, 0x2

    .line 574
    invoke-direct {v5, v1, v6}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/ActivityManagerService;I)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 578
    .line 579
    .line 580
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    const v2, 0x107010e

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 596
    .line 597
    invoke-direct {v2, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 598
    .line 599
    .line 600
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    check-cast v1, Ljava/util/Collection;

    .line 613
    .line 614
    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 615
    .line 616
    .line 617
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    const v2, 0x10e005f

    .line 622
    .line 623
    .line 624
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    .line 629
    .line 630
    sget v1, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 631
    .line 632
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 633
    .line 634
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 639
    .line 640
    iget v1, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 641
    .line 642
    iget v2, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 643
    .line 644
    invoke-static {v1, v2}, Ljava/lang/Integer;->min(II)I

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    .line 649
    .line 650
    .line 651
    move-result v1

    .line 652
    const/4 v2, 0x2

    .line 653
    div-int/lit8 v2, v1, 0x2

    .line 654
    .line 655
    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 656
    .line 657
    iget v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 658
    .line 659
    iget v5, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 660
    .line 661
    invoke-static {v2, v5}, Ljava/lang/Integer;->min(II)I

    .line 662
    .line 663
    .line 664
    move-result v2

    .line 665
    sub-int/2addr v2, v1

    .line 666
    div-int/2addr v2, v7

    .line 667
    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 668
    .line 669
    sget v1, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_ABORTED_BROADCAST:I

    .line 670
    .line 671
    const-string/jumbo v1, "persist.sys.activity_manager_native_boot."

    .line 672
    .line 673
    .line 674
    const-string/jumbo v2, "enable_new_oom_adj"

    .line 675
    .line 676
    .line 677
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v5

    .line 681
    const-string/jumbo v6, "persist.device_config.activity_manager_native_boot."

    .line 682
    .line 683
    .line 684
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 689
    .line 690
    .line 691
    move-result v2

    .line 692
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 693
    .line 694
    .line 695
    move-result v2

    .line 696
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_NEW_OOMADJ:Z

    .line 697
    .line 698
    const-string/jumbo v2, "enable_batching_oom_adj"

    .line 699
    .line 700
    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 714
    .line 715
    .line 716
    move-result v1

    .line 717
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    .line 718
    .line 719
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    const v2, 0x1110033

    .line 724
    .line 725
    .line 726
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 727
    .line 728
    .line 729
    move-result v1

    .line 730
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultDisableAppProfilerPssProfiling:Z

    .line 731
    .line 732
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    .line 733
    .line 734
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    const v2, 0x10500d5

    .line 739
    .line 740
    .line 741
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 742
    .line 743
    .line 744
    move-result v1

    .line 745
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultPssToRssThresholdModifier:F

    .line 746
    .line 747
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    .line 748
    .line 749
    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 4

    .line 1
    int-to-float p0, p0

    .line 2
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    .line 3
    .line 4
    mul-float/2addr p0, v0

    .line 5
    float-to-double v0, p0

    .line 6
    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    add-double/2addr v0, v2

    .line 12
    double-to-int p0, v0

    .line 13
    return p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    const-string v0, "ACTIVITY MANAGER SETTINGS (dumpsys activity settings) activity_manager_constants:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "  "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "max_cached_processes"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "="

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 25
    .line 26
    .line 27
    const-string v0, "  "

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v0, "background_settle_time"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "="

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 44
    .line 45
    const-string v2, "  "

    .line 46
    .line 47
    const-string/jumbo v3, "fgservice_min_shown_time"

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v0, "="

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    .line 59
    .line 60
    const-string v2, "  "

    .line 61
    .line 62
    const-string/jumbo v3, "fgservice_min_report_time"

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v0, "="

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    .line 74
    .line 75
    const-string v2, "  "

    .line 76
    .line 77
    const-string/jumbo v3, "fgservice_screen_on_before_time"

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v0, "="

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    .line 89
    .line 90
    const-string v2, "  "

    .line 91
    .line 92
    const-string/jumbo v3, "fgservice_screen_on_after_time"

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v0, "="

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    .line 104
    .line 105
    const-string v2, "  "

    .line 106
    .line 107
    const-string/jumbo v3, "fgs_boot_completed_allowlist"

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "="

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGS_BOOT_COMPLETED_ALLOWLIST:I

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 121
    .line 122
    .line 123
    const-string v0, "  "

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string/jumbo v0, "content_provider_retain_time"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v0, "="

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 140
    .line 141
    const-string v2, "  "

    .line 142
    .line 143
    const-string/jumbo v3, "gc_timeout"

    .line 144
    .line 145
    .line 146
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v0, "="

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    .line 155
    .line 156
    const-string v2, "  "

    .line 157
    .line 158
    const-string/jumbo v3, "gc_min_interval"

    .line 159
    .line 160
    .line 161
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string v0, "="

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 170
    .line 171
    const-string v2, "  "

    .line 172
    .line 173
    const-string/jumbo v3, "force_bg_check_on_restricted"

    .line 174
    .line 175
    .line 176
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v0, "="

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    .line 185
    .line 186
    const-string v1, "  "

    .line 187
    .line 188
    const-string/jumbo v2, "full_pss_min_interval"

    .line 189
    .line 190
    .line 191
    const-string v3, "="

    .line 192
    .line 193
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    .line 197
    .line 198
    const-string v2, "  "

    .line 199
    .line 200
    const-string/jumbo v3, "full_pss_lowered_interval"

    .line 201
    .line 202
    .line 203
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const-string v0, "="

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    .line 212
    .line 213
    const-string v2, "  "

    .line 214
    .line 215
    const-string/jumbo v3, "power_check_interval"

    .line 216
    .line 217
    .line 218
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string v0, "="

    .line 222
    .line 223
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 227
    .line 228
    const-string v2, "  "

    .line 229
    .line 230
    const-string/jumbo v3, "power_check_max_cpu_1"

    .line 231
    .line 232
    .line 233
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-string v0, "="

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    .line 242
    .line 243
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 244
    .line 245
    .line 246
    const-string v0, "  "

    .line 247
    .line 248
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const-string/jumbo v0, "power_check_max_cpu_2"

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const-string v0, "="

    .line 258
    .line 259
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    .line 263
    .line 264
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 265
    .line 266
    .line 267
    const-string v0, "  "

    .line 268
    .line 269
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const-string/jumbo v0, "power_check_max_cpu_3"

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    const-string v0, "="

    .line 279
    .line 280
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    .line 284
    .line 285
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 286
    .line 287
    .line 288
    const-string v0, "  "

    .line 289
    .line 290
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    const-string/jumbo v0, "power_check_max_cpu_4"

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string v0, "="

    .line 300
    .line 301
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    .line 305
    .line 306
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 307
    .line 308
    .line 309
    const-string v0, "  "

    .line 310
    .line 311
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    const-string/jumbo v0, "service_usage_interaction_time"

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    const-string v0, "="

    .line 321
    .line 322
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 326
    .line 327
    const-string v2, "  "

    .line 328
    .line 329
    const-string/jumbo v3, "service_usage_interaction_time_post_s"

    .line 330
    .line 331
    .line 332
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string v0, "="

    .line 336
    .line 337
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    .line 341
    .line 342
    const-string v2, "  "

    .line 343
    .line 344
    const-string/jumbo v3, "usage_stats_interaction_interval"

    .line 345
    .line 346
    .line 347
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    const-string v0, "="

    .line 351
    .line 352
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 356
    .line 357
    const-string v2, "  "

    .line 358
    .line 359
    const-string/jumbo v3, "usage_stats_interaction_interval_post_s"

    .line 360
    .line 361
    .line 362
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    const-string v0, "="

    .line 366
    .line 367
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    .line 371
    .line 372
    const-string v2, "  "

    .line 373
    .line 374
    const-string/jumbo v3, "service_restart_duration"

    .line 375
    .line 376
    .line 377
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    const-string v0, "="

    .line 381
    .line 382
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 386
    .line 387
    const-string v2, "  "

    .line 388
    .line 389
    const-string/jumbo v3, "service_reset_run_duration"

    .line 390
    .line 391
    .line 392
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    const-string v0, "="

    .line 396
    .line 397
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 401
    .line 402
    const-string v2, "  "

    .line 403
    .line 404
    const-string/jumbo v3, "service_restart_duration_factor"

    .line 405
    .line 406
    .line 407
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    const-string v0, "="

    .line 411
    .line 412
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    .line 416
    .line 417
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 418
    .line 419
    .line 420
    const-string v0, "  "

    .line 421
    .line 422
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    const-string/jumbo v0, "service_min_restart_time_between"

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    const-string v0, "="

    .line 432
    .line 433
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 437
    .line 438
    const-string v2, "  "

    .line 439
    .line 440
    const-string/jumbo v3, "service_max_inactivity"

    .line 441
    .line 442
    .line 443
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    const-string v0, "="

    .line 447
    .line 448
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    .line 452
    .line 453
    const-string v2, "  "

    .line 454
    .line 455
    const-string/jumbo v3, "service_bg_start_timeout"

    .line 456
    .line 457
    .line 458
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    const-string v0, "="

    .line 462
    .line 463
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    .line 467
    .line 468
    const-string v2, "  "

    .line 469
    .line 470
    const-string/jumbo v3, "service_bg_activity_start_timeout"

    .line 471
    .line 472
    .line 473
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    const-string v0, "="

    .line 477
    .line 478
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    .line 482
    .line 483
    const-string v2, "  "

    .line 484
    .line 485
    const-string/jumbo v3, "service_crash_restart_duration"

    .line 486
    .line 487
    .line 488
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    const-string v0, "="

    .line 492
    .line 493
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    .line 497
    .line 498
    const-string v2, "  "

    .line 499
    .line 500
    const-string/jumbo v3, "service_crash_max_retry"

    .line 501
    .line 502
    .line 503
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    const-string v0, "="

    .line 507
    .line 508
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    .line 512
    .line 513
    const-string v2, "  "

    .line 514
    .line 515
    const-string/jumbo v3, "process_start_async"

    .line 516
    .line 517
    .line 518
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    const-string v0, "="

    .line 522
    .line 523
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    .line 527
    .line 528
    const-string v1, "  "

    .line 529
    .line 530
    const-string/jumbo v2, "memory_info_throttle_time"

    .line 531
    .line 532
    .line 533
    const-string v3, "="

    .line 534
    .line 535
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    .line 539
    .line 540
    const-string v2, "  "

    .line 541
    .line 542
    const-string/jumbo v3, "top_to_fgs_grace_duration"

    .line 543
    .line 544
    .line 545
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    const-string v0, "="

    .line 549
    .line 550
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    .line 554
    .line 555
    const-string v2, "  "

    .line 556
    .line 557
    const-string/jumbo v3, "top_to_almost_perceptible_grace_duration"

    .line 558
    .line 559
    .line 560
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    const-string v0, "="

    .line 564
    .line 565
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    .line 569
    .line 570
    const-string v2, "  "

    .line 571
    .line 572
    const-string/jumbo v3, "min_crash_interval"

    .line 573
    .line 574
    .line 575
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    const-string v0, "="

    .line 579
    .line 580
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 584
    .line 585
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 586
    .line 587
    .line 588
    const-string v0, "  "

    .line 589
    .line 590
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    const-string/jumbo v0, "process_crash_count_reset_interval"

    .line 594
    .line 595
    .line 596
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    const-string v0, "="

    .line 600
    .line 601
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    .line 605
    .line 606
    const-string v2, "  "

    .line 607
    .line 608
    const-string/jumbo v3, "process_crash_count_limit"

    .line 609
    .line 610
    .line 611
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    const-string v0, "="

    .line 615
    .line 616
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    .line 620
    .line 621
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 622
    .line 623
    .line 624
    const-string v0, "  "

    .line 625
    .line 626
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    const-string/jumbo v0, "imperceptible_kill_exempt_proc_states"

    .line 630
    .line 631
    .line 632
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    const-string v0, "="

    .line 636
    .line 637
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    .line 641
    .line 642
    invoke-virtual {v0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    const-string v0, "  "

    .line 654
    .line 655
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    const-string/jumbo v0, "imperceptible_kill_exempt_packages"

    .line 659
    .line 660
    .line 661
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    const-string v0, "="

    .line 665
    .line 666
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    .line 670
    .line 671
    invoke-virtual {v0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    const-string v0, "  "

    .line 683
    .line 684
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    const-string/jumbo v0, "min_assoc_log_duration"

    .line 688
    .line 689
    .line 690
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    const-string v0, "="

    .line 694
    .line 695
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    .line 699
    .line 700
    const-string v2, "  "

    .line 701
    .line 702
    const-string/jumbo v3, "binder_heavy_hitter_watcher_enabled"

    .line 703
    .line 704
    .line 705
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    const-string v0, "="

    .line 709
    .line 710
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    .line 714
    .line 715
    const-string v1, "  "

    .line 716
    .line 717
    const-string/jumbo v2, "binder_heavy_hitter_watcher_batchsize"

    .line 718
    .line 719
    .line 720
    const-string v3, "="

    .line 721
    .line 722
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    .line 726
    .line 727
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 728
    .line 729
    .line 730
    const-string v0, "  "

    .line 731
    .line 732
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    const-string/jumbo v0, "binder_heavy_hitter_watcher_threshold"

    .line 736
    .line 737
    .line 738
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    const-string v0, "="

    .line 742
    .line 743
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 747
    .line 748
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 749
    .line 750
    .line 751
    const-string v0, "  "

    .line 752
    .line 753
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    const-string/jumbo v0, "binder_heavy_hitter_auto_sampler_enabled"

    .line 757
    .line 758
    .line 759
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    const-string v0, "="

    .line 763
    .line 764
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    .line 768
    .line 769
    const-string v1, "  "

    .line 770
    .line 771
    const-string/jumbo v2, "binder_heavy_hitter_auto_sampler_batchsize"

    .line 772
    .line 773
    .line 774
    const-string v3, "="

    .line 775
    .line 776
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    .line 780
    .line 781
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 782
    .line 783
    .line 784
    const-string v0, "  "

    .line 785
    .line 786
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    const-string/jumbo v0, "binder_heavy_hitter_auto_sampler_threshold"

    .line 790
    .line 791
    .line 792
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    const-string v0, "="

    .line 796
    .line 797
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

    .line 801
    .line 802
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 803
    .line 804
    .line 805
    const-string v0, "  "

    .line 806
    .line 807
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    const-string/jumbo v0, "max_phantom_processes"

    .line 811
    .line 812
    .line 813
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    const-string v0, "="

    .line 817
    .line 818
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    .line 822
    .line 823
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 824
    .line 825
    .line 826
    const-string v0, "  "

    .line 827
    .line 828
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    const-string/jumbo v0, "boot_time_temp_allowlist_duration"

    .line 832
    .line 833
    .line 834
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    const-string v0, "="

    .line 838
    .line 839
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    .line 843
    .line 844
    const-string v2, "  "

    .line 845
    .line 846
    const-string/jumbo v3, "fg_to_bg_fgs_grace_duration"

    .line 847
    .line 848
    .line 849
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    const-string v0, "="

    .line 853
    .line 854
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    .line 858
    .line 859
    const-string v2, "  "

    .line 860
    .line 861
    const-string/jumbo v3, "fgs_start_foreground_timeout"

    .line 862
    .line 863
    .line 864
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    const-string v0, "="

    .line 868
    .line 869
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    .line 873
    .line 874
    const-string v2, "  "

    .line 875
    .line 876
    const-string/jumbo v3, "default_background_activity_starts_enabled"

    .line 877
    .line 878
    .line 879
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    const-string v0, "="

    .line 883
    .line 884
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    .line 888
    .line 889
    const-string v1, "  "

    .line 890
    .line 891
    const-string/jumbo v2, "default_background_fgs_starts_restriction_enabled"

    .line 892
    .line 893
    .line 894
    const-string v3, "="

    .line 895
    .line 896
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    .line 900
    .line 901
    const-string v1, "  "

    .line 902
    .line 903
    const-string/jumbo v2, "default_fgs_starts_restriction_enabled"

    .line 904
    .line 905
    .line 906
    const-string v3, "="

    .line 907
    .line 908
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    .line 912
    .line 913
    const-string v1, "  "

    .line 914
    .line 915
    const-string/jumbo v2, "default_fgs_starts_restriction_notification_enabled"

    .line 916
    .line 917
    .line 918
    const-string v3, "="

    .line 919
    .line 920
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    .line 924
    .line 925
    const-string v1, "  "

    .line 926
    .line 927
    const-string/jumbo v2, "default_fgs_starts_restriction_check_caller_target_sdk"

    .line 928
    .line 929
    .line 930
    const-string v3, "="

    .line 931
    .line 932
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    .line 936
    .line 937
    const-string v1, "  "

    .line 938
    .line 939
    const-string/jumbo v2, "fgs_atom_sample_rate"

    .line 940
    .line 941
    .line 942
    const-string v3, "="

    .line 943
    .line 944
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    .line 946
    .line 947
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    .line 948
    .line 949
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 950
    .line 951
    .line 952
    const-string v0, "  "

    .line 953
    .line 954
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    const-string/jumbo v0, "fgs_start_allowed_log_sample_rate"

    .line 958
    .line 959
    .line 960
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    const-string v0, "="

    .line 964
    .line 965
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    .line 969
    .line 970
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 971
    .line 972
    .line 973
    const-string v0, "  "

    .line 974
    .line 975
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 976
    .line 977
    .line 978
    const-string/jumbo v0, "fgs_start_denied_log_sample_rate"

    .line 979
    .line 980
    .line 981
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    const-string v0, "="

    .line 985
    .line 986
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 987
    .line 988
    .line 989
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    .line 990
    .line 991
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 992
    .line 993
    .line 994
    const-string v0, "  "

    .line 995
    .line 996
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 997
    .line 998
    .line 999
    const-string/jumbo v0, "push_messaging_over_quota_behavior"

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1003
    .line 1004
    .line 1005
    const-string v0, "="

    .line 1006
    .line 1007
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 1011
    .line 1012
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1013
    .line 1014
    .line 1015
    const-string v0, "  "

    .line 1016
    .line 1017
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1018
    .line 1019
    .line 1020
    const-string/jumbo v0, "fgs_allow_opt_out"

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1024
    .line 1025
    .line 1026
    const-string v0, "="

    .line 1027
    .line 1028
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    .line 1032
    .line 1033
    const-string v1, "  "

    .line 1034
    .line 1035
    const-string/jumbo v2, "enable_experimental_component_alias"

    .line 1036
    .line 1037
    .line 1038
    const-string v3, "="

    .line 1039
    .line 1040
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    .line 1042
    .line 1043
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    .line 1044
    .line 1045
    const-string v1, "  "

    .line 1046
    .line 1047
    const-string/jumbo v2, "component_alias_overrides"

    .line 1048
    .line 1049
    .line 1050
    const-string v3, "="

    .line 1051
    .line 1052
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    .line 1054
    .line 1055
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    .line 1056
    .line 1057
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    .line 1059
    .line 1060
    const-string v0, "  "

    .line 1061
    .line 1062
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    const-string/jumbo v0, "defer_boot_completed_broadcast"

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1069
    .line 1070
    .line 1071
    const-string v0, "="

    .line 1072
    .line 1073
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    .line 1077
    .line 1078
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1079
    .line 1080
    .line 1081
    const-string v0, "  "

    .line 1082
    .line 1083
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1084
    .line 1085
    .line 1086
    const-string/jumbo v0, "prioritize_alarm_broadcasts"

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1090
    .line 1091
    .line 1092
    const-string v0, "="

    .line 1093
    .line 1094
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1095
    .line 1096
    .line 1097
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPrioritizeAlarmBroadcasts:Z

    .line 1098
    .line 1099
    const-string v1, "  "

    .line 1100
    .line 1101
    const-string/jumbo v2, "no_kill_cached_processes_until_boot_completed"

    .line 1102
    .line 1103
    .line 1104
    const-string v3, "="

    .line 1105
    .line 1106
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    .line 1110
    .line 1111
    const-string v1, "  "

    .line 1112
    .line 1113
    const-string/jumbo v2, "no_kill_cached_processes_post_boot_completed_duration_millis"

    .line 1114
    .line 1115
    .line 1116
    const-string v3, "="

    .line 1117
    .line 1118
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    .line 1122
    .line 1123
    const-string v2, "  "

    .line 1124
    .line 1125
    const-string/jumbo v3, "max_empty_time_millis"

    .line 1126
    .line 1127
    .line 1128
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    .line 1130
    .line 1131
    const-string v0, "="

    .line 1132
    .line 1133
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1134
    .line 1135
    .line 1136
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    .line 1137
    .line 1138
    const-string v2, "  "

    .line 1139
    .line 1140
    const-string/jumbo v3, "service_start_foreground_timeout_ms"

    .line 1141
    .line 1142
    .line 1143
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    .line 1145
    .line 1146
    const-string v0, "="

    .line 1147
    .line 1148
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1149
    .line 1150
    .line 1151
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    .line 1152
    .line 1153
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1154
    .line 1155
    .line 1156
    const-string v0, "  "

    .line 1157
    .line 1158
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1159
    .line 1160
    .line 1161
    const-string/jumbo v0, "service_start_foreground_anr_delay_ms"

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1165
    .line 1166
    .line 1167
    const-string v0, "="

    .line 1168
    .line 1169
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1170
    .line 1171
    .line 1172
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    .line 1173
    .line 1174
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1175
    .line 1176
    .line 1177
    const-string v0, "  "

    .line 1178
    .line 1179
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    const-string/jumbo v0, "service_bind_almost_perceptible_timeout_ms"

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1186
    .line 1187
    .line 1188
    const-string v0, "="

    .line 1189
    .line 1190
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    .line 1194
    .line 1195
    const-string v2, "  "

    .line 1196
    .line 1197
    const-string/jumbo v3, "network_access_timeout_ms"

    .line 1198
    .line 1199
    .line 1200
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    .line 1202
    .line 1203
    const-string v0, "="

    .line 1204
    .line 1205
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    .line 1209
    .line 1210
    const-string v2, "  "

    .line 1211
    .line 1212
    const-string/jumbo v3, "max_service_connections_per_process"

    .line 1213
    .line 1214
    .line 1215
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    .line 1217
    .line 1218
    const-string v0, "="

    .line 1219
    .line 1220
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1221
    .line 1222
    .line 1223
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMaxServiceConnectionsPerProcess:I

    .line 1224
    .line 1225
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1226
    .line 1227
    .line 1228
    const-string v0, "  "

    .line 1229
    .line 1230
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1231
    .line 1232
    .line 1233
    const-string/jumbo v0, "proactive_kills_enabled"

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1237
    .line 1238
    .line 1239
    const-string v0, "="

    .line 1240
    .line 1241
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1242
    .line 1243
    .line 1244
    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    .line 1245
    .line 1246
    const-string v1, "  "

    .line 1247
    .line 1248
    const-string/jumbo v2, "low_swap_threshold_percent"

    .line 1249
    .line 1250
    .line 1251
    const-string v3, "="

    .line 1252
    .line 1253
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    .line 1255
    .line 1256
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    .line 1257
    .line 1258
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1259
    .line 1260
    .line 1261
    const-string v0, "  "

    .line 1262
    .line 1263
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    const-string/jumbo v0, "deferred_fgs_notifications_enabled"

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1270
    .line 1271
    .line 1272
    const-string v0, "="

    .line 1273
    .line 1274
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1275
    .line 1276
    .line 1277
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    .line 1278
    .line 1279
    const-string v1, "  "

    .line 1280
    .line 1281
    const-string/jumbo v2, "deferred_fgs_notifications_api_gated"

    .line 1282
    .line 1283
    .line 1284
    const-string v3, "="

    .line 1285
    .line 1286
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    .line 1288
    .line 1289
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    .line 1290
    .line 1291
    const-string v1, "  "

    .line 1292
    .line 1293
    const-string/jumbo v2, "deferred_fgs_notification_interval"

    .line 1294
    .line 1295
    .line 1296
    const-string v3, "="

    .line 1297
    .line 1298
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    .line 1300
    .line 1301
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    .line 1302
    .line 1303
    const-string v2, "  "

    .line 1304
    .line 1305
    const-string/jumbo v3, "deferred_fgs_notification_interval_for_short"

    .line 1306
    .line 1307
    .line 1308
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    .line 1310
    .line 1311
    const-string v0, "="

    .line 1312
    .line 1313
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1314
    .line 1315
    .line 1316
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralIntervalForShort:J

    .line 1317
    .line 1318
    const-string v2, "  "

    .line 1319
    .line 1320
    const-string/jumbo v3, "deferred_fgs_notification_exclusion_time"

    .line 1321
    .line 1322
    .line 1323
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    .line 1325
    .line 1326
    const-string v0, "="

    .line 1327
    .line 1328
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1329
    .line 1330
    .line 1331
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    .line 1332
    .line 1333
    const-string v2, "  "

    .line 1334
    .line 1335
    const-string/jumbo v3, "deferred_fgs_notification_exclusion_time_for_short"

    .line 1336
    .line 1337
    .line 1338
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    .line 1340
    .line 1341
    const-string v0, "="

    .line 1342
    .line 1343
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1344
    .line 1345
    .line 1346
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTimeForShort:J

    .line 1347
    .line 1348
    const-string v2, "  "

    .line 1349
    .line 1350
    const-string/jumbo v3, "system_exempt_power_restrictions_enabled"

    .line 1351
    .line 1352
    .line 1353
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    .line 1355
    .line 1356
    const-string v0, "="

    .line 1357
    .line 1358
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1359
    .line 1360
    .line 1361
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    .line 1362
    .line 1363
    const-string v1, "  "

    .line 1364
    .line 1365
    const-string/jumbo v2, "short_fgs_timeout_duration"

    .line 1366
    .line 1367
    .line 1368
    const-string v3, "="

    .line 1369
    .line 1370
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    .line 1372
    .line 1373
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    .line 1374
    .line 1375
    const-string v2, "  "

    .line 1376
    .line 1377
    const-string/jumbo v3, "short_fgs_proc_state_extra_wait_duration"

    .line 1378
    .line 1379
    .line 1380
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    .line 1382
    .line 1383
    const-string v0, "="

    .line 1384
    .line 1385
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1386
    .line 1387
    .line 1388
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsProcStateExtraWaitDuration:J

    .line 1389
    .line 1390
    const-string v2, "  "

    .line 1391
    .line 1392
    const-string/jumbo v3, "short_fgs_anr_extra_wait_duration"

    .line 1393
    .line 1394
    .line 1395
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    .line 1397
    .line 1398
    const-string v0, "="

    .line 1399
    .line 1400
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1401
    .line 1402
    .line 1403
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsAnrExtraWaitDuration:J

    .line 1404
    .line 1405
    const-string v2, "  "

    .line 1406
    .line 1407
    const-string/jumbo v3, "media_processing_fgs_timeout_duration"

    .line 1408
    .line 1409
    .line 1410
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    .line 1412
    .line 1413
    const-string v0, "="

    .line 1414
    .line 1415
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1416
    .line 1417
    .line 1418
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    .line 1419
    .line 1420
    const-string v2, "  "

    .line 1421
    .line 1422
    const-string/jumbo v3, "data_sync_fgs_timeout_duration"

    .line 1423
    .line 1424
    .line 1425
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    .line 1427
    .line 1428
    const-string v0, "="

    .line 1429
    .line 1430
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1431
    .line 1432
    .line 1433
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    .line 1434
    .line 1435
    const-string v2, "  "

    .line 1436
    .line 1437
    const-string/jumbo v3, "fgs_crash_extra_wait_duration"

    .line 1438
    .line 1439
    .line 1440
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    .line 1442
    .line 1443
    const-string v0, "="

    .line 1444
    .line 1445
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1446
    .line 1447
    .line 1448
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsCrashExtraWaitDuration:J

    .line 1449
    .line 1450
    const-string v2, "  "

    .line 1451
    .line 1452
    const-string/jumbo v3, "use_tiered_cached_adj"

    .line 1453
    .line 1454
    .line 1455
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    .line 1457
    .line 1458
    const-string v0, "="

    .line 1459
    .line 1460
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1461
    .line 1462
    .line 1463
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    .line 1464
    .line 1465
    const-string v1, "  "

    .line 1466
    .line 1467
    const-string/jumbo v2, "tiered_cached_adj_decay_time"

    .line 1468
    .line 1469
    .line 1470
    const-string v3, "="

    .line 1471
    .line 1472
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    .line 1474
    .line 1475
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    .line 1476
    .line 1477
    const-string v2, "  "

    .line 1478
    .line 1479
    const-string/jumbo v3, "enable_new_oom_adj"

    .line 1480
    .line 1481
    .line 1482
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    .line 1484
    .line 1485
    const-string v0, "="

    .line 1486
    .line 1487
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1488
    .line 1489
    .line 1490
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_NEW_OOMADJ:Z

    .line 1491
    .line 1492
    const-string v1, "  "

    .line 1493
    .line 1494
    const-string/jumbo v2, "disable_app_profiler_pss_profiling"

    .line 1495
    .line 1496
    .line 1497
    const-string v3, "="

    .line 1498
    .line 1499
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    .line 1501
    .line 1502
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    .line 1503
    .line 1504
    const-string v1, "  "

    .line 1505
    .line 1506
    const-string/jumbo v2, "pss_to_rss_threshold_modifier"

    .line 1507
    .line 1508
    .line 1509
    const-string v3, "="

    .line 1510
    .line 1511
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    .line 1513
    .line 1514
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    .line 1515
    .line 1516
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1517
    .line 1518
    .line 1519
    const-string v0, "  "

    .line 1520
    .line 1521
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1522
    .line 1523
    .line 1524
    const-string/jumbo v0, "max_previous_time"

    .line 1525
    .line 1526
    .line 1527
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1528
    .line 1529
    .line 1530
    const-string v0, "="

    .line 1531
    .line 1532
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1533
    .line 1534
    .line 1535
    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    .line 1536
    .line 1537
    const-string v2, "  "

    .line 1538
    .line 1539
    const-string/jumbo v3, "enable_batching_oom_adj"

    .line 1540
    .line 1541
    .line 1542
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    .line 1544
    .line 1545
    const-string v0, "="

    .line 1546
    .line 1547
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1548
    .line 1549
    .line 1550
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    .line 1551
    .line 1552
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1553
    .line 1554
    .line 1555
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1556
    .line 1557
    .line 1558
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 1559
    .line 1560
    if-ltz v0, :cond_0

    .line 1561
    .line 1562
    const-string v0, "  mOverrideMaxCachedProcesses="

    .line 1563
    .line 1564
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1565
    .line 1566
    .line 1567
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 1568
    .line 1569
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1570
    .line 1571
    .line 1572
    :cond_0
    const-string v0, "  mCustomizedMaxCachedProcesses="

    .line 1573
    .line 1574
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1575
    .line 1576
    .line 1577
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    .line 1578
    .line 1579
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1580
    .line 1581
    .line 1582
    const-string v0, "  CUR_MAX_CACHED_PROCESSES="

    .line 1583
    .line 1584
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1585
    .line 1586
    .line 1587
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 1588
    .line 1589
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1590
    .line 1591
    .line 1592
    const-string v0, "  CUR_MAX_EMPTY_PROCESSES="

    .line 1593
    .line 1594
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1595
    .line 1596
    .line 1597
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 1598
    .line 1599
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1600
    .line 1601
    .line 1602
    const-string v0, "  CUR_TRIM_EMPTY_PROCESSES="

    .line 1603
    .line 1604
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1605
    .line 1606
    .line 1607
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 1608
    .line 1609
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1610
    .line 1611
    .line 1612
    const-string v0, "  CUR_TRIM_CACHED_PROCESSES="

    .line 1613
    .line 1614
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1615
    .line 1616
    .line 1617
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 1618
    .line 1619
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1620
    .line 1621
    .line 1622
    const-string v0, "  OOMADJ_UPDATE_QUICK="

    .line 1623
    .line 1624
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1625
    .line 1626
    .line 1627
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    .line 1628
    .line 1629
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1630
    .line 1631
    .line 1632
    const-string v0, "  ENABLE_WAIT_FOR_FINISH_ATTACH_APPLICATION="

    .line 1633
    .line 1634
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1635
    .line 1636
    .line 1637
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableWaitForFinishAttachApplication:Z

    .line 1638
    .line 1639
    const-string v1, "  "

    .line 1640
    .line 1641
    const-string/jumbo v2, "follow_up_oomadj_update_wait_duration"

    .line 1642
    .line 1643
    .line 1644
    const-string v3, "="

    .line 1645
    .line 1646
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    .line 1648
    .line 1649
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    .line 1650
    .line 1651
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 1652
    .line 1653
    .line 1654
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    .line 1655
    .line 1656
    monitor-enter v0

    .line 1657
    :try_start_0
    const-string v1, "  "

    .line 1658
    .line 1659
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1660
    .line 1661
    .line 1662
    const-string/jumbo v1, "proc_state_debug_uids"

    .line 1663
    .line 1664
    .line 1665
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1666
    .line 1667
    .line 1668
    const-string v1, "="

    .line 1669
    .line 1670
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1671
    .line 1672
    .line 1673
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    .line 1674
    .line 1675
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1676
    .line 1677
    .line 1678
    const-string v1, "    uid-state-delay="

    .line 1679
    .line 1680
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1681
    .line 1682
    .line 1683
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    .line 1684
    .line 1685
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1686
    .line 1687
    .line 1688
    const-string v1, "    proc-state-delay="

    .line 1689
    .line 1690
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1691
    .line 1692
    .line 1693
    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    .line 1694
    .line 1695
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 1696
    .line 1697
    .line 1698
    monitor-exit v0

    .line 1699
    return-void

    .line 1700
    :catchall_0
    move-exception p0

    .line 1701
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1702
    throw p0
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 27
    .line 28
    const-string p2, "activity_starts_logging_enabled"

    .line 29
    .line 30
    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-ne p1, v1, :cond_2

    .line 35
    .line 36
    move v0, v1

    .line 37
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagActivityStartsLoggingEnabled:Z

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 49
    .line 50
    const-string/jumbo p1, "foreground_service_starts_logging_enabled"

    .line 51
    .line 52
    .line 53
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableAutomaticSystemServerHeapDumps()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->FORCE_ENABLE_PSS_PROFILING_URI:Landroid/net/Uri;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_7

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 78
    .line 79
    const-string/jumbo p2, "force_enable_pss_profiling"

    .line 80
    .line 81
    .line 82
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-ne p1, v1, :cond_6

    .line 87
    .line 88
    move v0, v1

    .line 89
    :cond_6
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mForceEnablePssProfiling:Z

    .line 90
    .line 91
    :cond_7
    :goto_0
    return-void
.end method

.method public final updateConstants()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    const-string v1, "activity_manager_constants"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :catch_0
    move-exception v0

    .line 25
    :try_start_1
    const-string v2, "ActivityManagerConstants"

    .line 26
    .line 27
    const-string v3, "Bad activity manager config settings"

    .line 28
    .line 29
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 35
    .line 36
    const-string/jumbo v4, "background_settle_time"

    .line 37
    .line 38
    .line 39
    const-wide/32 v5, 0xea60

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v7

    .line 46
    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 49
    .line 50
    const-string/jumbo v4, "fgservice_min_shown_time"

    .line 51
    .line 52
    .line 53
    const-wide/16 v7, 0x7d0

    .line 54
    .line 55
    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v7

    .line 59
    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 62
    .line 63
    const-string/jumbo v4, "fgservice_min_report_time"

    .line 64
    .line 65
    .line 66
    const-wide/16 v7, 0xbb8

    .line 67
    .line 68
    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 75
    .line 76
    const-string/jumbo v4, "fgservice_screen_on_before_time"

    .line 77
    .line 78
    .line 79
    const-wide/16 v7, 0x3e8

    .line 80
    .line 81
    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v9

    .line 85
    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 88
    .line 89
    const-string/jumbo v4, "fgservice_screen_on_after_time"

    .line 90
    .line 91
    .line 92
    const-wide/16 v9, 0x1388

    .line 93
    .line 94
    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 95
    .line 96
    .line 97
    move-result-wide v11

    .line 98
    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 101
    .line 102
    const-string/jumbo v4, "fgs_boot_completed_allowlist"

    .line 103
    .line 104
    .line 105
    const v11, 0x40000718    # 2.000433f

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGS_BOOT_COMPLETED_ALLOWLIST:I

    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 115
    .line 116
    const-string/jumbo v4, "content_provider_retain_time"

    .line 117
    .line 118
    .line 119
    const-wide/16 v11, 0x4e20

    .line 120
    .line 121
    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 122
    .line 123
    .line 124
    move-result-wide v11

    .line 125
    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 128
    .line 129
    const-string/jumbo v4, "gc_timeout"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 133
    .line 134
    .line 135
    move-result-wide v9

    .line 136
    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 139
    .line 140
    const-string/jumbo v4, "gc_min_interval"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 144
    .line 145
    .line 146
    move-result-wide v9

    .line 147
    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 148
    .line 149
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 150
    .line 151
    const-string/jumbo v4, "full_pss_min_interval"

    .line 152
    .line 153
    .line 154
    const-wide/32 v9, 0x124f80

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 158
    .line 159
    .line 160
    move-result-wide v9

    .line 161
    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    .line 162
    .line 163
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 164
    .line 165
    const-string/jumbo v4, "full_pss_lowered_interval"

    .line 166
    .line 167
    .line 168
    const-wide/32 v9, 0x493e0

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 172
    .line 173
    .line 174
    move-result-wide v11

    .line 175
    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    .line 176
    .line 177
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 178
    .line 179
    const-string/jumbo v4, "power_check_interval"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 183
    .line 184
    .line 185
    move-result-wide v11

    .line 186
    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 187
    .line 188
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 189
    .line 190
    const-string/jumbo v4, "power_check_max_cpu_1"

    .line 191
    .line 192
    .line 193
    const/16 v11, 0x19

    .line 194
    .line 195
    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    .line 200
    .line 201
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 202
    .line 203
    const-string/jumbo v4, "power_check_max_cpu_2"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    .line 211
    .line 212
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 213
    .line 214
    const-string/jumbo v4, "power_check_max_cpu_3"

    .line 215
    .line 216
    .line 217
    const/16 v11, 0xa

    .line 218
    .line 219
    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    .line 224
    .line 225
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 226
    .line 227
    const-string/jumbo v4, "power_check_max_cpu_4"

    .line 228
    .line 229
    .line 230
    const/4 v11, 0x2

    .line 231
    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    .line 236
    .line 237
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 238
    .line 239
    const-string/jumbo v4, "service_usage_interaction_time"

    .line 240
    .line 241
    .line 242
    const-wide/32 v11, 0x1b7740

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 246
    .line 247
    .line 248
    move-result-wide v13

    .line 249
    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 250
    .line 251
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 252
    .line 253
    const-string/jumbo v4, "service_usage_interaction_time_post_s"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 257
    .line 258
    .line 259
    move-result-wide v13

    .line 260
    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    .line 261
    .line 262
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 263
    .line 264
    const-string/jumbo v4, "usage_stats_interaction_interval"

    .line 265
    .line 266
    .line 267
    const-wide/32 v13, 0x6ddd00

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v4, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 271
    .line 272
    .line 273
    move-result-wide v13

    .line 274
    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 275
    .line 276
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 277
    .line 278
    const-string/jumbo v4, "usage_stats_interaction_interval_post_s"

    .line 279
    .line 280
    .line 281
    const-wide/32 v13, 0x927c0

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v4, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 285
    .line 286
    .line 287
    move-result-wide v13

    .line 288
    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    .line 289
    .line 290
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 291
    .line 292
    const-string/jumbo v4, "service_restart_duration"

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 296
    .line 297
    .line 298
    move-result-wide v7

    .line 299
    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 300
    .line 301
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 302
    .line 303
    const-string/jumbo v4, "service_reset_run_duration"

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 307
    .line 308
    .line 309
    move-result-wide v4

    .line 310
    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 311
    .line 312
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 313
    .line 314
    const-string/jumbo v4, "service_restart_duration_factor"

    .line 315
    .line 316
    .line 317
    const/4 v5, 0x4

    .line 318
    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    .line 323
    .line 324
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 325
    .line 326
    const-string/jumbo v4, "service_min_restart_time_between"

    .line 327
    .line 328
    .line 329
    const-wide/16 v5, 0x2710

    .line 330
    .line 331
    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 332
    .line 333
    .line 334
    move-result-wide v7

    .line 335
    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 336
    .line 337
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 338
    .line 339
    const-string/jumbo v4, "service_max_inactivity"

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 343
    .line 344
    .line 345
    move-result-wide v7

    .line 346
    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    .line 347
    .line 348
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 349
    .line 350
    const-string/jumbo v4, "service_bg_start_timeout"

    .line 351
    .line 352
    .line 353
    const-wide/16 v7, 0x3a98

    .line 354
    .line 355
    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 356
    .line 357
    .line 358
    move-result-wide v13

    .line 359
    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    .line 360
    .line 361
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 362
    .line 363
    const-string/jumbo v4, "service_bg_activity_start_timeout"

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 367
    .line 368
    .line 369
    move-result-wide v4

    .line 370
    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    .line 371
    .line 372
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 373
    .line 374
    const-string/jumbo v4, "service_crash_restart_duration"

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 378
    .line 379
    .line 380
    move-result-wide v4

    .line 381
    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    .line 382
    .line 383
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 384
    .line 385
    const-string/jumbo v4, "service_crash_max_retry"

    .line 386
    .line 387
    .line 388
    const/16 v5, 0x10

    .line 389
    .line 390
    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    int-to-long v4, v0

    .line 395
    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    .line 396
    .line 397
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 398
    .line 399
    const-string/jumbo v4, "process_start_async"

    .line 400
    .line 401
    .line 402
    const/4 v5, 0x1

    .line 403
    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    .line 408
    .line 409
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 410
    .line 411
    const-string/jumbo v4, "memory_info_throttle_time"

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 415
    .line 416
    .line 417
    move-result-wide v4

    .line 418
    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    .line 419
    .line 420
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 421
    .line 422
    const-string/jumbo v4, "top_to_almost_perceptible_grace_duration"

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    .line 426
    .line 427
    .line 428
    move-result-wide v4

    .line 429
    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    .line 430
    .line 431
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 432
    .line 433
    const-string/jumbo v4, "min_crash_interval"

    .line 434
    .line 435
    .line 436
    const v5, 0x1d4c0

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 444
    .line 445
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 446
    .line 447
    const-string/jumbo v4, "pendingintent_warning_threshold"

    .line 448
    .line 449
    .line 450
    const/16 v5, 0x7d0

    .line 451
    .line 452
    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    .line 457
    .line 458
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 459
    .line 460
    const-string/jumbo v4, "process_crash_count_reset_interval"

    .line 461
    .line 462
    .line 463
    const v5, 0x2932e00

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    int-to-long v4, v0

    .line 471
    sput-wide v4, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    .line 472
    .line 473
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 474
    .line 475
    const-string/jumbo v4, "process_crash_count_limit"

    .line 476
    .line 477
    .line 478
    const/16 v5, 0xc

    .line 479
    .line 480
    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    .line 485
    .line 486
    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 487
    .line 488
    cmp-long v0, v4, v2

    .line 489
    .line 490
    if-eqz v0, :cond_0

    .line 491
    .line 492
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 493
    .line 494
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 495
    .line 496
    const/16 v2, 0x1b

    .line 497
    .line 498
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    .line 500
    .line 501
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 502
    .line 503
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 504
    .line 505
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 510
    .line 511
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 512
    .line 513
    iget-wide v3, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 514
    .line 515
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 516
    .line 517
    .line 518
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 520
    .line 521
    .line 522
    return-void

    .line 523
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 524
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 525
    .line 526
    .line 527
    throw p0
.end method

.method public final updateEnableAutomaticSystemServerHeapDumps()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "ActivityManagerConstants"

    .line 6
    .line 7
    const-string/jumbo v0, "updateEnableAutomaticSystemServerHeapDumps called when leak detection disabled"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 15
    .line 16
    const-string/jumbo v1, "enable_automatic_system_server_heap_dumps"

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPssThresholdBytes:J

    .line 27
    .line 28
    :goto_0
    move-wide v5, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final updateMaxCachedProcesses()V
    .locals 4

    .line 1
    const-string v0, "activity_manager"

    .line 2
    .line 3
    const-string/jumbo v1, "max_cached_processes"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :try_start_0
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 11
    .line 12
    if-gez v1, :cond_1

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    sget v1, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :cond_1
    :goto_0
    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, "Unable to parse flag for max_cached_processes: "

    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "ActivityManagerConstants"

    .line 47
    .line 48
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 52
    .line 53
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 54
    .line 55
    :goto_2
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 56
    .line 57
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 62
    .line 63
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 64
    .line 65
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 66
    .line 67
    invoke-static {v0, v1}, Ljava/lang/Integer;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    div-int/lit8 v1, v0, 0x2

    .line 76
    .line 77
    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 78
    .line 79
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 80
    .line 81
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 82
    .line 83
    invoke-static {v1, v2}, Ljava/lang/Integer;->min(II)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    sub-int/2addr v1, v0

    .line 88
    div-int/lit8 v1, v1, 0x3

    .line 89
    .line 90
    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 91
    .line 92
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_EMPTY_PROCESSES:I

    .line 93
    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 97
    .line 98
    :cond_2
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_CACHED_PROCESSES:I

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 103
    .line 104
    :cond_3
    return-void
.end method
