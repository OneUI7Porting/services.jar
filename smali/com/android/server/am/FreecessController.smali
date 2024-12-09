.class public final Lcom/android/server/am/FreecessController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static CACHED_RESTRICTED_BINDER:Z

.field public static DEFAULT_RECV_BUFSIZE:I

.field public static FASTOLAF_FEATURE_DEALY_SERVICE:Z

.field public static FASTOLAF_FEATURE_LESSUFZ:Z

.field public static FASTOLAF_FEATURE_MOREFZ:Z

.field public static FASTOLAF_IMPROVE_SPEED:Z

.field public static FASTOLAF_PENDING_JOB:Z

.field public static FASTOLAF_REDUCE_PROTECT_TIME:Z

.field public static FEATURE_SERVICE_GUARD:Z

.field public static final IS_MINIMIZE_OLAF_LOCK:Z

.field public static final IS_SUPPORT_CALM_MODE:Z

.field public static IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

.field public static final NETLINK_KFREECESS:I

.field public static final mCountry:Ljava/lang/String;

.field public static final productModel:Ljava/lang/String;


# instance fields
.field public FREECESS_ENHANCEMENT:Z

.field public FREECESS_LRS_ENABLED:Z

.field public final calmModeFilterList:Ljava/util/Set;

.field public cntFailFreeze:I

.field public cntFailUnfreeze:I

.field public final fastOlafUfzList:Ljava/util/Set;

.field public final filterList:Ljava/util/Set;

.field public mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

.field public final mCalmModeDefaultAllowList:Ljava/util/Set;

.field public mCalmModeEnabled:Z

.field public final mCameraDeviceStateCallback:Lcom/android/server/am/FreecessController$1;

.field public mCarModeOn:Z

.field public final mConfigFreecess:I

.field public mContext:Landroid/content/Context;

.field public final mCtsGtsList:Ljava/util/Set;

.field public mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field public mEmergencyModeOn:Z

.field public final mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

.field public final mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

.field public final mFreezeExcludePackages:Ljava/util/Set;

.field public final mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

.field public final mFrozenPidListSelfLocked:Ljava/util/HashSet;

.field public final mGPSAllowList:Ljava/util/List;

.field public mGameModeEnabled:Z

.field public mGpsDefaultAllowList:Ljava/util/List;

.field public mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public mIsDumpstateWorking:Z

.field public mIsFreecessEnable:Z

.field public mIsKernelSupportFreecess:Z

.field public mIsOLAFEnabled:Z

.field public mIsQuickFreezeEnabled:Z

.field public mIsScreenOnFreecessEnabled:Z

.field public mIsSmartSwitchWorking:Z

.field public mLastTopUid:I

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public mLocationManager:Landroid/location/ILocationManager;

.field public final mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

.field public mMismatchFlag:Z

.field public final mMonitorFreezedList:Ljava/util/ArrayList;

.field public mNMs:Landroid/os/INetworkManagementService;

.field public final mOLAFAllowListForDebug:Ljava/util/ArrayList;

.field public final mOLAFAllowPackagesCommon:Ljava/util/Set;

.field public final mOLAFAllowPackagesGlobal:Ljava/util/Set;

.field public final mOLAFBlockList:Ljava/util/ArrayList;

.field public final mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mOlafTargetPkg:Ljava/lang/String;

.field public mOlafTargetUserId:I

.field public final mPendingBlocklistForGPS:Ljava/util/ArrayList;

.field public final mPendingIntents:Ljava/util/ArrayList;

.field public final mPendingIntentsIdle:Ljava/util/ArrayList;

.field public final mPendingRemoveConnectionMap:Landroid/util/ArrayMap;

.field public mPidUnfreezeEnabled:Z

.field public final mProcessObserver:Lcom/android/server/am/FreecessController$2;

.field public mRecordingEndTime:J

.field public mRecordingStartTime:J

.field public final mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

.field public mScreenOn:Z

.field public mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

.field public final mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

.field public mSkipTriggerLcdOnFreeze:Z

.field public final mSsrmAllowPackages:Ljava/util/Set;

.field public mUidIdleCheck:Z

.field public final olafUfzList:Ljava/util/Set;

.field public olafUnfreezeEstimatedTime:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string/jumbo v0, "sys.config.mars_min_olaf_lock"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    sput-object v2, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    .line 16
    .line 17
    const-string/jumbo v2, "ro.product.model"

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sput-object v2, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    const-string v3, "SM-G98"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const-string v4, "SM-G99"

    .line 35
    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    const-string v3, "SM-N98"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    const-string v3, "SM-S91"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    const-string v3, "SM-S92"

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_1

    .line 70
    .line 71
    const-string v3, "SM-S93"

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    :cond_1
    sput-boolean v1, Lcom/android/server/am/FreecessController;->IS_SUPPORT_CALM_MODE:Z

    .line 80
    .line 81
    :cond_2
    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_PENDING_JOB:Z

    .line 82
    .line 83
    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    .line 84
    .line 85
    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    .line 86
    .line 87
    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    .line 88
    .line 89
    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    .line 90
    .line 91
    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    .line 92
    .line 93
    sput-boolean v0, Lcom/android/server/am/FreecessController;->FEATURE_SERVICE_GUARD:Z

    .line 94
    .line 95
    sput-boolean v0, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    .line 96
    .line 97
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/android/server/am/FreecessController;->mCountry:Ljava/lang/String;

    .line 102
    .line 103
    const/16 v0, 0x1b

    .line 104
    .line 105
    sput v0, Lcom/android/server/am/FreecessController;->NETLINK_KFREECESS:I

    .line 106
    .line 107
    const-string/jumbo v0, "ro.board.platform"

    .line 108
    .line 109
    .line 110
    const-string v1, ""

    .line 111
    .line 112
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    const-string/jumbo v1, "mt"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    const/16 v0, 0x1f

    .line 128
    .line 129
    sput v0, Lcom/android/server/am/FreecessController;->NETLINK_KFREECESS:I

    .line 130
    .line 131
    :cond_3
    const/16 v0, 0x9c

    .line 132
    .line 133
    sput v0, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    .line 134
    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/am/FreecessPkgMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/am/FreecessPkgMap;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/am/FreecessPkgMap;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 48
    .line 49
    const-string/jumbo v2, "sys.config.mars_freecess_lrs"

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    .line 57
    .line 58
    new-instance v2, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 64
    .line 65
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 66
    .line 67
    const-string v2, "4"

    .line 68
    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iput v2, p0, Lcom/android/server/am/FreecessController;->mConfigFreecess:I

    .line 74
    .line 75
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 76
    .line 77
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    .line 80
    .line 81
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 82
    .line 83
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    .line 84
    .line 85
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    .line 86
    .line 87
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    .line 88
    .line 89
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 90
    .line 91
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 92
    .line 93
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    .line 95
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    .line 100
    const-wide/16 v1, 0x0

    .line 101
    .line 102
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iput-object v3, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 107
    .line 108
    sget-object v3, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 109
    .line 110
    iget-object v4, v3, Ljava/com/android/server/am/mars/database/MARsListManager;->mSsrmAllowPackages:Ljava/util/Set;

    .line 111
    .line 112
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    .line 113
    .line 114
    iget-object v4, v3, Ljava/com/android/server/am/mars/database/MARsListManager;->mOLAFAllowPackages:Ljava/util/Set;

    .line 115
    .line 116
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowPackagesCommon:Ljava/util/Set;

    .line 117
    .line 118
    iget-object v4, v3, Ljava/com/android/server/am/mars/database/MARsListManager;->mOLAFAllowPackageGlobal:Ljava/util/Set;

    .line 119
    .line 120
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowPackagesGlobal:Ljava/util/Set;

    .line 121
    .line 122
    iget-object v4, v3, Ljava/com/android/server/am/mars/database/MARsListManager;->mFreezeExcludeList:Ljava/util/Set;

    .line 123
    .line 124
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mFreezeExcludePackages:Ljava/util/Set;

    .line 125
    .line 126
    new-instance v4, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 132
    .line 133
    new-instance v4, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    .line 139
    .line 140
    iget-object v4, v3, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingIntentList:Ljava/util/ArrayList;

    .line 141
    .line 142
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    .line 143
    .line 144
    iget-object v4, v3, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingIntentIdleList:Ljava/util/ArrayList;

    .line 145
    .line 146
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    .line 147
    .line 148
    iget-object v4, v3, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 149
    .line 150
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 151
    .line 152
    iget-object v4, v3, Ljava/com/android/server/am/mars/database/MARsListManager;->mCtsGtsList:Ljava/util/Set;

    .line 153
    .line 154
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mCtsGtsList:Ljava/util/Set;

    .line 155
    .line 156
    new-instance v4, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .line 160
    .line 161
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mGpsDefaultAllowList:Ljava/util/List;

    .line 162
    .line 163
    iget-object v4, v3, Ljava/com/android/server/am/mars/database/MARsListManager;->mFilterList:Ljava/util/Set;

    .line 164
    .line 165
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->filterList:Ljava/util/Set;

    .line 166
    .line 167
    iget-object v4, v3, Ljava/com/android/server/am/mars/database/MARsListManager;->mOlafUfzList:Ljava/util/Set;

    .line 168
    .line 169
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/Set;

    .line 170
    .line 171
    iget-object v4, v3, Ljava/com/android/server/am/mars/database/MARsListManager;->mFastOlafUfzList:Ljava/util/Set;

    .line 172
    .line 173
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->fastOlafUfzList:Ljava/util/Set;

    .line 174
    .line 175
    iget-object v4, v3, Ljava/com/android/server/am/mars/database/MARsListManager;->mCalmModeFilterList:Ljava/util/Set;

    .line 176
    .line 177
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->calmModeFilterList:Ljava/util/Set;

    .line 178
    .line 179
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    .line 181
    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 182
    .line 183
    .line 184
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    .line 186
    const/16 v4, -0xa

    .line 187
    .line 188
    iput v4, p0, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    .line 189
    .line 190
    new-instance v4, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .line 194
    .line 195
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;

    .line 196
    .line 197
    new-instance v4, Lcom/android/server/am/FreecessController$UidPidMap;

    .line 198
    .line 199
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 200
    .line 201
    .line 202
    new-instance v5, Landroid/util/ArrayMap;

    .line 203
    .line 204
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 205
    .line 206
    .line 207
    iput-object v5, v4, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    .line 208
    .line 209
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 210
    .line 211
    new-instance v4, Lcom/android/server/am/FreecessController$1;

    .line 212
    .line 213
    invoke-direct {v4, p0}, Lcom/android/server/am/FreecessController$1;-><init>(Lcom/android/server/am/FreecessController;)V

    .line 214
    .line 215
    .line 216
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mCameraDeviceStateCallback:Lcom/android/server/am/FreecessController$1;

    .line 217
    .line 218
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 219
    .line 220
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mGameModeEnabled:Z

    .line 221
    .line 222
    iget-object v3, v3, Ljava/com/android/server/am/mars/database/MARsListManager;->mCalmModeDefaultList:Ljava/util/Set;

    .line 223
    .line 224
    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mCalmModeDefaultAllowList:Ljava/util/Set;

    .line 225
    .line 226
    const/4 v3, 0x0

    .line 227
    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    .line 228
    .line 229
    new-instance v4, Lcom/android/server/am/FreecessController$2;

    .line 230
    .line 231
    invoke-direct {v4, p0}, Lcom/android/server/am/FreecessController$2;-><init>(Lcom/android/server/am/FreecessController;)V

    .line 232
    .line 233
    .line 234
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mProcessObserver:Lcom/android/server/am/FreecessController$2;

    .line 235
    .line 236
    iput-wide v1, p0, Lcom/android/server/am/FreecessController;->mRecordingStartTime:J

    .line 237
    .line 238
    iput-wide v1, p0, Lcom/android/server/am/FreecessController;->mRecordingEndTime:J

    .line 239
    .line 240
    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 241
    .line 242
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mMismatchFlag:Z

    .line 243
    .line 244
    new-instance v0, Landroid/util/ArrayMap;

    .line 245
    .line 246
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 247
    .line 248
    .line 249
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingRemoveConnectionMap:Landroid/util/ArrayMap;

    .line 250
    .line 251
    return-void
.end method

.method public static checkFgsPkgSkipToFreeze(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->getForegroundServiceStartTime(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 23
    .line 24
    iget v4, p0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 27
    .line 28
    const-string v6, ") is important[fg-service]"

    .line 29
    .line 30
    const-string v7, "("

    .line 31
    .line 32
    const-string v8, "FreecessController"

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const v0, 0x40001e21

    .line 43
    .line 44
    .line 45
    iget p0, p0, Lcom/android/server/am/FreecessPkgStatus;->serviceTypes:I

    .line 46
    .line 47
    and-int/2addr p0, v0

    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, " has important fgs type according Google fg Api , skip to freeze it. "

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v8, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    return v2

    .line 95
    :cond_2
    if-eqz v0, :cond_3

    .line 96
    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    return v2

    .line 122
    :cond_3
    return v1
.end method

.method public static convertLevelChangeInfoToString(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, " "

    .line 11
    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    const-string v1, "[OLAF] "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-lez p0, :cond_1

    .line 42
    .line 43
    const-string p0, "[IMP] "

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method

.method public static formatDateTime(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "null"

    .line 8
    .line 9
    .line 10
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string p1, "%23s"

    .line 15
    .line 16
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 22
    .line 23
    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss.SSS"

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/util/Date;

    .line 30
    .line 31
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static freezeTargetProcess(ILjava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    const-string v1, "android.app.stubs"

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string/jumbo v1, "com.android.app.cts."

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    :cond_0
    return v0

    .line 22
    :cond_1
    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    return v0

    .line 29
    :cond_2
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public static isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    iget v1, p0, Lcom/android/server/am/FreecessPkgStatus;->targetSdkVersion:I

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v3, 0x22

    .line 9
    .line 10
    const-string v4, "FreecessController"

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    if-lt v1, v3, :cond_1

    .line 14
    .line 15
    iget v1, p0, Lcom/android/server/am/FreecessPkgStatus;->serviceTypes:I

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " china model, freeze fgs app exclude important task. "

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return v0

    .line 44
    :cond_0
    return v5

    .line 45
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    return v5

    .line 50
    :cond_2
    iget v1, p0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 51
    .line 52
    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_5

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget p0, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    .line 64
    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, " is doing GC, skip to freeze it."

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return v5

    .line 88
    :cond_4
    sget-object p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBTAllowList:Ljava/util/List;

    .line 95
    .line 96
    if-eqz p0, :cond_6

    .line 97
    .line 98
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_6

    .line 103
    .line 104
    :cond_5
    :goto_0
    return v5

    .line 105
    :cond_6
    return v0
.end method

.method public static shouldSkipShareUid()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public static updateFrozenStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 28
    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public canUidBeFrozen(Ljava/util/ArrayList;Lcom/android/server/am/FreecessController$checkResultCallback;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->checkProcDiedOrComponentExecutingForFreeze(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    packed-switch p0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    const-string p0, "UNKNOWN"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_0
    const-string p0, "BTOP"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_1
    const-string p0, "RL"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_2
    const-string p0, "FG"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_3
    const-string p0, "SP"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_4
    const-string p0, "LP"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_5
    const-string p0, "RI"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_6
    const-string p0, "ES"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_7
    const-string p0, "AD"

    .line 52
    .line 53
    :goto_0
    if-eqz p2, :cond_1

    .line 54
    .line 55
    invoke-interface {p2, p0}, Lcom/android/server/am/FreecessController$checkResultCallback;->freezeSkipFrozen(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return v0

    .line 59
    :cond_2
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 62
    .line 63
    const-string p0, "NP"

    .line 64
    .line 65
    invoke-interface {p2, p0}, Lcom/android/server/am/FreecessController$checkResultCallback;->freezeSkipFrozen(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    return v0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
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

.method public final cancelCalmMode()V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-ge v4, v5, :cond_3

    .line 24
    .line 25
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/android/server/am/FreecessPkgStatus;

    .line 30
    .line 31
    sget-object v6, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 32
    .line 33
    iget-object v7, v5, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 34
    .line 35
    iget v8, v5, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 36
    .line 37
    invoke-virtual {v6, v8, v7}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    iget-object v8, v5, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 42
    .line 43
    iget v9, v5, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 44
    .line 45
    invoke-virtual {v6, v9, v8}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    if-eqz v7, :cond_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    iget-boolean v6, v5, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 55
    .line 56
    if-eqz v6, :cond_2

    .line 57
    .line 58
    iput-boolean v3, v5, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto/16 :goto_9

    .line 63
    .line 64
    :cond_1
    :goto_1
    const-string v6, "CalmMode"

    .line 65
    .line 66
    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/FreecessController;->unFreezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    iget v5, v5, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 75
    .line 76
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v5, " "

    .line 80
    .line 81
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    sget-object v1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 96
    .line 97
    iget-object v1, v1, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 98
    .line 99
    if-nez v1, :cond_4

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    const/16 v2, 0x16

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    .line 106
    .line 107
    :goto_3
    iput-boolean v3, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 108
    .line 109
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v2, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 125
    .line 126
    monitor-enter v4

    .line 127
    move v5, v3

    .line 128
    :goto_4
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 129
    .line 130
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 131
    .line 132
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-ge v5, v6, :cond_8

    .line 137
    .line 138
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 139
    .line 140
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 141
    .line 142
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    check-cast v6, Landroid/util/SparseArray;

    .line 147
    .line 148
    move v7, v3

    .line 149
    :goto_5
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-ge v7, v8, :cond_7

    .line 154
    .line 155
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    check-cast v8, Lcom/android/server/am/MARsPackageInfo;

    .line 160
    .line 161
    iput v3, v8, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 162
    .line 163
    iget-object v9, v8, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 164
    .line 165
    if-eqz v9, :cond_5

    .line 166
    .line 167
    iget v9, v9, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 168
    .line 169
    const/16 v10, 0x9

    .line 170
    .line 171
    if-ne v9, v10, :cond_5

    .line 172
    .line 173
    const/4 v9, 0x0

    .line 174
    iput-object v9, v8, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 175
    .line 176
    goto :goto_6

    .line 177
    :catchall_1
    move-exception p0

    .line 178
    goto :goto_8

    .line 179
    :cond_5
    :goto_6
    iget-object v9, v8, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 180
    .line 181
    if-nez v9, :cond_6

    .line 182
    .line 183
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_8
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-ge v3, v5, :cond_9

    .line 197
    .line 198
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    .line 203
    .line 204
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 205
    .line 206
    iget-object v7, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 207
    .line 208
    iget v8, v5, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 209
    .line 210
    invoke-virtual {v6, v8, v7}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    iget v5, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 219
    .line 220
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v5, " "

    .line 224
    .line 225
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    add-int/lit8 v3, v3, 0x1

    .line 236
    .line 237
    goto :goto_7

    .line 238
    :cond_9
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    const-string v2, "Calm"

    .line 240
    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v4, "CancelPolicy-"

    .line 244
    .line 245
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v1, " UFZ-"

    .line 256
    .line 257
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :goto_8
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 276
    throw p0

    .line 277
    :goto_9
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    throw p0
.end method

.method public final closeSocketsForFreecessFirewallChain()V
    .locals 5

    .line 1
    const-string v0, "Error occured while closeSocketsForFreecessFirewallChain: "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    const-string/jumbo v3, "network_management"

    .line 12
    .line 13
    .line 14
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    :try_start_0
    const-string/jumbo v3, "fw_oem_deny_1"

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x7

    .line 32
    invoke-interface {p0, v4, v3}, Landroid/os/INetworkManagementService;->closeSocketsForFreecess(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception p0

    .line 42
    :try_start_1
    const-string v3, "FreecessController"

    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_1
    :goto_2
    return-void
.end method

.method public final deleteRemovedPackage(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 9
    .line 10
    invoke-virtual {v2, v0, p2}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const-string v2, "PkgRemoved"

    .line 17
    .line 18
    invoke-virtual {p0, v0, p2, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final dumpFreecess(Ljava/io/PrintWriter;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 8
    .line 9
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 19
    .line 20
    monitor-enter v4

    .line 21
    :try_start_0
    const-string v5, "FREECESS STATE"

    .line 22
    .line 23
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v5, "-FreecessEnabled : "

    .line 27
    .line 28
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v5, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    const-string v5, "Y"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto/16 :goto_23

    .line 40
    .line 41
    :cond_0
    const-string v5, "N"

    .line 42
    .line 43
    :goto_0
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v5, "-KernelSupport : "

    .line 47
    .line 48
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-boolean v5, v0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    .line 52
    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    const-string v5, "Y"

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const-string v5, "N"

    .line 59
    .line 60
    :goto_1
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v5, " -FreecessEnhancementEnabled : "

    .line 64
    .line 65
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v5, v0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 69
    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    const-string v5, "Y"

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    const-string v5, "N"

    .line 76
    .line 77
    :goto_2
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v5, " -EnhancedBackgroundRestricted : (Binder:"

    .line 81
    .line 82
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sget-boolean v5, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    .line 86
    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    const-string v5, "Y,"

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_3
    const-string v5, "N,"

    .line 93
    .line 94
    :goto_3
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v5, "Intent:"

    .line 98
    .line 99
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v5, "N)"

    .line 103
    .line 104
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v5, " -ChinaPolicyEnabled : "

    .line 108
    .line 109
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    if-eqz v3, :cond_4

    .line 113
    .line 114
    const-string v3, "Y"

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_4
    const-string v3, "N"

    .line 118
    .line 119
    :goto_4
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v3, " -Mimimize_OLAF_lock : "

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sget-boolean v3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 128
    .line 129
    if-eqz v3, :cond_5

    .line 130
    .line 131
    const-string v3, "Y"

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_5
    const-string v3, "N"

    .line 135
    .line 136
    :goto_5
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v3, " -QuickFreezeEnabled : "

    .line 140
    .line 141
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-boolean v3, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 145
    .line 146
    if-eqz v3, :cond_6

    .line 147
    .line 148
    const-string v3, "Y"

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_6
    const-string v3, "N"

    .line 152
    .line 153
    :goto_6
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v3, " -PidUfzEnabled : "

    .line 157
    .line 158
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-boolean v3, v0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    .line 162
    .line 163
    if-eqz v3, :cond_7

    .line 164
    .line 165
    const-string v3, "Y"

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_7
    const-string v3, "N"

    .line 169
    .line 170
    :goto_7
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v3, " -RestrictJobDuringOlaf : "

    .line 174
    .line 175
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    sget-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_PENDING_JOB:Z

    .line 179
    .line 180
    if-eqz v3, :cond_8

    .line 181
    .line 182
    const-string v3, "Y"

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_8
    const-string v3, "N"

    .line 186
    .line 187
    :goto_8
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v3, " -DealyServiceDuringOlaf : "

    .line 191
    .line 192
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    sget-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    .line 196
    .line 197
    if-eqz v3, :cond_9

    .line 198
    .line 199
    const-string v3, "Y"

    .line 200
    .line 201
    goto :goto_9

    .line 202
    :cond_9
    const-string v3, "N"

    .line 203
    .line 204
    :goto_9
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v3, " -FASTOLAF_FEATURE_MOREFZ : "

    .line 208
    .line 209
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    sget-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    .line 213
    .line 214
    if-eqz v3, :cond_a

    .line 215
    .line 216
    const-string v3, "Y"

    .line 217
    .line 218
    goto :goto_a

    .line 219
    :cond_a
    const-string v3, "N"

    .line 220
    .line 221
    :goto_a
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const-string v3, " -FASTOLAF_FEATURE_LESSUFZ : "

    .line 225
    .line 226
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    sget-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    .line 230
    .line 231
    if-eqz v3, :cond_b

    .line 232
    .line 233
    const-string v3, "Y"

    .line 234
    .line 235
    goto :goto_b

    .line 236
    :cond_b
    const-string v3, "N"

    .line 237
    .line 238
    :goto_b
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string v3, " -CALM : "

    .line 242
    .line 243
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-boolean v3, v0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 247
    .line 248
    if-eqz v3, :cond_c

    .line 249
    .line 250
    const-string v3, "Y"

    .line 251
    .line 252
    goto :goto_c

    .line 253
    :cond_c
    const-string v3, "N"

    .line 254
    .line 255
    :goto_c
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const-string v3, " -GAME : "

    .line 259
    .line 260
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-boolean v3, v0, Lcom/android/server/am/FreecessController;->mGameModeEnabled:Z

    .line 264
    .line 265
    if-eqz v3, :cond_d

    .line 266
    .line 267
    const-string v3, "Y"

    .line 268
    .line 269
    goto :goto_d

    .line 270
    :cond_d
    const-string v3, "N"

    .line 271
    .line 272
    :goto_d
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    const-string v3, " -fastolaf_protect_freeze : "

    .line 276
    .line 277
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    sget-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    .line 281
    .line 282
    if-eqz v3, :cond_e

    .line 283
    .line 284
    const-string v3, "Y"

    .line 285
    .line 286
    goto :goto_e

    .line 287
    :cond_e
    const-string v3, "N"

    .line 288
    .line 289
    :goto_e
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    const-string v3, " -FASTOLAF_IMPROVE_SPEED : "

    .line 293
    .line 294
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    sget-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    .line 298
    .line 299
    if-eqz v3, :cond_f

    .line 300
    .line 301
    const-string v3, "Y"

    .line 302
    .line 303
    goto :goto_f

    .line 304
    :cond_f
    const-string v3, "N"

    .line 305
    .line 306
    :goto_f
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const-string v3, " -LRsEnabled : "

    .line 310
    .line 311
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    iget-boolean v3, v0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    .line 315
    .line 316
    if-eqz v3, :cond_10

    .line 317
    .line 318
    const-string v3, "Y"

    .line 319
    .line 320
    goto :goto_10

    .line 321
    :cond_10
    const-string v3, "N"

    .line 322
    .line 323
    :goto_10
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    const-string v3, " -AUFAllowBucketSize : "

    .line 327
    .line 328
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    sget v3, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    .line 332
    .line 333
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 334
    .line 335
    .line 336
    const-string v3, " -cntFail(FZ/UFZ/UFZ_P) : "

    .line 337
    .line 338
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget v2, v0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    .line 347
    .line 348
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v2, "/"

    .line 352
    .line 353
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    iget v2, v0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    .line 357
    .line 358
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    const-string v2, ""

    .line 369
    .line 370
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    const-string v2, "ACTIVITY MANAGER Freecess (dumpsys activity freecess)"

    .line 374
    .line 375
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    const-string/jumbo v2, "mFreecessManagedPackages --- size "

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 385
    .line 386
    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->totalSize()I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 391
    .line 392
    .line 393
    const-string v2, "%-9s%-6s%-5s%-4s%-2s|%s %s"

    .line 394
    .line 395
    const-string v5, "Uid"

    .line 396
    .line 397
    const-string v6, "Share"

    .line 398
    .line 399
    const-string v7, "Idle"

    .line 400
    .line 401
    const-string v8, "Top"

    .line 402
    .line 403
    const-string v9, "S"

    .line 404
    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 411
    .line 412
    .line 413
    move-result-object v10

    .line 414
    array-length v11, v10

    .line 415
    const/4 v12, 0x0

    .line 416
    move v13, v12

    .line 417
    :goto_11
    if-ge v13, v11, :cond_11

    .line 418
    .line 419
    aget-object v14, v10, v13

    .line 420
    .line 421
    invoke-virtual {v14}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    .line 422
    .line 423
    .line 424
    move-result v14

    .line 425
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 426
    .line 427
    .line 428
    move-result-object v14

    .line 429
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v14

    .line 433
    const-string v15, "T%-3d|"

    .line 434
    .line 435
    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v14

    .line 439
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    add-int/lit8 v13, v13, 0x1

    .line 443
    .line 444
    goto :goto_11

    .line 445
    :cond_11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v10

    .line 449
    const-string v11, "Pkg"

    .line 450
    .line 451
    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    move v2, v12

    .line 463
    :goto_12
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 464
    .line 465
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 466
    .line 467
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-ge v2, v3, :cond_19

    .line 472
    .line 473
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 474
    .line 475
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 476
    .line 477
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    check-cast v3, Landroid/util/SparseArray;

    .line 482
    .line 483
    move v5, v12

    .line 484
    :goto_13
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 485
    .line 486
    .line 487
    move-result v6

    .line 488
    if-ge v5, v6, :cond_18

    .line 489
    .line 490
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v6

    .line 494
    check-cast v6, Lcom/android/server/am/FreecessPkgStatus;

    .line 495
    .line 496
    if-nez v6, :cond_12

    .line 497
    .line 498
    goto/16 :goto_1c

    .line 499
    .line 500
    :cond_12
    const-string v7, "%-9d%3s%5s%5s%3s |%s %s"

    .line 501
    .line 502
    iget v8, v6, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 503
    .line 504
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 505
    .line 506
    .line 507
    move-result-object v13

    .line 508
    iget-object v8, v6, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 509
    .line 510
    if-eqz v8, :cond_13

    .line 511
    .line 512
    const-string v8, "Y"

    .line 513
    .line 514
    :goto_14
    move-object v14, v8

    .line 515
    goto :goto_15

    .line 516
    :cond_13
    const-string v8, "-"

    .line 517
    .line 518
    goto :goto_14

    .line 519
    :goto_15
    sget-object v8, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 520
    .line 521
    iget v9, v6, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 522
    .line 523
    invoke-virtual {v8, v9}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    .line 524
    .line 525
    .line 526
    move-result v9

    .line 527
    if-eqz v9, :cond_14

    .line 528
    .line 529
    const-string v9, "Y"

    .line 530
    .line 531
    :goto_16
    move-object v15, v9

    .line 532
    goto :goto_17

    .line 533
    :cond_14
    const-string v9, "-"

    .line 534
    .line 535
    goto :goto_16

    .line 536
    :goto_17
    iget v9, v6, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 537
    .line 538
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 539
    .line 540
    .line 541
    move-result-object v9

    .line 542
    iget-object v10, v8, Lcom/android/server/am/mars/util/UidStateMgr;->mTopUidList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 543
    .line 544
    invoke-virtual {v10, v9}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v9

    .line 548
    if-eqz v9, :cond_15

    .line 549
    .line 550
    const-string v9, "Y"

    .line 551
    .line 552
    :goto_18
    move-object/from16 v16, v9

    .line 553
    .line 554
    goto :goto_19

    .line 555
    :cond_15
    const-string v9, "-"

    .line 556
    .line 557
    goto :goto_18

    .line 558
    :goto_19
    iget-object v9, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 559
    .line 560
    iget-boolean v9, v9, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 561
    .line 562
    if-eqz v9, :cond_16

    .line 563
    .line 564
    const-string v8, "F"

    .line 565
    .line 566
    :goto_1a
    move-object/from16 v17, v8

    .line 567
    .line 568
    goto :goto_1b

    .line 569
    :cond_16
    iget v9, v6, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 570
    .line 571
    invoke-virtual {v8, v9}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    .line 572
    .line 573
    .line 574
    move-result v8

    .line 575
    if-eqz v8, :cond_17

    .line 576
    .line 577
    const-string v8, "R"

    .line 578
    .line 579
    goto :goto_1a

    .line 580
    :cond_17
    const-string v8, "-"

    .line 581
    .line 582
    goto :goto_1a

    .line 583
    :goto_1b
    iget-object v8, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 584
    .line 585
    invoke-virtual {v8}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->dumpUfzContent()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v18

    .line 589
    iget-object v6, v6, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 590
    .line 591
    move-object/from16 v19, v6

    .line 592
    .line 593
    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v6

    .line 597
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v6

    .line 601
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    :goto_1c
    add-int/lit8 v5, v5, 0x1

    .line 605
    .line 606
    goto :goto_13

    .line 607
    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 608
    .line 609
    goto/16 :goto_12

    .line 610
    .line 611
    :cond_19
    move v2, v12

    .line 612
    :goto_1d
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 613
    .line 614
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 615
    .line 616
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 617
    .line 618
    .line 619
    move-result v3

    .line 620
    if-ge v2, v3, :cond_1c

    .line 621
    .line 622
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 623
    .line 624
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 625
    .line 626
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    check-cast v3, Landroid/util/SparseArray;

    .line 631
    .line 632
    move v5, v12

    .line 633
    :goto_1e
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 634
    .line 635
    .line 636
    move-result v6

    .line 637
    if-ge v5, v6, :cond_1b

    .line 638
    .line 639
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v6

    .line 643
    check-cast v6, Lcom/android/server/am/FreecessPkgStatus;

    .line 644
    .line 645
    iget-object v7, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 646
    .line 647
    iget-object v7, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    .line 648
    .line 649
    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    .line 650
    .line 651
    .line 652
    move-result v7

    .line 653
    xor-int/lit8 v7, v7, 0x1

    .line 654
    .line 655
    if-nez v7, :cond_1a

    .line 656
    .line 657
    goto :goto_1f

    .line 658
    :cond_1a
    new-instance v7, Ljava/lang/StringBuilder;

    .line 659
    .line 660
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    .line 662
    .line 663
    iget-object v8, v6, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 664
    .line 665
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    const-string/jumbo v8, "since "

    .line 669
    .line 670
    .line 671
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    iget-object v8, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 675
    .line 676
    iget-wide v8, v8, Lcom/android/server/am/mars/MARsFreezeStateRecord;->initialStateTime:J

    .line 677
    .line 678
    invoke-static {v8, v9}, Lcom/android/server/am/FreecessController;->formatDateTime(J)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v8

    .line 682
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    const-string v8, " has abuse unfreeze "

    .line 686
    .line 687
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    iget-object v8, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 691
    .line 692
    iget-object v8, v8, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    .line 693
    .line 694
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 695
    .line 696
    .line 697
    move-result v8

    .line 698
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    const-string v8, " ---last abnormal time: "

    .line 702
    .line 703
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    iget-object v6, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 707
    .line 708
    iget-object v6, v6, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    .line 709
    .line 710
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 711
    .line 712
    .line 713
    move-result v8

    .line 714
    add-int/lit8 v8, v8, -0x1

    .line 715
    .line 716
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v6

    .line 720
    check-cast v6, Ljava/lang/Long;

    .line 721
    .line 722
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 723
    .line 724
    .line 725
    move-result-wide v8

    .line 726
    invoke-static {v8, v9}, Lcom/android/server/am/FreecessController;->formatDateTime(J)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v6

    .line 730
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v6

    .line 737
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    :goto_1f
    add-int/lit8 v5, v5, 0x1

    .line 741
    .line 742
    goto :goto_1e

    .line 743
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    .line 744
    .line 745
    goto/16 :goto_1d

    .line 746
    .line 747
    :cond_1c
    const-string/jumbo v2, "mFreezedPackages --- size "

    .line 748
    .line 749
    .line 750
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 754
    .line 755
    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->totalSize()I

    .line 756
    .line 757
    .line 758
    move-result v2

    .line 759
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 760
    .line 761
    .line 762
    move v2, v12

    .line 763
    :goto_20
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 764
    .line 765
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 766
    .line 767
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 768
    .line 769
    .line 770
    move-result v3

    .line 771
    if-ge v2, v3, :cond_1e

    .line 772
    .line 773
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 774
    .line 775
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 776
    .line 777
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v3

    .line 781
    check-cast v3, Landroid/util/SparseArray;

    .line 782
    .line 783
    move v5, v12

    .line 784
    :goto_21
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 785
    .line 786
    .line 787
    move-result v6

    .line 788
    if-ge v5, v6, :cond_1d

    .line 789
    .line 790
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v6

    .line 794
    check-cast v6, Lcom/android/server/am/FreecessPkgStatus;

    .line 795
    .line 796
    const-string v7, "-FZT "

    .line 797
    .line 798
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    iget-object v7, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 802
    .line 803
    iget-wide v7, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    .line 804
    .line 805
    invoke-static {v7, v8}, Lcom/android/server/am/FreecessController;->formatDateTime(J)Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v7

    .line 809
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    const-string v7, "-UFZT "

    .line 813
    .line 814
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    iget-object v7, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 818
    .line 819
    iget-wide v7, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedTime:J

    .line 820
    .line 821
    invoke-static {v7, v8}, Lcom/android/server/am/FreecessController;->formatDateTime(J)Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v7

    .line 825
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    const-string v7, "-UFZR "

    .line 829
    .line 830
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    const-string v7, "%10s"

    .line 834
    .line 835
    iget-object v8, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 836
    .line 837
    iget-object v8, v8, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    .line 838
    .line 839
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v8

    .line 843
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v7

    .line 847
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    const-string v7, "-UserId "

    .line 851
    .line 852
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    const-string v7, "%3d"

    .line 856
    .line 857
    iget v8, v6, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 858
    .line 859
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 860
    .line 861
    .line 862
    move-result-object v8

    .line 863
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v8

    .line 867
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v7

    .line 871
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    const-string v7, "-Pkg "

    .line 875
    .line 876
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    iget-object v6, v6, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 880
    .line 881
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    const-string v6, ""

    .line 885
    .line 886
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    add-int/lit8 v5, v5, 0x1

    .line 890
    .line 891
    goto :goto_21

    .line 892
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    .line 893
    .line 894
    goto/16 :goto_20

    .line 895
    .line 896
    :cond_1e
    const-string/jumbo v2, "mMonitorFreezedList --- size "

    .line 897
    .line 898
    .line 899
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 903
    .line 904
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 905
    .line 906
    .line 907
    move-result v2

    .line 908
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 909
    .line 910
    .line 911
    :goto_22
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 912
    .line 913
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 914
    .line 915
    .line 916
    move-result v2

    .line 917
    if-ge v12, v2, :cond_1f

    .line 918
    .line 919
    const-string v2, "%d "

    .line 920
    .line 921
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 922
    .line 923
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v3

    .line 927
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v3

    .line 931
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v2

    .line 935
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 936
    .line 937
    .line 938
    add-int/lit8 v12, v12, 0x1

    .line 939
    .line 940
    goto :goto_22

    .line 941
    :cond_1f
    const-string v2, ""

    .line 942
    .line 943
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    sget-object v2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 948
    .line 949
    iget-object v2, v2, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 950
    .line 951
    if-eqz v2, :cond_20

    .line 952
    .line 953
    new-instance v3, Landroid/util/PrintWriterPrinter;

    .line 954
    .line 955
    invoke-direct {v3, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 956
    .line 957
    .line 958
    const-string v4, "Freecess"

    .line 959
    .line 960
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->getTargetUidNameMap()Landroid/util/ArrayMap;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    sget-boolean v2, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 968
    .line 969
    sget-object v2, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 970
    .line 971
    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/mars/EventRecorder;->reportUnfreezeCount(Landroid/util/ArrayMap;Ljava/io/PrintWriter;)V

    .line 972
    .line 973
    .line 974
    return-void

    .line 975
    :goto_23
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 976
    throw v0
.end method

.method public final dumpFreecessCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 1
    const-string/jumbo v4, "dumpMARsCommand(netd off)uid = "

    const-string/jumbo v5, "dumpMARsCommand(netd on)uid = "

    const-string/jumbo v6, "report_unfreeze"

    const/4 v7, 0x1

    aget-object v8, v2, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->getTargetUidNameMap()Landroid/util/ArrayMap;

    move-result-object v6

    .line 3
    sget-boolean v8, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 4
    sget-object v8, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 5
    invoke-virtual {v8, v6, v1}, Lcom/android/server/am/mars/EventRecorder;->reportUnfreezeCount(Landroid/util/ArrayMap;Ljava/io/PrintWriter;)V

    .line 6
    :cond_0
    const-string/jumbo v6, "fastolaf_improve_speed"

    aget-object v8, v2, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x2

    if-eqz v6, :cond_2

    .line 7
    const-string/jumbo v6, "on"

    aget-object v9, v2, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    sput-boolean v7, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    goto :goto_0

    .line 9
    :cond_1
    sput-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    .line 10
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "MARstest -- FASTOLAF_IMPROVE_SPEED "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v9, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    .line 11
    invoke-static {v6, v9, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 12
    :cond_2
    const-string/jumbo v6, "binder_restriction"

    aget-object v9, v2, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 13
    aget-object v6, v2, v8

    const-string/jumbo v9, "on"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "restrict binder in cached state : "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v9, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    .line 15
    invoke-static {v6, v9, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 16
    :cond_3
    const-string/jumbo v6, "service_guard"

    aget-object v9, v2, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 17
    aget-object v6, v2, v8

    const-string/jumbo v9, "on"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/am/FreecessController;->FEATURE_SERVICE_GUARD:Z

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "service_guard has turned to "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v9, Lcom/android/server/am/FreecessController;->FEATURE_SERVICE_GUARD:Z

    .line 19
    invoke-static {v6, v9, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 20
    :cond_4
    const-string/jumbo v6, "pending_jobscheduler"

    aget-object v9, v2, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 21
    const-string/jumbo v6, "on"

    aget-object v9, v2, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 22
    sput-boolean v7, Lcom/android/server/am/FreecessController;->FASTOLAF_PENDING_JOB:Z

    .line 23
    :cond_5
    const-string/jumbo v6, "off"

    aget-object v9, v2, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 24
    sput-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_PENDING_JOB:Z

    .line 25
    :cond_6
    const-string/jumbo v6, "delay_service"

    aget-object v9, v2, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 26
    const-string/jumbo v6, "on"

    aget-object v9, v2, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 27
    sput-boolean v7, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    .line 28
    :cond_7
    const-string/jumbo v6, "off"

    aget-object v9, v2, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 29
    sput-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    .line 30
    :cond_8
    const-string/jumbo v6, "reduce_protect_time"

    aget-object v9, v2, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 31
    const-string/jumbo v6, "on"

    aget-object v9, v2, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 32
    sput-boolean v7, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    goto :goto_1

    .line 33
    :cond_9
    const-string/jumbo v6, "off"

    aget-object v9, v2, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 34
    sput-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    .line 35
    :cond_a
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "MARstest -- FASTOLAF_REDUCE_PROTECT_TIME "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v9, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    .line 36
    invoke-static {v6, v9, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 37
    :cond_b
    const-string/jumbo v6, "moreFz"

    aget-object v9, v2, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 38
    const-string/jumbo v6, "on"

    aget-object v9, v2, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 39
    sput-boolean v7, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    .line 40
    :cond_c
    const-string/jumbo v6, "off"

    aget-object v9, v2, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 41
    sput-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    .line 42
    :cond_d
    const-string/jumbo v6, "lessUfz"

    aget-object v9, v2, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 43
    const-string/jumbo v6, "on"

    aget-object v9, v2, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 44
    sput-boolean v7, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    .line 45
    :cond_e
    const-string/jumbo v6, "off"

    aget-object v9, v2, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 46
    sput-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    .line 47
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "MARstest -- FASTOLAF_FEATURE_LESSUFZ: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v9, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    .line 48
    invoke-static {v6, v9, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 49
    :cond_10
    const-string/jumbo v6, "list"

    aget-object v9, v2, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 50
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/FreecessController;->dumpFreecess(Ljava/io/PrintWriter;)V

    .line 51
    :cond_11
    const-string/jumbo v6, "freecess"

    aget-object v9, v2, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v9, 0x3

    if-eqz v6, :cond_16

    .line 52
    array-length v6, v2

    if-ge v6, v9, :cond_12

    .line 53
    const-string v6, "FreecessController"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "dumpMARsCommand(freecess ) !"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v2, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v0, v3}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 55
    const-string v6, "MARstest -- freecess enabled has turned to false"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 56
    :cond_12
    const-string/jumbo v6, "on"

    aget-object v10, v2, v8

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 57
    const-string v6, "1"

    aget-object v10, v2, v9

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 58
    invoke-virtual {v0, v7}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto :goto_2

    .line 59
    :cond_13
    const-string v6, "0"

    aget-object v10, v2, v9

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 60
    const-string v6, "FreecessController"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "dumpMARsCommand(freecess off) ! +   "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v2, v8

    .line 61
    invoke-static {v10, v11, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v6, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    invoke-virtual {v6}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 63
    const-string v10, "Debug"

    invoke-virtual {v6, v10}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v3}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto :goto_2

    .line 65
    :cond_14
    const-string/jumbo v6, "off"

    aget-object v10, v2, v8

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 66
    const-string v6, "1"

    aget-object v10, v2, v9

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 67
    invoke-virtual {v0, v7}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto :goto_2

    .line 68
    :cond_15
    const-string v6, "0"

    aget-object v10, v2, v9

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 69
    invoke-virtual {v0, v3}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 70
    :cond_16
    :goto_2
    const-string/jumbo v6, "netd"

    aget-object v10, v2, v7

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 71
    const-string/jumbo v6, "on"

    aget-object v10, v2, v8

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 72
    :try_start_0
    invoke-virtual {v0, v7}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(Z)V

    .line 73
    aget-object v4, v2, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->closeSocketsForFreecessFirewallChain()V

    .line 75
    const-string v4, "FreecessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 76
    :catch_0
    const-string v4, "FreecessController"

    const-string/jumbo v5, "dumpMARsCommand(netd on) parseInt error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 77
    :cond_17
    const-string/jumbo v5, "off"

    aget-object v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 78
    :try_start_1
    aget-object v5, v2, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5, v7}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 79
    invoke-virtual {v0, v3}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(Z)V

    .line 80
    const-string v5, "FreecessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v2, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 81
    :catch_1
    const-string v4, "FreecessController"

    const-string/jumbo v5, "dumpMARsCommand(netd off) parseInt error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_18
    :goto_3
    const-string/jumbo v4, "olaf"

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 83
    const-string/jumbo v4, "on"

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 84
    iput-boolean v7, v0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    goto/16 :goto_6

    .line 85
    :cond_19
    const-string/jumbo v4, "off"

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 86
    iput-boolean v3, v0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    goto/16 :goto_6

    .line 87
    :cond_1a
    const-string/jumbo v4, "debug"

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 88
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    xor-int/2addr v4, v7

    sput-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "olaf debugging mode is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v5, :cond_1b

    const-string/jumbo v5, "on"

    goto :goto_4

    :cond_1b
    const-string/jumbo v5, "off"

    :goto_4
    const-string v6, " now!"

    .line 90
    invoke-static {v1, v5, v6, v4}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_6

    .line 91
    :cond_1c
    const-string/jumbo v4, "enter"

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 92
    aget-object v4, v2, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 93
    invoke-virtual {v0, v6, v4, v5}, Lcom/android/server/am/FreecessController;->enterOLAF(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 94
    :cond_1d
    const-string/jumbo v4, "exit"

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->exitOLAF()V

    goto/16 :goto_6

    .line 96
    :cond_1e
    const-string v4, "allowlist"

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 97
    const-string v4, "add"

    aget-object v5, v2, v9

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1f

    .line 98
    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 99
    :cond_1f
    const-string/jumbo v4, "remove"

    aget-object v6, v2, v9

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 100
    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 101
    :cond_20
    const-string/jumbo v4, "clear"

    aget-object v5, v2, v9

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 102
    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_6

    .line 103
    :cond_21
    const-string/jumbo v4, "list"

    aget-object v5, v2, v9

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "list size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    .line 107
    :cond_22
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    :cond_23
    :goto_6
    const-string/jumbo v4, "qkfz"

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 109
    const-string/jumbo v4, "switch"

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 110
    iget-boolean v4, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    xor-int/2addr v4, v7

    iput-boolean v4, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    goto :goto_7

    .line 111
    :cond_24
    const-string/jumbo v4, "on"

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 112
    iput-boolean v7, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    goto :goto_7

    .line 113
    :cond_25
    const-string/jumbo v4, "off"

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 114
    iput-boolean v3, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 115
    :cond_26
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Quick fz is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    if-eqz v5, :cond_27

    const-string/jumbo v5, "on"

    goto :goto_8

    :cond_27
    const-string/jumbo v5, "off"

    :goto_8
    const-string v6, " now!"

    .line 116
    invoke-static {v1, v5, v6, v4}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 117
    :cond_28
    const-string/jumbo v4, "frz"

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 118
    aget-object v4, v2, v8

    const-string/jumbo v5, "force"

    .line 119
    iget-boolean v6, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-nez v6, :cond_29

    goto :goto_b

    .line 120
    :cond_29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    sget-object v10, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v10

    .line 122
    :try_start_2
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v11

    if-eqz v11, :cond_2a

    .line 123
    iget-object v12, v11, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v12, v12, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-nez v12, :cond_2a

    .line 124
    invoke-static {v11}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v12

    if-nez v12, :cond_2a

    .line 125
    new-instance v12, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda1;

    invoke-direct {v12, v3, v6}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v11, v5, v8, v12}, Lcom/android/server/am/FreecessController;->freezeUid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;ILcom/android/server/am/FreecessController$checkResultCallback;)Z

    move-result v5

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_a

    :cond_2a
    move v5, v3

    .line 126
    :goto_9
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_2b

    .line 127
    sget-object v5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 128
    invoke-virtual {v5, v3, v4, v7}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    .line 129
    const-string v10, "FRZ"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "CMD "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 0[IMP]"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v10, v4}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 130
    :goto_a
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 131
    :cond_2b
    :goto_b
    const-string/jumbo v4, "ufz"

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 132
    aget-object v4, v2, v8

    const-string/jumbo v5, "force"

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_2c
    const-string/jumbo v4, "lrs"

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 134
    const-string/jumbo v4, "on"

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 135
    iput-boolean v7, v0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    .line 136
    const-string/jumbo v4, "lrs set enable"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 137
    :cond_2d
    const-string/jumbo v4, "off"

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 138
    iput-boolean v3, v0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    .line 139
    const-string/jumbo v4, "lrs set disable"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    :cond_2e
    :goto_c
    const-string/jumbo v4, "uid_idle"

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 141
    array-length v4, v2

    if-ge v4, v9, :cond_31

    .line 142
    iget-boolean v4, v0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    if-eqz v4, :cond_2f

    .line 143
    iget-boolean v4, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    if-nez v4, :cond_2f

    move v4, v7

    goto :goto_d

    :cond_2f
    move v4, v3

    :goto_d
    xor-int/2addr v4, v7

    .line 144
    invoke-virtual {v0, v4}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MARstest -- uid idle check mode has turned to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    sget-object v5, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 147
    iget-boolean v6, v5, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    if-eqz v6, :cond_30

    .line 148
    iget-boolean v5, v5, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    if-nez v5, :cond_30

    move v5, v7

    goto :goto_e

    :cond_30
    move v5, v3

    .line 149
    :goto_e
    invoke-static {v4, v5, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    goto :goto_f

    .line 150
    :cond_31
    const-string/jumbo v4, "on"

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 151
    invoke-virtual {v0, v7}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    goto :goto_f

    .line 152
    :cond_32
    const-string/jumbo v4, "off"

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 153
    invoke-virtual {v0, v3}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    .line 154
    :cond_33
    :goto_f
    const-string/jumbo v4, "window"

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 155
    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    .line 156
    :try_start_4
    aget-object v5, v2, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 157
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v6, :cond_34

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v6, :cond_34

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    move-result v6

    if-eqz v6, :cond_34

    move v6, v7

    goto :goto_10

    :catchall_1
    move-exception v0

    goto :goto_12

    :cond_34
    move v6, v3

    .line 158
    :goto_10
    const-string v10, "FreecessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "dumpMARsCommand(window) "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ishasFloatingWindow:"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_11

    .line 159
    :catch_2
    :try_start_5
    const-string v5, "FreecessController"

    const-string/jumbo v6, "dumpMARsCommand(window) parseInt error!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_11
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_13

    :goto_12
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 161
    :cond_35
    :goto_13
    const-string/jumbo v4, "mfsr"

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    move v4, v3

    .line 162
    :goto_14
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 163
    iget-object v5, v5, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 164
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_39

    .line 165
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 166
    iget-object v5, v5, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 167
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v6, v3

    .line 168
    :goto_15
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v6, v10, :cond_38

    .line 169
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/FreecessPkgStatus;

    .line 170
    iget-object v10, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    aget-object v11, v2, v7

    const-string/jumbo v12, "mfsr"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_37

    .line 172
    const-string/jumbo v11, "ver"

    aget-object v12, v2, v8

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_36

    .line 173
    aget-object v11, v2, v9

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mDetectionVer:I

    .line 174
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "set real time detection as ver:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mDetectionVer:I

    .line 175
    invoke-static {v11, v10, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    goto :goto_16

    .line 176
    :cond_36
    const-string/jumbo v11, "history"

    aget-object v12, v2, v8

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_37

    .line 177
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    iget-object v12, v12, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " detection version:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mDetectionVer:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v10}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->dumpUfzContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_37
    :goto_16
    add-int/2addr v6, v7

    goto :goto_15

    :cond_38
    add-int/2addr v4, v7

    goto/16 :goto_14

    .line 179
    :cond_39
    const-string/jumbo v4, "startrecording"

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/am/FreecessController;->mRecordingStartTime:J

    .line 181
    :cond_3a
    const-string/jumbo v4, "endrecording"

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/am/FreecessController;->mRecordingEndTime:J

    .line 183
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    const-wide/16 v5, 0x40

    if-eqz v4, :cond_3b

    .line 184
    const-string/jumbo v4, "getFrozenTimeForAllPackages"

    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 185
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->getTargetUidNameMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 186
    sget-boolean v10, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 187
    sget-object v10, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 188
    iget-wide v13, v0, Lcom/android/server/am/FreecessController;->mRecordingStartTime:J

    iget-wide v11, v0, Lcom/android/server/am/FreecessController;->mRecordingEndTime:J

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    const-string v15, "EventRecorder"

    sget-boolean v0, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    if-nez v0, :cond_3c

    goto/16 :goto_25

    .line 190
    :cond_3c
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 191
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 192
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 194
    invoke-virtual {v10, v8, v9}, Lcom/android/server/am/mars/EventRecorder;->performWrite(J)V

    .line 195
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 196
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 197
    sget-object v10, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 198
    :try_start_7
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    sget-object v16, Lcom/android/server/am/mars/EventRecorder;->file:Ljava/io/File;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-wide/from16 v17, v11

    .line 199
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v7, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 200
    :goto_17
    :try_start_9
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 201
    new-instance v7, Lcom/android/server/am/mars/EventRecorder$Event;

    invoke-direct {v7, v0}, Lcom/android/server/am/mars/EventRecorder$Event;-><init>(Ljava/lang/String;)V

    .line 202
    iget-object v0, v7, Lcom/android/server/am/mars/EventRecorder$Event;->eventType:Lcom/android/server/am/mars/EventRecorder$EventType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_3f

    const/4 v11, 0x1

    if-eq v0, v11, :cond_3f

    const/4 v11, 0x2

    if-eq v0, v11, :cond_3e

    const/4 v12, 0x3

    if-eq v0, v12, :cond_3d

    move v0, v11

    move/from16 v19, v12

    move-wide/from16 v22, v13

    move-object v2, v15

    move-wide/from16 v20, v17

    goto :goto_1a

    :cond_3d
    move v0, v11

    move/from16 v19, v12

    move-wide/from16 v20, v17

    goto :goto_18

    :cond_3e
    move v0, v11

    move-wide/from16 v20, v17

    const/16 v19, 0x3

    :goto_18
    move-wide v11, v13

    move-wide/from16 v22, v13

    move-wide/from16 v13, v20

    move-object v2, v15

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v5

    move-object/from16 v18, v3

    .line 203
    :try_start_a
    invoke-static/range {v11 .. v18}, Lcom/android/server/am/mars/EventRecorder;->processFreezeEvent(JJLcom/android/server/am/mars/EventRecorder$Event;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    goto :goto_1a

    :catchall_2
    move-exception v0

    :goto_19
    move-object v7, v0

    goto :goto_1c

    :cond_3f
    move-wide/from16 v22, v13

    move-object v2, v15

    move-wide/from16 v20, v17

    const/4 v0, 0x2

    const/16 v19, 0x3

    move-wide/from16 v11, v22

    move-wide/from16 v13, v20

    move-object v15, v7

    move-object/from16 v16, v9

    move-object/from16 v17, v6

    .line 204
    invoke-static/range {v11 .. v17}, Lcom/android/server/am/mars/EventRecorder;->processUidEvent(JJLcom/android/server/am/mars/EventRecorder$Event;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_1a
    move-object v15, v2

    move-wide/from16 v17, v20

    move-wide/from16 v13, v22

    move-object/from16 v2, p2

    goto :goto_17

    :catchall_3
    move-exception v0

    move-wide/from16 v22, v13

    move-object v2, v15

    move-wide/from16 v20, v17

    goto :goto_19

    :cond_40
    move-wide/from16 v22, v13

    move-object v2, v15

    move-wide/from16 v20, v17

    .line 205
    :try_start_b
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 206
    :goto_1b
    sget-object v0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1f

    :catchall_4
    move-exception v0

    goto/16 :goto_26

    :catch_3
    move-exception v0

    goto :goto_1e

    .line 207
    :goto_1c
    :try_start_c
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_1d

    :catchall_5
    move-exception v0

    move-object v10, v0

    :try_start_d
    invoke-virtual {v7, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d
    throw v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catch_4
    move-exception v0

    move-wide/from16 v22, v13

    move-object v2, v15

    move-wide/from16 v20, v17

    goto :goto_1e

    :catch_5
    move-exception v0

    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    move-object v2, v15

    .line 208
    :goto_1e
    :try_start_e
    const-string v7, "Error at getFrozenTime"

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_1b

    .line 209
    :goto_1f
    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-wide/16 v24, 0x0

    if-eqz v7, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 211
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 212
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 213
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-wide/from16 v11, v22

    move-wide/from16 v13, v20

    move-wide/from16 v17, v20

    invoke-static/range {v11 .. v18}, Lcom/android/server/am/mars/EventRecorder;->calculateOverlapPeriod(JJJJ)J

    move-result-wide v10

    add-long v24, v24, v10

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 214
    invoke-virtual {v5, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 215
    :cond_41
    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 216
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 217
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 218
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 219
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-wide/from16 v11, v22

    move-wide/from16 v13, v20

    move-wide/from16 v17, v20

    invoke-static/range {v11 .. v18}, Lcom/android/server/am/mars/EventRecorder;->calculateOverlapPeriod(JJJJ)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 220
    invoke-virtual {v6, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 221
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "From "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    move-wide/from16 v8, v22

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    move-wide/from16 v10, v20

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v11, v10, v8

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms)"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 225
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 226
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 227
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 228
    new-instance v11, Ljava/util/ArrayList;

    .line 229
    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v14}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 230
    invoke-virtual {v3, v8, v11}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 231
    const-string v12, "Error at reportEvents. uid "

    if-nez v9, :cond_43

    .line 232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\'s running time is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_43
    if-nez v10, :cond_44

    .line 233
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\'s frozenDuration is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 234
    :cond_44
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v12, v14, v24

    if-nez v12, :cond_45

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    move-object/from16 p0, v3

    move-object v12, v4

    goto :goto_23

    :cond_45
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-double v14, v14

    move-object/from16 p0, v3

    move-object v12, v4

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v14, v3

    :goto_23
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v14, v3

    if-lez v3, :cond_46

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "calculation error. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "was frozen more than running time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_46
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v7, "%.5f"

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_48

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_24
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_47

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 242
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 243
    :cond_47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_48
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p0

    move-object v4, v12

    goto/16 :goto_22

    .line 246
    :cond_49
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 247
    :goto_25
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_4a

    const-wide/16 v2, 0x40

    .line 248
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_27

    .line 249
    :goto_26
    sget-object v1, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 250
    throw v0

    .line 251
    :cond_4a
    :goto_27
    const-string/jumbo v0, "debugrecord"

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 252
    sget-boolean v0, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 253
    sget-object v0, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 256
    sget-object v0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 257
    :try_start_f
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    sget-object v5, Lcom/android/server/am/mars/EventRecorder;->file:Ljava/io/File;

    .line 258
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 259
    :goto_28
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 260
    new-instance v4, Lcom/android/server/am/mars/EventRecorder$Event;

    invoke-direct {v4, v0}, Lcom/android/server/am/mars/EventRecorder$Event;-><init>(Ljava/lang/String;)V

    .line 261
    iget-object v0, v4, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 262
    invoke-virtual {v4}, Lcom/android/server/am/mars/EventRecorder$Event;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v4, v4, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_28

    :catchall_6
    move-exception v0

    move-object v4, v0

    goto :goto_2a

    .line 264
    :cond_4b
    :try_start_11
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 265
    :goto_29
    sget-object v0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2d

    :catchall_7
    move-exception v0

    goto :goto_2f

    :catch_6
    move-exception v0

    goto :goto_2c

    .line 266
    :goto_2a
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto :goto_2b

    :catchall_8
    move-exception v0

    move-object v3, v0

    :try_start_13
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 267
    :goto_2c
    :try_start_14
    const-string v3, "EventRecorder"

    const-string/jumbo v4, "error at printAllEvents"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_29

    .line 268
    :goto_2d
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 269
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 270
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 273
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2e

    .line 274
    :goto_2f
    sget-object v1, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 275
    throw v0

    :cond_4d
    return-void
.end method

.method public final enterOLAF(IILjava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_a

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 15
    .line 16
    if-eqz v0, :cond_a

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    .line 19
    .line 20
    if-nez v0, :cond_a

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    const-string/jumbo v0, "com.google.android.youtube"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    const-string/jumbo v0, "com.jingdong.app.mall"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    if-eqz p2, :cond_8

    .line 53
    .line 54
    const/16 v0, 0x64

    .line 55
    .line 56
    if-ge p2, v0, :cond_5

    .line 57
    .line 58
    return-void

    .line 59
    :cond_5
    const/16 v0, 0x1388

    .line 60
    .line 61
    if-le p2, v0, :cond_6

    .line 62
    .line 63
    move p2, v0

    .line 64
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    int-to-long v2, p2

    .line 69
    add-long/2addr v0, v2

    .line 70
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 71
    .line 72
    monitor-enter v2

    .line 73
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    cmp-long v3, v0, v3

    .line 80
    .line 81
    if-gtz v3, :cond_7

    .line 82
    .line 83
    monitor-exit v2

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_0

    .line 87
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 92
    .line 93
    monitor-exit v2

    .line 94
    goto :goto_1

    .line 95
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p0

    .line 97
    :cond_8
    :goto_1
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 98
    .line 99
    if-eqz v0, :cond_9

    .line 100
    .line 101
    const-string v0, "FreecessController"

    .line 102
    .line 103
    const-string v1, "Enter OLAF! pkgName: "

    .line 104
    .line 105
    const-string v2, ", uid: "

    .line 106
    .line 107
    const-string v3, ", mills: "

    .line 108
    .line 109
    invoke-static {p1, v1, p3, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v1, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_9
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    .line 118
    const/4 p2, 0x1

    .line 119
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    .line 121
    .line 122
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 123
    .line 124
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/FreecessHandler;->sendOLAFMsg(ILjava/lang/String;Z)V

    .line 125
    .line 126
    .line 127
    :cond_a
    :goto_2
    return-void
.end method

.method public final exitOLAF()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "FreecessController"

    .line 6
    .line 7
    const-string v1, "Exit OLAF!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    const-string v0, "FreecessHandler"

    .line 38
    .line 39
    const-string/jumbo v1, "removeOLAFTimeOutMsg...."

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 46
    .line 47
    const/16 v1, 0xa

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    .line 51
    .line 52
    :goto_0
    const/4 v0, 0x0

    .line 53
    const/4 v1, -0x1

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/am/FreecessHandler;->sendOLAFMsg(ILjava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public freezeAllProcesses(ILjava/util/ArrayList;Lcom/android/server/am/FreecessController$checkResultCallback;)Z
    .locals 5

    .line 1
    const/4 p3, 0x1

    .line 2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/am/FreecessController;->requestProcessFrozen(ILjava/lang/Integer;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget p2, p0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    .line 25
    .line 26
    add-int/2addr p2, p3

    .line 27
    iput p2, p0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo p3, "cntFailFreeze="

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget p0, p0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    .line 38
    .line 39
    const-string p3, ", uid="

    .line 40
    .line 41
    const-string v1, ", fpid="

    .line 42
    .line 43
    invoke-static {p0, p1, p3, v1, p2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, ")"

    .line 50
    .line 51
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 59
    .line 60
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 61
    .line 62
    const-string p2, "DEV"

    .line 63
    .line 64
    invoke-virtual {p1, p2, p0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    return p0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    iput-boolean p3, v1, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    .line 82
    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    .line 94
    .line 95
    new-instance v4, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda6;

    .line 96
    .line 97
    invoke-direct {v4, p3}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda6;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    .line 108
    .line 109
    monitor-exit v1

    .line 110
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 111
    .line 112
    monitor-enter v2

    .line 113
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    monitor-exit v2

    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    throw p0

    .line 123
    :catchall_1
    move-exception p0

    .line 124
    monitor-exit v1

    .line 125
    throw p0

    .line 126
    :cond_2
    return p3
.end method

.method public final freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 17
    .line 18
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 19
    .line 20
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 21
    .line 22
    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 23
    .line 24
    const/4 v4, 0x4

    .line 25
    invoke-virtual {v0, v3, v4, v2}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(IILjava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    return v1

    .line 32
    :cond_2
    iget v4, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 33
    .line 34
    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_5

    .line 39
    .line 40
    iget-object v5, p1, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    sget-object v5, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const/16 v5, 0x12

    .line 51
    .line 52
    invoke-static {v5, v3, v4, v2}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-lez v3, :cond_4

    .line 57
    .line 58
    return v1

    .line 59
    :cond_4
    new-instance v1, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda1;

    .line 60
    .line 61
    const/4 v3, 0x2

    .line 62
    invoke-direct {v1, v3, p1}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const/4 v3, 0x3

    .line 66
    invoke-virtual {p0, p1, p2, v3, v1}, Lcom/android/server/am/FreecessController;->freezeUid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;ILcom/android/server/am/FreecessController$checkResultCallback;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    const/4 v1, 0x1

    .line 71
    if-eqz p0, :cond_5

    .line 72
    .line 73
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 74
    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p1, " "

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string p1, "FZ"

    .line 102
    .line 103
    invoke-virtual {v0, p1, p0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_0
    return v1
.end method

.method public final freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p2, "Skip olaf fz for <"

    .line 25
    .line 26
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p2, ", "

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget p2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, ">: fzed="

    .line 49
    .line 50
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 54
    .line 55
    iget-boolean p1, p1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "FreecessController"

    .line 69
    .line 70
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void

    .line 74
    :cond_1
    new-instance v0, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda4;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v1, "OLAF"

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/am/FreecessController;->freezeUid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;ILcom/android/server/am/FreecessController$checkResultCallback;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v1, " "

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 108
    .line 109
    if-nez p0, :cond_2

    .line 110
    .line 111
    iget p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 112
    .line 113
    const/4 p2, 0x2

    .line 114
    if-ne p0, p2, :cond_2

    .line 115
    .line 116
    iput v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 117
    .line 118
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    const/4 p2, 0x3

    .line 126
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    const/4 p2, 0x4

    .line 130
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    const/16 p2, 0x1c

    .line 134
    .line 135
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_2
    return-void
.end method

.method public final freezePackage(I)Z
    .locals 9

    .line 1
    const-string v0, "LEV"

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    const-string v2, " "

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    return v4

    .line 13
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    iget-object v3, v3, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 18
    .line 19
    invoke-interface {v3, p1}, Lcom/android/server/input/NativeInputManagerService;->isUidTouched(I)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v3, v4

    .line 25
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    sget-object v6, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 31
    .line 32
    monitor-enter v6

    .line 33
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    if-eqz v7, :cond_4

    .line 38
    .line 39
    iget-object v8, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 40
    .line 41
    iget-boolean v8, v8, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 42
    .line 43
    if-nez v8, :cond_4

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    const-string p0, "FreecessController"

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v1, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, " has Touch Event, skip to freeze"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    iput p0, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 73
    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p1, ":s0"

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    invoke-static {v7}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_3

    .line 102
    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p1, ":s1"

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    new-instance v1, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda5;

    .line 125
    .line 126
    invoke-direct {v1, v7, v5, p1}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;I)V

    .line 127
    .line 128
    .line 129
    const/4 p1, 0x2

    .line 130
    invoke-virtual {p0, v7, v0, p1, v1}, Lcom/android/server/am/FreecessController;->freezeUid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;ILcom/android/server/am/FreecessController$checkResultCallback;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    :cond_4
    :goto_1
    monitor-exit v6

    .line 135
    return v4

    .line 136
    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    throw p0
.end method

.method public final freezeUid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;ILcom/android/server/am/FreecessController$checkResultCallback;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->protectionElapsedRealtime:Ljava/lang/Long;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->protectionElapsedRealtime:Ljava/lang/Long;

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    cmp-long v1, v1, v3

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-gez v1, :cond_1

    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const-string v0, "FreecessController"

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, "("

    .line 34
    .line 35
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v4, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 39
    .line 40
    const-string v5, ") is protected"

    .line 41
    .line 42
    invoke-static {v1, v4, v5, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    if-ne p3, v0, :cond_0

    .line 47
    .line 48
    iput v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 49
    .line 50
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 51
    .line 52
    if-eqz p0, :cond_0

    .line 53
    .line 54
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 55
    .line 56
    iget p3, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 57
    .line 58
    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0, p3, p1, p2, v2}, Lcom/android/server/am/FreecessHandler;->sendUidLcdOnQuickFzMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    :cond_0
    const-string p0, "Protect"

    .line 64
    .line 65
    invoke-interface {p4, p0}, Lcom/android/server/am/FreecessController$checkResultCallback;->freezeSkipFrozen(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return v3

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 74
    .line 75
    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(IZ)Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v0, p4}, Lcom/android/server/am/FreecessController;->canUidBeFrozen(Ljava/util/ArrayList;Lcom/android/server/am/FreecessController$checkResultCallback;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    return v3

    .line 86
    :cond_2
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 87
    .line 88
    const-wide/16 v4, 0x40

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string/jumbo v2, "freezeUid "

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, " type : "

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 121
    .line 122
    invoke-virtual {p0, v1, v0, p4}, Lcom/android/server/am/FreecessController;->freezeAllProcesses(ILjava/util/ArrayList;Lcom/android/server/am/FreecessController$checkResultCallback;)Z

    .line 123
    .line 124
    .line 125
    move-result p4

    .line 126
    if-eqz p4, :cond_4

    .line 127
    .line 128
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/FreecessController;->onUidFrozen(Lcom/android/server/am/FreecessPkgStatus;ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    iget p2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 133
    .line 134
    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/FreecessController;->unfreezeAllProcesses(Ljava/util/ArrayList;I)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-eqz p0, :cond_5

    .line 139
    .line 140
    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 141
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide p2

    .line 146
    const-string v0, "FZ-fail"

    .line 147
    .line 148
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->updateUnfreezeState(JLjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 152
    .line 153
    iput-boolean v3, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 154
    .line 155
    iput-boolean v3, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 156
    .line 157
    iput-boolean v3, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 158
    .line 159
    iput-boolean v3, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    .line 160
    .line 161
    :cond_5
    const-string p0, "FreecessController"

    .line 162
    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string p3, "UFZ : "

    .line 166
    .line 167
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object p3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string p3, "("

    .line 176
    .line 177
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 181
    .line 182
    const-string p3, ") because failed to freeze"

    .line 183
    .line 184
    invoke-static {p2, p1, p3, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :goto_0
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 188
    .line 189
    if-eqz p0, :cond_6

    .line 190
    .line 191
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 192
    .line 193
    .line 194
    :cond_6
    return p4

    .line 195
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    throw p0
.end method

.method public getAllRunningPackagePids(IZ)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    const-string p0, "/sys/fs/cgroup/uid_"

    .line 9
    .line 10
    invoke-static {p1, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance p2, Ljava/io/File;

    .line 15
    .line 16
    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    array-length v1, p2

    .line 26
    if-lez v1, :cond_3

    .line 27
    .line 28
    array-length v1, p2

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-ge v2, v1, :cond_3

    .line 31
    .line 32
    aget-object v3, p2, v2

    .line 33
    .line 34
    const-string/jumbo v4, "pid_"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    .line 44
    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v6, "/"

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, "/cgroup.procs"

    .line 62
    .line 63
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    .line 74
    .line 75
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .line 77
    .line 78
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    if-eqz v5, :cond_0

    .line 83
    .line 84
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception v5

    .line 93
    goto :goto_2

    .line 94
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    .line 96
    .line 97
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_7

    .line 101
    :catch_0
    move-exception v3

    .line 102
    goto :goto_6

    .line 103
    :catchall_1
    move-exception v3

    .line 104
    goto :goto_4

    .line 105
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :catchall_2
    move-exception v3

    .line 110
    :try_start_6
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    :goto_3
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 114
    :goto_4
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 115
    .line 116
    .line 117
    goto :goto_5

    .line 118
    :catchall_3
    move-exception v4

    .line 119
    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    :goto_5
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 123
    :goto_6
    const-string v4, "Error occurred when reading "

    .line 124
    .line 125
    const-string v5, " - "

    .line 126
    .line 127
    invoke-static {p1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    const-string v4, "FreecessController"

    .line 143
    .line 144
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :cond_1
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 155
    .line 156
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController$UidPidMap;->getPidList(Ljava/lang/Integer;)Ljava/util/ArrayList;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    .line 162
    .line 163
    :cond_3
    return-object v0
.end method

.method public final getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;
    .locals 2

    .line 7
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 12
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/am/FreecessPkgStatus;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getFrozenPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/FreecessPkgStatus;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;
    .locals 7

    .line 27
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 32
    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v1, :cond_1

    .line 35
    iget v3, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-ne v3, p1, :cond_1

    .line 36
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    move-object v1, v2

    .line 37
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    .line 38
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 39
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v4, 0x0

    .line 40
    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    .line 41
    const-string v4, ".cts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 42
    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v4, 0x100f

    int-to-long v4, v4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 43
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v4

    .line 44
    new-instance v5, Lcom/android/server/am/FreecessPkgStatus;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v3, p1, v6, v4}, Lcom/android/server/am/FreecessPkgStatus;-><init>(Ljava/lang/String;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_3

    .line 45
    :try_start_2
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 46
    iput-object v1, v5, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v1, v5

    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    monitor-enter v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 48
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1, v3, p1, v5}, Lcom/android/server/am/FreecessPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    .line 49
    invoke-virtual {p0, v5}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V

    .line 50
    monitor-exit v0

    move-object v1, v5

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 51
    :goto_1
    const-string p1, "FreecessController"

    const-string/jumbo v0, "getPackageStatus() failed to create ps "

    .line 52
    invoke-static {v0, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-object v1

    .line 53
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    const-string v1, ".cts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 4
    iget-object v2, v2, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v0, :cond_1

    .line 7
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 8
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 9
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x100f

    int-to-long v3, v3

    invoke-interface {v2, p2, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 10
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    .line 11
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 12
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, p2}, Landroid/content/pm/IPackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v4

    .line 13
    new-instance v5, Lcom/android/server/am/FreecessPkgStatus;

    invoke-direct {v5, p2, v3, p1, v4}, Lcom/android/server/am/FreecessPkgStatus;-><init>(Ljava/lang/String;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    :try_start_2
    iget-object p1, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz p1, :cond_2

    iput-object p1, v5, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v0, v5

    goto :goto_1

    .line 15
    :cond_2
    :goto_0
    monitor-enter v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 16
    :try_start_3
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p1, p2, v3, v5}, Lcom/android/server/am/FreecessPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    .line 17
    invoke-virtual {p0, v5}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V

    .line 18
    monitor-exit v1

    move-object v0, v5

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_1
    move-exception p0

    .line 19
    :goto_1
    const-string p1, "FreecessController"

    const-string/jumbo p2, "getPackageStatus() failed to create ps "

    .line 20
    invoke-static {p2, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v0

    .line 21
    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final getTargetUidNameMap()Landroid/util/ArrayMap;
    .locals 7

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/android/server/am/FreecessPkgStatus;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 30
    .line 31
    sget-object v4, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 32
    .line 33
    iget-object v5, v3, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 34
    .line 35
    iget v6, v3, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 36
    .line 37
    invoke-virtual {v4, v6, v5}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget v4, v3, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    monitor-exit v1

    .line 61
    return-object v0

    .line 62
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/HandlerThread;Landroid/os/HandlerThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 7
    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->reportSocketResult(Z)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p1, p0, p3, p4}, Lcom/android/server/am/FreecessHandler;->init(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/os/HandlerThread;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    .line 6
    .line 7
    check-cast v1, Ljava/util/HashSet;

    .line 8
    .line 9
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->isInOlafAllowList(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    return v0

    .line 25
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mCalmModeDefaultAllowList:Ljava/util/Set;

    .line 26
    .line 27
    check-cast v1, Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    return v0

    .line 36
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    .line 37
    .line 38
    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 39
    .line 40
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_4

    .line 45
    .line 46
    return v0

    .line 47
    :cond_4
    sget-object p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    .line 48
    .line 49
    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 50
    .line 51
    const/16 v3, 0x12

    .line 52
    .line 53
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->filter(IIILjava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    const/4 p1, 0x2

    .line 58
    if-ne p1, p0, :cond_5

    .line 59
    .line 60
    return v0

    .line 61
    :cond_5
    const/4 p0, 0x0

    .line 62
    return p0
.end method

.method public final isFreezedPackage(I)Z
    .locals 1

    .line 7
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz p0, :cond_0

    .line 10
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 11
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 12
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isFreezedPackage(ILjava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz p0, :cond_0

    .line 4
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isInOlafAllowList(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowPackagesCommon:Ljava/util/Set;

    .line 12
    .line 13
    check-cast p0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowPackagesGlobal:Ljava/util/Set;

    .line 21
    .line 22
    check-cast v0, Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowPackagesCommon:Ljava/util/Set;

    .line 31
    .line 32
    check-cast p0, Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 44
    :goto_1
    return p0
.end method

.method public final kernelFreecessReport(Lcom/android/server/am/mars/netlink/StructFreeCessMsg;)V
    .locals 9

    .line 1
    iget v0, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_10

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_8

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq v0, v2, :cond_3

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_9

    .line 17
    .line 18
    :cond_0
    iget p1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    .line 19
    .line 20
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v0, "Receive cfb-module info(uid:"

    .line 25
    .line 26
    const-string v1, ") from kernel"

    .line 27
    .line 28
    const-string v2, "FreecessController"

    .line 29
    .line 30
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const-string v0, "Cfb"

    .line 34
    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->killPkgForCalmMode(ILjava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    goto/16 :goto_9

    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_9

    .line 47
    .line 48
    :cond_3
    iget p1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    .line 49
    .line 50
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    const-string v0, "FreecessController"

    .line 55
    .line 56
    const-string v2, "Receive packet-module info(uid:"

    .line 57
    .line 58
    const-string v3, ") from kernel"

    .line 59
    .line 60
    invoke-static {p1, v2, v3, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 64
    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 69
    .line 70
    monitor-enter v0

    .line 71
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_6

    .line 76
    .line 77
    iget-boolean v1, v2, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 78
    .line 79
    monitor-exit v0

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_1

    .line 83
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
    if-eqz v1, :cond_7

    .line 85
    .line 86
    goto/16 :goto_9

    .line 87
    .line 88
    :cond_7
    const-string v0, "Packet"

    .line 89
    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_9

    .line 94
    .line 95
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p0

    .line 97
    :cond_8
    iget v0, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    .line 98
    .line 99
    iget p1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    .line 100
    .line 101
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    .line 102
    .line 103
    if-eqz v3, :cond_9

    .line 104
    .line 105
    const-string v3, "FreecessController"

    .line 106
    .line 107
    const-string v4, "Receive signal-module info(uid: "

    .line 108
    .line 109
    const-string v5, ",pid: "

    .line 110
    .line 111
    const-string v6, ") from kernel"

    .line 112
    .line 113
    invoke-static {v0, p1, v4, v5, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_9
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 121
    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    monitor-enter v3

    .line 131
    :try_start_2
    iget-object v6, v3, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    .line 132
    .line 133
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Ljava/util/ArrayList;

    .line 138
    .line 139
    if-eqz v4, :cond_a

    .line 140
    .line 141
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    if-eqz v4, :cond_a

    .line 146
    .line 147
    move v4, v2

    .line 148
    goto :goto_2

    .line 149
    :catchall_1
    move-exception p0

    .line 150
    goto/16 :goto_7

    .line 151
    .line 152
    :cond_a
    move v4, v1

    .line 153
    :goto_2
    monitor-exit v3

    .line 154
    if-eqz v4, :cond_c

    .line 155
    .line 156
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 157
    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    monitor-enter v3

    .line 163
    :try_start_3
    iget-object v5, v3, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    .line 164
    .line 165
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    check-cast v4, Ljava/util/ArrayList;

    .line 170
    .line 171
    if-eqz v4, :cond_b

    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 174
    .line 175
    .line 176
    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 177
    goto :goto_3

    .line 178
    :catchall_2
    move-exception p0

    .line 179
    goto :goto_4

    .line 180
    :cond_b
    move v4, v1

    .line 181
    :goto_3
    monitor-exit v3

    .line 182
    if-le v4, v2, :cond_c

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :goto_4
    monitor-exit v3

    .line 186
    throw p0

    .line 187
    :cond_c
    move v2, v1

    .line 188
    :goto_5
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    .line 189
    .line 190
    if-eqz v3, :cond_f

    .line 191
    .line 192
    if-eqz v2, :cond_f

    .line 193
    .line 194
    const-string v2, "Signal"

    .line 195
    .line 196
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 197
    .line 198
    monitor-enter v3

    .line 199
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    iget-boolean v5, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    .line 204
    .line 205
    if-eqz v5, :cond_d

    .line 206
    .line 207
    if-eqz v4, :cond_e

    .line 208
    .line 209
    iget-object v1, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 210
    .line 211
    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 212
    .line 213
    if-eqz v1, :cond_e

    .line 214
    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessController;->unfreezeProcess(ILjava/lang/Integer;)Z

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    if-eqz p0, :cond_e

    .line 224
    .line 225
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 226
    .line 227
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 228
    .line 229
    const-string v1, "PROC: Signal <u="

    .line 230
    .line 231
    const-string v2, ", p="

    .line 232
    .line 233
    const-string v4, ">"

    .line 234
    .line 235
    invoke-static {v0, p1, v1, v2, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    const-string v0, "UFZ"

    .line 240
    .line 241
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_d
    invoke-virtual {p0, v4, v2, v1}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 246
    .line 247
    .line 248
    :cond_e
    :goto_6
    monitor-exit v3

    .line 249
    goto :goto_9

    .line 250
    :catchall_3
    move-exception p0

    .line 251
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 252
    throw p0

    .line 253
    :cond_f
    const-string p1, "Signal"

    .line 254
    .line 255
    const-wide/16 v1, 0x3e8

    .line 256
    .line 257
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)V

    .line 258
    .line 259
    .line 260
    goto :goto_9

    .line 261
    :goto_7
    monitor-exit v3

    .line 262
    throw p0

    .line 263
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mMismatchFlag:Z

    .line 264
    .line 265
    if-eqz v0, :cond_11

    .line 266
    .line 267
    const-string/jumbo v0, "mismatch"

    .line 268
    .line 269
    .line 270
    move-object v8, v0

    .line 271
    move v7, v2

    .line 272
    goto :goto_8

    .line 273
    :cond_11
    new-instance v0, Ljava/lang/String;

    .line 274
    .line 275
    iget-object v2, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->rpcname:[B

    .line 276
    .line 277
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    move-object v8, v0

    .line 285
    move v7, v1

    .line 286
    :goto_8
    iget v3, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    .line 287
    .line 288
    iget v4, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->cmd:I

    .line 289
    .line 290
    iget v5, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    .line 291
    .line 292
    iget v6, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    .line 293
    .line 294
    move-object v2, p0

    .line 295
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/FreecessController;->reportBinderUid(IIIIILjava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :goto_9
    return-void
.end method

.method public final killPkgForCalmMode(ILjava/lang/String;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->unFreezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_4

    .line 23
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_3

    .line 33
    .line 34
    iget-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 35
    .line 36
    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 37
    .line 38
    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 41
    .line 42
    const-string v5, "CalmMode"

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x1

    .line 46
    move v3, p1

    .line 47
    move-object v4, p2

    .line 48
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->killProcessForMARs(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 49
    .line 50
    .line 51
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    monitor-enter v0

    .line 57
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 58
    .line 59
    invoke-static {v1, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 66
    .line 67
    iput-object v1, p1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 68
    .line 69
    const/16 v1, 0x8

    .line 70
    .line 71
    iput v1, p1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 74
    .line 75
    iget-object v2, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 76
    .line 77
    iget v3, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 78
    .line 79
    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 86
    .line 87
    iget-object v2, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 88
    .line 89
    iget v3, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 90
    .line 91
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catchall_1
    move-exception p0

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    const-string p1, "EXE"

    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v1, "CalmMode "

    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    throw p0

    .line 120
    :cond_3
    :goto_3
    const/4 p0, 0x1

    .line 121
    return p0

    .line 122
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    throw p0
.end method

.method public final lcdOnFreezePackage(ILjava/lang/String;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_11

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    move v1, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v1, v2

    .line 33
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    iget-object v4, v4, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 38
    .line 39
    invoke-interface {v4, p1}, Lcom/android/server/input/NativeInputManagerService;->isUidTouched(I)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v4, v2

    .line 45
    :goto_1
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 46
    .line 47
    monitor-enter v5

    .line 48
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-virtual {p0, v6, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    if-nez v6, :cond_3

    .line 57
    .line 58
    const-string/jumbo p0, "s0"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    monitor-exit v5

    .line 65
    goto/16 :goto_7

    .line 66
    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto/16 :goto_6

    .line 69
    .line 70
    :cond_3
    invoke-static {v6}, Lcom/android/server/am/FreecessController;->checkFgsPkgSkipToFreeze(Lcom/android/server/am/FreecessPkgStatus;)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_4

    .line 75
    .line 76
    const-string v7, "FreecessController"

    .line 77
    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v9, " has important Fg-service , skip to freeze"

    .line 87
    .line 88
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iput v3, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 99
    .line 100
    const-string/jumbo v7, "s1"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    move v7, v3

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move v7, v2

    .line 109
    :goto_2
    if-nez v7, :cond_5

    .line 110
    .line 111
    iget-boolean v8, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 112
    .line 113
    if-eqz v8, :cond_5

    .line 114
    .line 115
    iget-object v8, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 116
    .line 117
    iget-boolean v9, v8, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 118
    .line 119
    if-eqz v9, :cond_5

    .line 120
    .line 121
    iget-boolean v8, v8, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 122
    .line 123
    if-eqz v8, :cond_5

    .line 124
    .line 125
    invoke-virtual {p0, v6}, Lcom/android/server/am/FreecessController;->overrideOlafForBgFreeze(Lcom/android/server/am/FreecessPkgStatus;)V

    .line 126
    .line 127
    .line 128
    const-string p0, "FreecessController"

    .line 129
    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p2, " is OLAF FZed, override it with bg fz."

    .line 139
    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    monitor-exit v5

    .line 151
    goto/16 :goto_7

    .line 152
    .line 153
    :cond_5
    if-nez v7, :cond_6

    .line 154
    .line 155
    iget-object v8, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 156
    .line 157
    iget-boolean v8, v8, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 158
    .line 159
    if-eqz v8, :cond_6

    .line 160
    .line 161
    const-string/jumbo p0, "s2"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    monitor-exit v5

    .line 168
    goto/16 :goto_7

    .line 169
    .line 170
    :cond_6
    if-nez v7, :cond_7

    .line 171
    .line 172
    sget-object v8, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 173
    .line 174
    iget-object v9, v6, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 175
    .line 176
    iget v10, v6, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 177
    .line 178
    invoke-virtual {v8, v10, v9}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-nez v8, :cond_7

    .line 183
    .line 184
    const-string v7, "FreecessController"

    .line 185
    .line 186
    new-instance v8, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v9, " is not MARs target, skip to freeze"

    .line 195
    .line 196
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    iput v3, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 207
    .line 208
    const-string/jumbo v7, "s3"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    move v7, v3

    .line 215
    :cond_7
    if-nez v7, :cond_8

    .line 216
    .line 217
    const-string/jumbo v8, "com.samsung.android.spay"

    .line 218
    .line 219
    .line 220
    iget-object v9, v6, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    if-eqz v8, :cond_8

    .line 227
    .line 228
    iput v3, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 229
    .line 230
    const-string/jumbo p0, "s4"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    monitor-exit v5

    .line 237
    goto/16 :goto_7

    .line 238
    .line 239
    :cond_8
    if-nez v7, :cond_9

    .line 240
    .line 241
    if-eqz v1, :cond_9

    .line 242
    .line 243
    const-string v1, "FreecessController"

    .line 244
    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v8, " has floating or onScreen window, skip to freeze"

    .line 254
    .line 255
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    iput v3, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 266
    .line 267
    const-string/jumbo v1, "s5"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    move v7, v3

    .line 274
    :cond_9
    if-nez v7, :cond_a

    .line 275
    .line 276
    if-eqz v4, :cond_a

    .line 277
    .line 278
    const-string v1, "FreecessController"

    .line 279
    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v7, " has Touch Event, skip to freeze"

    .line 289
    .line 290
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    iput v3, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 301
    .line 302
    const-string/jumbo v1, "s6"

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    move v7, v3

    .line 309
    :cond_a
    if-nez v7, :cond_b

    .line 310
    .line 311
    const-string v1, "Bg"

    .line 312
    .line 313
    new-instance v4, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda1;

    .line 314
    .line 315
    const/4 v7, 0x1

    .line 316
    invoke-direct {v4, v7, v0}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    const/4 v7, 0x3

    .line 320
    invoke-virtual {p0, v6, v1, v7, v4}, Lcom/android/server/am/FreecessController;->freezeUid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;ILcom/android/server/am/FreecessController$checkResultCallback;)Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    goto :goto_3

    .line 325
    :cond_b
    move v1, v2

    .line 326
    :goto_3
    if-nez v1, :cond_f

    .line 327
    .line 328
    const-string v1, "NP"

    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-nez v1, :cond_f

    .line 339
    .line 340
    const-string v1, "NProc"

    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-eqz v1, :cond_c

    .line 351
    .line 352
    goto :goto_4

    .line 353
    :cond_c
    sget-object v1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 354
    .line 355
    iget v4, v6, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 356
    .line 357
    iget-object v6, v6, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 358
    .line 359
    iget-boolean v7, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 360
    .line 361
    if-nez v7, :cond_d

    .line 362
    .line 363
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 364
    .line 365
    if-eqz p0, :cond_e

    .line 366
    .line 367
    :cond_d
    move v2, v3

    .line 368
    :cond_e
    const-string p0, "Bg-refreeze"

    .line 369
    .line 370
    invoke-virtual {v1, v4, v6, p0, v2}, Lcom/android/server/am/FreecessHandler;->sendUidLcdOnQuickFzMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 371
    .line 372
    .line 373
    :cond_f
    :goto_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 375
    .line 376
    const-string v1, "FRZ"

    .line 377
    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    const-string v3, "Bg "

    .line 381
    .line 382
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string p2, " "

    .line 389
    .line 390
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    if-lez p1, :cond_10

    .line 401
    .line 402
    new-instance p1, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    const-string p2, " [IMP]"

    .line 405
    .line 406
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    goto :goto_5

    .line 421
    :cond_10
    const-string p1, ""

    .line 422
    .line 423
    :goto_5
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    goto :goto_7

    .line 434
    :goto_6
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    throw p0

    .line 436
    :cond_11
    :goto_7
    return-void
.end method

.method public final lcdOnFreezedStateChange(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2, p4}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget p4, p2, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-ne p1, v1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    if-ne p4, p1, :cond_1

    .line 21
    .line 22
    iput v1, p2, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 23
    .line 24
    :cond_1
    iget p1, p2, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 25
    .line 26
    invoke-virtual {p0, p4, p1, p3, p2}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final makePkgIdleIfNeeded(I)V
    .locals 5

    .line 1
    const-string v0, "Try to make pkg idle: <"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_3

    .line 16
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 17
    .line 18
    iget v2, v2, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 19
    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    sget-object v1, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const-string v1, "FreecessController"

    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ", "

    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, ">."

    .line 56
    .line 57
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 71
    .line 72
    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/ActivityManagerService;->makePackageIdle(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :goto_1
    const-string p1, "FreecessController"

    .line 77
    .line 78
    const-string/jumbo v0, "makePkgIdleIfNeeded Exception : "

    .line 79
    .line 80
    .line 81
    invoke-static {p0, v0, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_2
    return-void

    .line 85
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    throw p0
.end method

.method public final matchFreezeState(ILjava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 p1, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 13
    .line 14
    iget-boolean p2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v1, p2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move p1, v1

    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    return p1

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final onUidFrozen(Lcom/android/server/am/FreecessPkgStatus;ILjava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    iput-boolean v5, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 13
    .line 14
    iput v2, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 15
    .line 16
    invoke-static {v1, v5}, Lcom/android/server/am/FreecessController;->updateFrozenStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V

    .line 17
    .line 18
    .line 19
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 20
    .line 21
    sget-object v4, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 22
    .line 23
    iget-object v6, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 24
    .line 25
    iget v7, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 26
    .line 27
    invoke-virtual {v4, v7, v6}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    sget-boolean v6, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 34
    .line 35
    sget-object v6, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 36
    .line 37
    iget v7, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 38
    .line 39
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v8

    .line 47
    invoke-virtual {v6, v7, v8, v9, v3}, Lcom/android/server/am/mars/EventRecorder;->addFreezeEvent(Ljava/lang/Integer;JLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 51
    .line 52
    iget v7, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 53
    .line 54
    iget-object v6, v6, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    if-nez v6, :cond_1

    .line 61
    .line 62
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 63
    .line 64
    iget v7, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 65
    .line 66
    iget-object v8, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v6, v8, v7, v1}, Lcom/android/server/am/FreecessPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    sget-object v6, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 72
    .line 73
    iget v7, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 74
    .line 75
    iget-object v8, v6, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$HandleAmsLockHandler;

    .line 76
    .line 77
    if-nez v8, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const-string/jumbo v8, "uid"

    .line 81
    .line 82
    .line 83
    invoke-static {v7, v8}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    iget-object v8, v6, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$HandleAmsLockHandler;

    .line 88
    .line 89
    const/16 v9, 0x20

    .line 90
    .line 91
    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-virtual {v8, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 96
    .line 97
    .line 98
    iget-object v7, v6, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$HandleAmsLockHandler;

    .line 99
    .line 100
    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    .line 102
    .line 103
    :goto_0
    if-ne v2, v5, :cond_3

    .line 104
    .line 105
    return-void

    .line 106
    :cond_3
    iget-object v7, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 107
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide v8

    .line 112
    iput-wide v8, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    .line 113
    .line 114
    sget-object v8, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->FREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    .line 115
    .line 116
    invoke-virtual {v8}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->getTypeNum()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    iget-object v7, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreezeCounts:[I

    .line 121
    .line 122
    aget v9, v7, v8

    .line 123
    .line 124
    add-int/2addr v9, v5

    .line 125
    aput v9, v7, v8

    .line 126
    .line 127
    iget-object v7, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 128
    .line 129
    iget v8, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 130
    .line 131
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    invoke-virtual {v4, v8, v7}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(ILjava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    const/4 v9, 0x0

    .line 144
    if-eqz v8, :cond_4

    .line 145
    .line 146
    if-eq v7, v5, :cond_5

    .line 147
    .line 148
    :cond_4
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-nez v7, :cond_6

    .line 153
    .line 154
    iget-boolean v7, v0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 155
    .line 156
    if-nez v7, :cond_6

    .line 157
    .line 158
    :cond_5
    move v7, v5

    .line 159
    goto :goto_1

    .line 160
    :cond_6
    move v7, v9

    .line 161
    :goto_1
    iget-object v8, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 162
    .line 163
    iget v10, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 164
    .line 165
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    invoke-virtual {v4, v10, v8}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(ILjava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    iget-boolean v10, v0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 174
    .line 175
    if-eqz v10, :cond_9

    .line 176
    .line 177
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    if-eqz v10, :cond_7

    .line 182
    .line 183
    if-eqz v8, :cond_8

    .line 184
    .line 185
    :cond_7
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    if-nez v8, :cond_9

    .line 190
    .line 191
    :cond_8
    move v8, v5

    .line 192
    goto :goto_2

    .line 193
    :cond_9
    move v8, v9

    .line 194
    :goto_2
    iput-boolean v7, v1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 195
    .line 196
    iput-boolean v8, v1, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    .line 197
    .line 198
    const/16 v10, 0x1a

    .line 199
    .line 200
    iget v11, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 201
    .line 202
    invoke-virtual {v6, v10, v11}, Lcom/android/server/am/FreecessHandler;->sendUpdateBTMsg(II)V

    .line 203
    .line 204
    .line 205
    if-eqz v8, :cond_a

    .line 206
    .line 207
    iget v8, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 208
    .line 209
    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 210
    .line 211
    .line 212
    iget v8, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 213
    .line 214
    invoke-virtual {v4, v8}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    .line 215
    .line 216
    .line 217
    :cond_a
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 218
    .line 219
    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 220
    .line 221
    monitor-enter v8

    .line 222
    :try_start_0
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 223
    .line 224
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    check-cast v10, Ljava/util/HashSet;

    .line 229
    .line 230
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v10

    .line 234
    if-nez v10, :cond_b

    .line 235
    .line 236
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 237
    .line 238
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    check-cast v10, Ljava/util/HashSet;

    .line 243
    .line 244
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :catchall_0
    move-exception v0

    .line 249
    goto/16 :goto_8

    .line 250
    .line 251
    :cond_b
    :goto_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {v6, v4, v5}, Lcom/android/server/am/FreecessHandler;->sendOnFreezeStateChanged(IZ)V

    .line 253
    .line 254
    .line 255
    iget-object v13, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 256
    .line 257
    iget v10, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 258
    .line 259
    iget v11, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 260
    .line 261
    if-eqz v7, :cond_c

    .line 262
    .line 263
    move v14, v5

    .line 264
    goto :goto_4

    .line 265
    :cond_c
    const/4 v4, -0x1

    .line 266
    move v14, v4

    .line 267
    :goto_4
    const/4 v4, 0x3

    .line 268
    if-ne v2, v4, :cond_d

    .line 269
    .line 270
    move v15, v5

    .line 271
    goto :goto_5

    .line 272
    :cond_d
    move v15, v9

    .line 273
    :goto_5
    const/16 v17, 0x1

    .line 274
    .line 275
    const/4 v12, 0x1

    .line 276
    const/16 v16, 0x0

    .line 277
    .line 278
    move-object v9, v6

    .line 279
    invoke-virtual/range {v9 .. v17}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(IIZLjava/lang/String;IZZI)V

    .line 280
    .line 281
    .line 282
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 283
    .line 284
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 285
    .line 286
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-virtual {v2, v4}, Lcom/android/server/am/FreecessController$UidPidMap;->getPidList(Ljava/lang/Integer;)Ljava/util/ArrayList;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-nez v4, :cond_f

    .line 299
    .line 300
    invoke-virtual {v6, v2}, Lcom/android/server/am/FreecessHandler;->sendReportToBroadcastQueueMsg(Ljava/util/ArrayList;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    :cond_e
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    if-eqz v5, :cond_f

    .line 312
    .line 313
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    check-cast v5, Ljava/lang/Integer;

    .line 318
    .line 319
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 320
    .line 321
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    iget-object v7, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 330
    .line 331
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 332
    .line 333
    iget-object v7, v7, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 334
    .line 335
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    iget-object v8, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v7, v5, v8}, Lcom/android/server/am/CachedAppOptimizer;->sendMsgForFileCacheReclamation(ILjava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 345
    .line 346
    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 347
    .line 348
    if-eqz v5, :cond_e

    .line 349
    .line 350
    if-eqz v6, :cond_e

    .line 351
    .line 352
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    iget v8, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 357
    .line 358
    iget v9, v6, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 359
    .line 360
    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 361
    .line 362
    iget-object v5, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 363
    .line 364
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 365
    .line 366
    iget-object v5, v6, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 367
    .line 368
    iget-boolean v12, v5, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 369
    .line 370
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->onProcessFrozen(IILjava/lang/String;IZ)V

    .line 371
    .line 372
    .line 373
    goto :goto_6

    .line 374
    :cond_f
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 375
    .line 376
    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 377
    .line 378
    iget v5, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 379
    .line 380
    iget-object v6, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 381
    .line 382
    if-nez v6, :cond_10

    .line 383
    .line 384
    goto :goto_7

    .line 385
    :cond_10
    const/16 v7, 0xf

    .line 386
    .line 387
    invoke-virtual {v6, v7, v4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    if-nez v6, :cond_11

    .line 392
    .line 393
    iget-object v6, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 394
    .line 395
    invoke-virtual {v6, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 396
    .line 397
    .line 398
    move-result-object v6

    .line 399
    new-instance v7, Landroid/os/Bundle;

    .line 400
    .line 401
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 402
    .line 403
    .line 404
    const-string/jumbo v8, "packageName"

    .line 405
    .line 406
    .line 407
    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    const-string/jumbo v4, "uid"

    .line 411
    .line 412
    .line 413
    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 417
    .line 418
    .line 419
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 420
    .line 421
    const-wide/16 v4, 0x3e8

    .line 422
    .line 423
    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 424
    .line 425
    .line 426
    :cond_11
    :goto_7
    const-string v0, "FreecessController"

    .line 427
    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    const-string v5, "FZ : "

    .line 431
    .line 432
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    iget-object v5, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string v5, "("

    .line 441
    .line 442
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    iget v1, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 446
    .line 447
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v1, ") "

    .line 451
    .line 452
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    const-string v1, " reason: "

    .line 459
    .line 460
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-static {v4, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    return-void

    .line 467
    :goto_8
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    throw v0
.end method

.method public final onUidUnfrozen(Lcom/android/server/am/FreecessPkgStatus;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    iput-boolean v10, v3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 13
    .line 14
    const/4 v11, 0x1

    .line 15
    iput v11, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 16
    .line 17
    iput v10, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 18
    .line 19
    invoke-static {v1, v10}, Lcom/android/server/am/FreecessController;->updateFrozenStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V

    .line 20
    .line 21
    .line 22
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 23
    .line 24
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 25
    .line 26
    iget-object v5, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 35
    .line 36
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 37
    .line 38
    iget-object v5, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 44
    .line 45
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 46
    .line 47
    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 48
    .line 49
    iget v5, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 50
    .line 51
    invoke-virtual {v3, v5, v4}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    sget-boolean v3, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 58
    .line 59
    sget-object v3, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 60
    .line 61
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 62
    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    iget v8, v1, Lcom/android/server/am/FreecessPkgStatus;->latestProcState:I

    .line 72
    .line 73
    move-object/from16 v7, p3

    .line 74
    .line 75
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/mars/EventRecorder;->addUnFreezeEvent(Ljava/lang/Integer;JLjava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    :cond_1
    sget-boolean v3, Lcom/android/server/am/FreecessController;->FEATURE_SERVICE_GUARD:Z

    .line 79
    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    sget-object v3, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 83
    .line 84
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 85
    .line 86
    iget-object v5, v3, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$HandleAmsLockHandler;

    .line 87
    .line 88
    if-nez v5, :cond_2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const/16 v6, 0x22

    .line 92
    .line 93
    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    new-instance v6, Landroid/os/Bundle;

    .line 98
    .line 99
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string/jumbo v7, "uid"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 109
    .line 110
    .line 111
    iget-object v3, v3, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$HandleAmsLockHandler;

    .line 112
    .line 113
    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_0
    const-string v3, "OLAF:"

    .line 117
    .line 118
    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_4

    .line 123
    .line 124
    return-void

    .line 125
    :cond_4
    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 126
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 128
    .line 129
    .line 130
    move-result-wide v4

    .line 131
    invoke-virtual {v3, v4, v5, v9}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->updateUnfreezeState(JLjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-boolean v3, v1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 135
    .line 136
    iget-boolean v4, v1, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    .line 137
    .line 138
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 139
    .line 140
    .line 141
    move-result-wide v5

    .line 142
    :try_start_0
    sget-object v7, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 143
    .line 144
    iget v8, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 145
    .line 146
    const/16 v12, 0x1b

    .line 147
    .line 148
    invoke-virtual {v7, v12, v8}, Lcom/android/server/am/FreecessHandler;->sendUpdateBTMsg(II)V

    .line 149
    .line 150
    .line 151
    if-eqz v4, :cond_5

    .line 152
    .line 153
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 154
    .line 155
    invoke-virtual {v0, v4, v11}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    goto/16 :goto_6

    .line 161
    .line 162
    :cond_5
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    .line 164
    .line 165
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 166
    .line 167
    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 168
    .line 169
    monitor-enter v8

    .line 170
    :try_start_1
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 171
    .line 172
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    check-cast v5, Ljava/util/HashSet;

    .line 177
    .line 178
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-nez v5, :cond_6

    .line 183
    .line 184
    monitor-exit v8

    .line 185
    goto :goto_2

    .line 186
    :catchall_1
    move-exception v0

    .line 187
    goto/16 :goto_5

    .line 188
    .line 189
    :cond_6
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 190
    .line 191
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    check-cast v0, Ljava/util/HashSet;

    .line 196
    .line 197
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    invoke-virtual {v7, v4, v10}, Lcom/android/server/am/FreecessHandler;->sendOnFreezeStateChanged(IZ)V

    .line 202
    .line 203
    .line 204
    :goto_2
    iget-object v0, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 205
    .line 206
    iget v13, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 207
    .line 208
    iget v14, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 209
    .line 210
    if-eqz v3, :cond_7

    .line 211
    .line 212
    move/from16 v17, v10

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_7
    const/4 v3, -0x1

    .line 216
    move/from16 v17, v3

    .line 217
    .line 218
    :goto_3
    const/16 v20, 0x0

    .line 219
    .line 220
    const/4 v15, 0x0

    .line 221
    const/16 v18, 0x0

    .line 222
    .line 223
    const/16 v19, 0x1

    .line 224
    .line 225
    move-object v12, v7

    .line 226
    move-object/from16 v16, v0

    .line 227
    .line 228
    invoke-virtual/range {v12 .. v20}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(IIZLjava/lang/String;IZZI)V

    .line 229
    .line 230
    .line 231
    iput-boolean v10, v1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 232
    .line 233
    iput-boolean v10, v1, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    .line 234
    .line 235
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-nez v0, :cond_8

    .line 240
    .line 241
    invoke-virtual {v7, v2}, Lcom/android/server/am/FreecessHandler;->sendReportToBroadcastQueueMsg(Ljava/util/ArrayList;)V

    .line 242
    .line 243
    .line 244
    :cond_8
    iget-object v0, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 245
    .line 246
    iget-object v3, v7, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 247
    .line 248
    if-nez v3, :cond_9

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_9
    const/16 v4, 0xf

    .line 252
    .line 253
    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-eqz v3, :cond_a

    .line 258
    .line 259
    iget-object v3, v7, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 260
    .line 261
    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_a
    :goto_4
    const-string v0, "FreecessController"

    .line 265
    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string v4, "UFZ : "

    .line 269
    .line 270
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v4, "("

    .line 279
    .line 280
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    iget v1, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 284
    .line 285
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v1, ") "

    .line 289
    .line 290
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v1, " reason: "

    .line 297
    .line 298
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-static {v3, v9, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :goto_5
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 306
    throw v0

    .line 307
    :goto_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    .line 309
    .line 310
    throw v0
.end method

.method public final overrideOlafForBgFreeze(Lcom/android/server/am/FreecessPkgStatus;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x3

    .line 20
    const-string v1, "Bg"

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/FreecessController;->onUidFrozen(Lcom/android/server/am/FreecessPkgStatus;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "Olaf2Bg "

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, " "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "OVR"

    .line 54
    .line 55
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final protectFreezePackage(ILjava/lang/String;J)V
    .locals 2

    .line 10
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1, p3, p4}, Lcom/android/server/am/FreecessPkgStatus;->updateProtectionTime(J)V

    .line 13
    iget-object p3, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p3, p3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, v1

    .line 15
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 16
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 17
    iget-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    :cond_1
    return-void

    .line 18
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p3, p4}, Lcom/android/server/am/FreecessPkgStatus;->updateProtectionTime(J)V

    .line 4
    iget-object p3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p3, p3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 5
    invoke-virtual {p0, v1, p5, p3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, v2

    move p3, p0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 7
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 8
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    :cond_1
    return p3

    .line 9
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final readSysfs()V
    .locals 15

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    const-string/jumbo v1, "e = "

    .line 4
    .line 5
    .line 6
    const-string v2, "FreecessController"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    .line 10
    .line 11
    new-instance v5, Ljava/io/FileReader;

    .line 12
    .line 13
    const-string v6, "/data/system/ssrm_local_freecess"

    .line 14
    .line 15
    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_f

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    array-length v6, v3

    .line 39
    const/4 v7, 0x2

    .line 40
    if-le v6, v7, :cond_0

    .line 41
    .line 42
    aget-object v6, v3, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    const-string v8, ""

    .line 45
    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    :try_start_2
    const-string v9, "-"

    .line 49
    .line 50
    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    invoke-virtual {v6, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    move-object v3, v4

    .line 61
    goto/16 :goto_9

    .line 62
    .line 63
    :catch_0
    move-exception p0

    .line 64
    move-object v3, v4

    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :catch_1
    move-exception p0

    .line 68
    move-object v3, v4

    .line 69
    goto/16 :goto_7

    .line 70
    .line 71
    :cond_1
    move-object v6, v8

    .line 72
    :goto_1
    const/4 v9, 0x1

    .line 73
    aget-object v10, v3, v9

    .line 74
    .line 75
    if-eqz v10, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    move-object v10, v8

    .line 79
    :goto_2
    aget-object v3, v3, v7

    .line 80
    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    move-object v8, v3

    .line 84
    :cond_3
    const-string v3, "ALL"

    .line 85
    .line 86
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    const-string v7, "Enhance_Switch"

    .line 91
    .line 92
    const-string v11, "Switch"

    .line 93
    .line 94
    const-string v12, "@"

    .line 95
    .line 96
    const-string v13, "WL"

    .line 97
    .line 98
    const-string v14, "1"

    .line 99
    .line 100
    if-eqz v3, :cond_9

    .line 101
    .line 102
    :try_start_3
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_5

    .line 107
    .line 108
    invoke-virtual {v8, v12, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    array-length v6, v3

    .line 113
    :goto_3
    if-ge v5, v6, :cond_0

    .line 114
    .line 115
    aget-object v7, v3, v5

    .line 116
    .line 117
    if-eqz v7, :cond_4

    .line 118
    .line 119
    iget-object v8, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    .line 120
    .line 121
    check-cast v8, Ljava/util/HashSet;

    .line 122
    .line 123
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-nez v8, :cond_4

    .line 128
    .line 129
    iget-object v8, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    .line 130
    .line 131
    invoke-static {v7}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v8, Ljava/util/HashSet;

    .line 136
    .line 137
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_7

    .line 148
    .line 149
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_6

    .line 154
    .line 155
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 156
    .line 157
    if-eqz v3, :cond_6

    .line 158
    .line 159
    move v5, v9

    .line 160
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_7
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eqz v3, :cond_0

    .line 170
    .line 171
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_8

    .line 176
    .line 177
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 178
    .line 179
    if-eqz v3, :cond_8

    .line 180
    .line 181
    move v5, v9

    .line 182
    :cond_8
    iput-boolean v5, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_9
    sget-object v3, Lcom/android/server/am/FreecessController;->mCountry:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_0

    .line 193
    .line 194
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_b

    .line 199
    .line 200
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    .line 201
    .line 202
    if-eqz v3, :cond_0

    .line 203
    .line 204
    check-cast v3, Ljava/util/HashSet;

    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v8, v12, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    array-length v6, v3

    .line 214
    :goto_4
    if-ge v5, v6, :cond_0

    .line 215
    .line 216
    aget-object v7, v3, v5

    .line 217
    .line 218
    if-eqz v7, :cond_a

    .line 219
    .line 220
    iget-object v8, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    .line 221
    .line 222
    check-cast v8, Ljava/util/HashSet;

    .line 223
    .line 224
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    if-nez v8, :cond_a

    .line 229
    .line 230
    iget-object v8, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    .line 231
    .line 232
    invoke-static {v7}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    check-cast v8, Ljava/util/HashSet;

    .line 237
    .line 238
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_b
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_d

    .line 249
    .line 250
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_c

    .line 255
    .line 256
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 257
    .line 258
    if-eqz v3, :cond_c

    .line 259
    .line 260
    move v5, v9

    .line 261
    :cond_c
    invoke-virtual {p0, v5}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_d
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_0

    .line 271
    .line 272
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-eqz v3, :cond_e

    .line 277
    .line 278
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 279
    .line 280
    if-eqz v3, :cond_e

    .line 281
    .line 282
    move v5, v9

    .line 283
    :cond_e
    iput-boolean v5, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :cond_f
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 288
    .line 289
    .line 290
    goto :goto_8

    .line 291
    :catch_2
    move-exception p0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    :goto_5
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    goto :goto_8

    .line 312
    :catchall_1
    move-exception p0

    .line 313
    goto :goto_9

    .line 314
    :catch_3
    move-exception p0

    .line 315
    goto :goto_6

    .line 316
    :catch_4
    move-exception p0

    .line 317
    goto :goto_7

    .line 318
    :goto_6
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 338
    .line 339
    .line 340
    if-eqz v3, :cond_10

    .line 341
    .line 342
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 343
    .line 344
    .line 345
    goto :goto_8

    .line 346
    :catch_5
    move-exception p0

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    goto :goto_5

    .line 353
    :goto_7
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 373
    .line 374
    .line 375
    if-eqz v3, :cond_10

    .line 376
    .line 377
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 378
    .line 379
    .line 380
    goto :goto_8

    .line 381
    :catch_6
    move-exception p0

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    goto :goto_5

    .line 388
    :cond_10
    :goto_8
    return-void

    .line 389
    :goto_9
    if-eqz v3, :cond_11

    .line 390
    .line 391
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 392
    .line 393
    .line 394
    goto :goto_a

    .line 395
    :catch_7
    move-exception v0

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    :cond_11
    :goto_a
    throw p0
.end method

.method public final releaseFreezedAppPid(I)V
    .locals 8

    .line 1
    const-string v0, "UFZ : release pid "

    .line 2
    .line 3
    const-string v1, "UFZ error : pid "

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_4

    .line 30
    :cond_0
    move v2, v5

    .line 31
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 37
    .line 38
    if-nez v6, :cond_1

    .line 39
    .line 40
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const-string v7, "CustomFrequencyManagerService"

    .line 43
    .line 44
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Landroid/os/CustomFrequencyManager;

    .line 49
    .line 50
    iput-object v6, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 56
    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    const-string/jumbo v2, "freeze"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, v5, v2}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    const/4 v2, -0x1

    .line 69
    if-ne p0, v2, :cond_2

    .line 70
    .line 71
    const-string p0, "FreecessController"

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, " (when app died or watchdog half)"

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    const-string p0, "FreecessController"

    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, " (when app died or watchdog half)"

    .line 105
    .line 106
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    throw p0
.end method

.method public final reportBinderUid(IIIIILjava/lang/String;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move v2, p2

    .line 4
    move v3, p3

    .line 5
    move v4, p4

    .line 6
    move-object/from16 v5, p6

    .line 7
    .line 8
    const/4 v6, 0x1

    .line 9
    if-ne v4, v6, :cond_f

    .line 10
    .line 11
    const-string/jumbo v4, "u="

    .line 12
    .line 13
    .line 14
    const-string v7, ""

    .line 15
    .line 16
    if-eqz v5, :cond_e

    .line 17
    .line 18
    sget-object v8, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 19
    .line 20
    monitor-enter v8

    .line 21
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    const/4 v10, 0x0

    .line 26
    if-eqz v9, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v6, v10

    .line 30
    :goto_0
    if-eqz v6, :cond_1

    .line 31
    .line 32
    iget-object v7, v9, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 33
    .line 34
    iget v10, v9, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_1
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    const-string/jumbo v8, "free_buffer_full"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    const/4 v9, 0x0

    .line 49
    if-eqz v8, :cond_2

    .line 50
    .line 51
    const/4 v8, -0x1

    .line 52
    if-eq v3, v8, :cond_3

    .line 53
    .line 54
    :cond_2
    const-string/jumbo v8, "mismatch"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_9

    .line 62
    .line 63
    :cond_3
    const-string v3, "Binder(1)-"

    .line 64
    .line 65
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/FreecessController;->killPkgForCalmMode(ILjava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :cond_4
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 74
    .line 75
    invoke-virtual {v3, p2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eqz v6, :cond_6

    .line 80
    .line 81
    sget-object v6, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 82
    .line 83
    invoke-virtual {v6, v10, v7}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_6

    .line 88
    .line 89
    sget-boolean v4, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    .line 90
    .line 91
    if-eqz v4, :cond_5

    .line 92
    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_5

    .line 102
    .line 103
    const-string v1, "FreecessController"

    .line 104
    .line 105
    const-string/jumbo v4, "pid "

    .line 106
    .line 107
    .line 108
    const-string v5, " "

    .line 109
    .line 110
    const-string v6, " received async transactions while frozen, binder buffer full."

    .line 111
    .line 112
    invoke-static {p2, v4, v5, v7, v6}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 120
    .line 121
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 122
    .line 123
    .line 124
    monitor-enter v2

    .line 125
    :try_start_1
    const-string v0, "AsyncBinderFull while frozen"

    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    const/16 v4, 0xd

    .line 129
    .line 130
    const/16 v5, 0x3ea

    .line 131
    .line 132
    const/4 v6, 0x1

    .line 133
    move-object p0, v3

    .line 134
    move p1, v4

    .line 135
    move p2, v5

    .line 136
    move-object p3, v0

    .line 137
    move-object p4, v0

    .line 138
    move/from16 p5, v6

    .line 139
    .line 140
    move/from16 p6, v1

    .line 141
    .line 142
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 143
    .line 144
    .line 145
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_5

    .line 150
    .line 151
    :catchall_1
    move-exception v0

    .line 152
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 153
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_5
    const-string v2, "Binder(1)-"

    .line 158
    .line 159
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_5

    .line 167
    .line 168
    :cond_6
    if-eqz v3, :cond_12

    .line 169
    .line 170
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 171
    .line 172
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 173
    .line 174
    .line 175
    monitor-enter v5

    .line 176
    :try_start_3
    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 177
    .line 178
    if-eqz v6, :cond_7

    .line 179
    .line 180
    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 181
    .line 182
    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :catchall_2
    move-exception v0

    .line 186
    goto :goto_3

    .line 187
    :cond_7
    :goto_2
    iget v6, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 188
    .line 189
    invoke-static {v6, v9}, Lcom/android/server/am/FreecessController;->freezeTargetProcess(ILjava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-eqz v6, :cond_8

    .line 194
    .line 195
    const-string v6, "FreecessController"

    .line 196
    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v1, " is not mars target, try google freezer ufz p="

    .line 206
    .line 207
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 221
    .line 222
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 223
    .line 224
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 225
    .line 226
    iget-wide v1, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 227
    .line 228
    const/16 v4, 0x1a

    .line 229
    .line 230
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(IJLcom/android/server/am/ProcessRecord;)V

    .line 231
    .line 232
    .line 233
    :cond_8
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 234
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_5

    .line 238
    .line 239
    :goto_3
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 240
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 241
    .line 242
    .line 243
    throw v0

    .line 244
    :cond_9
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 245
    .line 246
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 247
    .line 248
    const/16 v4, 0x9

    .line 249
    .line 250
    invoke-virtual {v2, v4, v9, v9, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_c

    .line 255
    .line 256
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 262
    .line 263
    if-eqz v2, :cond_a

    .line 264
    .line 265
    const-string v2, "android.media.IAudioFocusDispatcher"

    .line 266
    .line 267
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_a

    .line 272
    .line 273
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 274
    .line 275
    const-string/jumbo v3, "audio"

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    check-cast v2, Landroid/media/AudioManager;

    .line 283
    .line 284
    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetAudioFocusedPackageName()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_12

    .line 293
    .line 294
    const-string v2, "Binder(1)- focus audio"

    .line 295
    .line 296
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_5

    .line 304
    .line 305
    :cond_a
    const-string v2, "android.service.notification"

    .line 306
    .line 307
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-eqz v2, :cond_b

    .line 312
    .line 313
    const/4 v2, 0x2

    .line 314
    if-ne v3, v2, :cond_12

    .line 315
    .line 316
    const-string v2, "Binder(1)-"

    .line 317
    .line 318
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_5

    .line 326
    .line 327
    :cond_b
    const-string v2, "Binder(1)-"

    .line 328
    .line 329
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_5

    .line 337
    .line 338
    :cond_c
    const/16 v4, 0x11

    .line 339
    .line 340
    invoke-virtual {v2, v4, v9, v9, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 341
    .line 342
    .line 343
    move-result v4

    .line 344
    if-eqz v4, :cond_d

    .line 345
    .line 346
    sget-object v2, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 347
    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    iget-object v2, v2, Lcom/android/server/am/mars/util/UidStateMgr;->mUidForegroundList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 353
    .line 354
    invoke-virtual {v2, v4}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    if-eqz v2, :cond_e

    .line 359
    .line 360
    const-string v2, "Binder(1)-"

    .line 361
    .line 362
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 367
    .line 368
    .line 369
    goto :goto_5

    .line 370
    :cond_d
    if-eqz v6, :cond_e

    .line 371
    .line 372
    const/16 v4, 0x1c

    .line 373
    .line 374
    invoke-virtual {v2, v4, v7, v9, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-eqz v2, :cond_e

    .line 379
    .line 380
    const-string v2, "Binder(1)-"

    .line 381
    .line 382
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 387
    .line 388
    .line 389
    goto :goto_5

    .line 390
    :goto_4
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 391
    throw v0

    .line 392
    :cond_e
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 393
    .line 394
    if-eqz v0, :cond_12

    .line 395
    .line 396
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 397
    .line 398
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 399
    .line 400
    const-string v2, "ABI"

    .line 401
    .line 402
    const-string v4, "0 "

    .line 403
    .line 404
    const-string v6, " "

    .line 405
    .line 406
    const-string v7, " "

    .line 407
    .line 408
    invoke-static {p1, v4, v6, v5, v7}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    const-string v3, " "

    .line 416
    .line 417
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    move/from16 v3, p5

    .line 421
    .line 422
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    goto :goto_5

    .line 433
    :cond_f
    sget-boolean v6, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    .line 434
    .line 435
    if-eqz v6, :cond_10

    .line 436
    .line 437
    const-string v6, "FreecessController"

    .line 438
    .line 439
    const-string v7, "Receive binder-module info(callerPid:0,uid:"

    .line 440
    .line 441
    const-string v8, ",code:"

    .line 442
    .line 443
    const-string v9, ",interfaceToken:"

    .line 444
    .line 445
    invoke-static {p1, p3, v7, v8, v9}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    const-string v7, ",flag:"

    .line 450
    .line 451
    const-string v8, ") from kernel"

    .line 452
    .line 453
    invoke-static {p4, v5, v7, v8, v3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    :cond_10
    const-string v3, "Binder(0)"

    .line 461
    .line 462
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/FreecessController;->killPkgForCalmMode(ILjava/lang/String;)Z

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    if-eqz v3, :cond_11

    .line 467
    .line 468
    return-void

    .line 469
    :cond_11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->reportSyncBinder(II)V

    .line 470
    .line 471
    .line 472
    :cond_12
    :goto_5
    return-void
.end method

.method public final reportSocketResult(Z)V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "FreecessController"

    .line 6
    .line 7
    const-string v1, "Receive socket exception from kernel"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 19
    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mProcessObserver:Lcom/android/server/am/FreecessController$2;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    sget-object p1, Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;->INSTANCE:Lcom/android/server/am/FreecessTrigger;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    iput-object v0, p1, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 43
    .line 44
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 45
    .line 46
    const-string/jumbo v2, "sec.app.policy.UPDATE.ssrm_update_freecess"

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 54
    .line 55
    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 56
    .line 57
    .line 58
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    .line 59
    .line 60
    const-string v4, "android.intent.action.REBOOT"

    .line 61
    .line 62
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/16 v1, 0x3e8

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p1, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    iget-object v2, p1, Lcom/android/server/am/FreecessTrigger;->mIntentReceiver:Lcom/android/server/am/FreecessTrigger$1;

    .line 73
    .line 74
    const/4 v3, 0x2

    .line 75
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    new-instance v6, Landroid/content/IntentFilter;

    .line 79
    .line 80
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 84
    .line 85
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string/jumbo v0, "package"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v4, p1, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    const/4 v9, 0x4

    .line 97
    const/4 v7, 0x0

    .line 98
    iget-object v5, p1, Lcom/android/server/am/FreecessTrigger;->mPkgIntentReceiver:Lcom/android/server/am/FreecessTrigger$2;

    .line 99
    .line 100
    const/4 v8, 0x0

    .line 101
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    const-string/jumbo v0, "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

    .line 105
    .line 106
    .line 107
    const-string/jumbo v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

    .line 108
    .line 109
    .line 110
    const-string/jumbo v2, "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iget-object v3, p1, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    iget-object v4, p1, Lcom/android/server/am/FreecessTrigger;->mSmartSwitchIntentReceiver:Lcom/android/server/am/FreecessTrigger$2;

    .line 120
    .line 121
    const/4 v8, 0x2

    .line 122
    const-string/jumbo v6, "com.wssnps.permission.COM_WSSNPS"

    .line 123
    .line 124
    .line 125
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    const-string/jumbo p1, "input"

    .line 129
    .line 130
    .line 131
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Lcom/android/server/input/InputManagerService;

    .line 136
    .line 137
    iput-object p1, p0, Lcom/android/server/am/FreecessController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 138
    .line 139
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 140
    .line 141
    if-eqz p1, :cond_2

    .line 142
    .line 143
    const/4 p1, 0x1

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(Z)V

    .line 145
    .line 146
    .line 147
    :cond_2
    return-void
.end method

.method public final reportSyncBinder(II)V
    .locals 9

    .line 1
    const-string v0, "Binder(0)"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    invoke-virtual {v1, p2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-boolean v1, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string p1, "FreecessController"

    .line 24
    .line 25
    const-string/jumbo v0, "pid "

    .line 26
    .line 27
    .line 28
    const-string v1, " "

    .line 29
    .line 30
    invoke-static {p2, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, " received sync transactions while frozen, killing"

    .line 37
    .line 38
    invoke-static {p2, v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 42
    .line 43
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 44
    .line 45
    .line 46
    monitor-enter p2

    .line 47
    :try_start_0
    const-string v6, "Sync transaction while in frozen state"

    .line 48
    .line 49
    const/16 v4, 0x3ea

    .line 50
    .line 51
    const/4 v7, 0x1

    .line 52
    const/4 v8, 0x1

    .line 53
    const/16 v3, 0xd

    .line 54
    .line 55
    move-object v5, v6

    .line 56
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 57
    .line 58
    .line 59
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_0
    sget-boolean p2, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    .line 71
    .line 72
    if-eqz p2, :cond_3

    .line 73
    .line 74
    iget-boolean p2, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 75
    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_3

    .line 87
    .line 88
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 89
    .line 90
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 91
    .line 92
    .line 93
    monitor-enter p2

    .line 94
    :try_start_2
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 95
    .line 96
    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 97
    .line 98
    const/4 v2, 0x3

    .line 99
    if-gt v1, v2, :cond_1

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const/4 v1, 0x0

    .line 104
    :goto_0
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 106
    .line 107
    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    const-string v0, "BTOP(0)"

    .line 111
    .line 112
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catchall_1
    move-exception p0

    .line 117
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :goto_1
    return-void
.end method

.method public final requestProcessFrozen(ILjava/lang/Integer;Z)Z
    .locals 12

    .line 1
    const-string v0, "FreecessController"

    .line 2
    .line 3
    const-string/jumbo v1, "there is an error at "

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    const-string/jumbo v4, "freezeProcess"

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string/jumbo v4, "unfreezeProcess"

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x2

    .line 21
    const-wide/16 v7, 0x40

    .line 22
    .line 23
    const/4 v9, -0x1

    .line 24
    :try_start_0
    sget-boolean v10, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 25
    .line 26
    if-eqz v10, :cond_1

    .line 27
    .line 28
    new-instance v10, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v11, " "

    .line 37
    .line 38
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    invoke-static {v7, v8, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_5

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 57
    .line 58
    if-nez v10, :cond_2

    .line 59
    .line 60
    iget-object v10, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    const-string v11, "CustomFrequencyManagerService"

    .line 63
    .line 64
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    check-cast v10, Landroid/os/CustomFrequencyManager;

    .line 69
    .line 70
    iput-object v10, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 71
    .line 72
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    const-string/jumbo v11, "freeze"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v10, p3, v11}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-eq v9, v6, :cond_4

    .line 86
    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p3, ". uid="

    .line 96
    .line 97
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p1, ", pid="

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 119
    .line 120
    if-eqz p0, :cond_3

    .line 121
    .line 122
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 123
    .line 124
    .line 125
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    .line 127
    .line 128
    return v5

    .line 129
    :cond_4
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 130
    .line 131
    if-eqz p0, :cond_5

    .line 132
    .line 133
    :goto_2
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 134
    .line 135
    .line 136
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :goto_3
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .line 154
    .line 155
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 156
    .line 157
    if-eqz p0, :cond_5

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :goto_4
    if-ne v9, v6, :cond_6

    .line 161
    .line 162
    const/4 v5, 0x1

    .line 163
    :cond_6
    return v5

    .line 164
    :goto_5
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 165
    .line 166
    if-eqz p1, :cond_7

    .line 167
    .line 168
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 169
    .line 170
    .line 171
    :cond_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    .line 173
    .line 174
    throw p0
.end method

.method public final restrictJobsByOlaf(IZ)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_PENDING_JOB:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "com.samsung.intent.action.OLAF_STATE_CHANGED"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v1, "job_restriction"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    if-eq p1, v1, :cond_0

    .line 28
    .line 29
    const-string/jumbo v1, "olaf_target_uid"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo v2, "restrictJobsByOlaf: restrict="

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p2, ", uid="

    .line 47
    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "FreecessController"

    .line 59
    .line 60
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    new-instance p2, Landroid/os/UserHandle;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    invoke-direct {p2, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method

.method public final sendFreecessMsg2kernel(IIII)I
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, -0x1

    .line 3
    :try_start_0
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/am/mars/netlink/FreecessNetlinkMessage;->newFreecessRequest(IIIII)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    sget p2, Landroid/system/OsConstants;->SOL_SOCKET:I

    .line 12
    .line 13
    sget p3, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    .line 14
    .line 15
    const-wide/16 v2, 0x1f4

    .line 16
    .line 17
    invoke-static {v2, v3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    invoke-static {p0, p2, p3, p4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    const/16 p3, 0x9c

    .line 26
    .line 27
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    .line 28
    .line 29
    .line 30
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return v1
.end method

.method public final setFirewallChainEnabled(Z)V
    .locals 4

    .line 1
    const-string v0, "Error occured while setFirewallChainEnabled: "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    const-string/jumbo v3, "network_management"

    .line 12
    .line 13
    .line 14
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const/4 v3, 0x7

    .line 29
    :try_start_0
    invoke-interface {p0, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception p0

    .line 39
    :try_start_1
    const-string p1, "FreecessController"

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_1
    :goto_2
    return-void
.end method

.method public final setFreecessEnableForSpecificReason(IZ)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    if-eq p1, v1, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "default"

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "SmartSwitch"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const-string v0, "BugReport"

    .line 15
    .line 16
    :goto_0
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 17
    .line 18
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    const-string v4, "ON"

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    const-string v4, "OFF"

    .line 31
    .line 32
    :goto_1
    const-string v5, " by "

    .line 33
    .line 34
    invoke-static {v3, v4, v5, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "FRZ"

    .line 39
    .line 40
    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v3, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 44
    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 48
    .line 49
    .line 50
    iput-boolean p2, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 51
    .line 52
    iput-boolean p2, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_7

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/android/server/am/MARsHandler;->sendRepeatTriggerMsgToMainHandler()V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    sget-object v4, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 65
    .line 66
    invoke-virtual {v4, p1}, Lcom/android/server/am/FreecessHandler;->sendSetFreecessEnableDelayedMsg(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_5

    .line 74
    .line 75
    iget-object p1, v3, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 76
    .line 77
    if-nez p1, :cond_4

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    .line 82
    .line 83
    :cond_5
    :goto_2
    invoke-virtual {v4}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 87
    .line 88
    .line 89
    iget-object p1, v4, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 90
    .line 91
    if-eqz p1, :cond_6

    .line 92
    .line 93
    const/16 v1, 0x9

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    .line 97
    .line 98
    :cond_6
    iput-boolean p2, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 99
    .line 100
    iput-boolean p2, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_7
    :goto_3
    return-void
.end method

.method public final setFreecessPolicyFromSCPM(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Lcom/android/server/am/FreecessPolicy;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v2, v1, Lcom/android/server/am/FreecessPolicy;->googleFreezeExemptionList:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 15
    .line 16
    new-instance v1, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 22
    .line 23
    const-string/jumbo v2, "master_switch"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iput-boolean v2, p1, Lcom/android/server/am/FreecessPolicy;->masterSwitch:Z

    .line 31
    .line 32
    const-string/jumbo p1, "freeze_enhanced_mode"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 40
    .line 41
    const-string/jumbo v3, "true"

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iput-boolean v3, v2, Lcom/android/server/am/FreecessPolicy;->quickFreezeEnabled:Z

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 60
    .line 61
    const-string/jumbo v3, "true"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput-boolean p1, v2, Lcom/android/server/am/FreecessPolicy;->lessUnfreezeEnabled:Z

    .line 77
    .line 78
    const-string/jumbo p1, "freeze_timeout"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 86
    .line 87
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    iput v3, v2, Lcom/android/server/am/FreecessPolicy;->quickFreezeCheckTime:I

    .line 100
    .line 101
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    const-string/jumbo p1, "google_freeze_timeout"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 125
    .line 126
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    iput p1, v2, Lcom/android/server/am/FreecessPolicy;->googleFreezeTime:I

    .line 139
    .line 140
    const-string/jumbo p1, "google_freezer_exemption_list"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-ge v4, v1, :cond_0

    .line 152
    .line 153
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 154
    .line 155
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    iget-object v1, v1, Lcom/android/server/am/FreecessPolicy;->googleFreezeExemptionList:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    add-int/2addr v4, v0

    .line 169
    goto :goto_0

    .line 170
    :catch_0
    move-exception p0

    .line 171
    goto :goto_2

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 173
    .line 174
    iget-boolean v0, p1, Lcom/android/server/am/FreecessPolicy;->masterSwitch:Z

    .line 175
    .line 176
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 177
    .line 178
    iget-boolean v0, p1, Lcom/android/server/am/FreecessPolicy;->quickFreezeEnabled:Z

    .line 179
    .line 180
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 181
    .line 182
    iget-boolean v0, p1, Lcom/android/server/am/FreecessPolicy;->lessUnfreezeEnabled:Z

    .line 183
    .line 184
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    .line 185
    .line 186
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 187
    .line 188
    iget v0, p1, Lcom/android/server/am/FreecessPolicy;->quickFreezeCheckTime:I

    .line 189
    .line 190
    sput v0, Lcom/android/server/am/FreecessHandler;->mScreenOnQuickFreezeCheckDelay:I

    .line 191
    .line 192
    sput v0, Lcom/android/server/am/FreecessHandler;->mScreenOnQuickFreezeDelayInterval:I

    .line 193
    .line 194
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 195
    .line 196
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 197
    .line 198
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 199
    .line 200
    iget p1, p1, Lcom/android/server/am/FreecessPolicy;->googleFreezeTime:I

    .line 201
    .line 202
    int-to-long v1, p1

    .line 203
    iput-wide v1, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 204
    .line 205
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/server/am/FreecessPolicy;->googleFreezeExemptionList:Ljava/util/ArrayList;

    .line 208
    .line 209
    if-eqz p0, :cond_1

    .line 210
    .line 211
    sget-object p1, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_1

    .line 225
    .line 226
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Ljava/lang/String;

    .line 231
    .line 232
    iget-object v1, p1, Ljava/com/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    .line 233
    .line 234
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :try_start_1
    iget-object v2, p1, Ljava/com/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    .line 236
    .line 237
    check-cast v2, Ljava/util/HashSet;

    .line 238
    .line 239
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    monitor-exit v1

    .line 243
    goto :goto_1

    .line 244
    :catchall_0
    move-exception p0

    .line 245
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 247
    :goto_2
    const-string p1, "FreecessController"

    .line 248
    .line 249
    const-string/jumbo v0, "setFreecessPolicyFromSCPM Exception error!"

    .line 250
    .line 251
    .line 252
    invoke-static {p0, v0, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :cond_1
    return-void
.end method

.method public final setIsDoingGC(IZ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    .line 13
    .line 14
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    iput p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    iput p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    .line 26
    .line 27
    :cond_1
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final setScreenOnFreecessEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 6
    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final setScreenOnState(Z)V
    .locals 7

    .line 1
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 24
    .line 25
    const-string v6, "TopApp-ScreenOn"

    .line 26
    .line 27
    const-wide/16 v4, 0x2710

    .line 28
    .line 29
    move-object v1, p0

    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->unfreezeWallPaperPackage()V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 37
    .line 38
    monitor-enter p1

    .line 39
    :try_start_0
    iget v0, p0, Lcom/android/server/am/FreecessController;->mLastTopUid:I

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 59
    .line 60
    if-eqz p0, :cond_1

    .line 61
    .line 62
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 65
    .line 66
    iget v0, v0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 67
    .line 68
    const-wide/16 v2, 0x0

    .line 69
    .line 70
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/am/FreecessHandler;->sendSlientAudioDeactivated(ILjava/lang/String;J)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 77
    .line 78
    iget-object v1, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 79
    .line 80
    iget v0, v0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 81
    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessHandler;->sendSlientAudioActiveTrigger(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_0
    monitor-exit p1

    .line 86
    return-void

    .line 87
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0
.end method

.method public final setUidIdleCheckMode(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 2
    .line 3
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v0, "FRECESS DEBUGGING MODE CHANGED ! Uid Idle Checking will be "

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 15
    .line 16
    const-string v0, "FreecessController"

    .line 17
    .line 18
    invoke-static {v0, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final shouldDelayService(Lcom/android/server/am/ServiceRecord;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 11
    .line 12
    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 13
    .line 14
    and-int/lit8 v2, v0, 0x2

    .line 15
    .line 16
    if-nez v2, :cond_4

    .line 17
    .line 18
    and-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 27
    .line 28
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 31
    .line 32
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 33
    .line 34
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/am/ProcessList;->getSharedIsolatedProcess(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 43
    .line 44
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 47
    .line 48
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 51
    .line 52
    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    const-string/jumbo v2, "com.samsung"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 73
    .line 74
    const-string/jumbo v2, "com.sec"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 84
    .line 85
    const-string/jumbo v2, "com.google"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_2

    .line 93
    .line 94
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 95
    .line 96
    const-string/jumbo v2, "com.android"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_2

    .line 104
    .line 105
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 106
    .line 107
    const-string v2, ".cts."

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_2

    .line 114
    .line 115
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 116
    .line 117
    const-string v2, ".cts"

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_2

    .line 124
    .line 125
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 126
    .line 127
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCtsGtsList:Ljava/util/Set;

    .line 128
    .line 129
    check-cast p0, Ljava/util/HashSet;

    .line 130
    .line 131
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-nez p0, :cond_2

    .line 136
    .line 137
    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-nez p0, :cond_3

    .line 146
    .line 147
    :cond_2
    return v1

    .line 148
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string/jumbo v0, "delay service: "

    .line 151
    .line 152
    .line 153
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 157
    .line 158
    const-string v0, "FreecessController"

    .line 159
    .line 160
    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const/4 p0, 0x1

    .line 164
    return p0

    .line 165
    :cond_4
    :goto_0
    return v1
.end method

.method public stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, p2, :cond_4

    .line 4
    .line 5
    const-string v2, "FreecessController"

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v4, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v4, "(state: "

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    if-eq p1, v1, :cond_1

    .line 23
    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    const-string p1, "Unknown"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p1, "Frozen"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string p1, "Initial"

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " -> "

    .line 38
    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    if-eq p2, v1, :cond_3

    .line 43
    .line 44
    if-eq p2, v0, :cond_2

    .line 45
    .line 46
    const-string p1, "Unknown"

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const-string p1, "Frozen"

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const-string p1, "Initial"

    .line 53
    .line 54
    :goto_1
    const-string v4, ", Reason: "

    .line 55
    .line 56
    const-string v5, ")"

    .line 57
    .line 58
    invoke-static {v3, p1, v4, p3, v5}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_4
    if-eq p2, v1, :cond_7

    .line 66
    .line 67
    if-eq p2, v0, :cond_5

    .line 68
    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :cond_5
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 72
    .line 73
    iget-object p1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 74
    .line 75
    iget p2, p4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 76
    .line 77
    iget-object p3, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 78
    .line 79
    if-nez p3, :cond_6

    .line 80
    .line 81
    goto/16 :goto_4

    .line 82
    .line 83
    :cond_6
    const-string/jumbo p3, "packageName"

    .line 84
    .line 85
    .line 86
    const-string/jumbo p4, "uid"

    .line 87
    .line 88
    .line 89
    invoke-static {p2, p3, p1, p4}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object p2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 94
    .line 95
    const/4 p3, 0x4

    .line 96
    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 104
    .line 105
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    .line 107
    .line 108
    goto/16 :goto_4

    .line 109
    .line 110
    :cond_7
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 111
    .line 112
    if-nez p1, :cond_8

    .line 113
    .line 114
    sget-object p1, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 115
    .line 116
    iget p2, p4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_8

    .line 123
    .line 124
    const-string p0, "FreecessController"

    .line 125
    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    iget-object p2, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p2, "("

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget p2, p4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 142
    .line 143
    const-string v1, ") is important[!isUidIdle]"

    .line 144
    .line 145
    invoke-static {p1, p2, v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_8
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 150
    .line 151
    monitor-enter p1

    .line 152
    :try_start_0
    invoke-static {p4}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-eqz p2, :cond_9

    .line 157
    .line 158
    monitor-exit p1

    .line 159
    goto :goto_2

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    goto/16 :goto_5

    .line 162
    .line 163
    :cond_9
    iget-object p2, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 164
    .line 165
    iget v1, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 166
    .line 167
    iget v2, p4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 168
    .line 169
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    sget-object p1, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    const/16 p1, 0xf

    .line 176
    .line 177
    invoke-static {p1, v1, v2, p2}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_c

    .line 182
    .line 183
    const-string p0, "FreecessController"

    .line 184
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string p2, "("

    .line 194
    .line 195
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string p2, ") is important["

    .line 202
    .line 203
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string p1, "]"

    .line 210
    .line 211
    invoke-static {v1, p1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :goto_2
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 215
    .line 216
    iget-object p1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 217
    .line 218
    iget p2, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 219
    .line 220
    iget-object p4, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 221
    .line 222
    if-nez p4, :cond_a

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_a
    const-string/jumbo p4, "packageName"

    .line 226
    .line 227
    .line 228
    const-string/jumbo v1, "userId"

    .line 229
    .line 230
    .line 231
    invoke-static {p2, p4, p1, v1}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    const-string/jumbo p4, "reason"

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object p3, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 242
    .line 243
    invoke-virtual {p3, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 244
    .line 245
    .line 246
    move-result-object p3

    .line 247
    invoke-virtual {p3, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 248
    .line 249
    .line 250
    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 251
    .line 252
    iget-boolean p2, p2, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 253
    .line 254
    if-eqz p2, :cond_b

    .line 255
    .line 256
    sget p2, Lcom/android/server/am/FreecessHandler;->mScreenOnQuickFreezeDelayInterval:I

    .line 257
    .line 258
    int-to-long v1, p2

    .line 259
    goto :goto_3

    .line 260
    :cond_b
    const-wide/16 v1, 0x2710

    .line 261
    .line 262
    :goto_3
    iget-object p2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 263
    .line 264
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-nez p1, :cond_e

    .line 269
    .line 270
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 271
    .line 272
    invoke-virtual {p0, p3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_c
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 277
    .line 278
    if-eqz p0, :cond_d

    .line 279
    .line 280
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 281
    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 286
    .line 287
    .line 288
    move-result p0

    .line 289
    if-eqz p0, :cond_d

    .line 290
    .line 291
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 292
    .line 293
    iget-object v1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 294
    .line 295
    iget v4, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 296
    .line 297
    const/4 v3, 0x0

    .line 298
    iget v2, p4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 299
    .line 300
    move-object v5, p3

    .line 301
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/FreecessHandler;->sendMakePkgIdleMsg(Ljava/lang/String;IZILjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_d
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 306
    .line 307
    iget-object p1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 308
    .line 309
    iget p2, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 310
    .line 311
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/FreecessHandler;->sendChangeToFrozenMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    :cond_e
    :goto_4
    return-void

    .line 315
    :goto_5
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    throw p0
.end method

.method public final triggerCalmMode(Ljava/util/ArrayList;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    new-instance v3, Lcom/android/server/am/FreecessPkgMap;

    .line 18
    .line 19
    invoke-direct {v3}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Ljava/lang/String;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, ", "

    .line 45
    .line 46
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    array-length v6, v4

    .line 51
    const/4 v7, 0x2

    .line 52
    if-ne v6, v7, :cond_0

    .line 53
    .line 54
    aget-object v6, v4, v2

    .line 55
    .line 56
    :try_start_0
    aget-object v4, v4, v0

    .line 57
    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 63
    .line 64
    .line 65
    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_1

    .line 67
    :catch_0
    const-string v4, "FreecessController"

    .line 68
    .line 69
    const-string v7, "CalmMode parseInt error!"

    .line 70
    .line 71
    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    const/4 v6, 0x0

    .line 76
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3, v6, v5, v4}, Lcom/android/server/am/FreecessPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    .line 85
    .line 86
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 96
    .line 97
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 98
    .line 99
    if-eqz v5, :cond_3

    .line 100
    .line 101
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getVisibleWinSurfacePkgList()Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :cond_3
    sget-object v5, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 106
    .line 107
    invoke-virtual {v5}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 108
    .line 109
    .line 110
    iput-boolean v0, v5, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mIsUsingAudioList:Z

    .line 111
    .line 112
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 113
    .line 114
    monitor-enter v5

    .line 115
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 116
    .line 117
    iget-object v6, v6, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 118
    .line 119
    move v7, v2

    .line 120
    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-ge v7, v8, :cond_7

    .line 125
    .line 126
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    check-cast v8, Lcom/android/server/am/FreecessPkgStatus;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-lez v9, :cond_4

    .line 137
    .line 138
    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    if-eqz v9, :cond_4

    .line 145
    .line 146
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 147
    .line 148
    if-eqz v9, :cond_6

    .line 149
    .line 150
    const-string v9, "FreecessController"

    .line 151
    .line 152
    new-instance v10, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v8, " has window surface, skip to freeze CalmMode"

    .line 163
    .line 164
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :catchall_0
    move-exception p0

    .line 176
    goto :goto_4

    .line 177
    :cond_4
    const-string v9, "CalmMode First trigger"

    .line 178
    .line 179
    invoke-virtual {p0, v8, v9}, Lcom/android/server/am/FreecessController;->freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    if-eqz v9, :cond_5

    .line 184
    .line 185
    iget-boolean v9, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 186
    .line 187
    if-eqz v9, :cond_5

    .line 188
    .line 189
    new-instance v9, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v10, " "

    .line 195
    .line 196
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget v8, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 200
    .line 201
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_5
    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 213
    .line 214
    iget-boolean v9, v9, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 215
    .line 216
    if-eqz v9, :cond_6

    .line 217
    .line 218
    invoke-virtual {p0, v8}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    if-nez v9, :cond_6

    .line 223
    .line 224
    iput-boolean v0, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 225
    .line 226
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    sget-object p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 231
    .line 232
    iput-boolean v2, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mIsUsingAudioList:Z

    .line 233
    .line 234
    new-instance p0, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string p1, " ["

    .line 237
    .line 238
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 242
    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    invoke-static {v3, v4}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v0, "]"

    .line 254
    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string p0, "CalmMode "

    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :goto_4
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    throw p0
.end method

.method public final triggerLcdOnFreeze(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    move v3, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v3, v1

    .line 14
    :goto_0
    if-eqz v3, :cond_1

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    :cond_1
    move v1, v2

    .line 27
    :cond_2
    sget-object v0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->updateBTUsingPackages()V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/server/am/FreecessPkgStatus;

    .line 44
    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    if-nez p3, :cond_4

    .line 52
    .line 53
    const-string/jumbo p3, "uidIdle"

    .line 54
    .line 55
    .line 56
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 57
    .line 58
    if-nez v4, :cond_6

    .line 59
    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 64
    .line 65
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/am/FreecessHandler;->sendUidLcdOnQuickFzMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_6
    :goto_1
    iget p1, v3, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 70
    .line 71
    invoke-virtual {p0, p1, v2, p3, v3}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    .line 72
    .line 73
    .line 74
    :goto_2
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public final triggerOLAF(ILjava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/4 v9, 0x0

    .line 30
    invoke-virtual {v7, v8, v2, v9}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(ILjava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    const-string v8, "activity"

    .line 38
    .line 39
    invoke-virtual {v0, v7, v2, v8}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-boolean v7, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 43
    .line 44
    const-wide/16 v10, 0x40

    .line 45
    .line 46
    if-eqz v7, :cond_0

    .line 47
    .line 48
    const-string v7, "Trigger OLAF"

    .line 49
    .line 50
    invoke-static {v10, v11, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 59
    .line 60
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 61
    .line 62
    if-eqz v8, :cond_1

    .line 63
    .line 64
    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getVisibleWinSurfacePkgList()Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    :cond_1
    sget-object v8, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 69
    .line 70
    invoke-virtual {v8}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 71
    .line 72
    .line 73
    sget-boolean v8, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 74
    .line 75
    if-eqz v8, :cond_1d

    .line 76
    .line 77
    new-instance v8, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 83
    .line 84
    monitor-enter v14

    .line 85
    :try_start_0
    iget-object v15, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 86
    .line 87
    iget-object v15, v15, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 88
    .line 89
    :goto_0
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    if-ge v9, v10, :cond_3

    .line 94
    .line 95
    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    check-cast v10, Lcom/android/server/am/FreecessPkgStatus;

    .line 100
    .line 101
    sget-boolean v11, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    .line 102
    .line 103
    if-eqz v11, :cond_2

    .line 104
    .line 105
    if-eqz v10, :cond_2

    .line 106
    .line 107
    sget-object v11, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 108
    .line 109
    iget v12, v10, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 110
    .line 111
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    iget-object v11, v11, Lcom/android/server/am/mars/util/UidStateMgr;->mUidGoneList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 116
    .line 117
    invoke-virtual {v11, v12}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    if-eqz v11, :cond_2

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    goto/16 :goto_9

    .line 126
    .line 127
    :cond_2
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v9

    .line 138
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    if-eqz v11, :cond_2c

    .line 147
    .line 148
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    check-cast v11, Lcom/android/server/am/FreecessPkgStatus;

    .line 153
    .line 154
    sget-object v12, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 155
    .line 156
    monitor-enter v12

    .line 157
    if-eqz v11, :cond_4

    .line 158
    .line 159
    :try_start_1
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 160
    .line 161
    if-nez v14, :cond_5

    .line 162
    .line 163
    :cond_4
    move-object/from16 v16, v8

    .line 164
    .line 165
    goto/16 :goto_7

    .line 166
    .line 167
    :cond_5
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 168
    .line 169
    invoke-static {v14}, Landroid/os/UserHandle;->isCore(I)Z

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    if-eqz v14, :cond_6

    .line 174
    .line 175
    monitor-exit v12

    .line 176
    :goto_3
    move-object/from16 v16, v8

    .line 177
    .line 178
    goto/16 :goto_5

    .line 179
    .line 180
    :catchall_1
    move-exception v0

    .line 181
    goto/16 :goto_8

    .line 182
    .line 183
    :cond_6
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 184
    .line 185
    iget-boolean v14, v14, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 186
    .line 187
    if-eqz v14, :cond_8

    .line 188
    .line 189
    sget-boolean v14, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 190
    .line 191
    if-eqz v14, :cond_7

    .line 192
    .line 193
    const-string v14, "FreecessController"

    .line 194
    .line 195
    new-instance v15, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string/jumbo v13, "skip freezed app:"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v13, "("

    .line 212
    .line 213
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget v13, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 217
    .line 218
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v13, ")"

    .line 222
    .line 223
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v13

    .line 230
    invoke-static {v14, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v14, " "

    .line 239
    .line 240
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 244
    .line 245
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v11, ":s0"

    .line 249
    .line 250
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v11

    .line 257
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    monitor-exit v12

    .line 261
    goto :goto_3

    .line 262
    :cond_8
    if-eqz v2, :cond_9

    .line 263
    .line 264
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v13

    .line 270
    if-eqz v13, :cond_9

    .line 271
    .line 272
    iget v13, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 273
    .line 274
    if-ne v13, v1, :cond_9

    .line 275
    .line 276
    monitor-exit v12

    .line 277
    goto :goto_3

    .line 278
    :cond_9
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 279
    .line 280
    if-eqz v13, :cond_b

    .line 281
    .line 282
    invoke-static {}, Lcom/android/server/am/FreecessController;->shouldSkipShareUid()Z

    .line 283
    .line 284
    .line 285
    move-result v13

    .line 286
    if-nez v13, :cond_b

    .line 287
    .line 288
    sget-boolean v13, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 289
    .line 290
    if-eqz v13, :cond_a

    .line 291
    .line 292
    const-string v13, "FreecessController"

    .line 293
    .line 294
    new-instance v14, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    const-string/jumbo v15, "skip sharedUidName app:"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    iget-object v15, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v15, "("

    .line 311
    .line 312
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    iget v15, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 316
    .line 317
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v15, ")"

    .line 321
    .line 322
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v14

    .line 329
    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    const-string v14, " "

    .line 338
    .line 339
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 343
    .line 344
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string v11, ":s1"

    .line 348
    .line 349
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v11

    .line 356
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    monitor-exit v12

    .line 360
    goto/16 :goto_3

    .line 361
    .line 362
    :cond_b
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 363
    .line 364
    .line 365
    move-result-object v13

    .line 366
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 367
    .line 368
    iget v15, v11, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 369
    .line 370
    move-object/from16 v16, v8

    .line 371
    .line 372
    const/4 v8, 0x4

    .line 373
    invoke-virtual {v13, v15, v8, v14}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(IILjava/lang/String;)Z

    .line 374
    .line 375
    .line 376
    move-result v13

    .line 377
    if-eqz v13, :cond_d

    .line 378
    .line 379
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 380
    .line 381
    if-eqz v8, :cond_c

    .line 382
    .line 383
    const-string v8, "FreecessController"

    .line 384
    .line 385
    new-instance v13, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .line 389
    .line 390
    const-string/jumbo v14, "skip isInPolicyExceptionList app:"

    .line 391
    .line 392
    .line 393
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 397
    .line 398
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string v14, "("

    .line 402
    .line 403
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 407
    .line 408
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v14, ")"

    .line 412
    .line 413
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v13

    .line 420
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .line 427
    .line 428
    const-string v13, " "

    .line 429
    .line 430
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 434
    .line 435
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const-string v11, ":s2"

    .line 439
    .line 440
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    monitor-exit v12

    .line 451
    goto/16 :goto_5

    .line 452
    .line 453
    :cond_d
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 454
    .line 455
    .line 456
    move-result-object v8

    .line 457
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    .line 459
    .line 460
    sget-boolean v8, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 461
    .line 462
    if-eqz v8, :cond_f

    .line 463
    .line 464
    iget-object v8, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 465
    .line 466
    if-eqz v8, :cond_f

    .line 467
    .line 468
    sget-object v13, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 469
    .line 470
    iget-object v13, v13, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    .line 471
    .line 472
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v8

    .line 476
    if-eqz v8, :cond_f

    .line 477
    .line 478
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 479
    .line 480
    if-eqz v8, :cond_e

    .line 481
    .line 482
    const-string v8, "FreecessController"

    .line 483
    .line 484
    new-instance v13, Ljava/lang/StringBuilder;

    .line 485
    .line 486
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .line 488
    .line 489
    const-string/jumbo v14, "skip to freeze prev app:"

    .line 490
    .line 491
    .line 492
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 496
    .line 497
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v14, ", uid : "

    .line 501
    .line 502
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 506
    .line 507
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v13

    .line 514
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .line 516
    .line 517
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    const-string v13, " "

    .line 523
    .line 524
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 528
    .line 529
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    const-string v11, ":s3"

    .line 533
    .line 534
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v8

    .line 541
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    monitor-exit v12

    .line 545
    goto/16 :goto_5

    .line 546
    .line 547
    :cond_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 548
    .line 549
    .line 550
    move-result v8

    .line 551
    if-lez v8, :cond_11

    .line 552
    .line 553
    iget-object v8, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 554
    .line 555
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v8

    .line 559
    if-eqz v8, :cond_11

    .line 560
    .line 561
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 562
    .line 563
    if-eqz v8, :cond_10

    .line 564
    .line 565
    const-string v8, "FreecessController"

    .line 566
    .line 567
    new-instance v13, Ljava/lang/StringBuilder;

    .line 568
    .line 569
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .line 571
    .line 572
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 573
    .line 574
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    const-string v14, "("

    .line 578
    .line 579
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 583
    .line 584
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    const-string v14, ") has window surface, skip to freeze"

    .line 588
    .line 589
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v13

    .line 596
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .line 598
    .line 599
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    .line 600
    .line 601
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    .line 603
    .line 604
    const-string v13, " "

    .line 605
    .line 606
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 610
    .line 611
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    const-string v11, ":s4"

    .line 615
    .line 616
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v8

    .line 623
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    monitor-exit v12

    .line 627
    goto/16 :goto_5

    .line 628
    .line 629
    :cond_11
    iget-boolean v8, v11, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    .line 630
    .line 631
    if-eqz v8, :cond_13

    .line 632
    .line 633
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 634
    .line 635
    if-eqz v8, :cond_12

    .line 636
    .line 637
    const-string v8, "FreecessController"

    .line 638
    .line 639
    new-instance v13, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    .line 643
    .line 644
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 645
    .line 646
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    const-string v14, "("

    .line 650
    .line 651
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 655
    .line 656
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    const-string v14, ") olaf allowlist, skip to freeze"

    .line 660
    .line 661
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v13

    .line 668
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .line 670
    .line 671
    :cond_12
    new-instance v8, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .line 675
    .line 676
    const-string v13, " "

    .line 677
    .line 678
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 682
    .line 683
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    const-string v11, ":s5"

    .line 687
    .line 688
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v8

    .line 695
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    monitor-exit v12

    .line 699
    goto/16 :goto_5

    .line 700
    .line 701
    :cond_13
    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 702
    .line 703
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 704
    .line 705
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    move-result v8

    .line 709
    if-nez v8, :cond_1b

    .line 710
    .line 711
    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 712
    .line 713
    iget v13, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 714
    .line 715
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v13

    .line 719
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    move-result v8

    .line 723
    if-eqz v8, :cond_14

    .line 724
    .line 725
    goto/16 :goto_6

    .line 726
    .line 727
    :cond_14
    sget-object v8, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 728
    .line 729
    iget v13, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 730
    .line 731
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 732
    .line 733
    .line 734
    move-result-object v13

    .line 735
    iget-object v8, v8, Lcom/android/server/am/mars/util/UidStateMgr;->mTopUidList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 736
    .line 737
    invoke-virtual {v8, v13}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 738
    .line 739
    .line 740
    move-result v8

    .line 741
    if-eqz v8, :cond_16

    .line 742
    .line 743
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 744
    .line 745
    if-eqz v8, :cond_15

    .line 746
    .line 747
    const-string v8, "FreecessController"

    .line 748
    .line 749
    new-instance v13, Ljava/lang/StringBuilder;

    .line 750
    .line 751
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    .line 753
    .line 754
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 755
    .line 756
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    const-string v14, "("

    .line 760
    .line 761
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 765
    .line 766
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    const-string v14, ") is top app, skip to freeze"

    .line 770
    .line 771
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v13

    .line 778
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    .line 780
    .line 781
    :cond_15
    new-instance v8, Ljava/lang/StringBuilder;

    .line 782
    .line 783
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    .line 785
    .line 786
    const-string v13, " "

    .line 787
    .line 788
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 792
    .line 793
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    const-string v11, ":s7"

    .line 797
    .line 798
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v8

    .line 805
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    monitor-exit v12

    .line 809
    goto/16 :goto_5

    .line 810
    .line 811
    :cond_16
    iget-boolean v8, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 812
    .line 813
    if-eqz v8, :cond_18

    .line 814
    .line 815
    iget-object v8, v11, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 816
    .line 817
    if-eqz v8, :cond_18

    .line 818
    .line 819
    iget-boolean v8, v8, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 820
    .line 821
    if-eqz v8, :cond_18

    .line 822
    .line 823
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 824
    .line 825
    if-eqz v8, :cond_17

    .line 826
    .line 827
    const-string v8, "FreecessController"

    .line 828
    .line 829
    new-instance v13, Ljava/lang/StringBuilder;

    .line 830
    .line 831
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 832
    .line 833
    .line 834
    const-string v14, "BG freezed, skip OLAF freeze for "

    .line 835
    .line 836
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 840
    .line 841
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    const-string v14, "("

    .line 845
    .line 846
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 850
    .line 851
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    const-string v14, ")"

    .line 855
    .line 856
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v13

    .line 863
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    .line 865
    .line 866
    :cond_17
    new-instance v8, Ljava/lang/StringBuilder;

    .line 867
    .line 868
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 869
    .line 870
    .line 871
    const-string v13, " "

    .line 872
    .line 873
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 877
    .line 878
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    const-string v11, ":s8"

    .line 882
    .line 883
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v8

    .line 890
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    monitor-exit v12

    .line 894
    goto :goto_5

    .line 895
    :cond_18
    sget-object v8, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 896
    .line 897
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 898
    .line 899
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 900
    .line 901
    iget v15, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 902
    .line 903
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 904
    .line 905
    .line 906
    const/16 v8, 0xb

    .line 907
    .line 908
    invoke-static {v8, v14, v15, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 909
    .line 910
    .line 911
    move-result v13

    .line 912
    if-nez v13, :cond_19

    .line 913
    .line 914
    invoke-virtual {v0, v11, v3}, Lcom/android/server/am/FreecessController;->freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V

    .line 915
    .line 916
    .line 917
    goto :goto_4

    .line 918
    :cond_19
    new-instance v8, Ljava/lang/StringBuilder;

    .line 919
    .line 920
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 921
    .line 922
    .line 923
    const-string v14, " "

    .line 924
    .line 925
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 929
    .line 930
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    const-string v11, ":"

    .line 934
    .line 935
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v8

    .line 945
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    .line 947
    .line 948
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 949
    .line 950
    .line 951
    move-result-wide v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 952
    sub-long/2addr v13, v9

    .line 953
    const-wide/16 v17, 0x5

    .line 954
    .line 955
    cmp-long v8, v13, v17

    .line 956
    .line 957
    if-ltz v8, :cond_1a

    .line 958
    .line 959
    const-wide/16 v8, 0x1

    .line 960
    .line 961
    :try_start_2
    invoke-virtual {v12, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 962
    .line 963
    .line 964
    :catch_0
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 965
    .line 966
    .line 967
    move-result-wide v8

    .line 968
    move-wide v9, v8

    .line 969
    :cond_1a
    monitor-exit v12

    .line 970
    :goto_5
    move-object/from16 v8, v16

    .line 971
    .line 972
    goto/16 :goto_2

    .line 973
    .line 974
    :cond_1b
    :goto_6
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 975
    .line 976
    if-eqz v8, :cond_1c

    .line 977
    .line 978
    const-string v8, "FreecessController"

    .line 979
    .line 980
    new-instance v13, Ljava/lang/StringBuilder;

    .line 981
    .line 982
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 983
    .line 984
    .line 985
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 986
    .line 987
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    const-string v14, "("

    .line 991
    .line 992
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 996
    .line 997
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    const-string v14, ") olaf debug allowlist, skip to freeze"

    .line 1001
    .line 1002
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v13

    .line 1009
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    .line 1011
    .line 1012
    :cond_1c
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1015
    .line 1016
    .line 1017
    const-string v13, " "

    .line 1018
    .line 1019
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    .line 1022
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1023
    .line 1024
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    const-string v11, ":s6"

    .line 1028
    .line 1029
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v8

    .line 1036
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    .line 1039
    monitor-exit v12

    .line 1040
    goto :goto_5

    .line 1041
    :goto_7
    monitor-exit v12

    .line 1042
    goto :goto_5

    .line 1043
    :goto_8
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1044
    throw v0

    .line 1045
    :goto_9
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1046
    throw v0

    .line 1047
    :cond_1d
    sget-object v8, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 1048
    .line 1049
    monitor-enter v8

    .line 1050
    :try_start_5
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 1051
    .line 1052
    iget-object v10, v10, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 1053
    .line 1054
    :goto_a
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 1055
    .line 1056
    .line 1057
    move-result v11

    .line 1058
    if-ge v9, v11, :cond_2b

    .line 1059
    .line 1060
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v11

    .line 1064
    check-cast v11, Lcom/android/server/am/FreecessPkgStatus;

    .line 1065
    .line 1066
    iget-object v12, v11, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 1067
    .line 1068
    if-eqz v12, :cond_1f

    .line 1069
    .line 1070
    iget-boolean v12, v12, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 1071
    .line 1072
    if-eqz v12, :cond_1f

    .line 1073
    .line 1074
    :cond_1e
    :goto_b
    const/16 v12, 0xb

    .line 1075
    .line 1076
    goto/16 :goto_d

    .line 1077
    .line 1078
    :catchall_2
    move-exception v0

    .line 1079
    goto/16 :goto_11

    .line 1080
    .line 1081
    :cond_1f
    if-eqz v2, :cond_20

    .line 1082
    .line 1083
    iget-object v12, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1084
    .line 1085
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v12

    .line 1089
    if-eqz v12, :cond_20

    .line 1090
    .line 1091
    iget v12, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1092
    .line 1093
    if-ne v12, v1, :cond_20

    .line 1094
    .line 1095
    goto :goto_b

    .line 1096
    :cond_20
    iget-object v12, v11, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 1097
    .line 1098
    if-eqz v12, :cond_21

    .line 1099
    .line 1100
    goto :goto_b

    .line 1101
    :cond_21
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v12

    .line 1105
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1106
    .line 1107
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 1108
    .line 1109
    const/4 v15, 0x4

    .line 1110
    invoke-virtual {v12, v14, v15, v13}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(IILjava/lang/String;)Z

    .line 1111
    .line 1112
    .line 1113
    move-result v12

    .line 1114
    if-eqz v12, :cond_22

    .line 1115
    .line 1116
    sget-boolean v12, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 1117
    .line 1118
    if-eqz v12, :cond_1e

    .line 1119
    .line 1120
    const-string v12, "FreecessController"

    .line 1121
    .line 1122
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1125
    .line 1126
    .line 1127
    const-string/jumbo v14, "skip isInPolicyExceptionList app:"

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    .line 1133
    iget-object v11, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1134
    .line 1135
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v11

    .line 1142
    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    .line 1144
    .line 1145
    goto :goto_b

    .line 1146
    :cond_22
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v12

    .line 1150
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1151
    .line 1152
    .line 1153
    sget-boolean v12, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 1154
    .line 1155
    if-eqz v12, :cond_23

    .line 1156
    .line 1157
    iget-object v12, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1158
    .line 1159
    if-eqz v12, :cond_23

    .line 1160
    .line 1161
    sget-object v13, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 1162
    .line 1163
    iget-object v13, v13, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    .line 1164
    .line 1165
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v12

    .line 1169
    if-eqz v12, :cond_23

    .line 1170
    .line 1171
    sget-boolean v12, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 1172
    .line 1173
    if-eqz v12, :cond_1e

    .line 1174
    .line 1175
    const-string v12, "FreecessController"

    .line 1176
    .line 1177
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1180
    .line 1181
    .line 1182
    const-string/jumbo v14, "skip to freeze prev app:"

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    .line 1187
    .line 1188
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1189
    .line 1190
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    .line 1192
    .line 1193
    const-string v14, ", uid : "

    .line 1194
    .line 1195
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    .line 1197
    .line 1198
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1199
    .line 1200
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1201
    .line 1202
    .line 1203
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v11

    .line 1207
    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    .line 1209
    .line 1210
    goto/16 :goto_b

    .line 1211
    .line 1212
    :cond_23
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1213
    .line 1214
    .line 1215
    move-result v12

    .line 1216
    if-lez v12, :cond_24

    .line 1217
    .line 1218
    iget-object v12, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1219
    .line 1220
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1221
    .line 1222
    .line 1223
    move-result v12

    .line 1224
    if-eqz v12, :cond_24

    .line 1225
    .line 1226
    sget-boolean v12, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 1227
    .line 1228
    if-eqz v12, :cond_1e

    .line 1229
    .line 1230
    const-string v12, "FreecessController"

    .line 1231
    .line 1232
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1235
    .line 1236
    .line 1237
    iget-object v11, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1238
    .line 1239
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    .line 1241
    .line 1242
    const-string v11, " has window surface, skip to freeze"

    .line 1243
    .line 1244
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v11

    .line 1251
    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    .line 1253
    .line 1254
    goto/16 :goto_b

    .line 1255
    .line 1256
    :cond_24
    iget-boolean v12, v11, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    .line 1257
    .line 1258
    if-eqz v12, :cond_25

    .line 1259
    .line 1260
    sget-boolean v12, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 1261
    .line 1262
    if-eqz v12, :cond_1e

    .line 1263
    .line 1264
    const-string v12, "FreecessController"

    .line 1265
    .line 1266
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1267
    .line 1268
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1269
    .line 1270
    .line 1271
    iget-object v11, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1272
    .line 1273
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    .line 1275
    .line 1276
    const-string v11, " olaf allowlist, skip to freeze"

    .line 1277
    .line 1278
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v11

    .line 1285
    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    .line 1287
    .line 1288
    goto/16 :goto_b

    .line 1289
    .line 1290
    :cond_25
    iget-object v12, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 1291
    .line 1292
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1293
    .line 1294
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1295
    .line 1296
    .line 1297
    move-result v12

    .line 1298
    if-nez v12, :cond_26

    .line 1299
    .line 1300
    iget-object v12, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 1301
    .line 1302
    iget v13, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1303
    .line 1304
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v13

    .line 1308
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1309
    .line 1310
    .line 1311
    move-result v12

    .line 1312
    if-eqz v12, :cond_27

    .line 1313
    .line 1314
    :cond_26
    const/16 v12, 0xb

    .line 1315
    .line 1316
    goto :goto_c

    .line 1317
    :cond_27
    sget-object v12, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 1318
    .line 1319
    iget v13, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1320
    .line 1321
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v13

    .line 1325
    iget-object v12, v12, Lcom/android/server/am/mars/util/UidStateMgr;->mTopUidList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 1326
    .line 1327
    invoke-virtual {v12, v13}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 1328
    .line 1329
    .line 1330
    move-result v12

    .line 1331
    if-eqz v12, :cond_28

    .line 1332
    .line 1333
    const-string v12, "FreecessController"

    .line 1334
    .line 1335
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1336
    .line 1337
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1338
    .line 1339
    .line 1340
    iget-object v11, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1341
    .line 1342
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    .line 1344
    .line 1345
    const-string v11, " is top app, skip to freeze"

    .line 1346
    .line 1347
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v11

    .line 1354
    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    .line 1356
    .line 1357
    goto/16 :goto_b

    .line 1358
    .line 1359
    :cond_28
    sget-object v12, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 1360
    .line 1361
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1362
    .line 1363
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 1364
    .line 1365
    iget v15, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1366
    .line 1367
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1368
    .line 1369
    .line 1370
    const/16 v12, 0xb

    .line 1371
    .line 1372
    invoke-static {v12, v14, v15, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 1373
    .line 1374
    .line 1375
    move-result v13

    .line 1376
    if-nez v13, :cond_29

    .line 1377
    .line 1378
    invoke-virtual {v0, v11, v3}, Lcom/android/server/am/FreecessController;->freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V

    .line 1379
    .line 1380
    .line 1381
    goto :goto_d

    .line 1382
    :cond_29
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1383
    .line 1384
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1385
    .line 1386
    .line 1387
    const-string v15, " "

    .line 1388
    .line 1389
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    .line 1391
    .line 1392
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1393
    .line 1394
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1395
    .line 1396
    .line 1397
    const-string v11, ":"

    .line 1398
    .line 1399
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    .line 1401
    .line 1402
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v11

    .line 1409
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    .line 1411
    .line 1412
    goto :goto_d

    .line 1413
    :goto_c
    sget-boolean v13, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 1414
    .line 1415
    if-eqz v13, :cond_2a

    .line 1416
    .line 1417
    const-string v13, "FreecessController"

    .line 1418
    .line 1419
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1420
    .line 1421
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1422
    .line 1423
    .line 1424
    iget-object v11, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1425
    .line 1426
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    .line 1428
    .line 1429
    const-string v11, " olaf debug allowlist, skip to freeze"

    .line 1430
    .line 1431
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v11

    .line 1438
    invoke-static {v13, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    .line 1440
    .line 1441
    :cond_2a
    :goto_d
    add-int/lit8 v9, v9, 0x1

    .line 1442
    .line 1443
    goto/16 :goto_a

    .line 1444
    .line 1445
    :cond_2b
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1446
    :cond_2c
    iget-object v7, v0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 1447
    .line 1448
    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    .line 1449
    .line 1450
    .line 1451
    move-result v7

    .line 1452
    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    .line 1453
    .line 1454
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v8

    .line 1458
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1459
    .line 1460
    .line 1461
    move-result v9

    .line 1462
    if-eqz v9, :cond_30

    .line 1463
    .line 1464
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v9

    .line 1468
    check-cast v9, Ljava/lang/String;

    .line 1469
    .line 1470
    if-nez v9, :cond_2d

    .line 1471
    .line 1472
    goto :goto_e

    .line 1473
    :cond_2d
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1474
    .line 1475
    .line 1476
    move-result v10

    .line 1477
    if-eqz v10, :cond_2e

    .line 1478
    .line 1479
    goto :goto_e

    .line 1480
    :cond_2e
    sget-object v10, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 1481
    .line 1482
    monitor-enter v10

    .line 1483
    :try_start_6
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v11

    .line 1487
    invoke-virtual {v11, v7, v9}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 1488
    .line 1489
    .line 1490
    move-result v11

    .line 1491
    if-eqz v11, :cond_2f

    .line 1492
    .line 1493
    invoke-virtual {v0, v7, v9}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v9

    .line 1497
    if-eqz v9, :cond_2f

    .line 1498
    .line 1499
    invoke-virtual {v0, v9, v3}, Lcom/android/server/am/FreecessController;->freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V

    .line 1500
    .line 1501
    .line 1502
    goto :goto_f

    .line 1503
    :catchall_3
    move-exception v0

    .line 1504
    goto :goto_10

    .line 1505
    :cond_2f
    :goto_f
    monitor-exit v10

    .line 1506
    goto :goto_e

    .line 1507
    :goto_10
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1508
    throw v0

    .line 1509
    :cond_30
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 1510
    .line 1511
    if-eqz v2, :cond_31

    .line 1512
    .line 1513
    const-wide/16 v7, 0x40

    .line 1514
    .line 1515
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1516
    .line 1517
    .line 1518
    :cond_31
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v2

    .line 1522
    const-string v7, "OLAF "

    .line 1523
    .line 1524
    const-string v8, " ["

    .line 1525
    .line 1526
    invoke-static {v1, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v1

    .line 1530
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v7

    .line 1534
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1535
    .line 1536
    .line 1537
    invoke-static {v5, v6}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v5

    .line 1541
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    .line 1544
    const-string v5, "]"

    .line 1545
    .line 1546
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v1

    .line 1553
    invoke-static {v3, v4}, Lcom/android/server/am/FreecessController;->convertLevelChangeInfoToString(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v3

    .line 1557
    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    .line 1559
    .line 1560
    sget-object v1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 1561
    .line 1562
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 1563
    .line 1564
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 1565
    .line 1566
    .line 1567
    move-result-wide v2

    .line 1568
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessHandler;->sendOLAFTimeOutMsg(J)V

    .line 1569
    .line 1570
    .line 1571
    return-void

    .line 1572
    :goto_11
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1573
    throw v0
.end method

.method public final turnOnOffFreecessMonitor(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string v0, "DisableFC"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    const-string v2, "Packet"

    .line 8
    .line 9
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_e

    .line 15
    .line 16
    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 17
    .line 18
    iget-boolean v6, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 19
    .line 20
    if-nez v6, :cond_0

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_0
    sget-object v6, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 25
    .line 26
    iget-boolean v6, v6, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    .line 27
    .line 28
    iget v7, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 29
    .line 30
    if-eqz v6, :cond_1

    .line 31
    .line 32
    sget-object v6, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 33
    .line 34
    const-string v8, "Signal"

    .line 35
    .line 36
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    iget-object v6, v6, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 41
    .line 42
    new-instance v9, Lcom/android/server/am/FreecessHandler$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    invoke-direct {v9, v7, v8}, Lcom/android/server/am/FreecessHandler$$ExternalSyntheticLambda0;-><init>(IZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v9}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-boolean v6, v0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 51
    .line 52
    const/4 v8, 0x1

    .line 53
    const-string v9, " "

    .line 54
    .line 55
    if-eqz v6, :cond_7

    .line 56
    .line 57
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_7

    .line 64
    .line 65
    sget-boolean v6, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    .line 66
    .line 67
    const-string v10, "UFA"

    .line 68
    .line 69
    const-string v11, "OLAF:"

    .line 70
    .line 71
    if-eqz v6, :cond_5

    .line 72
    .line 73
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->fastOlafUfzList:Ljava/util/Set;

    .line 74
    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    check-cast v6, Ljava/util/HashSet;

    .line 78
    .line 79
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-nez v6, :cond_3

    .line 84
    .line 85
    :cond_2
    const-string v6, "BTOP(0)"

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_4

    .line 92
    .line 93
    :cond_3
    iget-boolean v6, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 94
    .line 95
    if-eqz v6, :cond_7

    .line 96
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 119
    .line 120
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 121
    .line 122
    invoke-static {v11, v5, v9}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v1, v10, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return v0

    .line 141
    :cond_4
    iput-boolean v8, v1, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    .line 142
    .line 143
    iput-object v5, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    .line 144
    .line 145
    return v3

    .line 146
    :cond_5
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/Set;

    .line 147
    .line 148
    if-eqz v6, :cond_6

    .line 149
    .line 150
    check-cast v6, Ljava/util/HashSet;

    .line 151
    .line 152
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-eqz v6, :cond_6

    .line 157
    .line 158
    iget-boolean v6, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 159
    .line 160
    if-eqz v6, :cond_6

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 184
    .line 185
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 186
    .line 187
    invoke-static {v11, v5, v9}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v10, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return v0

    .line 206
    :cond_6
    if-eqz p3, :cond_7

    .line 207
    .line 208
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/Set;

    .line 209
    .line 210
    if-eqz v6, :cond_7

    .line 211
    .line 212
    check-cast v6, Ljava/util/HashSet;

    .line 213
    .line 214
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-nez v6, :cond_7

    .line 219
    .line 220
    iput-boolean v8, v1, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    .line 221
    .line 222
    iput-object v5, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    .line 223
    .line 224
    return v3

    .line 225
    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 230
    .line 231
    invoke-virtual {v10, v6}, Lcom/android/server/am/FreecessController$UidPidMap;->getPidList(Ljava/lang/Integer;)Ljava/util/ArrayList;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/FreecessController;->unfreezeAllProcesses(Ljava/util/ArrayList;I)Z

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    iget-object v15, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 240
    .line 241
    if-eqz v10, :cond_c

    .line 242
    .line 243
    iget-boolean v2, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 244
    .line 245
    if-nez v2, :cond_9

    .line 246
    .line 247
    iget-boolean v2, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    .line 248
    .line 249
    if-eqz v2, :cond_8

    .line 250
    .line 251
    goto :goto_0

    .line 252
    :cond_8
    move v2, v3

    .line 253
    goto :goto_1

    .line 254
    :cond_9
    :goto_0
    move v2, v8

    .line 255
    :goto_1
    invoke-virtual {v0, v1, v6, v5}, Lcom/android/server/am/FreecessController;->onUidUnfrozen(Lcom/android/server/am/FreecessPkgStatus;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    sget-object v6, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 259
    .line 260
    new-instance v11, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    iget-wide v12, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    .line 284
    .line 285
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    invoke-static {v12, v13}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    const-string v9, "UFZ"

    .line 300
    .line 301
    invoke-virtual {v6, v9, v4}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-boolean v4, v0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 305
    .line 306
    if-eqz v4, :cond_a

    .line 307
    .line 308
    iput-boolean v3, v1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 309
    .line 310
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->calmModeFilterList:Ljava/util/Set;

    .line 311
    .line 312
    check-cast v2, Ljava/util/HashSet;

    .line 313
    .line 314
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-nez v2, :cond_b

    .line 319
    .line 320
    sget-object v2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 321
    .line 322
    iget v3, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 323
    .line 324
    const-string v4, "CalmMode"

    .line 325
    .line 326
    invoke-virtual {v2, v3, v15, v4}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    goto :goto_2

    .line 330
    :cond_a
    if-eqz v2, :cond_b

    .line 331
    .line 332
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->filterList:Ljava/util/Set;

    .line 333
    .line 334
    if-eqz v2, :cond_b

    .line 335
    .line 336
    check-cast v2, Ljava/util/HashSet;

    .line 337
    .line 338
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    if-nez v2, :cond_b

    .line 343
    .line 344
    iget-boolean v2, v0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 345
    .line 346
    if-eqz v2, :cond_b

    .line 347
    .line 348
    sget-object v2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 349
    .line 350
    invoke-virtual {v2, v7, v15, v5, v8}, Lcom/android/server/am/FreecessHandler;->sendUidLcdOnQuickFzMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 351
    .line 352
    .line 353
    :cond_b
    :goto_2
    iget v2, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 354
    .line 355
    const-wide/16 v3, 0x5dc

    .line 356
    .line 357
    iget-object v6, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 358
    .line 359
    move-object/from16 v0, p0

    .line 360
    .line 361
    move v1, v2

    .line 362
    move-object v2, v6

    .line 363
    move-object/from16 v5, p2

    .line 364
    .line 365
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z

    .line 366
    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_c
    if-eqz v2, :cond_d

    .line 370
    .line 371
    iget-boolean v0, v1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 372
    .line 373
    if-eqz v0, :cond_d

    .line 374
    .line 375
    sget-object v11, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 376
    .line 377
    iget v12, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 378
    .line 379
    iget v13, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 380
    .line 381
    const/16 v19, -0x1

    .line 382
    .line 383
    const/4 v14, 0x0

    .line 384
    const/16 v16, 0x1

    .line 385
    .line 386
    const/16 v17, 0x0

    .line 387
    .line 388
    const/16 v18, 0x1

    .line 389
    .line 390
    move-object v0, v15

    .line 391
    invoke-virtual/range {v11 .. v19}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(IIZLjava/lang/String;IZZI)V

    .line 392
    .line 393
    .line 394
    goto :goto_3

    .line 395
    :cond_d
    move-object v0, v15

    .line 396
    :goto_3
    const-string v1, "UFZ error : "

    .line 397
    .line 398
    const-string v2, "("

    .line 399
    .line 400
    const-string v3, ") "

    .line 401
    .line 402
    invoke-static {v7, v1, v0, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    const-string v1, "FreecessController"

    .line 407
    .line 408
    invoke-static {v0, v5, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    :goto_4
    return v10

    .line 412
    :cond_e
    :goto_5
    return v3
.end method

.method public final unFreezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iput-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 9
    .line 10
    :cond_0
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "CalmMode UFZ : "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "("

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, "), reason: "

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p2, "FreecessController"

    .line 49
    .line 50
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    return p0
.end method

.method public final unFreezeForOLAF(Ljava/lang/String;)V
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 18
    .line 19
    const-wide/16 v4, 0x40

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const-string v2, "FreecessController"

    .line 24
    .line 25
    const-string v6, "OLAF unfreeze for "

    .line 26
    .line 27
    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const-string v2, "Unfreeze OLAF"

    .line 35
    .line 36
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    sget-object v6, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 45
    .line 46
    monitor-enter v6

    .line 47
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 48
    .line 49
    iget-object v7, v7, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 50
    .line 51
    move v8, v3

    .line 52
    :goto_0
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    if-ge v8, v9, :cond_1

    .line 57
    .line 58
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    check-cast v9, Lcom/android/server/am/FreecessPkgStatus;

    .line 63
    .line 64
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    add-int/lit8 v8, v8, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto/16 :goto_7

    .line 72
    .line 73
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v6

    .line 78
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_b

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    check-cast v8, Lcom/android/server/am/FreecessPkgStatus;

    .line 93
    .line 94
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 95
    .line 96
    monitor-enter v9

    .line 97
    if-eqz v8, :cond_a

    .line 98
    .line 99
    :try_start_1
    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 100
    .line 101
    if-nez v10, :cond_2

    .line 102
    .line 103
    goto/16 :goto_4

    .line 104
    .line 105
    :cond_2
    iget-boolean v11, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 106
    .line 107
    if-eqz v11, :cond_3

    .line 108
    .line 109
    iget-boolean v11, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 110
    .line 111
    if-eqz v11, :cond_3

    .line 112
    .line 113
    iget-boolean v11, v8, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    .line 114
    .line 115
    if-nez v11, :cond_3

    .line 116
    .line 117
    const-string v10, "FreecessController"

    .line 118
    .line 119
    new-instance v11, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v12, "BG freezed, skip OLAF unfreeze for ("

    .line 125
    .line 126
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v12, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v12, ", "

    .line 135
    .line 136
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget v8, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 140
    .line 141
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v8, ")"

    .line 145
    .line 146
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    monitor-exit v9

    .line 157
    goto :goto_1

    .line 158
    :catchall_1
    move-exception p0

    .line 159
    goto/16 :goto_5

    .line 160
    .line 161
    :cond_3
    iget-boolean v11, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 162
    .line 163
    if-eqz v11, :cond_4

    .line 164
    .line 165
    iget-boolean v11, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 166
    .line 167
    if-eqz v11, :cond_4

    .line 168
    .line 169
    iput-boolean v3, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 170
    .line 171
    const/4 v10, 0x3

    .line 172
    iput v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 173
    .line 174
    const/4 v10, 0x2

    .line 175
    iput v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 176
    .line 177
    monitor-exit v9

    .line 178
    goto :goto_1

    .line 179
    :cond_4
    sget-object v10, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 180
    .line 181
    iget-object v11, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 182
    .line 183
    iget v12, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 184
    .line 185
    invoke-virtual {v10, v12, v11}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    if-nez v10, :cond_6

    .line 190
    .line 191
    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 192
    .line 193
    iget-boolean v10, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 194
    .line 195
    if-eqz v10, :cond_5

    .line 196
    .line 197
    new-instance v10, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string v11, "OLAF:"

    .line 203
    .line 204
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    invoke-virtual {p0, v8, v10, v0}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v11, ":nMARsTG"

    .line 227
    .line 228
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    invoke-virtual {p0, v8, v10, v3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_6
    iget-boolean v10, v8, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    .line 240
    .line 241
    if-eqz v10, :cond_7

    .line 242
    .line 243
    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 244
    .line 245
    iget-object v10, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {p0, v8, v10}, Lcom/android/server/am/FreecessController;->unfreezePackageForPending(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iput-boolean v3, v8, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_7
    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 254
    .line 255
    iget-boolean v10, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 256
    .line 257
    if-eqz v10, :cond_8

    .line 258
    .line 259
    new-instance v10, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v11, "OLAF:"

    .line 265
    .line 266
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v10

    .line 276
    invoke-virtual {p0, v8, v10, v0}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    .line 277
    .line 278
    .line 279
    :cond_8
    :goto_2
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 283
    .line 284
    .line 285
    move-result-wide v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 286
    sub-long/2addr v10, v6

    .line 287
    const-wide/16 v12, 0x5

    .line 288
    .line 289
    cmp-long v8, v10, v12

    .line 290
    .line 291
    if-ltz v8, :cond_9

    .line 292
    .line 293
    const-wide/16 v6, 0x1

    .line 294
    .line 295
    :try_start_2
    invoke-virtual {v9, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 296
    .line 297
    .line 298
    :catch_0
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 299
    .line 300
    .line 301
    move-result-wide v6

    .line 302
    :cond_9
    monitor-exit v9

    .line 303
    goto/16 :goto_1

    .line 304
    .line 305
    :cond_a
    :goto_4
    monitor-exit v9

    .line 306
    goto/16 :goto_1

    .line 307
    .line 308
    :goto_5
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 309
    throw p0

    .line 310
    :cond_b
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 311
    .line 312
    if-eqz v2, :cond_c

    .line 313
    .line 314
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 315
    .line 316
    .line 317
    :cond_c
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 318
    .line 319
    const-string v4, "UFA"

    .line 320
    .line 321
    const-string v5, "OLAF:"

    .line 322
    .line 323
    const-string v6, " "

    .line 324
    .line 325
    invoke-static {v5, p1, v6}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-virtual {v2, v4, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    .line 344
    .line 345
    if-nez p1, :cond_e

    .line 346
    .line 347
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    if-ge v3, p1, :cond_e

    .line 352
    .line 353
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    check-cast p1, Lcom/android/server/am/FreecessPkgStatus;

    .line 358
    .line 359
    if-eqz p1, :cond_d

    .line 360
    .line 361
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 362
    .line 363
    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 364
    .line 365
    const-string/jumbo v2, "uidIdle"

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/am/FreecessController;->triggerLcdOnFreeze(ILjava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 372
    .line 373
    goto :goto_6

    .line 374
    :cond_e
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 375
    .line 376
    monitor-enter p1

    .line 377
    const-wide/16 v0, 0x0

    .line 378
    .line 379
    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 384
    .line 385
    monitor-exit p1

    .line 386
    return-void

    .line 387
    :catchall_2
    move-exception p0

    .line 388
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 389
    throw p0

    .line 390
    :goto_7
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 391
    throw p0
.end method

.method public final unFreezePackage(ILjava/lang/String;)V
    .locals 5

    .line 9
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 11
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 12
    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 v4, 0x1

    .line 13
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move p0, v1

    move v3, p0

    .line 14
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    if-eqz v2, :cond_1

    .line 15
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 16
    invoke-virtual {p0, v3, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    :cond_1
    return-void

    .line 17
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v3, v3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {p0, v1, p3, v3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, v2

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 6
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 7
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    :cond_1
    return-void

    .line 8
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unFreezePackage(Ljava/lang/String;)V
    .locals 5

    .line 18
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 20
    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 22
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 23
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    .line 24
    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 25
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unFreezeSpecialPackage(ILjava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 27
    .line 28
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 29
    .line 30
    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 31
    .line 32
    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    iput v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 46
    .line 47
    sget-object v2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 48
    .line 49
    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 50
    .line 51
    const/4 v4, 0x2

    .line 52
    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 56
    .line 57
    const/4 v4, 0x3

    .line 58
    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 62
    .line 63
    const/4 v4, 0x4

    .line 64
    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 68
    .line 69
    const/16 v4, 0x1c

    .line 70
    .line 71
    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 75
    .line 76
    invoke-virtual {p0, v2, v1, p2, p1}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    monitor-exit v0

    .line 80
    return-void

    .line 81
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0
.end method

.method public final unfreezeAllProcesses(Ljava/util/ArrayList;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/FreecessController;->unfreezeProcess(ILjava/lang/Integer;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    and-int/2addr v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return v0
.end method

.method public final unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/android/server/am/FreecessController$UidPidMap;->getPidList(Ljava/lang/Integer;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessController;->unfreezeAllProcesses(Ljava/util/ArrayList;I)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/FreecessController;->onUidUnfrozen(Lcom/android/server/am/FreecessPkgStatus;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p0, " "

    .line 25
    .line 26
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p3, "OLAF UFZ : "

    .line 39
    .line 40
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 44
    .line 45
    const-string p3, "("

    .line 46
    .line 47
    const-string v3, ") "

    .line 48
    .line 49
    invoke-static {v1, p1, p3, v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, " reason: "

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string p1, "FreecessController"

    .line 68
    .line 69
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_0
    return v2
.end method

.method public final unfreezePackageForPending(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "Packet"

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 14
    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 20
    .line 21
    invoke-virtual {v5, v4}, Lcom/android/server/am/FreecessController$UidPidMap;->getPidList(Ljava/lang/Integer;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget v5, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 26
    .line 27
    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/FreecessController;->unfreezeAllProcesses(Ljava/util/ArrayList;I)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    iget-object v15, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 32
    .line 33
    const-string v14, "("

    .line 34
    .line 35
    const-string v13, "FreecessController"

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/am/FreecessController;->onUidUnfrozen(Lcom/android/server/am/FreecessPkgStatus;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 43
    .line 44
    const-string v3, "OLAF:P-"

    .line 45
    .line 46
    const-string v4, " "

    .line 47
    .line 48
    invoke-static {v3, v2, v4, v15, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 59
    .line 60
    iget-wide v6, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {v6, v7}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v3, "UFZ"

    .line 77
    .line 78
    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    const-string v0, "OLAF Pending UFZ : "

    .line 86
    .line 87
    const-string v1, "), reason: "

    .line 88
    .line 89
    invoke-static {v5, v0, v15, v14, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0, v2, v13}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_0
    if-eqz v3, :cond_1

    .line 98
    .line 99
    iget-boolean v0, v1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 100
    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    sget-object v7, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 104
    .line 105
    iget v8, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 106
    .line 107
    iget v9, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 108
    .line 109
    const/4 v0, -0x1

    .line 110
    const/4 v10, 0x0

    .line 111
    const/4 v12, 0x1

    .line 112
    const/4 v1, 0x0

    .line 113
    const/4 v3, 0x1

    .line 114
    move-object v11, v15

    .line 115
    move-object v4, v13

    .line 116
    move v13, v1

    .line 117
    move-object v1, v14

    .line 118
    move v14, v3

    .line 119
    move-object v3, v15

    .line 120
    move v15, v0

    .line 121
    invoke-virtual/range {v7 .. v15}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(IIZLjava/lang/String;IZZI)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_1
    move-object v4, v13

    .line 126
    move-object v1, v14

    .line 127
    move-object v3, v15

    .line 128
    :goto_0
    const-string v0, "UFZ error : "

    .line 129
    .line 130
    const-string v6, ")"

    .line 131
    .line 132
    invoke-static {v5, v0, v3, v1, v6}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0, v2, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_2
    :goto_1
    return-void
.end method

.method public final unfreezeProcess(ILjava/lang/Integer;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/FreecessController;->requestProcessFrozen(ILjava/lang/Integer;Z)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    .line 10
    .line 11
    add-int/2addr v1, v2

    .line 12
    iput v1, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v2, "cntFailUnfreeze="

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p0, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    .line 23
    .line 24
    const-string v2, ", uid="

    .line 25
    .line 26
    const-string v3, ", fpid="

    .line 27
    .line 28
    invoke-static {p0, p1, v2, v3, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p0, ")"

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 44
    .line 45
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 46
    .line 47
    const-string p2, "DEV"

    .line 48
    .line 49
    invoke-virtual {p1, p2, p0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return v0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    iput-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    monitor-exit v0

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    iget-object v1, v0, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    .line 99
    .line 100
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    :goto_0
    monitor-exit v0

    .line 107
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 108
    .line 109
    monitor-enter p1

    .line 110
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 111
    .line 112
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    monitor-exit p1

    .line 116
    return v2

    .line 117
    :catchall_1
    move-exception p0

    .line 118
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    throw p0

    .line 120
    :goto_2
    monitor-exit v0

    .line 121
    throw p0
.end method

.method public final unfreezeWallPaperPackage()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackageList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const-string v4, "WallPaper"

    .line 32
    .line 33
    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0

    .line 40
    throw p0
.end method

.method public final updateAbnormalAppFirewall(IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "updateAbnormalAppFirewall uid "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", allow "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "FreecessController"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreezeExcludePackages:Ljava/util/Set;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezeExcludePackages:Ljava/util/Set;

    .line 19
    .line 20
    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 21
    .line 22
    check-cast v2, Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit v0

    .line 36
    goto :goto_2

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0

    .line 39
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    .line 40
    .line 41
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 42
    .line 43
    check-cast v0, Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 52
    .line 53
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->isInOlafAllowList(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    .line 62
    .line 63
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mGpsDefaultAllowList:Ljava/util/List;

    .line 64
    .line 65
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 66
    .line 67
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 74
    .line 75
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCtsGtsList:Ljava/util/Set;

    .line 76
    .line 77
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 78
    .line 79
    check-cast p0, Ljava/util/HashSet;

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_5

    .line 86
    .line 87
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    .line 88
    .line 89
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 90
    .line 91
    :cond_5
    return-void
.end method

.method public updateFreezedUidFirewall(IZ)V
    .locals 8

    .line 1
    const-string v0, "Error occured while updateFreezedUidFirewall: "

    .line 2
    .line 3
    const-string v1, ",7,2"

    .line 4
    .line 5
    const-string v2, "[FRZ] "

    .line 6
    .line 7
    const-string v3, ",7,1"

    .line 8
    .line 9
    const-string v4, "[UFZ] "

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 16
    .line 17
    if-nez v7, :cond_0

    .line 18
    .line 19
    const-string/jumbo v7, "network_management"

    .line 20
    .line 21
    .line 22
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    invoke-static {v7}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    iput-object v7, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 31
    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 33
    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    const/4 v7, 0x7

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    :try_start_0
    invoke-interface {p0, v7, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 41
    .line 42
    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 59
    .line 60
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Lcom/android/server/am/MARsPolicyManager;->addNetDebugInfoToHistory(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 p2, 0x2

    .line 71
    invoke-interface {p0, v7, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 72
    .line 73
    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 90
    .line 91
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 92
    .line 93
    invoke-virtual {p1, p0}, Lcom/android/server/am/MARsPolicyManager;->addNetDebugInfoToHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :goto_1
    :try_start_1
    const-string p1, "FreecessController"

    .line 101
    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_2
    :goto_3
    return-void
.end method

.method public final updateRunningLocationPackages()V
    .locals 4

    .line 1
    const-string v0, "FreecessController"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    const-string/jumbo v1, "location"

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 28
    .line 29
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 30
    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    invoke-interface {v1}, Landroid/location/ILocationManager;->getGPSUsingApps()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/Integer;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;

    .line 56
    .line 57
    check-cast v3, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_2

    .line 64
    .line 65
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;

    .line 66
    .line 67
    check-cast v3, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string/jumbo v2, "mGPSAllowList: "

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;

    .line 85
    .line 86
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    const-string/jumbo p0, "failed to updateRunningLocationPackages!"

    .line 98
    .line 99
    .line 100
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_1
    return-void
.end method
