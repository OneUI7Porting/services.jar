.class public final Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public volatile mAllowUserUnlocking:Z

.field public mBackgroundUserScheduledStopTimeSecs:I

.field public final mCompletedEventTypes:Landroid/util/SparseIntArray;

.field public volatile mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

.field public mCurrentDexMode:I

.field public mCurrentProfileIds:[I

.field public volatile mCurrentUserId:I

.field public mDelayUserDataLocking:Z

.field public final mHandler:Landroid/os/Handler;

.field public mInitialized:Z

.field public final mInjector:Lcom/android/server/am/UserController$Injector;

.field public mIsBroadcastSentForSystemUserStarted:Z

.field public mIsBroadcastSentForSystemUserStarting:Z

.field public final mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

.field public volatile mLastUserUnlockingUptime:J

.field public final mLock:Ljava/lang/Object;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mMaxRunningUsers:I

.field public final mPendingTargetUserIds:Ljava/util/ArrayDeque;

.field public final mPendingUserStarts:Ljava/util/List;

.field public mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

.field public mStartedUserArray:[I

.field public final mStartedUsers:Landroid/util/SparseArray;

.field public mStopUserOnSwitch:I

.field public mSwitchingFromSystemUserMessage:Ljava/lang/String;

.field public mSwitchingToSystemUserMessage:Ljava/lang/String;

.field public volatile mTargetUserId:I

.field public mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

.field public final mUiHandler:Landroid/os/Handler;

.field public final mUserLifecycleListener:Lcom/android/server/am/UserController$1;

.field public final mUserLru:Ljava/util/ArrayList;

.field public final mUserProfileGroupIds:Landroid/util/SparseIntArray;

.field public final mUserSwitchObservers:Landroid/os/RemoteCallbackList;

.field public mUserSwitchUiEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController$Injector;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/am/UserController;->mBackgroundUserScheduledStopTimeSecs:I

    .line 6
    .line 7
    new-instance v1, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 16
    .line 17
    const/16 v2, -0x2710

    .line 18
    .line 19
    iput v2, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 20
    .line 21
    new-instance v2, Ljava/util/ArrayDeque;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    .line 27
    .line 28
    new-instance v2, Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 34
    .line 35
    new-instance v3, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 41
    .line 42
    filled-new-array {v1}, [I

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iput-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 47
    .line 48
    new-array v4, v1, [I

    .line 49
    .line 50
    iput-object v4, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 51
    .line 52
    new-instance v4, Landroid/util/SparseIntArray;

    .line 53
    .line 54
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 58
    .line 59
    new-instance v4, Landroid/os/RemoteCallbackList;

    .line 60
    .line 61
    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v4, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    iput-boolean v4, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 68
    .line 69
    new-instance v4, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v4, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 75
    .line 76
    new-instance v4, Landroid/util/SparseIntArray;

    .line 77
    .line 78
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v4, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    .line 82
    .line 83
    iput v0, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    .line 84
    .line 85
    const-wide/16 v4, 0x0

    .line 86
    .line 87
    iput-wide v4, p0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    .line 88
    .line 89
    iput v1, p0, Lcom/android/server/am/UserController;->mCurrentDexMode:I

    .line 90
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    .line 97
    .line 98
    new-instance v0, Lcom/android/server/am/UserController$1;

    .line 99
    .line 100
    invoke-direct {v0, p0}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/android/server/am/UserController;->mUserLifecycleListener:Lcom/android/server/am/UserController$1;

    .line 104
    .line 105
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 106
    .line 107
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    new-instance v0, Landroid/os/Handler;

    .line 119
    .line 120
    iget-object v4, p1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 121
    .line 122
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 123
    .line 124
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-direct {v0, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 129
    .line 130
    .line 131
    iput-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 132
    .line 133
    new-instance v0, Landroid/os/Handler;

    .line 134
    .line 135
    iget-object v4, p1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 136
    .line 137
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 138
    .line 139
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-direct {v0, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 147
    .line 148
    new-instance v0, Lcom/android/server/am/UserState;

    .line 149
    .line 150
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 151
    .line 152
    invoke-direct {v0, v4}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 153
    .line 154
    .line 155
    iget-object v4, v0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 156
    .line 157
    new-instance v5, Lcom/android/server/am/UserController$UserProgressListener;

    .line 158
    .line 159
    invoke-direct {v5}, Landroid/os/IProgressListener$Stub;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v5}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 176
    .line 177
    iget-object p1, p1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 178
    .line 179
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 180
    .line 181
    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 182
    .line 183
    .line 184
    iput-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public static asyncTraceBegin(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "ActivityManager"

    .line 10
    .line 11
    const-string v2, "%s - asyncTraceBegin(%d)"

    .line 12
    .line 13
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v0, 0x40

    .line 17
    .line 18
    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static asyncTraceEnd(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x40

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string p1, "ActivityManager"

    .line 15
    .line 16
    const-string v0, "%s - asyncTraceEnd(%d)"

    .line 17
    .line 18
    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static showEventLog(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/EventLogTags;->writeBootProgressAmsState(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "!@AM_BOOT_PROGRESS , uid : "

    .line 5
    .line 6
    const-string v1, ", state:  "

    .line 7
    .line 8
    const-string v2, ", progress : "

    .line 9
    .line 10
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string p1, ", step : "

    .line 15
    .line 16
    const-string v0, ", description : "

    .line 17
    .line 18
    invoke-static {p2, p1, p3, v0, p0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "ActivityManager"

    .line 22
    .line 23
    invoke-static {p0, p4, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final addUserToUserLru(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 19
    .line 20
    const/16 v3, -0x2710

    .line 21
    .line 22
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eq p1, v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

.method public final broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V
    .locals 9

    .line 1
    new-instance v1, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "android.intent.extra.USER"

    .line 7
    .line 8
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const/high16 p1, 0x50000000

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 21
    .line 22
    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    move v8, p2

    .line 36
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final canDelayDataLockingForUser(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {}, Landroid/multiuser/Flags;->enableBiometricsToUnlockPrivateSpace()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-boolean p0, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    .line 30
    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 45
    :goto_1
    return p0

    .line 46
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    .line 47
    .line 48
    return p0
.end method

.method public final varargs checkCallingHasOneOfThosePermissions(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7d0

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceModeFromProperty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 17
    .line 18
    const-string p1, "Cannot control users : unauthorized"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    array-length v0, p2

    .line 25
    const/4 v1, 0x0

    .line 26
    move v2, v1

    .line 27
    :goto_1
    if-ge v2, v0, :cond_3

    .line 28
    .line 29
    aget-object v3, p2, v2

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 32
    .line 33
    iget-object v4, v4, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 34
    .line 35
    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const-string p0, "Permission denial: "

    .line 46
    .line 47
    const-string v0, "() from pid="

    .line 48
    .line 49
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, ", uid="

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, " requires "

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    array-length p1, p2

    .line 78
    const/4 v0, 0x1

    .line 79
    if-ne p1, v0, :cond_4

    .line 80
    .line 81
    aget-object p1, p2, v1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string/jumbo v0, "one of "

    .line 87
    .line 88
    .line 89
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const-string p1, "ActivityManager"

    .line 111
    .line 112
    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    new-instance p1, Ljava/lang/SecurityException;

    .line 116
    .line 117
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1
.end method

.method public final checkGetCurrentUserPermissions()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 16
    .line 17
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v0, "Permission Denial: getCurrentUser() from pid="

    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", uid="

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, " requires android.permission.INTERACT_ACROSS_USERS"

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string v0, "ActivityManager"

    .line 62
    .line 63
    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    new-instance v0, Ljava/lang/SecurityException;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_1
    :goto_0
    return-void
.end method

.method public final checkHasManageUsersPermission(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    const-string v0, "android.permission.MANAGE_USERS"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, -0x1

    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 16
    .line 17
    const-string v0, "You need MANAGE_USERS permission to call "

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public completeUserSwitch(II)V
    .locals 13

    .line 1
    new-instance v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1, p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;-><init>(IIILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 11
    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-class v1, Landroid/app/KeyguardManager;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/app/KeyguardManager;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    new-instance v4, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-direct {v4, p0, v0, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 42
    .line 43
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda15;

    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    invoke-direct {v2, p1, p2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/am/UserController$Injector;I)V

    .line 50
    .line 51
    .line 52
    new-instance v5, Lcom/android/server/am/UserController$$ExternalSyntheticLambda16;

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    invoke-direct {v5, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda16;-><init>(I)V

    .line 56
    .line 57
    .line 58
    const-string/jumbo v6, "showKeyguard"

    .line 59
    .line 60
    .line 61
    const/16 v3, 0x4e20

    .line 62
    .line 63
    move-object v1, p0

    .line 64
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->runWithTimeout(Ljava/util/function/Consumer;ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance v11, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;

    .line 69
    .line 70
    const/4 p1, 0x2

    .line 71
    invoke-direct {v11, p0, v0, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 75
    .line 76
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    new-instance v8, Lcom/android/server/am/UserController$$ExternalSyntheticLambda15;

    .line 80
    .line 81
    const/4 p2, 0x1

    .line 82
    invoke-direct {v8, p1, p2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/am/UserController$Injector;I)V

    .line 83
    .line 84
    .line 85
    const/16 v9, 0x7d0

    .line 86
    .line 87
    const-string/jumbo v12, "dismissKeyguard"

    .line 88
    .line 89
    .line 90
    move-object v7, p0

    .line 91
    move-object v10, v11

    .line 92
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/UserController;->runWithTimeout(Ljava/util/function/Consumer;ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;->run()V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    throw p0
.end method

.method public continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v2, "continueUserSwitch-"

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "-to-"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/16 v2, 0x7580

    .line 45
    .line 46
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 50
    .line 51
    const/16 v2, 0x82

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 57
    .line 58
    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-virtual {v1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    .line 64
    .line 65
    const/4 p3, 0x0

    .line 66
    iput-boolean p3, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter p1

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 72
    .line 73
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/android/server/am/UserState;

    .line 78
    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 82
    .line 83
    if-eq p2, v2, :cond_3

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    iget v1, v1, Lcom/android/server/am/UserState;->state:I

    .line 88
    .line 89
    const/4 v2, 0x4

    .line 90
    if-eq v1, v2, :cond_3

    .line 91
    .line 92
    const/4 v2, 0x5

    .line 93
    if-ne v1, v2, :cond_0

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 108
    .line 109
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 114
    .line 115
    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserManagerInternal;->onEphemeralUserStop(I)V

    .line 116
    .line 117
    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_2

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_4

    .line 129
    .line 130
    :cond_2
    const-string p1, "ActivityManager"

    .line 131
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v2, "Stopping background guest or ephemeral user "

    .line 135
    .line 136
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {p1, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 150
    .line 151
    monitor-enter v1

    .line 152
    const/4 v6, 0x0

    .line 153
    const/4 v7, 0x0

    .line 154
    const/4 v4, 0x1

    .line 155
    const/4 v5, 0x0

    .line 156
    move-object v2, p0

    .line 157
    move v3, p2

    .line 158
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    .line 159
    .line 160
    .line 161
    monitor-exit v1

    .line 162
    goto :goto_1

    .line 163
    :catchall_0
    move-exception p0

    .line 164
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    throw p0

    .line 166
    :catchall_1
    move-exception p0

    .line 167
    goto/16 :goto_7

    .line 168
    .line 169
    :cond_3
    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 170
    :cond_4
    :goto_1
    if-nez p2, :cond_5

    .line 171
    .line 172
    goto/16 :goto_5

    .line 173
    .line 174
    :cond_5
    const-string/jumbo p1, "no_run_in_background"

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 182
    .line 183
    monitor-enter v1

    .line 184
    if-nez p1, :cond_8

    .line 185
    .line 186
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->shouldStopUserOnSwitch()Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_6

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_6
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 194
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    :goto_2
    if-ge p3, v1, :cond_9

    .line 211
    .line 212
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 217
    .line 218
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 219
    .line 220
    const-string/jumbo v2, "no_run_in_background"

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_7

    .line 228
    .line 229
    const-string v2, "ActivityManager"

    .line 230
    .line 231
    const-string v3, "Stopping profile %d on user switch"

    .line 232
    .line 233
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-static {v2, v3, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 245
    .line 246
    monitor-enter v2

    .line 247
    const/4 v5, 0x0

    .line 248
    const/4 v6, 0x0

    .line 249
    const/4 v7, 0x0

    .line 250
    const/4 v8, 0x0

    .line 251
    move-object v3, p0

    .line 252
    :try_start_4
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    .line 253
    .line 254
    .line 255
    monitor-exit v2

    .line 256
    goto :goto_3

    .line 257
    :catchall_2
    move-exception p0

    .line 258
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 259
    throw p0

    .line 260
    :cond_7
    :goto_3
    add-int/lit8 p3, p3, 0x1

    .line 261
    .line 262
    goto :goto_2

    .line 263
    :catchall_3
    move-exception p0

    .line 264
    goto :goto_6

    .line 265
    :cond_8
    :goto_4
    :try_start_5
    const-string p1, "ActivityManager"

    .line 266
    .line 267
    const-string p3, "Stopping user %d and its profiles on user switch"

    .line 268
    .line 269
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-static {p1, p3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    const/4 v7, 0x0

    .line 281
    const/4 v8, 0x0

    .line 282
    const/4 v5, 0x1

    .line 283
    const/4 v6, 0x0

    .line 284
    move-object v3, p0

    .line 285
    move v4, p2

    .line 286
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    .line 287
    .line 288
    .line 289
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 290
    :cond_9
    :goto_5
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->scheduleStopOfBackgroundUser(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :goto_6
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 298
    throw p0

    .line 299
    :goto_7
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 300
    throw p0
.end method

.method public dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 26

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move/from16 v14, p3

    .line 4
    .line 5
    new-instance v13, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 6
    .line 7
    invoke-direct {v13}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v1, "dispatchUserSwitch-"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    move/from16 v12, p2

    .line 19
    .line 20
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "-to-"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v13, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/16 v1, 0x757f

    .line 51
    .line 52
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    iget-object v0, v15, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    if-lez v11, :cond_3

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    move v1, v0

    .line 65
    :goto_0
    if-ge v1, v11, :cond_0

    .line 66
    .line 67
    const-string v2, "#"

    .line 68
    .line 69
    const-string v3, " "

    .line 70
    .line 71
    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget-object v3, v15, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 76
    .line 77
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string/jumbo v4, "onBeforeUserSwitching-"

    .line 91
    .line 92
    .line 93
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :try_start_0
    iget-object v2, v15, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Landroid/app/IUserSwitchObserver;

    .line 113
    .line 114
    invoke-interface {v2, v14}, Landroid/app/IUserSwitchObserver;->onBeforeUserSwitching(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    :catch_0
    invoke-virtual {v13}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    invoke-virtual {v13}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    new-instance v9, Landroid/util/ArraySet;

    .line 130
    .line 131
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 132
    .line 133
    .line 134
    iget-object v1, v15, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 135
    .line 136
    monitor-enter v1

    .line 137
    const/4 v2, 0x1

    .line 138
    move-object/from16 v10, p1

    .line 139
    .line 140
    :try_start_1
    iput-boolean v2, v10, Lcom/android/server/am/UserState;->switching:Z

    .line 141
    .line 142
    iput-object v9, v15, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 143
    .line 144
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 145
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 146
    .line 147
    invoke-direct {v7, v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 148
    .line 149
    .line 150
    const-string/jumbo v1, "debug.usercontroller.user_switch_timeout_ms"

    .line 151
    .line 152
    .line 153
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-nez v2, :cond_1

    .line 162
    .line 163
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 167
    goto :goto_2

    .line 168
    :catch_1
    :cond_1
    const/16 v1, 0xbb8

    .line 169
    .line 170
    :goto_2
    int-to-long v5, v1

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 172
    .line 173
    .line 174
    move-result-wide v16

    .line 175
    move v8, v0

    .line 176
    :goto_3
    if-ge v8, v11, :cond_2

    .line 177
    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 179
    .line 180
    .line 181
    move-result-wide v18

    .line 182
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v1, "#"

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v1, " "

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    iget-object v1, v15, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 201
    .line 202
    invoke-virtual {v1, v8}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    iget-object v1, v15, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 214
    .line 215
    monitor-enter v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 216
    :try_start_4
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 220
    :try_start_5
    new-instance v4, Lcom/android/server/am/UserController$7;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 221
    .line 222
    move-object v1, v4

    .line 223
    move-object/from16 v2, p0

    .line 224
    .line 225
    move-object v3, v0

    .line 226
    move-object/from16 v20, v4

    .line 227
    .line 228
    move/from16 v4, p3

    .line 229
    .line 230
    move-wide/from16 v21, v5

    .line 231
    .line 232
    move-wide/from16 v5, v18

    .line 233
    .line 234
    move-object/from16 v18, v7

    .line 235
    .line 236
    move/from16 v23, v8

    .line 237
    .line 238
    move-wide/from16 v7, v16

    .line 239
    .line 240
    move-object/from16 v19, v9

    .line 241
    .line 242
    move-wide/from16 v9, v21

    .line 243
    .line 244
    move/from16 v24, v11

    .line 245
    .line 246
    move-object/from16 v11, v19

    .line 247
    .line 248
    move-object/from16 v12, v18

    .line 249
    .line 250
    move-object/from16 v25, v13

    .line 251
    .line 252
    move-object/from16 v13, p1

    .line 253
    .line 254
    move v15, v14

    .line 255
    move/from16 v14, p2

    .line 256
    .line 257
    :try_start_6
    invoke-direct/range {v1 .. v14}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;Ljava/lang/String;IJJJLandroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;I)V

    .line 258
    .line 259
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    const-string/jumbo v2, "onUserSwitching-"

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-static {v15, v0}, Lcom/android/server/am/UserController;->asyncTraceBegin(ILjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 279
    .line 280
    .line 281
    move-object/from16 v2, p0

    .line 282
    .line 283
    move v3, v15

    .line 284
    :try_start_7
    iget-object v0, v2, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 285
    .line 286
    move/from16 v4, v23

    .line 287
    .line 288
    :try_start_8
    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Landroid/app/IUserSwitchObserver;

    .line 293
    .line 294
    move-object/from16 v1, v20

    .line 295
    .line 296
    invoke-interface {v0, v3, v1}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    .line 297
    .line 298
    .line 299
    goto :goto_6

    .line 300
    :catch_2
    :goto_4
    move/from16 v4, v23

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :catch_3
    move-object/from16 v2, p0

    .line 304
    .line 305
    move v3, v15

    .line 306
    goto :goto_4

    .line 307
    :catch_4
    move-wide/from16 v21, v5

    .line 308
    .line 309
    move-object/from16 v18, v7

    .line 310
    .line 311
    move v4, v8

    .line 312
    move-object/from16 v19, v9

    .line 313
    .line 314
    move/from16 v24, v11

    .line 315
    .line 316
    move-object/from16 v25, v13

    .line 317
    .line 318
    move v3, v14

    .line 319
    move-object v2, v15

    .line 320
    goto :goto_6

    .line 321
    :catchall_1
    move-exception v0

    .line 322
    move-wide/from16 v21, v5

    .line 323
    .line 324
    move-object/from16 v18, v7

    .line 325
    .line 326
    move v4, v8

    .line 327
    move-object/from16 v19, v9

    .line 328
    .line 329
    move/from16 v24, v11

    .line 330
    .line 331
    move-object/from16 v25, v13

    .line 332
    .line 333
    move v3, v14

    .line 334
    move-object v2, v15

    .line 335
    :goto_5
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 336
    :try_start_a
    throw v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5

    .line 337
    :catchall_2
    move-exception v0

    .line 338
    goto :goto_5

    .line 339
    :catch_5
    :goto_6
    add-int/lit8 v8, v4, 0x1

    .line 340
    .line 341
    move-object/from16 v10, p1

    .line 342
    .line 343
    move/from16 v12, p2

    .line 344
    .line 345
    move-object v15, v2

    .line 346
    move v14, v3

    .line 347
    move-object/from16 v7, v18

    .line 348
    .line 349
    move-object/from16 v9, v19

    .line 350
    .line 351
    move-wide/from16 v5, v21

    .line 352
    .line 353
    move/from16 v11, v24

    .line 354
    .line 355
    move-object/from16 v13, v25

    .line 356
    .line 357
    goto/16 :goto_3

    .line 358
    .line 359
    :cond_2
    move-object/from16 v25, v13

    .line 360
    .line 361
    move-object v2, v15

    .line 362
    goto :goto_7

    .line 363
    :catchall_3
    move-exception v0

    .line 364
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 365
    throw v0

    .line 366
    :cond_3
    move-object/from16 v25, v13

    .line 367
    .line 368
    move v3, v14

    .line 369
    move-object v2, v15

    .line 370
    iget-object v1, v2, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 371
    .line 372
    monitor-enter v1

    .line 373
    :try_start_c
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 374
    .line 375
    .line 376
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 377
    :goto_7
    iget-object v0, v2, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 378
    .line 379
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 380
    .line 381
    .line 382
    invoke-virtual/range {v25 .. v25}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :catchall_4
    move-exception v0

    .line 387
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 388
    throw v0
.end method

.method public dispatchUserSwitchComplete(II)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v2, "dispatchUserSwitchComplete-"

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :goto_0
    if-ge v2, v1, :cond_0

    .line 41
    .line 42
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v4, "onUserSwitchComplete-"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v4, " #"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v4, " "

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 70
    .line 71
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v0, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 86
    .line 87
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Landroid/app/IUserSwitchObserver;

    .line 92
    .line 93
    invoke-interface {v3, p2}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    :catch_0
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 105
    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string/jumbo v2, "sendUserSwitchBroadcasts-"

    .line 110
    .line 111
    .line 112
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, "-"

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcasts(II)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->endUserSwitch()V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const-wide v1, 0x10b0000000eL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const-wide v6, 0x10500000001L

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    if-ge v4, v5, :cond_2

    .line 27
    .line 28
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lcom/android/server/am/UserState;

    .line 35
    .line 36
    const-wide v8, 0x20b00000001L

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v8

    .line 45
    iget-object v10, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 46
    .line 47
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 52
    .line 53
    .line 54
    const-wide v6, 0x10b00000002L

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 60
    .line 61
    .line 62
    move-result-wide v6

    .line 63
    iget v10, v5, Lcom/android/server/am/UserState;->state:I

    .line 64
    .line 65
    if-eqz v10, :cond_1

    .line 66
    .line 67
    const/4 v11, 0x1

    .line 68
    if-eq v10, v11, :cond_0

    .line 69
    .line 70
    const/4 v11, 0x2

    .line 71
    if-eq v10, v11, :cond_0

    .line 72
    .line 73
    const/4 v11, 0x3

    .line 74
    if-eq v10, v11, :cond_0

    .line 75
    .line 76
    const/4 v11, 0x4

    .line 77
    if-eq v10, v11, :cond_0

    .line 78
    .line 79
    const/4 v11, 0x5

    .line 80
    if-eq v10, v11, :cond_0

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    move v10, v11

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    move v10, v3

    .line 86
    :goto_1
    const-wide v11, 0x10e00000001L

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 92
    .line 93
    .line 94
    iget-boolean v5, v5, Lcom/android/server/am/UserState;->switching:Z

    .line 95
    .line 96
    const-wide v10, 0x10800000002L

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 v4, v4, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    goto/16 :goto_6

    .line 115
    .line 116
    :cond_2
    move v4, v3

    .line 117
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 118
    .line 119
    array-length v8, v5

    .line 120
    if-ge v4, v8, :cond_3

    .line 121
    .line 122
    aget v5, v5, v4

    .line 123
    .line 124
    const-wide v8, 0x20500000002L

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 130
    .line 131
    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    move v4, v3

    .line 136
    :goto_3
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-ge v4, v5, :cond_4

    .line 143
    .line 144
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    check-cast v5, Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    const-wide v8, 0x20500000003L

    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 162
    .line 163
    .line 164
    add-int/lit8 v4, v4, 0x1

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 168
    .line 169
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-lez v4, :cond_5

    .line 174
    .line 175
    move v4, v3

    .line 176
    :goto_4
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 177
    .line 178
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-ge v4, v5, :cond_5

    .line 183
    .line 184
    const-wide v8, 0x20b00000004L

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 190
    .line 191
    .line 192
    move-result-wide v8

    .line 193
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 194
    .line 195
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 200
    .line 201
    .line 202
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 203
    .line 204
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    const-wide v10, 0x10500000002L

    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 217
    .line 218
    .line 219
    add-int/lit8 v4, v4, 0x1

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_5
    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 223
    .line 224
    const-wide v5, 0x10500000005L

    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 230
    .line 231
    .line 232
    :goto_5
    iget-object v4, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 233
    .line 234
    array-length v5, v4

    .line 235
    if-ge v3, v5, :cond_6

    .line 236
    .line 237
    aget v4, v4, v3

    .line 238
    .line 239
    const-wide v5, 0x20500000006L

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 245
    .line 246
    .line 247
    add-int/lit8 v3, v3, 0x1

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_6
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 251
    .line 252
    .line 253
    monitor-exit v0

    .line 254
    return-void

    .line 255
    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    throw p0
.end method

.method public final endUserSwitch()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/multiuser/Flags;->setPowerModeDuringUserSwitch()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->setPerformancePowerMode(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 23
    .line 24
    const/16 v2, -0x2710

    .line 25
    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v1, v3}, Lcom/android/internal/util/ObjectUtils;->getOrElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v2, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 41
    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    if-eq v1, v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->switchUser(I)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p0
.end method

.method public final enforceShellRestriction(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7d0

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    const-string/jumbo v0, "no_debugging_features"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 22
    .line 23
    const-string v0, "Shell does not have permission to access user "

    .line 24
    .line 25
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public final finishUserBoot(Lcom/android/server/am/UserState;Lcom/android/server/am/ActivityManagerService$12;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x757e

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 10
    .line 11
    .line 12
    iget v1, p1, Lcom/android/server/am/UserState;->state:I

    .line 13
    .line 14
    const-string/jumbo v2, "finishUserBoot"

    .line 15
    .line 16
    .line 17
    const-string v3, "NULL"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "ActivityManager"

    .line 24
    .line 25
    const-string v2, "Finishing user boot "

    .line 26
    .line 27
    invoke-static {v0, v2, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eq v2, p1, :cond_0

    .line 40
    .line 41
    monitor-exit v1

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p1, v4, v1}, Lcom/android/server/am/UserState;->setState(II)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x4

    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 62
    .line 63
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget v5, p1, Lcom/android/server/am/UserState;->state:I

    .line 73
    .line 74
    invoke-virtual {v2, v0, v5}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 75
    .line 76
    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 80
    .line 81
    iget-object v5, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 82
    .line 83
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 84
    .line 85
    iget-boolean v5, v5, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    .line 86
    .line 87
    if-nez v5, :cond_2

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    :try_start_1
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_2

    .line 101
    .line 102
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isDeviceUpgrading()Z

    .line 103
    .line 104
    .line 105
    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    if-eqz v2, :cond_1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 110
    .line 111
    .line 112
    move-result-wide v5

    .line 113
    const/16 v2, 0xf0

    .line 114
    .line 115
    const/16 v7, 0xc

    .line 116
    .line 117
    invoke-static {v2, v7, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 118
    .line 119
    .line 120
    const-wide/32 v7, 0x1d4c0

    .line 121
    .line 122
    .line 123
    cmp-long v2, v5, v7

    .line 124
    .line 125
    if-lez v2, :cond_2

    .line 126
    .line 127
    const-string v2, "SystemServerTiming"

    .line 128
    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string/jumbo v8, "finishUserBoot took too long. elapsedTimeMs="

    .line 132
    .line 133
    .line 134
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-static {v2, v5}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :catch_0
    move-exception p0

    .line 149
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    throw p0

    .line 154
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 155
    .line 156
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_3

    .line 165
    .line 166
    iget-object v2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 167
    .line 168
    const/16 v5, 0x6e

    .line 169
    .line 170
    invoke-virtual {v2, v5, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    .line 176
    .line 177
    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mAllowUserUnlocking:Z

    .line 178
    .line 179
    if-eqz v2, :cond_3

    .line 180
    .line 181
    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/UserController;->sendLockedBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerService$12;I)V

    .line 182
    .line 183
    .line 184
    :cond_3
    iget p2, p1, Lcom/android/server/am/UserState;->state:I

    .line 185
    .line 186
    const-string/jumbo v2, "finishUserBoot"

    .line 187
    .line 188
    .line 189
    const-string/jumbo v5, "send LOCKED BOOT COMPLETED"

    .line 190
    .line 191
    .line 192
    invoke-static {v0, p2, v1, v2, v5}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_4
    iget-object p2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 196
    .line 197
    invoke-virtual {p2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-virtual {p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    if-nez p2, :cond_5

    .line 206
    .line 207
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_3

    .line 211
    .line 212
    :cond_5
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 213
    .line 214
    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_e

    .line 219
    .line 220
    const-string v1, "ActivityManager"

    .line 221
    .line 222
    const-string v2, "User "

    .line 223
    .line 224
    const-string v3, " (parent "

    .line 225
    .line 226
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    .line 231
    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v3, "): attempting unlock because parent is unlocked"

    .line 236
    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-eqz v1, :cond_d

    .line 252
    .line 253
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 254
    .line 255
    invoke-static {v1}, Lcom/android/server/am/DualDarUserController;->getInstance(Lcom/android/server/am/UserController$Injector;)Lcom/android/server/am/DualDarUserController;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 260
    .line 261
    iget-object v1, v1, Lcom/android/server/am/DualDarUserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 262
    .line 263
    iget-object v2, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 264
    .line 265
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 266
    .line 267
    const-class v3, Landroid/app/KeyguardManager;

    .line 268
    .line 269
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    check-cast v2, Landroid/app/KeyguardManager;

    .line 274
    .line 275
    new-array v3, v4, [Ljava/lang/Object;

    .line 276
    .line 277
    const-string/jumbo v5, "fetchOuterLayerKey()"

    .line 278
    .line 279
    .line 280
    const-string v6, "DualDAR::DualDarUserController"

    .line 281
    .line 282
    invoke-static {v6, v5, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    const/4 v3, 0x0

    .line 286
    :try_start_2
    iget-object v5, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 287
    .line 288
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 289
    .line 290
    invoke-static {v5}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    invoke-virtual {v5, v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->fetchOuterLayerKey(I)[B

    .line 295
    .line 296
    .line 297
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 298
    goto :goto_1

    .line 299
    :catch_1
    move-exception v5

    .line 300
    new-instance v7, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string v8, "Exception in fetchOuterLayerKey() : "

    .line 303
    .line 304
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    new-array v7, v4, [Ljava/lang/Object;

    .line 319
    .line 320
    invoke-static {v6, v5, v7}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    move-object v5, v3

    .line 324
    :goto_1
    if-eqz v5, :cond_b

    .line 325
    .line 326
    const-string p2, "Trying to unlock DualDAR user after userStart "

    .line 327
    .line 328
    invoke-static {v0, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    new-array v5, v4, [Ljava/lang/Object;

    .line 333
    .line 334
    invoke-static {v6, p2, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    sget-object p2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 338
    .line 339
    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->getCurrentState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    sget-object v7, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 344
    .line 345
    if-ne v5, v7, :cond_6

    .line 346
    .line 347
    const-string p2, "Password2Auth has already been completed for: "

    .line 348
    .line 349
    invoke-static {v0, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    new-array v1, v4, [Ljava/lang/Object;

    .line 354
    .line 355
    invoke-static {v6, p2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    sget-object p2, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 359
    .line 360
    goto :goto_2

    .line 361
    :cond_6
    invoke-virtual {v2, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-nez v2, :cond_9

    .line 366
    .line 367
    const-string v2, "Do Password2Auth with null credential for: "

    .line 368
    .line 369
    invoke-static {v0, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    new-array v5, v4, [Ljava/lang/Object;

    .line 374
    .line 375
    invoke-static {v6, v2, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    new-array v2, v4, [Ljava/lang/Object;

    .line 379
    .line 380
    const-string/jumbo v5, "onPassword2Auth()"

    .line 381
    .line 382
    .line 383
    invoke-static {v6, v5, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    if-nez v2, :cond_7

    .line 391
    .line 392
    const-string p2, "User is not DualDAR eligible. so no need to verify DualDAR Passwords"

    .line 393
    .line 394
    invoke-static {v0, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p2

    .line 398
    new-array v1, v4, [Ljava/lang/Object;

    .line 399
    .line 400
    invoke-static {v6, p2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    sget-object p2, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 404
    .line 405
    goto :goto_2

    .line 406
    :cond_7
    iget-object v1, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 407
    .line 408
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 409
    .line 410
    invoke-static {v1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->onPassword2Auth(I[B)Z

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-nez v1, :cond_8

    .line 419
    .line 420
    const-string v1, "Authentication Failure by dual dar client"

    .line 421
    .line 422
    new-array v2, v4, [Ljava/lang/Object;

    .line 423
    .line 424
    invoke-static {v6, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    goto :goto_2

    .line 428
    :cond_8
    const-string/jumbo p2, "onPassword2Auth completed successfully"

    .line 429
    .line 430
    .line 431
    new-array v1, v4, [Ljava/lang/Object;

    .line 432
    .line 433
    invoke-static {v6, p2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    sget-object p2, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    .line 437
    .line 438
    invoke-static {v0, p2}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    .line 439
    .line 440
    .line 441
    sget-object p2, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 442
    .line 443
    :cond_9
    :goto_2
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 444
    .line 445
    if-ne p2, v1, :cond_a

    .line 446
    .line 447
    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    .line 448
    .line 449
    .line 450
    move-result p2

    .line 451
    if-nez p2, :cond_a

    .line 452
    .line 453
    const-string/jumbo p2, "fetch outer layer key and unlock DualDAR user "

    .line 454
    .line 455
    .line 456
    invoke-static {v0, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object p2

    .line 460
    new-array v1, v4, [Ljava/lang/Object;

    .line 461
    .line 462
    invoke-static {v6, p2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)V

    .line 466
    .line 467
    .line 468
    goto :goto_3

    .line 469
    :cond_a
    const-string p0, "Default Authentication Failure by DualDAR client"

    .line 470
    .line 471
    new-array p2, v4, [Ljava/lang/Object;

    .line 472
    .line 473
    invoke-static {v6, p0, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    goto :goto_3

    .line 477
    :cond_b
    invoke-virtual {v2, p2}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 478
    .line 479
    .line 480
    move-result p0

    .line 481
    if-nez p0, :cond_c

    .line 482
    .line 483
    const-string p0, "This should theoretically never happen. Failed to unlock DualDAR user: "

    .line 484
    .line 485
    const-string p2, " something went wrong while fetching OLK event though user0 is unlocked."

    .line 486
    .line 487
    invoke-static {v0, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p0

    .line 491
    new-array p2, v4, [Ljava/lang/Object;

    .line 492
    .line 493
    invoke-static {v6, p0, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    :cond_c
    const-string p0, "Device is still locked. Do not unlock DualDAR user, yet"

    .line 497
    .line 498
    new-array p2, v4, [Ljava/lang/Object;

    .line 499
    .line 500
    invoke-static {v6, p0, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    goto :goto_3

    .line 504
    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)V

    .line 505
    .line 506
    .line 507
    goto :goto_3

    .line 508
    :cond_e
    const-string p0, "ActivityManager"

    .line 509
    .line 510
    const-string v1, "User "

    .line 511
    .line 512
    const-string v2, " (parent "

    .line 513
    .line 514
    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 519
    .line 520
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    const-string p2, "): delaying unlock because parent is locked"

    .line 524
    .line 525
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object p2

    .line 532
    invoke-static {p0, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    :goto_3
    iget p0, p1, Lcom/android/server/am/UserState;->state:I

    .line 536
    .line 537
    const-string/jumbo p1, "finishUserBoot"

    .line 538
    .line 539
    .line 540
    const-string p2, "NULL"

    .line 541
    .line 542
    const/4 v1, 0x2

    .line 543
    invoke-static {v0, p0, v1, p1, p2}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    return-void

    .line 547
    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 548
    throw p0
.end method

.method public finishUserStopped(Lcom/android/server/am/UserState;Z)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "Delayed locking enabled while KeyEvictedCallbacks not empty, userId:"

    .line 6
    .line 7
    const-string v3, "Removing user state from UserController.mStartedUsers for user #"

    .line 8
    .line 9
    iget-object v4, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 10
    .line 11
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/16 v5, 0x757a

    .line 16
    .line 17
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v15

    .line 24
    iget-object v5, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v5

    .line 27
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v6, v1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v14, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    new-instance v13, Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v6, v1, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    iget-object v6, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v12, 0x5

    .line 49
    const/4 v8, 0x1

    .line 50
    if-ne v6, v1, :cond_3

    .line 51
    .line 52
    iget v1, v1, Lcom/android/server/am/UserState;->state:I

    .line 53
    .line 54
    if-eq v1, v12, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const-string v1, "ActivityManager"

    .line 58
    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v3, " as a result of user being stopped"

    .line 68
    .line 69
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v1, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 80
    .line 81
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 94
    .line 95
    .line 96
    if-eqz p2, :cond_1

    .line 97
    .line 98
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_1

    .line 103
    .line 104
    const-string v1, "ActivityManager"

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, " callbacks:"

    .line 115
    .line 116
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move v1, v7

    .line 130
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    goto/16 :goto_9

    .line 133
    .line 134
    :cond_1
    move/from16 v1, p2

    .line 135
    .line 136
    :goto_0
    invoke-virtual {v0, v4, v1}, Lcom/android/server/am/UserController;->updateUserToLockLU(IZ)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    const/16 v2, -0x2710

    .line 141
    .line 142
    if-ne v1, v2, :cond_2

    .line 143
    .line 144
    move v3, v7

    .line 145
    move v2, v8

    .line 146
    goto :goto_2

    .line 147
    :cond_2
    move v2, v8

    .line 148
    move v3, v2

    .line 149
    goto :goto_2

    .line 150
    :cond_3
    :goto_1
    move v1, v4

    .line 151
    move v2, v7

    .line 152
    move v3, v8

    .line 153
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    new-instance v11, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 155
    .line 156
    invoke-direct {v11}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 157
    .line 158
    .line 159
    if-eqz v2, :cond_6

    .line 160
    .line 161
    const-string v5, "ActivityManager"

    .line 162
    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v7, "Removing user state from UserManager.mUserStates for user #"

    .line 166
    .line 167
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v7, " as a result of user being stopped"

    .line 174
    .line 175
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-static {v5, v6}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 186
    .line 187
    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerInternal;->removeUserState(I)V

    .line 192
    .line 193
    .line 194
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 195
    .line 196
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    const-class v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 200
    .line 201
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 206
    .line 207
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    .line 208
    .line 209
    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string/jumbo v6, "stopPackagesOfStoppedUser-"

    .line 213
    .line 214
    .line 215
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v6, "-[stopUser]"

    .line 222
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v11, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const-string/jumbo v16, "finish user"

    .line 234
    .line 235
    .line 236
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 237
    .line 238
    iget-object v10, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 239
    .line 240
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 241
    .line 242
    .line 243
    monitor-enter v10

    .line 244
    :try_start_1
    iget-object v5, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 245
    .line 246
    const/4 v6, 0x0

    .line 247
    const/4 v7, -0x1

    .line 248
    const/4 v8, 0x0

    .line 249
    const/4 v9, 0x0

    .line 250
    const/16 v17, 0x1

    .line 251
    .line 252
    const/16 v18, 0x0

    .line 253
    .line 254
    const/16 v19, 0x0

    .line 255
    .line 256
    move-object/from16 v20, v10

    .line 257
    .line 258
    move/from16 v10, v17

    .line 259
    .line 260
    move-object/from16 p1, v11

    .line 261
    .line 262
    move/from16 v11, v18

    .line 263
    .line 264
    move/from16 v12, v19

    .line 265
    .line 266
    move-object/from16 v21, v13

    .line 267
    .line 268
    move v13, v4

    .line 269
    move-object/from16 v17, v14

    .line 270
    .line 271
    move-object/from16 v14, v16

    .line 272
    .line 273
    :try_start_2
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 277
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 278
    .line 279
    .line 280
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 281
    .line 282
    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    if-eqz v5, :cond_4

    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_4
    new-instance v7, Landroid/content/Intent;

    .line 294
    .line 295
    const-string v5, "android.intent.action.USER_STOPPED"

    .line 296
    .line 297
    invoke-direct {v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const/high16 v5, 0x50000000

    .line 301
    .line 302
    invoke-virtual {v7, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 303
    .line 304
    .line 305
    const-string v5, "android.intent.extra.user_handle"

    .line 306
    .line 307
    invoke-virtual {v7, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    .line 309
    .line 310
    iget-object v6, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 311
    .line 312
    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 313
    .line 314
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 315
    .line 316
    .line 317
    move-result v12

    .line 318
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 319
    .line 320
    .line 321
    move-result v13

    .line 322
    const/4 v10, 0x0

    .line 323
    const/4 v14, -0x1

    .line 324
    const/4 v8, 0x0

    .line 325
    const/4 v9, 0x0

    .line 326
    invoke-virtual/range {v6 .. v14}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    if-eqz v5, :cond_5

    .line 334
    .line 335
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    if-eqz v5, :cond_5

    .line 340
    .line 341
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 342
    .line 343
    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    if-eqz v5, :cond_5

    .line 352
    .line 353
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 354
    .line 355
    const-string v6, "android.intent.action.PROFILE_INACCESSIBLE"

    .line 356
    .line 357
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/am/UserController;->broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V

    .line 358
    .line 359
    .line 360
    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 361
    .line 362
    .line 363
    goto :goto_5

    .line 364
    :catchall_1
    move-exception v0

    .line 365
    goto :goto_4

    .line 366
    :catchall_2
    move-exception v0

    .line 367
    move-object/from16 v20, v10

    .line 368
    .line 369
    :goto_4
    :try_start_3
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 370
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 371
    .line 372
    .line 373
    throw v0

    .line 374
    :cond_6
    move-object/from16 p1, v11

    .line 375
    .line 376
    move-object/from16 v21, v13

    .line 377
    .line 378
    move-object/from16 v17, v14

    .line 379
    .line 380
    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    if-eqz v6, :cond_8

    .line 389
    .line 390
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    check-cast v6, Landroid/app/IStopUserCallback;

    .line 395
    .line 396
    if-eqz v2, :cond_7

    .line 397
    .line 398
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    const-string/jumbo v8, "stopCallbacks.userStopped-"

    .line 404
    .line 405
    .line 406
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v8, "-[stopUser]"

    .line 413
    .line 414
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v7
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 421
    move-object/from16 v8, p1

    .line 422
    .line 423
    :try_start_5
    invoke-virtual {v8, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-interface {v6, v4}, Landroid/app/IStopUserCallback;->userStopped(I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 430
    .line 431
    .line 432
    goto :goto_7

    .line 433
    :catch_0
    move-object/from16 v8, p1

    .line 434
    .line 435
    goto :goto_7

    .line 436
    :cond_7
    move-object/from16 v8, p1

    .line 437
    .line 438
    new-instance v7, Ljava/lang/StringBuilder;

    .line 439
    .line 440
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .line 442
    .line 443
    const-string/jumbo v9, "stopCallbacks.userStopAborted-"

    .line 444
    .line 445
    .line 446
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    const-string v9, "-[stopUser]"

    .line 453
    .line 454
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v7

    .line 461
    invoke-virtual {v8, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-interface {v6, v4}, Landroid/app/IStopUserCallback;->userStopAborted(I)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 468
    .line 469
    .line 470
    :catch_1
    :goto_7
    move-object/from16 p1, v8

    .line 471
    .line 472
    goto :goto_6

    .line 473
    :cond_8
    move-object/from16 v8, p1

    .line 474
    .line 475
    const/16 v5, 0xc8

    .line 476
    .line 477
    if-eqz v2, :cond_c

    .line 478
    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    const-string/jumbo v6, "systemServiceManagerOnUserStopped-"

    .line 482
    .line 483
    .line 484
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const-string v6, "-[stopUser]"

    .line 491
    .line 492
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-virtual {v8, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 503
    .line 504
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 505
    .line 506
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 507
    .line 508
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    const/16 v6, 0x7587

    .line 512
    .line 513
    invoke-static {v6, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 514
    .line 515
    .line 516
    const-string v6, "Cleanup"

    .line 517
    .line 518
    invoke-virtual {v2, v4, v6}, Lcom/android/server/SystemServiceManager;->onUser(ILjava/lang/String;)V

    .line 519
    .line 520
    .line 521
    iget-object v6, v2, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    .line 522
    .line 523
    monitor-enter v6

    .line 524
    :try_start_6
    iget-object v2, v2, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    .line 525
    .line 526
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 527
    .line 528
    .line 529
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 530
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 531
    .line 532
    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    const-string/jumbo v6, "taskSupervisorRemoveUser-"

    .line 536
    .line 537
    .line 538
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    const-string v6, "-[stopUser]"

    .line 545
    .line 546
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    invoke-virtual {v8, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 557
    .line 558
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 559
    .line 560
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 561
    .line 562
    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 563
    .line 564
    iget-object v6, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 565
    .line 566
    iget-object v7, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 567
    .line 568
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 569
    .line 570
    .line 571
    monitor-enter v7

    .line 572
    :try_start_7
    iget-object v6, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 573
    .line 574
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 575
    .line 576
    iget-object v6, v6, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    .line 577
    .line 578
    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 579
    .line 580
    .line 581
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 582
    .line 583
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    .line 584
    .line 585
    invoke-virtual {v2, v4}, Lcom/android/server/wm/PackageConfigPersister;->removeUser(I)V

    .line 586
    .line 587
    .line 588
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 589
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    if-eqz v2, :cond_9

    .line 600
    .line 601
    iget-boolean v2, v15, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 602
    .line 603
    if-nez v2, :cond_9

    .line 604
    .line 605
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 606
    .line 607
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerService;->removeUserEvenWhenDisallowed(I)Z

    .line 612
    .line 613
    .line 614
    :cond_9
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 615
    .line 616
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 621
    .line 622
    const/4 v6, -0x1

    .line 623
    const/4 v7, 0x5

    .line 624
    invoke-virtual {v2, v6, v15, v7, v6}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    if-eqz v2, :cond_a

    .line 629
    .line 630
    iget-object v6, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 631
    .line 632
    invoke-virtual {v6, v5, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 633
    .line 634
    .line 635
    :cond_a
    if-eqz v3, :cond_b

    .line 636
    .line 637
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;

    .line 642
    .line 643
    const/4 v5, 0x1

    .line 644
    move-object/from16 v6, v21

    .line 645
    .line 646
    invoke-direct {v3, v0, v1, v6, v5}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Object;I)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 650
    .line 651
    .line 652
    :cond_b
    invoke-virtual {v0, v4}, Lcom/android/server/am/UserController;->resumePendingUserStarts(I)V

    .line 653
    .line 654
    .line 655
    goto :goto_8

    .line 656
    :catchall_3
    move-exception v0

    .line 657
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 658
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 659
    .line 660
    .line 661
    throw v0

    .line 662
    :catchall_4
    move-exception v0

    .line 663
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 664
    throw v0

    .line 665
    :cond_c
    const/4 v7, 0x5

    .line 666
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 667
    .line 668
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 673
    .line 674
    invoke-virtual {v1, v4, v7}, Lcom/android/server/pm/UserJourneyLogger;->finishAndClearIncompleteUserJourney(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    if-eqz v1, :cond_d

    .line 679
    .line 680
    iget-object v2, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 681
    .line 682
    invoke-virtual {v2, v5, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 683
    .line 684
    .line 685
    :cond_d
    :goto_8
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 686
    .line 687
    .line 688
    move-result v1

    .line 689
    if-eqz v1, :cond_e

    .line 690
    .line 691
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 692
    .line 693
    invoke-static {v0}, Lcom/android/server/am/DualDarUserController;->getInstance(Lcom/android/server/am/UserController$Injector;)Lcom/android/server/am/DualDarUserController;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    iget-object v0, v0, Lcom/android/server/am/DualDarUserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 698
    .line 699
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 700
    .line 701
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 702
    .line 703
    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->onUserStopped(I)V

    .line 708
    .line 709
    .line 710
    :cond_e
    return-void

    .line 711
    :goto_9
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 712
    throw v0
.end method

.method public final finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x7578

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 10
    .line 11
    .line 12
    iget v1, p1, Lcom/android/server/am/UserState;->state:I

    .line 13
    .line 14
    const-string/jumbo v2, "finishUserUnlockedCompleted"

    .line 15
    .line 16
    .line 17
    const-string v3, "NULL"

    .line 18
    .line 19
    const/4 v10, 0x2

    .line 20
    invoke-static {v0, v1, v10, v2, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "ActivityManager"

    .line 24
    .line 25
    const-string v2, "UserController event: finishUserUnlockedCompleted("

    .line 26
    .line 27
    const-string v3, ")"

    .line 28
    .line 29
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eq v2, p1, :cond_0

    .line 48
    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    if-nez v11, :cond_1

    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string/jumbo p1, "dev.boot."

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, ".user_unlocked"

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string p1, "FAIL-finishUserUnlockedCompleted"

    .line 89
    .line 90
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string p0, "ActivityManager"

    .line 94
    .line 95
    const-string p1, "!@Boot: StorageManager Unlocked FAIL, finishUserUnlockedCompleted"

    .line 96
    .line 97
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_2
    iget v1, p1, Lcom/android/server/am/UserState;->state:I

    .line 102
    .line 103
    const-string/jumbo v2, "finishUserUnlockedCompleted"

    .line 104
    .line 105
    .line 106
    const-string v3, "OK StorageManager.isUserKeyUnlocked"

    .line 107
    .line 108
    const/4 v4, 0x1

    .line 109
    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    .line 119
    .line 120
    .line 121
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    .line 122
    .line 123
    const/4 v2, 0x1

    .line 124
    invoke-direct {v1, p0, v11, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Object;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isInitialized()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_4

    .line 132
    .line 133
    const-string v2, "ActivityManager"

    .line 134
    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v4, "Initializing user #"

    .line 138
    .line 139
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    iget-boolean v2, v11, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 153
    .line 154
    if-eqz v2, :cond_3

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->run()V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_3
    if-eqz v0, :cond_4

    .line 161
    .line 162
    const-string v2, "android.intent.action.USER_INITIALIZE"

    .line 163
    .line 164
    const/high16 v3, 0x11000000

    .line 165
    .line 166
    invoke-static {v3, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 171
    .line 172
    new-instance v4, Lcom/android/server/am/UserController$2;

    .line 173
    .line 174
    invoke-direct {v4, v1}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;)V

    .line 175
    .line 176
    .line 177
    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 178
    .line 179
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    const/4 v5, 0x0

    .line 188
    const/4 v9, 0x0

    .line 189
    move-object v1, v3

    .line 190
    move-object v3, v4

    .line 191
    move-object v4, v5

    .line 192
    move-object v5, v9

    .line 193
    move v9, v0

    .line 194
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 195
    .line 196
    .line 197
    :cond_4
    :goto_0
    iget-boolean v1, v11, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 198
    .line 199
    if-eqz v1, :cond_5

    .line 200
    .line 201
    const-string p1, "ActivityManager"

    .line 202
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v1, "Stopping pre-created user "

    .line 206
    .line 207
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {p1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    iget v2, v11, Landroid/content/pm/UserInfo;->id:I

    .line 225
    .line 226
    const/4 v5, 0x0

    .line 227
    const/4 v6, 0x0

    .line 228
    const/4 v3, 0x1

    .line 229
    const/4 v4, 0x0

    .line 230
    move-object v1, p0

    .line 231
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    const-class v1, Landroid/appwidget/AppWidgetManagerInternal;

    .line 241
    .line 242
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    check-cast v1, Landroid/appwidget/AppWidgetManagerInternal;

    .line 247
    .line 248
    if-eqz v1, :cond_6

    .line 249
    .line 250
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda5;

    .line 255
    .line 256
    const/4 v4, 0x2

    .line 257
    invoke-direct {v3, v0, v4, v1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda5;-><init>(IILjava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    .line 262
    .line 263
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 264
    .line 265
    const/16 v2, 0x69

    .line 266
    .line 267
    const/4 v3, 0x0

    .line 268
    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 273
    .line 274
    .line 275
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_7

    .line 280
    .line 281
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_7

    .line 286
    .line 287
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_7

    .line 292
    .line 293
    const-string p0, "ActivityManager"

    .line 294
    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string v1, "Skipping BOOT_COMPLETED for private profile user #"

    .line 298
    .line 299
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :cond_7
    const-string v1, "ActivityManager"

    .line 314
    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    const-string v3, "Posting BOOT_COMPLETED user #"

    .line 318
    .line 319
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    if-nez v0, :cond_9

    .line 333
    .line 334
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 335
    .line 336
    iget-object v2, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 337
    .line 338
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 339
    .line 340
    iget-boolean v2, v2, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    .line 341
    .line 342
    if-nez v2, :cond_9

    .line 343
    .line 344
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    :try_start_1
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    if-nez v2, :cond_9

    .line 356
    .line 357
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isDeviceUpgrading()Z

    .line 358
    .line 359
    .line 360
    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 361
    if-eqz v1, :cond_8

    .line 362
    .line 363
    goto :goto_1

    .line 364
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 365
    .line 366
    .line 367
    move-result-wide v1

    .line 368
    const/16 v3, 0xf0

    .line 369
    .line 370
    const/16 v4, 0xd

    .line 371
    .line 372
    invoke-static {v3, v4, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 373
    .line 374
    .line 375
    goto :goto_1

    .line 376
    :catch_0
    move-exception p0

    .line 377
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    throw p0

    .line 382
    :cond_9
    :goto_1
    new-instance v3, Landroid/content/Intent;

    .line 383
    .line 384
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 385
    .line 386
    const/4 v2, 0x0

    .line 387
    invoke-direct {v3, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 388
    .line 389
    .line 390
    const-string v1, "android.intent.extra.user_handle"

    .line 391
    .line 392
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    .line 394
    .line 395
    const/high16 v1, -0x77000000

    .line 396
    .line 397
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 398
    .line 399
    .line 400
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 405
    .line 406
    .line 407
    move-result v6

    .line 408
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    new-instance v8, Lcom/android/server/am/UserController$$ExternalSyntheticLambda24;

    .line 413
    .line 414
    move-object v1, v8

    .line 415
    move-object v2, p0

    .line 416
    move v4, v0

    .line 417
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    .line 422
    .line 423
    iget p0, p1, Lcom/android/server/am/UserState;->state:I

    .line 424
    .line 425
    const-string/jumbo p1, "finishUserUnlockedCompleted"

    .line 426
    .line 427
    .line 428
    const-string/jumbo v1, "send BOOT COMPLETED and complete NULL"

    .line 429
    .line 430
    .line 431
    invoke-static {v0, p0, v10, p1, v1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 436
    throw p0
.end method

.method public final getCurrentOrTargetUserIdLU()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 2
    .line 3
    const/16 v1, -0x2710

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 11
    .line 12
    :goto_0
    return p0
.end method

.method public final getCurrentProfileIds()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->checkGetCurrentUserPermissions()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 5
    .line 6
    const/16 v1, -0x2710

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    monitor-exit v0

    .line 29
    return-object p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final getCurrentUserId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public getRunningUsersLU()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Integer;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/server/am/UserState;

    .line 35
    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget v3, v3, Lcom/android/server/am/UserState;->state:I

    .line 40
    .line 41
    const/4 v4, 0x4

    .line 42
    if-eq v3, v4, :cond_0

    .line 43
    .line 44
    const/4 v4, 0x5

    .line 45
    if-ne v3, v4, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return-object v0
.end method

.method public final getStartedUserState(I)Lcom/android/server/am/UserState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/am/UserState;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getUsers()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    new-array p0, p0, [I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    aput v0, p0, v0

    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public final handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p2

    .line 4
    .line 5
    move/from16 v8, p3

    .line 6
    .line 7
    move/from16 v9, p5

    .line 8
    .line 9
    move-object/from16 v10, p7

    .line 10
    .line 11
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result v11

    .line 15
    if-ne v11, v8, :cond_0

    .line 16
    .line 17
    return v8

    .line 18
    :cond_0
    invoke-static {v11}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    if-eqz v8, :cond_2

    .line 25
    .line 26
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    if-nez v11, :cond_3

    .line 33
    .line 34
    :cond_2
    return v8

    .line 35
    :cond_3
    const/4 v1, -0x2

    .line 36
    const/4 v12, -0x3

    .line 37
    if-eq v8, v1, :cond_5

    .line 38
    .line 39
    if-ne v8, v12, :cond_4

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    move v13, v8

    .line 43
    goto :goto_1

    .line 44
    :cond_5
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    move v13, v1

    .line 49
    :goto_1
    const/4 v14, 0x3

    .line 50
    if-eqz v7, :cond_15

    .line 51
    .line 52
    const/16 v1, 0x3e8

    .line 53
    .line 54
    if-eq v7, v1, :cond_15

    .line 55
    .line 56
    const/16 v1, 0x1482

    .line 57
    .line 58
    if-eq v7, v1, :cond_15

    .line 59
    .line 60
    invoke-virtual {v0, v11, v13}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    .line 61
    .line 62
    .line 63
    move-result v15

    .line 64
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 69
    .line 70
    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const-string v6, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 75
    .line 76
    const/4 v5, 0x2

    .line 77
    const/4 v4, 0x1

    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    if-eqz v15, :cond_6

    .line 81
    .line 82
    move v12, v5

    .line 83
    move-object/from16 v20, v6

    .line 84
    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :cond_6
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    const/16 v16, -0x1

    .line 93
    .line 94
    const/16 v17, 0x1

    .line 95
    .line 96
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 97
    .line 98
    const/16 v18, 0x0

    .line 99
    .line 100
    move/from16 v1, p1

    .line 101
    .line 102
    move/from16 v2, p2

    .line 103
    .line 104
    move v12, v4

    .line 105
    move/from16 v4, v18

    .line 106
    .line 107
    move v12, v5

    .line 108
    move/from16 v5, v16

    .line 109
    .line 110
    move-object/from16 v19, v6

    .line 111
    .line 112
    move/from16 v6, v17

    .line 113
    .line 114
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_8

    .line 119
    .line 120
    move-object/from16 v20, v19

    .line 121
    .line 122
    :cond_7
    :goto_2
    const/4 v4, 0x1

    .line 123
    goto :goto_5

    .line 124
    :cond_8
    const/16 v16, 0x0

    .line 125
    .line 126
    if-ne v9, v12, :cond_9

    .line 127
    .line 128
    move/from16 v4, v16

    .line 129
    .line 130
    move-object/from16 v20, v19

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_9
    if-eq v9, v14, :cond_a

    .line 134
    .line 135
    :goto_3
    move/from16 v2, p1

    .line 136
    .line 137
    move-object/from16 v6, v19

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_a
    if-nez v15, :cond_b

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_b
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 146
    .line 147
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 148
    .line 149
    move/from16 v2, p1

    .line 150
    .line 151
    move-object/from16 v6, v19

    .line 152
    .line 153
    invoke-static {v1, v6, v2, v7, v10}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_c

    .line 158
    .line 159
    move-object/from16 v20, v6

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_c
    :goto_4
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    const/4 v5, -0x1

    .line 168
    const/16 v17, 0x1

    .line 169
    .line 170
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    .line 171
    .line 172
    const/4 v4, 0x0

    .line 173
    move/from16 v1, p1

    .line 174
    .line 175
    move/from16 v2, p2

    .line 176
    .line 177
    move-object/from16 v20, v6

    .line 178
    .line 179
    move/from16 v6, v17

    .line 180
    .line 181
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_d

    .line 186
    .line 187
    move/from16 v4, v16

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_d
    if-eqz v9, :cond_7

    .line 191
    .line 192
    if-ne v9, v14, :cond_e

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_e
    const/4 v1, 0x1

    .line 196
    if-ne v9, v1, :cond_f

    .line 197
    .line 198
    move v4, v15

    .line 199
    goto :goto_5

    .line 200
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 201
    .line 202
    const-string v1, "Unknown mode: "

    .line 203
    .line 204
    invoke-static {v9, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v0

    .line 212
    :goto_5
    if-nez v4, :cond_15

    .line 213
    .line 214
    const/4 v1, -0x3

    .line 215
    if-ne v8, v1, :cond_10

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const/16 v1, 0x80

    .line 221
    .line 222
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 223
    .line 224
    .line 225
    const-string v1, "Permission Denial: "

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    move-object/from16 v1, p6

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    if-eqz v10, :cond_11

    .line 236
    .line 237
    const-string v1, " from "

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    :cond_11
    const-string v1, " asks to run as user "

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v1, " but is calling from uid "

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-static {v0, v7}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 259
    .line 260
    .line 261
    const-string v1, "; this requires "

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    if-eq v9, v12, :cond_14

    .line 272
    .line 273
    const-string v1, " or "

    .line 274
    .line 275
    if-eqz v9, :cond_12

    .line 276
    .line 277
    if-eq v9, v14, :cond_12

    .line 278
    .line 279
    const/4 v2, 0x1

    .line 280
    if-ne v9, v2, :cond_13

    .line 281
    .line 282
    if-eqz v15, :cond_13

    .line 283
    .line 284
    :cond_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 288
    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    :cond_13
    if-eqz v15, :cond_14

    .line 293
    .line 294
    if-ne v9, v14, :cond_14

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    move-object/from16 v1, v20

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    const-string v1, "ActivityManager"

    .line 309
    .line 310
    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    new-instance v1, Ljava/lang/SecurityException;

    .line 314
    .line 315
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw v1

    .line 319
    :cond_15
    move v11, v13

    .line 320
    :goto_6
    if-nez p4, :cond_17

    .line 321
    .line 322
    if-ltz v11, :cond_16

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 326
    .line 327
    const-string v1, "Call does not support special user #"

    .line 328
    .line 329
    invoke-static {v11, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v0

    .line 337
    :cond_17
    :goto_7
    const/16 v1, 0x7d0

    .line 338
    .line 339
    if-ne v7, v1, :cond_19

    .line 340
    .line 341
    if-ltz v11, :cond_19

    .line 342
    .line 343
    const-string/jumbo v1, "no_debugging_features"

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-nez v0, :cond_18

    .line 351
    .line 352
    goto :goto_8

    .line 353
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    .line 354
    .line 355
    const-string v1, "Shell does not have permission to access user "

    .line 356
    .line 357
    const-string v2, "\n "

    .line 358
    .line 359
    invoke-static {v11, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-static {v14}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw v0

    .line 378
    :cond_19
    :goto_8
    return v11
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x6

    .line 9
    const/16 v5, 0xc8

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x3

    .line 13
    const/16 v8, 0x1388

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x2

    .line 17
    const/4 v11, 0x1

    .line 18
    sparse-switch v2, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    move v1, v9

    .line 22
    goto/16 :goto_16

    .line 23
    .line 24
    :sswitch_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Landroid/util/Pair;

    .line 27
    .line 28
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 31
    .line 32
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 33
    .line 34
    invoke-virtual {v1, v2, v11}, Lcom/android/server/am/UserController;->logUserJourneyBegin(II)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 38
    .line 39
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v12, v3

    .line 42
    check-cast v12, Landroid/content/pm/UserInfo;

    .line 43
    .line 44
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v13, v3

    .line 47
    check-cast v13, Landroid/content/pm/UserInfo;

    .line 48
    .line 49
    iget-object v3, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v3

    .line 52
    :try_start_0
    iget-object v14, v1, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 53
    .line 54
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 55
    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v4

    .line 58
    :try_start_1
    iget-object v15, v1, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 59
    .line 60
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    .line 62
    .line 63
    const/4 v4, 0x2

    .line 64
    invoke-direct {v3, v1, v0, v4}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "android.hardware.type.automotive"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    const-string v0, "ActivityManager"

    .line 84
    .line 85
    const-string v1, "Showing user switch dialog on UserController, it could cause a race condition if it\'s shown by CarSystemUI as well"

    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object v1, v2, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialogLock:Ljava/lang/Object;

    .line 91
    .line 92
    monitor-enter v1

    .line 93
    :try_start_2
    invoke-virtual {v2, v6}, Lcom/android/server/am/UserController$Injector;->dismissUserSwitchingDialog(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog;

    .line 97
    .line 98
    iget-object v4, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 99
    .line 100
    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 103
    .line 104
    move-object v10, v0

    .line 105
    move-object/from16 v16, v4

    .line 106
    .line 107
    invoke-direct/range {v10 .. v16}, Lcom/android/server/am/UserSwitchingDialog;-><init>(Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    .line 108
    .line 109
    .line 110
    iput-object v0, v2, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

    .line 111
    .line 112
    invoke-virtual {v0, v3}, Lcom/android/server/am/UserSwitchingDialog;->show(Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;)V

    .line 113
    .line 114
    .line 115
    monitor-exit v1

    .line 116
    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    throw v0

    .line 120
    :catchall_1
    move-exception v0

    .line 121
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    throw v0

    .line 123
    :catchall_2
    move-exception v0

    .line 124
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 125
    throw v0

    .line 126
    :sswitch_1
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 133
    .line 134
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 135
    .line 136
    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 137
    .line 138
    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/UserJourneyLogger;->finishAndClearIncompleteUserJourney(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 139
    .line 140
    .line 141
    iget-object v1, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 142
    .line 143
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    .line 145
    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :sswitch_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v0, Ljava/lang/Integer;

    .line 152
    .line 153
    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController;->processScheduledStopOfBackgroundUser(Ljava/lang/Integer;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :sswitch_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v0, Ljava/lang/Integer;

    .line 161
    .line 162
    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController;->reportOnUserCompletedEvent(Ljava/lang/Integer;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :sswitch_4
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 168
    .line 169
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 170
    .line 171
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/UserController;->completeUserSwitch(II)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :sswitch_5
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 177
    .line 178
    invoke-virtual {v1, v2, v10}, Lcom/android/server/am/UserController;->logUserJourneyBegin(II)V

    .line 179
    .line 180
    .line 181
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 182
    .line 183
    invoke-static {}, Landroid/multiuser/Flags;->setPowerModeDuringUserSwitch()Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_2

    .line 188
    .line 189
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 190
    .line 191
    invoke-virtual {v2, v11}, Lcom/android/server/am/UserController$Injector;->setPerformancePowerMode(Z)V

    .line 192
    .line 193
    .line 194
    :cond_2
    invoke-virtual {v1, v0, v11}, Lcom/android/server/am/UserController;->startUser(II)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-nez v0, :cond_0

    .line 199
    .line 200
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 201
    .line 202
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 203
    .line 204
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 205
    .line 206
    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 207
    .line 208
    .line 209
    new-instance v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;

    .line 210
    .line 211
    const/4 v2, 0x0

    .line 212
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/UserController;I)V

    .line 213
    .line 214
    .line 215
    iget-object v2, v1, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 216
    .line 217
    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;

    .line 218
    .line 219
    invoke-direct {v3, v1, v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :sswitch_6
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 228
    .line 229
    iget-object v2, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 230
    .line 231
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    move v3, v9

    .line 236
    :goto_1
    if-ge v3, v2, :cond_3

    .line 237
    .line 238
    :try_start_5
    iget-object v4, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 239
    .line 240
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    check-cast v4, Landroid/app/IUserSwitchObserver;

    .line 245
    .line 246
    invoke-interface {v4, v0}, Landroid/app/IUserSwitchObserver;->onLockedBootComplete(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 247
    .line 248
    .line 249
    :catch_0
    add-int/lit8 v3, v3, 0x1

    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 253
    .line 254
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :sswitch_7
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 260
    .line 261
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 262
    .line 263
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 264
    .line 265
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    const/16 v5, 0x7585

    .line 271
    .line 272
    invoke-static {v5, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 273
    .line 274
    .line 275
    const-string v5, "Unlocked"

    .line 276
    .line 277
    invoke-virtual {v2, v3, v5}, Lcom/android/server/SystemServiceManager;->onUser(ILjava/lang/String;)V

    .line 278
    .line 279
    .line 280
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 281
    .line 282
    iget v3, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 283
    .line 284
    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 285
    .line 286
    if-ne v3, v5, :cond_4

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_4
    const/16 v8, 0x3e8

    .line 290
    .line 291
    :goto_2
    invoke-virtual {v1, v2, v10, v8}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    .line 292
    .line 293
    .line 294
    iget-object v1, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 295
    .line 296
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 301
    .line 302
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 303
    .line 304
    invoke-virtual {v1, v0, v4, v10}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :sswitch_8
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 310
    .line 311
    const-string v5, "SYSTEM_USER_UNLOCK_MSG"

    .line 312
    .line 313
    const-string v6, "NULL"

    .line 314
    .line 315
    invoke-static {v2, v3, v9, v5, v6}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 319
    .line 320
    iget-object v5, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 321
    .line 322
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 323
    .line 324
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    const/16 v6, 0x7584

    .line 328
    .line 329
    invoke-static {v6, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 330
    .line 331
    .line 332
    const-string v6, "Unlocking"

    .line 333
    .line 334
    invoke-virtual {v5, v2, v6}, Lcom/android/server/SystemServiceManager;->onUser(ILjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string v5, "SYSTEM_USER_UNLOCK_MSG"

    .line 338
    .line 339
    const-string v6, "Done mSystemServiceManager.onUserUnlocking"

    .line 340
    .line 341
    invoke-static {v2, v3, v11, v5, v6}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    new-instance v6, Lcom/android/server/am/UserController$$ExternalSyntheticLambda5;

    .line 349
    .line 350
    const/4 v8, 0x0

    .line 351
    invoke-direct {v6, v2, v8, v1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda5;-><init>(IILjava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    .line 356
    .line 357
    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 358
    .line 359
    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    iget-object v5, v5, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 364
    .line 365
    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 366
    .line 367
    const/4 v8, 0x5

    .line 368
    invoke-virtual {v5, v6, v8, v10}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    .line 369
    .line 370
    .line 371
    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 372
    .line 373
    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    iget-object v5, v5, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 378
    .line 379
    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 380
    .line 381
    invoke-virtual {v5, v6, v4, v11}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    .line 382
    .line 383
    .line 384
    new-instance v4, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 385
    .line 386
    invoke-direct {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 387
    .line 388
    .line 389
    new-instance v5, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    const-string/jumbo v6, "finishUserUnlocked-"

    .line 392
    .line 393
    .line 394
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v5

    .line 404
    invoke-virtual {v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 408
    .line 409
    move-object v5, v0

    .line 410
    check-cast v5, Lcom/android/server/am/UserState;

    .line 411
    .line 412
    iget-object v0, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 413
    .line 414
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 415
    .line 416
    .line 417
    move-result v6

    .line 418
    const/16 v0, 0x7577

    .line 419
    .line 420
    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 421
    .line 422
    .line 423
    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    .line 424
    .line 425
    const-string/jumbo v8, "finishUserUnlocked"

    .line 426
    .line 427
    .line 428
    const-string v12, "NULL"

    .line 429
    .line 430
    invoke-static {v6, v0, v9, v8, v12}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    .line 434
    .line 435
    const-string/jumbo v8, "finishUserUnlocked"

    .line 436
    .line 437
    .line 438
    const-string v12, "Try StorageManager.isUserKeyUnlocked"

    .line 439
    .line 440
    invoke-static {v6, v0, v11, v8, v12}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    const-string v0, "ActivityManager"

    .line 444
    .line 445
    new-instance v8, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    const-string v12, "UserController event: finishUserUnlocked("

    .line 448
    .line 449
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    const-string v12, ")"

    .line 456
    .line 457
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v8

    .line 464
    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .line 466
    .line 467
    invoke-static {v6}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    if-nez v0, :cond_5

    .line 472
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    const-string/jumbo v5, "dev.boot."

    .line 476
    .line 477
    .line 478
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    const-string v5, ".user_unlocked"

    .line 485
    .line 486
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    const-string v5, "FAIL-finishUserUnlocked"

    .line 494
    .line 495
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    const-string v0, "ActivityManager"

    .line 499
    .line 500
    const-string v5, "!@Boot: StorageManager Unlocked FAIL, finishUserUnlocked"

    .line 501
    .line 502
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .line 504
    .line 505
    iget-object v0, v1, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 506
    .line 507
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    if-nez v0, :cond_15

    .line 512
    .line 513
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 514
    .line 515
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 516
    .line 517
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 518
    .line 519
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    const-string/jumbo v0, "dumpstate.process"

    .line 523
    .line 524
    .line 525
    const-string/jumbo v1, "unlockfail"

    .line 526
    .line 527
    .line 528
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    const-string/jumbo v0, "bugreport.mode"

    .line 532
    .line 533
    .line 534
    const-string/jumbo v1, "booting_delay"

    .line 535
    .line 536
    .line 537
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    const-string/jumbo v0, "ctl.start"

    .line 541
    .line 542
    .line 543
    const-string/jumbo v1, "bugreportm"

    .line 544
    .line 545
    .line 546
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    goto/16 :goto_f

    .line 550
    .line 551
    :cond_5
    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    .line 552
    .line 553
    const-string/jumbo v8, "finishUserUnlocked"

    .line 554
    .line 555
    .line 556
    const-string v12, "OK StorageManager.isUserKeyUnlocked"

    .line 557
    .line 558
    invoke-static {v6, v0, v11, v8, v12}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    iget-object v8, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 562
    .line 563
    monitor-enter v8

    .line 564
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 565
    .line 566
    iget-object v12, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 567
    .line 568
    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    .line 569
    .line 570
    .line 571
    move-result v12

    .line 572
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    if-eq v0, v5, :cond_6

    .line 577
    .line 578
    monitor-exit v8

    .line 579
    goto/16 :goto_f

    .line 580
    .line 581
    :catchall_3
    move-exception v0

    .line 582
    goto/16 :goto_12

    .line 583
    .line 584
    :cond_6
    invoke-virtual {v5, v10, v7}, Lcom/android/server/am/UserState;->setState(II)Z

    .line 585
    .line 586
    .line 587
    move-result v0

    .line 588
    if-nez v0, :cond_7

    .line 589
    .line 590
    monitor-exit v8

    .line 591
    goto/16 :goto_f

    .line 592
    .line 593
    :cond_7
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 594
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 595
    .line 596
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    iget v7, v5, Lcom/android/server/am/UserState;->state:I

    .line 601
    .line 602
    invoke-virtual {v0, v6, v7}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 603
    .line 604
    .line 605
    iget-object v0, v5, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 606
    .line 607
    invoke-virtual {v0}, Lcom/android/internal/util/ProgressReporter;->finish()V

    .line 608
    .line 609
    .line 610
    if-nez v6, :cond_8

    .line 611
    .line 612
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 613
    .line 614
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 615
    .line 616
    const/high16 v7, 0x40000

    .line 617
    .line 618
    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityManagerService;->startPersistentApps(I)V

    .line 619
    .line 620
    .line 621
    :cond_8
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 622
    .line 623
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 624
    .line 625
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    .line 626
    .line 627
    iget-object v7, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 628
    .line 629
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 630
    .line 631
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 632
    .line 633
    .line 634
    monitor-enter v7

    .line 635
    :try_start_7
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 636
    .line 637
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 638
    .line 639
    iget-object v8, v8, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 640
    .line 641
    invoke-virtual {v8}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 642
    .line 643
    .line 644
    move-result-object v8

    .line 645
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 646
    .line 647
    .line 648
    move-result v12

    .line 649
    move v13, v9

    .line 650
    :goto_3
    if-ge v13, v12, :cond_c

    .line 651
    .line 652
    invoke-virtual {v8, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v14

    .line 656
    check-cast v14, Landroid/util/SparseArray;

    .line 657
    .line 658
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    .line 659
    .line 660
    .line 661
    move-result v15

    .line 662
    move v3, v9

    .line 663
    :goto_4
    if-ge v3, v15, :cond_b

    .line 664
    .line 665
    invoke-virtual {v14, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v16

    .line 669
    move-object/from16 v10, v16

    .line 670
    .line 671
    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 672
    .line 673
    iget v9, v10, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 674
    .line 675
    if-ne v9, v6, :cond_a

    .line 676
    .line 677
    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 678
    .line 679
    if-eqz v9, :cond_a

    .line 680
    .line 681
    iget-boolean v9, v10, Lcom/android/server/am/ProcessRecord;->mUnlocked:Z

    .line 682
    .line 683
    if-eqz v9, :cond_9

    .line 684
    .line 685
    goto :goto_5

    .line 686
    :cond_9
    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 687
    .line 688
    new-instance v11, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;

    .line 689
    .line 690
    invoke-direct {v11, v0, v10}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v9, v11}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 694
    .line 695
    .line 696
    goto :goto_5

    .line 697
    :catchall_4
    move-exception v0

    .line 698
    goto/16 :goto_11

    .line 699
    .line 700
    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 701
    .line 702
    const/4 v9, 0x0

    .line 703
    const/4 v10, 0x2

    .line 704
    const/4 v11, 0x1

    .line 705
    goto :goto_4

    .line 706
    :cond_b
    add-int/lit8 v13, v13, 0x1

    .line 707
    .line 708
    const/4 v3, -0x1

    .line 709
    const/4 v9, 0x0

    .line 710
    const/4 v10, 0x2

    .line 711
    const/4 v11, 0x1

    .line 712
    goto :goto_3

    .line 713
    :cond_c
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 714
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 715
    .line 716
    .line 717
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 718
    .line 719
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    .line 724
    .line 725
    .line 726
    move-result v0

    .line 727
    const/high16 v3, 0x50000000

    .line 728
    .line 729
    if-nez v0, :cond_d

    .line 730
    .line 731
    new-instance v13, Landroid/content/Intent;

    .line 732
    .line 733
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 734
    .line 735
    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    const-string v0, "android.intent.extra.user_handle"

    .line 739
    .line 740
    invoke-virtual {v13, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v13, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 744
    .line 745
    .line 746
    iget-object v12, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 747
    .line 748
    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 749
    .line 750
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 751
    .line 752
    .line 753
    move-result v18

    .line 754
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 755
    .line 756
    .line 757
    move-result v19

    .line 758
    const/4 v15, 0x0

    .line 759
    const/16 v16, 0x0

    .line 760
    .line 761
    const/4 v14, 0x0

    .line 762
    move/from16 v20, v6

    .line 763
    .line 764
    invoke-virtual/range {v12 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 765
    .line 766
    .line 767
    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    .line 768
    .line 769
    const-string/jumbo v7, "finishUserUnlocked"

    .line 770
    .line 771
    .line 772
    const-string/jumbo v8, "send USER UNLOCKED"

    .line 773
    .line 774
    .line 775
    const/4 v9, 0x1

    .line 776
    invoke-static {v6, v0, v9, v7, v8}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    :cond_d
    invoke-virtual {v1, v6}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 784
    .line 785
    .line 786
    move-result v7

    .line 787
    if-eqz v7, :cond_f

    .line 788
    .line 789
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 790
    .line 791
    invoke-virtual {v7}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 792
    .line 793
    .line 794
    move-result-object v7

    .line 795
    invoke-virtual {v7, v6}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 796
    .line 797
    .line 798
    move-result-object v7

    .line 799
    if-eqz v7, :cond_f

    .line 800
    .line 801
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    .line 802
    .line 803
    const-string v9, "android.intent.action.PROFILE_ACCESSIBLE"

    .line 804
    .line 805
    invoke-virtual {v1, v6, v8, v9}, Lcom/android/server/am/UserController;->broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 809
    .line 810
    .line 811
    move-result v8

    .line 812
    if-nez v8, :cond_e

    .line 813
    .line 814
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    .line 815
    .line 816
    .line 817
    move-result v0

    .line 818
    if-eqz v0, :cond_f

    .line 819
    .line 820
    :cond_e
    new-instance v9, Landroid/content/Intent;

    .line 821
    .line 822
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    .line 823
    .line 824
    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    const-string v0, "android.intent.extra.USER"

    .line 828
    .line 829
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 830
    .line 831
    .line 832
    move-result-object v8

    .line 833
    invoke-virtual {v9, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 834
    .line 835
    .line 836
    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 837
    .line 838
    .line 839
    iget-object v8, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 840
    .line 841
    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 842
    .line 843
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 844
    .line 845
    .line 846
    move-result v14

    .line 847
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 848
    .line 849
    .line 850
    move-result v15

    .line 851
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    .line 852
    .line 853
    const/4 v11, 0x0

    .line 854
    const/4 v12, 0x0

    .line 855
    const/4 v10, 0x0

    .line 856
    move/from16 v16, v0

    .line 857
    .line 858
    invoke-virtual/range {v8 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 859
    .line 860
    .line 861
    :cond_f
    invoke-virtual {v1, v6}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 862
    .line 863
    .line 864
    move-result-object v3

    .line 865
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 866
    .line 867
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 868
    .line 869
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 870
    .line 871
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 872
    .line 873
    .line 874
    const-string v7, "DUMMY"

    .line 875
    .line 876
    sget-object v8, Lcom/android/server/am/ActivityManagerServiceExt;->CSC_VERSION:Ljava/lang/String;

    .line 877
    .line 878
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    move-result v0

    .line 882
    const-string v9, "ActivityManagerServiceExt"

    .line 883
    .line 884
    if-eqz v0, :cond_10

    .line 885
    .line 886
    new-instance v0, Ljava/lang/RuntimeException;

    .line 887
    .line 888
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 889
    .line 890
    .line 891
    const-string/jumbo v10, "csc version of property is wrong"

    .line 892
    .line 893
    .line 894
    invoke-static {v9, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 895
    .line 896
    .line 897
    :cond_10
    :try_start_8
    new-instance v10, Ljava/io/FileInputStream;

    .line 898
    .line 899
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceExt;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    .line 900
    .line 901
    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 902
    .line 903
    .line 904
    :try_start_9
    new-instance v11, Ljava/io/DataInputStream;

    .line 905
    .line 906
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 907
    .line 908
    const/16 v12, 0x400

    .line 909
    .line 910
    invoke-direct {v0, v10, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 911
    .line 912
    .line 913
    invoke-direct {v11, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 914
    .line 915
    .line 916
    :try_start_a
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 920
    :try_start_b
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 921
    .line 922
    .line 923
    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 924
    .line 925
    .line 926
    goto :goto_a

    .line 927
    :catch_1
    move-exception v0

    .line 928
    goto :goto_9

    .line 929
    :catchall_5
    move-exception v0

    .line 930
    move-object v11, v0

    .line 931
    goto :goto_7

    .line 932
    :catchall_6
    move-exception v0

    .line 933
    move-object v12, v0

    .line 934
    :try_start_d
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 935
    .line 936
    .line 937
    goto :goto_6

    .line 938
    :catchall_7
    move-exception v0

    .line 939
    move-object v11, v0

    .line 940
    :try_start_e
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 941
    .line 942
    .line 943
    :goto_6
    throw v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 944
    :goto_7
    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 945
    .line 946
    .line 947
    goto :goto_8

    .line 948
    :catchall_8
    move-exception v0

    .line 949
    move-object v10, v0

    .line 950
    :try_start_10
    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 951
    .line 952
    .line 953
    :goto_8
    throw v11
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    .line 954
    :goto_9
    const-string v10, "Failure reading pre boot csc"

    .line 955
    .line 956
    invoke-static {v9, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 957
    .line 958
    .line 959
    :catch_2
    :goto_a
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 960
    .line 961
    .line 962
    move-result v0

    .line 963
    const/4 v7, 0x1

    .line 964
    xor-int/2addr v0, v7

    .line 965
    iget-object v7, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 966
    .line 967
    sget-object v8, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    .line 968
    .line 969
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 970
    .line 971
    .line 972
    move-result v7

    .line 973
    if-eqz v7, :cond_12

    .line 974
    .line 975
    const-string/jumbo v7, "persist.pm.mock-upgrade"

    .line 976
    .line 977
    .line 978
    const/4 v8, 0x0

    .line 979
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 980
    .line 981
    .line 982
    move-result v7

    .line 983
    if-nez v7, :cond_12

    .line 984
    .line 985
    if-eqz v0, :cond_11

    .line 986
    .line 987
    goto :goto_b

    .line 988
    :cond_11
    invoke-virtual {v1, v5}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    .line 989
    .line 990
    .line 991
    goto :goto_e

    .line 992
    :cond_12
    :goto_b
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 993
    .line 994
    .line 995
    move-result v7

    .line 996
    if-nez v7, :cond_14

    .line 997
    .line 998
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    .line 999
    .line 1000
    .line 1001
    move-result v3

    .line 1002
    if-eqz v3, :cond_13

    .line 1003
    .line 1004
    goto :goto_c

    .line 1005
    :cond_13
    const/4 v3, 0x0

    .line 1006
    goto :goto_d

    .line 1007
    :cond_14
    :goto_c
    const/4 v3, 0x1

    .line 1008
    :goto_d
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1009
    .line 1010
    new-instance v8, Lcom/android/server/am/UserController$$ExternalSyntheticLambda18;

    .line 1011
    .line 1012
    invoke-direct {v8, v1, v0, v5}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/am/UserController;ZLcom/android/server/am/UserState;)V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1016
    .line 1017
    .line 1018
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    const-string v1, "android.intent.action.PRE_BOOT_COMPLETED"

    .line 1023
    .line 1024
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    const/16 v1, 0x7581

    .line 1029
    .line 1030
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1031
    .line 1032
    .line 1033
    new-instance v0, Lcom/android/server/am/UserController$Injector$1;

    .line 1034
    .line 1035
    iget-object v1, v7, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1036
    .line 1037
    invoke-direct {v0, v1, v6, v3, v8}, Lcom/android/server/am/UserController$Injector$1;-><init>(Lcom/android/server/am/ActivityManagerService;IZLcom/android/server/am/UserController$$ExternalSyntheticLambda18;)V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector$1;->sendNext()V

    .line 1041
    .line 1042
    .line 1043
    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    .line 1044
    .line 1045
    const-string/jumbo v1, "finishUserUnlocked"

    .line 1046
    .line 1047
    .line 1048
    const-string v3, "OK sendPreBootBroadcast"

    .line 1049
    .line 1050
    const/4 v7, 0x1

    .line 1051
    invoke-static {v6, v0, v7, v1, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    :goto_e
    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    .line 1055
    .line 1056
    const-string/jumbo v1, "finishUserUnlocked"

    .line 1057
    .line 1058
    .line 1059
    const-string v3, "NULL"

    .line 1060
    .line 1061
    const/4 v5, 0x2

    .line 1062
    invoke-static {v6, v0, v5, v1, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda16;

    .line 1070
    .line 1071
    const/4 v3, 0x1

    .line 1072
    invoke-direct {v1, v3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda16;-><init>(I)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1076
    .line 1077
    .line 1078
    :cond_15
    :goto_f
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1079
    .line 1080
    .line 1081
    const-string v0, "SYSTEM_USER_UNLOCK_MSG"

    .line 1082
    .line 1083
    const-string v1, "NULL"

    .line 1084
    .line 1085
    const/4 v3, -0x1

    .line 1086
    const/4 v4, 0x2

    .line 1087
    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1088
    .line 1089
    .line 1090
    :cond_16
    :goto_10
    const/4 v1, 0x0

    .line 1091
    goto/16 :goto_16

    .line 1092
    .line 1093
    :goto_11
    :try_start_11
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 1094
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1095
    .line 1096
    .line 1097
    throw v0

    .line 1098
    :goto_12
    :try_start_12
    monitor-exit v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 1099
    throw v0

    .line 1100
    :sswitch_9
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 1101
    .line 1102
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 1103
    .line 1104
    const-string v3, "User switch timeout: from "

    .line 1105
    .line 1106
    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 1107
    .line 1108
    monitor-enter v4

    .line 1109
    :try_start_13
    iget-object v5, v1, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1110
    .line 1111
    if-eqz v5, :cond_17

    .line 1112
    .line 1113
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    .line 1114
    .line 1115
    .line 1116
    move-result v5

    .line 1117
    if-nez v5, :cond_17

    .line 1118
    .line 1119
    const-string v5, "ActivityManager"

    .line 1120
    .line 1121
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    .line 1129
    const-string v2, " to "

    .line 1130
    .line 1131
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    .line 1137
    const-string v0, ". Observers that didn\'t respond: "

    .line 1138
    .line 1139
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    iget-object v0, v1, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1143
    .line 1144
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0

    .line 1151
    invoke-static {v5, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    .line 1153
    .line 1154
    iput-object v6, v1, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1155
    .line 1156
    goto :goto_13

    .line 1157
    :catchall_9
    move-exception v0

    .line 1158
    goto :goto_14

    .line 1159
    :cond_17
    :goto_13
    monitor-exit v4

    .line 1160
    goto :goto_10

    .line 1161
    :goto_14
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 1162
    throw v0

    .line 1163
    :sswitch_a
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 1164
    .line 1165
    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 1166
    .line 1167
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(II)V

    .line 1168
    .line 1169
    .line 1170
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1171
    .line 1172
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v2

    .line 1176
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 1177
    .line 1178
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 1179
    .line 1180
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 1181
    .line 1182
    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v0

    .line 1186
    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/UserJourneyLogger;->logUserSwitchJourneyFinish(ILandroid/content/pm/UserInfo;)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v0

    .line 1190
    if-eqz v0, :cond_16

    .line 1191
    .line 1192
    iget-object v1, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 1193
    .line 1194
    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1195
    .line 1196
    .line 1197
    goto :goto_10

    .line 1198
    :sswitch_b
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 1199
    .line 1200
    iget-object v2, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 1201
    .line 1202
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 1203
    .line 1204
    .line 1205
    move-result v2

    .line 1206
    const/4 v8, 0x0

    .line 1207
    :goto_15
    if-ge v8, v2, :cond_18

    .line 1208
    .line 1209
    :try_start_14
    iget-object v3, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 1210
    .line 1211
    invoke-virtual {v3, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v3

    .line 1215
    check-cast v3, Landroid/app/IUserSwitchObserver;

    .line 1216
    .line 1217
    invoke-interface {v3, v0}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_3

    .line 1218
    .line 1219
    .line 1220
    :catch_3
    add-int/lit8 v8, v8, 0x1

    .line 1221
    .line 1222
    goto :goto_15

    .line 1223
    :cond_18
    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 1224
    .line 1225
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1226
    .line 1227
    .line 1228
    goto/16 :goto_10

    .line 1229
    .line 1230
    :sswitch_c
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1231
    .line 1232
    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 1233
    .line 1234
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v3

    .line 1238
    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 1239
    .line 1240
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1241
    .line 1242
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 1243
    .line 1244
    const/16 v5, 0x4008

    .line 1245
    .line 1246
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 1247
    .line 1248
    .line 1249
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1250
    .line 1251
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 1252
    .line 1253
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v3

    .line 1257
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 1258
    .line 1259
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1260
    .line 1261
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 1262
    .line 1263
    const v5, 0x8008

    .line 1264
    .line 1265
    .line 1266
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 1267
    .line 1268
    .line 1269
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1270
    .line 1271
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1272
    .line 1273
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1274
    .line 1275
    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 1276
    .line 1277
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 1278
    .line 1279
    invoke-virtual {v2, v3, v4}, Lcom/android/server/SystemServiceManager;->onUserSwitching(II)V

    .line 1280
    .line 1281
    .line 1282
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 1283
    .line 1284
    const/4 v2, 0x4

    .line 1285
    invoke-virtual {v1, v0, v2, v8}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    .line 1286
    .line 1287
    .line 1288
    goto/16 :goto_10

    .line 1289
    .line 1290
    :sswitch_d
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1291
    .line 1292
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 1293
    .line 1294
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v3

    .line 1298
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 1299
    .line 1300
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1301
    .line 1302
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 1303
    .line 1304
    const v5, 0x8007

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 1308
    .line 1309
    .line 1310
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 1311
    .line 1312
    invoke-virtual {v1, v2, v7}, Lcom/android/server/am/UserController;->logUserJourneyBegin(II)V

    .line 1313
    .line 1314
    .line 1315
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1316
    .line 1317
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 1318
    .line 1319
    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController$Injector;->onUserStarting(I)V

    .line 1320
    .line 1321
    .line 1322
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 1323
    .line 1324
    const/4 v3, 0x1

    .line 1325
    invoke-virtual {v1, v2, v3, v8}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    .line 1326
    .line 1327
    .line 1328
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1329
    .line 1330
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v2

    .line 1334
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 1335
    .line 1336
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 1337
    .line 1338
    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v0

    .line 1342
    const/4 v3, -0x1

    .line 1343
    invoke-virtual {v2, v3, v0, v7, v3}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 1344
    .line 1345
    .line 1346
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1347
    .line 1348
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1349
    .line 1350
    .line 1351
    goto/16 :goto_10

    .line 1352
    .line 1353
    :sswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 1354
    .line 1355
    .line 1356
    goto/16 :goto_10

    .line 1357
    .line 1358
    :sswitch_f
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1359
    .line 1360
    check-cast v2, Lcom/android/server/am/UserState;

    .line 1361
    .line 1362
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 1363
    .line 1364
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 1365
    .line 1366
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 1367
    .line 1368
    .line 1369
    goto/16 :goto_10

    .line 1370
    .line 1371
    :sswitch_10
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1372
    .line 1373
    check-cast v2, Lcom/android/server/am/UserState;

    .line 1374
    .line 1375
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 1376
    .line 1377
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 1378
    .line 1379
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 1380
    .line 1381
    .line 1382
    goto/16 :goto_10

    .line 1383
    .line 1384
    :sswitch_11
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1385
    .line 1386
    check-cast v2, Lcom/android/server/am/UserState;

    .line 1387
    .line 1388
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 1389
    .line 1390
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 1391
    .line 1392
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 1393
    .line 1394
    .line 1395
    goto/16 :goto_10

    .line 1396
    .line 1397
    :goto_16
    return v1

    .line 1398
    nop

    .line 1399
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_11
        0x14 -> :sswitch_10
        0x1e -> :sswitch_f
        0x28 -> :sswitch_e
        0x32 -> :sswitch_d
        0x3c -> :sswitch_c
        0x46 -> :sswitch_b
        0x50 -> :sswitch_a
        0x5a -> :sswitch_9
        0x64 -> :sswitch_8
        0x69 -> :sswitch_7
        0x6e -> :sswitch_6
        0x78 -> :sswitch_5
        0x82 -> :sswitch_4
        0x8c -> :sswitch_3
        0x96 -> :sswitch_2
        0xc8 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final hasStartedUserState(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final hasUserRestriction(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isSameProfileGroup(II)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 9
    .line 10
    const/16 v3, -0x2710

    .line 11
    .line 12
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 17
    .line 18
    invoke-virtual {p0, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eq p1, v3, :cond_1

    .line 23
    .line 24
    if-ne p1, p0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    monitor-exit v1

    .line 29
    return v0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final isSystemUserStarted()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/am/UserState;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return v1

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eq p0, v2, :cond_1

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq p0, v3, :cond_1

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    if-ne p0, v3, :cond_2

    .line 29
    .line 30
    :cond_1
    move v1, v2

    .line 31
    :cond_2
    monitor-exit v0

    .line 32
    return v1

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final isUserOrItsParentRunning(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 17
    .line 18
    const/16 v3, -0x2710

    .line 19
    .line 20
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-ne p1, v3, :cond_1

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return v1

    .line 28
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    monitor-exit v0

    .line 33
    return p0

    .line 34
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final isUserRunning(II)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    and-int/lit8 v1, p2, 0x1

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    and-int/lit8 v1, p2, 0x2

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    if-eq p0, v2, :cond_2

    .line 24
    .line 25
    return v0

    .line 26
    :cond_2
    return v2

    .line 27
    :cond_3
    and-int/lit8 v1, p2, 0x8

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    const/4 v4, 0x5

    .line 31
    const/4 v5, 0x4

    .line 32
    if-eqz v1, :cond_6

    .line 33
    .line 34
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    .line 35
    .line 36
    const/4 p2, 0x2

    .line 37
    if-eq p0, p2, :cond_5

    .line 38
    .line 39
    if-eq p0, v3, :cond_5

    .line 40
    .line 41
    if-eq p0, v5, :cond_4

    .line 42
    .line 43
    if-eq p0, v4, :cond_4

    .line 44
    .line 45
    return v0

    .line 46
    :cond_4
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_5
    return v2

    .line 52
    :cond_6
    and-int/2addr p2, v5

    .line 53
    if-eqz p2, :cond_9

    .line 54
    .line 55
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    .line 56
    .line 57
    if-eq p0, v3, :cond_8

    .line 58
    .line 59
    if-eq p0, v5, :cond_7

    .line 60
    .line 61
    if-eq p0, v4, :cond_7

    .line 62
    .line 63
    return v0

    .line 64
    :cond_7
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    return p0

    .line 69
    :cond_8
    return v2

    .line 70
    :cond_9
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    .line 71
    .line 72
    if-eq p0, v5, :cond_a

    .line 73
    .line 74
    if-eq p0, v4, :cond_a

    .line 75
    .line 76
    move v0, v2

    .line 77
    :cond_a
    return v0
.end method

.method public final logUserJourneyBegin(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserJourneyLogger;->finishAndClearIncompleteUserJourney(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0xc8

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-wide/32 v0, 0x15f90

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final maybeUnlockUser(I)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    const-string/jumbo v2, "maybeUnlockUser"

    const-string v3, "NULL and no exit"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(ILandroid/os/IProgressListener;)Z

    return-void
.end method

.method public final maybeUnlockUser(ILandroid/os/IProgressListener;)Z
    .locals 11

    .line 3
    const-string/jumbo v0, "maybeUnlockUser"

    const-string v1, "NULL"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mAllowUserUnlocking:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    const-string p0, "ActivityManager"

    const-string v0, "Not unlocking user %d yet because boot hasn\'t completed"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {p2, p1, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v3

    .line 7
    :cond_1
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->unlockUserKeyIfUnsecured(I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UserState;

    if-eqz v4, :cond_3

    .line 11
    iget-object v5, v4, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v5, p2}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_b

    .line 12
    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x2

    if-nez v4, :cond_5

    if-nez p2, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    :try_start_2
    invoke-interface {p2, p1, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 14
    :catch_1
    :goto_2
    const-string/jumbo p0, "unlockUserCleared"

    const-string p2, "NULL and return"

    invoke-static {p1, v2, v0, p0, p2}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    return v3

    .line 15
    :cond_5
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "finishUserUnlocking-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 17
    iget-object v5, v4, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/16 v6, 0x7576

    .line 18
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(II)I

    .line 19
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 20
    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    .line 21
    iget-object v6, v6, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/4 v7, 0x5

    const/4 v8, 0x1

    .line 22
    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    .line 23
    iget v6, v4, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v9, "finishUserUnlocking"

    const-string v10, "NULL"

    invoke-static {v5, v6, v3, v9, v10}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v6, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "UserController event: finishUserUnlocking("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x4d

    if-eq v6, v5, :cond_7

    .line 26
    const-string v6, "ActivityManager"

    const-string v7, "Do not unlock user "

    const-string v9, " in Maintenance mode"

    .line 27
    invoke-static {v5, v7, v9, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    move v5, v3

    goto/16 :goto_5

    .line 28
    :cond_7
    invoke-static {v5}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "dev.boot."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ".user_unlocked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FAIL-finishUserUnlocking"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v6, "ActivityManager"

    const-string v7, "!@Boot: StorageManager Unlocked FAIL, finishUserUnlocking"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v6, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 32
    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v5, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    const-string/jumbo v5, "dumpstate.process"

    const-string/jumbo v6, "unlockfail"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v5, "bugreport.mode"

    const-string/jumbo v6, "booting_delay"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v5, "ctl.start"

    const-string/jumbo v6, "bugreportm"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 36
    :cond_8
    iget v6, v4, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v9, "finishUserUnlocking"

    const-string v10, "OK StorageManager.isUserKeyUnlocked"

    invoke-static {v5, v6, v8, v9, v10}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v6, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 38
    :try_start_3
    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v4, :cond_a

    iget v9, v4, Lcom/android/server/am/UserState;->state:I

    if-eq v9, v8, :cond_9

    goto :goto_4

    .line 39
    :cond_9
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    const-string/jumbo v6, "finishUserUnlocking"

    const-string/jumbo v10, "mUnlockProgress.start()"

    invoke-static {v5, v9, v8, v6, v10}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v6, v4, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v6}, Lcom/android/internal/util/ProgressReporter;->start()V

    .line 42
    iget-object v6, v4, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    iget-object v9, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 43
    iget-object v9, v9, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 44
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v10, 0x10401bd

    .line 45
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 46
    invoke-virtual {v6, v7, v9}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    .line 47
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;

    const/4 v9, 0x2

    invoke-direct {v7, p0, v5, v4, v9}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Object;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    iget v6, v4, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v7, "finishUserUnlocking"

    const-string v9, "NULL"

    invoke-static {v5, v6, v0, v7, v9}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    move v5, v8

    goto :goto_5

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    .line 49
    :cond_a
    :goto_4
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_3

    .line 50
    :goto_5
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v5, :cond_c

    if-nez p2, :cond_b

    goto :goto_6

    .line 51
    :cond_b
    :try_start_5
    invoke-interface {p2, p1, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :goto_6
    return v3

    .line 52
    :cond_c
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 53
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [I

    move v5, v3

    :goto_7
    if-ge v5, v1, :cond_d

    .line 54
    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :catchall_2
    move-exception p0

    goto :goto_9

    .line 55
    :cond_d
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_8
    if-ge v3, v1, :cond_f

    .line 56
    aget p2, v2, v3

    .line 57
    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 58
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, p1, :cond_e

    if-eq p2, p1, :cond_e

    .line 59
    const-string v6, "ActivityManager"

    const-string v7, "User "

    const-string v9, " (parent "

    .line 60
    invoke-static {p2, v7, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 61
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): attempting unlock because parent was just unlocked"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)V

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 63
    :cond_f
    iget p0, v4, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo p2, "unlockUserCleared"

    const-string v1, "NULL"

    invoke-static {p1, p0, v0, p2, v1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    return v8

    .line 64
    :goto_9
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    .line 65
    :goto_a
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0

    .line 66
    :goto_b
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public final moveUserToForeground(ILcom/android/server/am/UserState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 6
    .line 7
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->switchUser(ILcom/android/server/am/UserState;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 32
    .line 33
    const-string/jumbo p2, "moveUserToForeground"

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeActivity(ILjava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 52
    .line 53
    .line 54
    :goto_0
    const/16 p0, 0x7559

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final onBootComplete(Lcom/android/server/am/ActivityManagerService$12;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "onBootComplete"

    .line 2
    .line 3
    .line 4
    const-string v1, "NULL"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, -0x1

    .line 8
    invoke-static {v2, v3, v2, v0, v1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->setAllowUserUnlocking(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v0, v2

    .line 33
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 34
    .line 35
    .line 36
    move v0, v2

    .line 37
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ge v0, v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lcom/android/server/am/UserState;

    .line 52
    .line 53
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-nez v6, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0, v5, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Lcom/android/server/am/ActivityManagerService$12;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->sendLockedBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerService$12;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)V

    .line 72
    .line 73
    .line 74
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const-string/jumbo p0, "onBootComplete"

    .line 78
    .line 79
    .line 80
    const-string p1, "NULL"

    .line 81
    .line 82
    const/4 v0, 0x2

    .line 83
    invoke-static {v2, v3, v0, p0, p1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    throw p0
.end method

.method public processScheduledStopOfBackgroundUser(Ljava/lang/Integer;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    const-string v0, "ActivityManager"

    .line 6
    .line 7
    const-string v2, "Considering stopping background user %d due to inactivity"

    .line 8
    .line 9
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v6, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v6

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    monitor-exit v6

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    monitor-exit v6

    .line 38
    return-void

    .line 39
    :cond_1
    const-string v0, "ActivityManager"

    .line 40
    .line 41
    const-string v2, "Stopping background user %d due to inactivity"

    .line 42
    .line 43
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v0, v2, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    const/4 v3, 0x1

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    move-object v0, p0

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    .line 56
    .line 57
    .line 58
    monitor-exit v6

    .line 59
    return-void

    .line 60
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public reportOnUserCompletedEvent(Ljava/lang/Integer;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v1, 0x8c

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 29
    .line 30
    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v2

    .line 35
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/server/am/UserState;

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    .line 50
    .line 51
    const/4 v5, 0x5

    .line 52
    if-eq v4, v5, :cond_0

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget v0, v0, Lcom/android/server/am/UserState;->state:I

    .line 61
    .line 62
    const/4 v4, 0x3

    .line 63
    if-ne v0, v4, :cond_1

    .line 64
    .line 65
    or-int/lit8 v3, v3, 0x2

    .line 66
    .line 67
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 72
    .line 73
    if-ne v0, v4, :cond_2

    .line 74
    .line 75
    or-int/lit8 v3, v3, 0x4

    .line 76
    .line 77
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    const-string v0, "ActivityManager"

    .line 79
    .line 80
    const-string/jumbo v2, "reportOnUserCompletedEvent(%d): stored=%s, eligible=%s"

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    filled-new-array {p1, v4, v5}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v0, v2, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    and-int v0, v1, v3

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 107
    .line 108
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const/16 p1, 0x7588

    .line 122
    .line 123
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 124
    .line 125
    .line 126
    if-nez v0, :cond_3

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {v2, v1}, Lcom/android/server/SystemServiceManager;->getTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    if-nez v6, :cond_4

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    new-instance v7, Lcom/android/server/SystemService$UserCompletedEventType;

    .line 141
    .line 142
    invoke-direct {v7, v0}, Lcom/android/server/SystemService$UserCompletedEventType;-><init>(I)V

    .line 143
    .line 144
    .line 145
    const-string v4, "CompletedEvent"

    .line 146
    .line 147
    const/4 v5, 0x0

    .line 148
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V

    .line 149
    .line 150
    .line 151
    :goto_1
    return-void

    .line 152
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    throw p0

    .line 154
    :catchall_1
    move-exception p0

    .line 155
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    throw p0
.end method

.method public final resumePendingUserStarts(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    .line 10
    .line 11
    check-cast v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/server/am/UserController$PendingUserStart;

    .line 28
    .line 29
    iget v4, v3, Lcom/android/server/am/UserController$PendingUserStart;->userId:I

    .line 30
    .line 31
    if-ne v4, p1, :cond_0

    .line 32
    .line 33
    const-string v4, "ActivityManager"

    .line 34
    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v6, "resumePendingUserStart for"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v4, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object v4, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 57
    .line 58
    new-instance v5, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    .line 59
    .line 60
    const/4 v6, 0x3

    .line 61
    invoke-direct {v5, p0, v3, v6}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    .line 74
    .line 75
    check-cast p0, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 78
    .line 79
    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method

.method public final runWithTimeout(Ljava/util/function/Consumer;ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v1, p5}, Lcom/android/server/am/UserController;->asyncTraceBegin(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda21;

    .line 13
    .line 14
    invoke-direct {v1, v0, p5, p2, p4}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda21;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    int-to-long v2, p2

    .line 18
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    new-instance p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;

    .line 22
    .line 23
    invoke-direct {p0, v0, p5, p3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public scheduleOnUserCompletedEvent(III)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    or-int/2addr p2, v2

    .line 14
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0

    .line 22
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    const/16 v0, 0x8c

    .line 29
    .line 30
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    int-to-long p2, p3

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final scheduleStopOfBackgroundUser(I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/multiuser/Flags;->scheduleStopOfBackgroundUser()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lcom/android/server/am/UserController;->mBackgroundUserScheduledStopTimeSecs:I

    .line 9
    .line 10
    if-lez v0, :cond_4

    .line 11
    .line 12
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-nez p1, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string v2, "ActivityManager"

    .line 33
    .line 34
    if-ne p1, v1, :cond_3

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p1, "Exempting user %d from being stopped due to inactivity by virtue of it being the main user"

    .line 45
    .line 46
    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v3, "Scheduling to stop user %d in %d seconds"

    .line 63
    .line 64
    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    mul-int/lit16 v0, v0, 0x3e8

    .line 68
    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 74
    .line 75
    const/16 v2, 0x96

    .line 76
    .line 77
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 81
    .line 82
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    int-to-long v0, v0

    .line 87
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_0
    return-void
.end method

.method public final sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 2
    .line 3
    const-string v1, "ActivityManager"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v2, "sendContinueUserSwitchLU-"

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "-to-"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    const/16 v2, 0x1e

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    const/16 v1, 0x14

    .line 47
    .line 48
    invoke-virtual {p0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final sendLockedBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerService$12;I)V
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p1, "Skipping LOCKED_BOOT_COMPLETED for private profile user #"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "ActivityManager"

    .line 40
    .line 41
    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 46
    .line 47
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 51
    .line 52
    .line 53
    const-string v0, "android.intent.extra.user_handle"

    .line 54
    .line 55
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    const/high16 v0, -0x77000000

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 64
    .line 65
    const-string p0, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 66
    .line 67
    filled-new-array {p0}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 72
    .line 73
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 78
    .line 79
    if-eqz p0, :cond_1

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    :goto_0
    move-wide v7, v4

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    const-wide/16 v4, 0x2710

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :goto_1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const/4 v9, 0x0

    .line 95
    const-string v11, ""

    .line 96
    .line 97
    const/16 v10, 0xca

    .line 98
    .line 99
    move-object v6, p0

    .line 100
    invoke-virtual/range {v6 .. v11}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 108
    .line 109
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    move-object v2, p1

    .line 118
    move v8, p2

    .line 119
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final sendUserStartedBroadcast(III)V
    .locals 10

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarted:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

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
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarted:Z

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    goto :goto_1

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0

    .line 21
    :cond_1
    :goto_1
    new-instance v2, Landroid/content/Intent;

    .line 22
    .line 23
    const-string v0, "android.intent.action.USER_STARTED"

    .line 24
    .line 25
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/high16 v0, 0x50000000

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string v0, "android.intent.extra.user_handle"

    .line 34
    .line 35
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 39
    .line 40
    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v3, 0x0

    .line 45
    move v7, p2

    .line 46
    move v8, p3

    .line 47
    move v9, p1

    .line 48
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final sendUserStartingBroadcast(III)V
    .locals 10

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarting:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

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
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarting:Z

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    goto :goto_1

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0

    .line 21
    :cond_1
    :goto_1
    new-instance v2, Landroid/content/Intent;

    .line 22
    .line 23
    const-string v0, "android.intent.action.USER_STARTING"

    .line 24
    .line 25
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/high16 v0, 0x40000000    # 2.0f

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string v0, "android.intent.extra.user_handle"

    .line 34
    .line 35
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 39
    .line 40
    new-instance v3, Lcom/android/server/am/UserController$8;

    .line 41
    .line 42
    invoke-direct {v3}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    .line 46
    .line 47
    filled-new-array {p0}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 52
    .line 53
    const/4 v9, -0x1

    .line 54
    const/4 v5, 0x0

    .line 55
    move v7, p2

    .line 56
    move v8, p3

    .line 57
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final sendUserSwitchBroadcasts(II)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v12

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    .line 13
    .line 14
    move-result v13

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v14

    .line 19
    const-string v11, "android.intent.extra.USER"

    .line 20
    .line 21
    const-string v10, "android.intent.extra.user_handle"

    .line 22
    .line 23
    const/high16 v9, 0x50000000

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    if-ltz v1, :cond_0

    .line 27
    .line 28
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3, v1, v8}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    move v6, v8

    .line 45
    :goto_0
    if-ge v6, v7, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 52
    .line 53
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 54
    .line 55
    new-instance v4, Landroid/content/Intent;

    .line 56
    .line 57
    const-string v3, "android.intent.action.USER_BACKGROUND"

    .line 58
    .line 59
    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v4, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 76
    .line 77
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 78
    .line 79
    const/16 v17, 0x0

    .line 80
    .line 81
    const/16 v18, 0x0

    .line 82
    .line 83
    const/16 v19, 0x0

    .line 84
    .line 85
    move/from16 v20, v5

    .line 86
    .line 87
    move-object/from16 v5, v19

    .line 88
    .line 89
    move/from16 v19, v6

    .line 90
    .line 91
    move-object/from16 v6, v17

    .line 92
    .line 93
    move/from16 v17, v7

    .line 94
    .line 95
    move-object/from16 v7, v18

    .line 96
    .line 97
    move/from16 v8, v16

    .line 98
    .line 99
    move v9, v12

    .line 100
    move-object/from16 v21, v10

    .line 101
    .line 102
    move v10, v13

    .line 103
    move-object/from16 p1, v1

    .line 104
    .line 105
    move-object v1, v11

    .line 106
    move/from16 v11, v20

    .line 107
    .line 108
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v6, v19, 0x1

    .line 112
    .line 113
    move-object v11, v1

    .line 114
    move/from16 v7, v17

    .line 115
    .line 116
    move-object/from16 v10, v21

    .line 117
    .line 118
    const/4 v8, 0x0

    .line 119
    const/high16 v9, 0x50000000

    .line 120
    .line 121
    move-object/from16 v1, p1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    goto/16 :goto_2

    .line 126
    .line 127
    :cond_0
    move-object/from16 v21, v10

    .line 128
    .line 129
    move-object v1, v11

    .line 130
    if-ltz v2, :cond_2

    .line 131
    .line 132
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    const/4 v4, 0x0

    .line 139
    invoke-virtual {v3, v2, v4}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    move-object v11, v3

    .line 144
    check-cast v11, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    move v9, v4

    .line 151
    :goto_1
    if-ge v9, v10, :cond_1

    .line 152
    .line 153
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 158
    .line 159
    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    .line 160
    .line 161
    new-instance v4, Landroid/content/Intent;

    .line 162
    .line 163
    const-string v3, "android.intent.action.USER_FOREGROUND"

    .line 164
    .line 165
    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const/high16 v7, 0x50000000

    .line 169
    .line 170
    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    move-object/from16 v6, v21

    .line 174
    .line 175
    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    .line 177
    .line 178
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    .line 184
    .line 185
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 186
    .line 187
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 188
    .line 189
    const/16 v17, 0x0

    .line 190
    .line 191
    const/16 v18, 0x0

    .line 192
    .line 193
    const/4 v5, 0x0

    .line 194
    move-object/from16 v22, v6

    .line 195
    .line 196
    move-object/from16 v6, v17

    .line 197
    .line 198
    move-object/from16 v7, v18

    .line 199
    .line 200
    move/from16 v17, v8

    .line 201
    .line 202
    move/from16 v8, v16

    .line 203
    .line 204
    move/from16 v16, v9

    .line 205
    .line 206
    move v9, v12

    .line 207
    move/from16 v18, v10

    .line 208
    .line 209
    move v10, v13

    .line 210
    move-object/from16 v19, v11

    .line 211
    .line 212
    move/from16 v11, v17

    .line 213
    .line 214
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 215
    .line 216
    .line 217
    add-int/lit8 v9, v16, 0x1

    .line 218
    .line 219
    move/from16 v10, v18

    .line 220
    .line 221
    move-object/from16 v11, v19

    .line 222
    .line 223
    move-object/from16 v21, v22

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_1
    move-object/from16 v22, v21

    .line 227
    .line 228
    new-instance v3, Landroid/content/Intent;

    .line 229
    .line 230
    const-string v4, "android.intent.action.USER_SWITCHED"

    .line 231
    .line 232
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    const/high16 v4, 0x50000000

    .line 236
    .line 237
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    .line 239
    .line 240
    move-object/from16 v4, v22

    .line 241
    .line 242
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    .line 244
    .line 245
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 250
    .line 251
    .line 252
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 253
    .line 254
    const-string v1, "android.permission.MANAGE_USERS"

    .line 255
    .line 256
    filled-new-array {v1}, [Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 261
    .line 262
    const/4 v2, 0x0

    .line 263
    const/4 v6, 0x0

    .line 264
    const/4 v8, -0x1

    .line 265
    move-object v1, v3

    .line 266
    move-object v3, v4

    .line 267
    move-object v4, v6

    .line 268
    move v6, v12

    .line 269
    move v7, v13

    .line 270
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :goto_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    .line 276
    .line 277
    throw v0

    .line 278
    :cond_2
    :goto_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    .line 280
    .line 281
    return-void
.end method

.method public setAllowUserUnlocking(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/am/UserController;->mAllowUserUnlocking:Z

    .line 2
    .line 3
    return-void
.end method

.method public final shouldStopUserOnSwitch()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eq v1, v3, :cond_1

    .line 10
    .line 11
    if-ne v1, v4, :cond_0

    .line 12
    .line 13
    move v2, v4

    .line 14
    :cond_0
    const-string p0, "ActivityManager"

    .line 15
    .line 16
    const-string/jumbo v1, "shouldStopUserOnSwitch(): returning overridden value (%b)"

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {p0, v1, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return v2

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const-string/jumbo v0, "fw.stop_bg_users_on_switch"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-ne v0, v3, :cond_2

    .line 43
    .line 44
    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    if-ne v0, v4, :cond_3

    .line 48
    .line 49
    move v2, v4

    .line 50
    :cond_3
    :goto_0
    return v2

    .line 51
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p0
.end method

.method public final startProfile(IZLandroid/os/IProgressListener;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    const-string v1, "android.permission.MANAGE_USERS"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 17
    .line 18
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 28
    .line 29
    const-string p1, "You either need MANAGE_USERS or INTERACT_ACROSS_USERS_FULL permission to start a profile"

    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    if-nez p2, :cond_2

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p1, "ActivityManager"

    .line 65
    .line 66
    const-string p2, "Cannot start disabled profile #%d"

    .line 67
    .line 68
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return v1

    .line 72
    :cond_2
    const/4 p2, 0x3

    .line 73
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/am/UserController;->startUserNoChecks(IIILandroid/os/IProgressListener;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    return p0

    .line 78
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    const-string p2, "User "

    .line 81
    .line 82
    const-string p3, " is not a profile"

    .line 83
    .line 84
    invoke-static {p1, p2, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0
.end method

.method public final startProfiles()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 42
    .line 43
    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 44
    .line 45
    const/16 v6, 0x10

    .line 46
    .line 47
    and-int/2addr v5, v6

    .line 48
    if-ne v5, v6, :cond_0

    .line 49
    .line 50
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 51
    .line 52
    if-eq v5, v0, :cond_0

    .line 53
    .line 54
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 55
    .line 56
    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v6, v5}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-eqz v5, :cond_0

    .line 65
    .line 66
    invoke-virtual {v5}, Landroid/content/pm/UserProperties;->getStartWithParent()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_0

    .line 71
    .line 72
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_0

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    :goto_1
    if-ge v2, v0, :cond_2

    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v1

    .line 91
    :try_start_0
    iget v4, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    .line 92
    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    add-int/lit8 v4, v4, -0x1

    .line 95
    .line 96
    if-ge v2, v4, :cond_2

    .line 97
    .line 98
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 103
    .line 104
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 105
    .line 106
    const/4 v4, 0x3

    .line 107
    invoke-virtual {p0, v1, v4}, Lcom/android/server/am/UserController;->startUser(II)Z

    .line 108
    .line 109
    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    throw p0

    .line 116
    :cond_2
    if-ge v2, v0, :cond_3

    .line 117
    .line 118
    const-string p0, "ActivityManager"

    .line 119
    .line 120
    const-string v0, "More profiles than MAX_RUNNING_USERS"

    .line 121
    .line 122
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_3
    return-void
.end method

.method public startUser(II)Z
    .locals 2

    .line 1
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "startUser"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/UserController;->checkCallingHasOneOfThosePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/am/UserController;->startUserNoChecks(IIILandroid/os/IProgressListener;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final startUserInternal(IIILandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    const-string v6, "User #"

    .line 14
    .line 15
    const-string v7, "Cannot start pre-created user #"

    .line 16
    .line 17
    const-string v8, "Cannot switch to User #"

    .line 18
    .line 19
    const-string v9, "No user info for user #"

    .line 20
    .line 21
    const/4 v11, 0x1

    .line 22
    if-ne v3, v11, :cond_0

    .line 23
    .line 24
    move v12, v11

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v12, 0x0

    .line 27
    :goto_0
    if-eqz v2, :cond_1

    .line 28
    .line 29
    move v13, v11

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v13, 0x0

    .line 32
    :goto_1
    if-eqz v13, :cond_2

    .line 33
    .line 34
    xor-int/lit8 v14, v12, 0x1

    .line 35
    .line 36
    const-string v15, "Cannot start user %d in foreground AND on secondary display (%d)"

    .line 37
    .line 38
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    filled-new-array {v10, v11}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    invoke-static {v14, v15, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v14

    .line 65
    filled-new-array {v10, v11, v14}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    const/16 v11, 0x757c

    .line 70
    .line 71
    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 72
    .line 73
    .line 74
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 83
    .line 84
    .line 85
    move-result-wide v14

    .line 86
    move/from16 v16, v10

    .line 87
    .line 88
    :try_start_0
    const-string/jumbo v10, "getStartedUserState"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    move/from16 v17, v11

    .line 99
    .line 100
    if-ne v10, v1, :cond_7

    .line 101
    .line 102
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    if-nez v11, :cond_3

    .line 107
    .line 108
    const-string v11, "ActivityManager"

    .line 109
    .line 110
    move/from16 v18, v10

    .line 111
    .line 112
    const-string v10, "Current user has no UserState"

    .line 113
    .line 114
    invoke-static {v11, v10}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    goto/16 :goto_f

    .line 120
    .line 121
    :cond_3
    move/from16 v18, v10

    .line 122
    .line 123
    if-nez v1, :cond_4

    .line 124
    .line 125
    iget v10, v11, Lcom/android/server/am/UserState;->state:I

    .line 126
    .line 127
    if-nez v10, :cond_4

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    iget v0, v11, Lcom/android/server/am/UserState;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .line 132
    const/4 v2, 0x3

    .line 133
    if-ne v0, v2, :cond_6

    .line 134
    .line 135
    if-nez v4, :cond_5

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    const/4 v0, 0x0

    .line 139
    :try_start_1
    invoke-interface {v4, v1, v0}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .line 141
    .line 142
    :catch_0
    :cond_6
    :goto_2
    :try_start_2
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .line 144
    .line 145
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    .line 147
    .line 148
    const/4 v0, 0x1

    .line 149
    return v0

    .line 150
    :cond_7
    move/from16 v18, v10

    .line 151
    .line 152
    :goto_3
    :try_start_3
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 153
    .line 154
    .line 155
    if-eqz v12, :cond_8

    .line 156
    .line 157
    const-string/jumbo v10, "clearAllLockedTasks"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v10, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 164
    .line 165
    invoke-virtual {v10}, Lcom/android/server/am/UserController$Injector;->clearAllLockedTasks()V

    .line 166
    .line 167
    .line 168
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 169
    .line 170
    .line 171
    :cond_8
    const-string/jumbo v10, "getUserInfo"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 182
    .line 183
    .line 184
    if-nez v10, :cond_9

    .line 185
    .line 186
    const-string v0, "ActivityManager"

    .line 187
    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    .line 202
    .line 203
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    .line 205
    .line 206
    const/4 v0, 0x0

    .line 207
    return v0

    .line 208
    :cond_9
    if-eqz v12, :cond_a

    .line 209
    .line 210
    :try_start_4
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    if-eqz v9, :cond_a

    .line 215
    .line 216
    const-string v0, "ActivityManager"

    .line 217
    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, ": not a full user"

    .line 227
    .line 228
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    .line 237
    .line 238
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 239
    .line 240
    .line 241
    const/4 v0, 0x0

    .line 242
    return v0

    .line 243
    :cond_a
    if-nez v12, :cond_b

    .line 244
    .line 245
    if-eqz v13, :cond_c

    .line 246
    .line 247
    :cond_b
    :try_start_5
    iget-boolean v8, v10, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 248
    .line 249
    if-eqz v8, :cond_c

    .line 250
    .line 251
    const-string v0, "ActivityManager"

    .line 252
    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v1, " in foreground or on secondary display"

    .line 262
    .line 263
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 271
    .line 272
    .line 273
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    .line 275
    .line 276
    const/4 v0, 0x0

    .line 277
    return v0

    .line 278
    :cond_c
    :try_start_6
    const-string/jumbo v7, "assignUserToDisplayOnStart"

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-object v7, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 285
    .line 286
    invoke-virtual {v7}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    iget v8, v10, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 291
    .line 292
    invoke-virtual {v7, v1, v8, v3, v2}, Lcom/android/server/pm/UserManagerInternal;->assignUserToDisplayOnStart(IIII)I

    .line 293
    .line 294
    .line 295
    move-result v7

    .line 296
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 297
    .line 298
    .line 299
    const/4 v8, -0x1

    .line 300
    if-ne v7, v8, :cond_d

    .line 301
    .line 302
    const-string v0, "ActivityManager"

    .line 303
    .line 304
    const-string v4, "%s user(%d) / display (%d) assignment failed: %s"

    .line 305
    .line 306
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    const-class v5, Lcom/android/server/pm/UserManagerInternal;

    .line 319
    .line 320
    const-string v6, "USER_ASSIGNMENT_RESULT_"

    .line 321
    .line 322
    invoke-static {v5, v6, v7}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    filled-new-array {v3, v1, v2, v5}, [Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-static {v0, v4, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 331
    .line 332
    .line 333
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 334
    .line 335
    .line 336
    const/4 v0, 0x0

    .line 337
    return v0

    .line 338
    :cond_d
    :try_start_7
    const-string/jumbo v2, "updateStartedUserArrayStarting"

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget-object v2, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 345
    .line 346
    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 347
    :try_start_8
    iget-object v7, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 348
    .line 349
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    check-cast v7, Lcom/android/server/am/UserState;

    .line 354
    .line 355
    const/4 v8, 0x5

    .line 356
    if-nez v7, :cond_e

    .line 357
    .line 358
    new-instance v7, Lcom/android/server/am/UserState;

    .line 359
    .line 360
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 361
    .line 362
    .line 363
    move-result-object v6

    .line 364
    invoke-direct {v7, v6}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 365
    .line 366
    .line 367
    iget-object v6, v7, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 368
    .line 369
    new-instance v9, Lcom/android/server/am/UserController$UserProgressListener;

    .line 370
    .line 371
    invoke-direct {v9}, Landroid/os/IProgressListener$Stub;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v6, v9}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 375
    .line 376
    .line 377
    iget-object v6, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 378
    .line 379
    invoke-virtual {v6, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 383
    .line 384
    .line 385
    const/4 v6, 0x1

    .line 386
    const/4 v9, 0x1

    .line 387
    goto :goto_4

    .line 388
    :catchall_1
    move-exception v0

    .line 389
    goto/16 :goto_e

    .line 390
    .line 391
    :cond_e
    iget v9, v7, Lcom/android/server/am/UserState;->state:I

    .line 392
    .line 393
    if-ne v9, v8, :cond_f

    .line 394
    .line 395
    const-string v7, "ActivityManager"

    .line 396
    .line 397
    new-instance v8, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const-string v6, " is shutting down - will start after full shutdown"

    .line 406
    .line 407
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    invoke-static {v7, v6}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    iget-object v0, v0, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    .line 418
    .line 419
    new-instance v6, Lcom/android/server/am/UserController$PendingUserStart;

    .line 420
    .line 421
    invoke-direct {v6, v1, v3, v4}, Lcom/android/server/am/UserController$PendingUserStart;-><init>(IILandroid/os/IProgressListener;)V

    .line 422
    .line 423
    .line 424
    check-cast v0, Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 430
    .line 431
    .line 432
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 433
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 434
    .line 435
    .line 436
    const/4 v0, 0x1

    .line 437
    return v0

    .line 438
    :cond_f
    const/4 v6, 0x0

    .line 439
    const/4 v9, 0x0

    .line 440
    :goto_4
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 441
    :try_start_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->addUserToUserLru(I)V

    .line 442
    .line 443
    .line 444
    invoke-static {}, Landroid/multiuser/Flags;->scheduleStopOfBackgroundUser()Z

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    if-eqz v2, :cond_10

    .line 449
    .line 450
    iget-object v2, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 451
    .line 452
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 453
    .line 454
    .line 455
    move-result-object v11

    .line 456
    const/16 v13, 0x96

    .line 457
    .line 458
    invoke-virtual {v2, v13, v11}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    :cond_10
    if-eqz v4, :cond_11

    .line 462
    .line 463
    iget-object v2, v7, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 464
    .line 465
    invoke-virtual {v2, v4}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 466
    .line 467
    .line 468
    :cond_11
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 469
    .line 470
    .line 471
    if-eqz v9, :cond_12

    .line 472
    .line 473
    const-string/jumbo v2, "setUserState"

    .line 474
    .line 475
    .line 476
    invoke-virtual {v5, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 480
    .line 481
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    iget v4, v7, Lcom/android/server/am/UserState;->state:I

    .line 486
    .line 487
    invoke-virtual {v2, v1, v4}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 488
    .line 489
    .line 490
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 491
    .line 492
    .line 493
    :cond_12
    const-string/jumbo v2, "updateConfigurationAndProfileIds"

    .line 494
    .line 495
    .line 496
    invoke-virtual {v5, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    if-eqz v12, :cond_14

    .line 500
    .line 501
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 502
    .line 503
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 504
    .line 505
    const/16 v4, 0x10

    .line 506
    .line 507
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    .line 508
    .line 509
    .line 510
    iget-object v2, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 511
    .line 512
    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 513
    :try_start_b
    iput v1, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 514
    .line 515
    iget-boolean v9, v0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 516
    .line 517
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 518
    :try_start_c
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 519
    .line 520
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->updateUserConfiguration()V

    .line 521
    .line 522
    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateProfileRelatedCaches()V

    .line 524
    .line 525
    .line 526
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 527
    .line 528
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 529
    .line 530
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 531
    .line 532
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I)V

    .line 533
    .line 534
    .line 535
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 536
    .line 537
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 538
    .line 539
    iget-object v11, v2, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 540
    .line 541
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 542
    .line 543
    .line 544
    move-result v11

    .line 545
    const/4 v13, 0x1

    .line 546
    if-ne v11, v13, :cond_13

    .line 547
    .line 548
    const/16 v4, 0xf

    .line 549
    .line 550
    :cond_13
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    .line 551
    .line 552
    .line 553
    if-eqz v9, :cond_15

    .line 554
    .line 555
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 556
    .line 557
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 558
    .line 559
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 560
    .line 561
    const/4 v4, 0x1

    .line 562
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 563
    .line 564
    .line 565
    goto :goto_5

    .line 566
    :catchall_2
    move-exception v0

    .line 567
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 568
    :try_start_e
    throw v0

    .line 569
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateProfileRelatedCaches()V

    .line 570
    .line 571
    .line 572
    iget v2, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 573
    .line 574
    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController;->addUserToUserLru(I)V

    .line 575
    .line 576
    .line 577
    :cond_15
    :goto_5
    const/4 v2, 0x2

    .line 578
    if-ne v3, v2, :cond_16

    .line 579
    .line 580
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 581
    .line 582
    .line 583
    move-result v2

    .line 584
    if-nez v2, :cond_16

    .line 585
    .line 586
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->scheduleStopOfBackgroundUser(I)V

    .line 587
    .line 588
    .line 589
    :cond_16
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 590
    .line 591
    .line 592
    iget v2, v7, Lcom/android/server/am/UserState;->state:I

    .line 593
    .line 594
    const/4 v3, 0x4

    .line 595
    if-ne v2, v3, :cond_17

    .line 596
    .line 597
    const-string/jumbo v2, "updateStateStopping"

    .line 598
    .line 599
    .line 600
    invoke-virtual {v5, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    iget v2, v7, Lcom/android/server/am/UserState;->lastState:I

    .line 604
    .line 605
    invoke-virtual {v7, v2}, Lcom/android/server/am/UserState;->setState(I)V

    .line 606
    .line 607
    .line 608
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 609
    .line 610
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    iget v3, v7, Lcom/android/server/am/UserState;->state:I

    .line 615
    .line 616
    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 617
    .line 618
    .line 619
    iget-object v2, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 620
    .line 621
    monitor-enter v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 622
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 623
    .line 624
    .line 625
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 626
    :try_start_10
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 627
    .line 628
    .line 629
    :goto_6
    const/4 v6, 0x1

    .line 630
    goto :goto_7

    .line 631
    :catchall_3
    move-exception v0

    .line 632
    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 633
    :try_start_12
    throw v0

    .line 634
    :cond_17
    if-ne v2, v8, :cond_18

    .line 635
    .line 636
    const-string/jumbo v2, "updateStateShutdown"

    .line 637
    .line 638
    .line 639
    invoke-virtual {v5, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    const/4 v2, 0x0

    .line 643
    invoke-virtual {v7, v2}, Lcom/android/server/am/UserState;->setState(I)V

    .line 644
    .line 645
    .line 646
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 647
    .line 648
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 649
    .line 650
    .line 651
    move-result-object v2

    .line 652
    iget v3, v7, Lcom/android/server/am/UserState;->state:I

    .line 653
    .line 654
    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 655
    .line 656
    .line 657
    iget-object v2, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 658
    .line 659
    monitor-enter v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 660
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 661
    .line 662
    .line 663
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 664
    :try_start_14
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 665
    .line 666
    .line 667
    goto :goto_6

    .line 668
    :catchall_4
    move-exception v0

    .line 669
    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 670
    :try_start_16
    throw v0

    .line 671
    :cond_18
    :goto_7
    iget v2, v7, Lcom/android/server/am/UserState;->state:I

    .line 672
    .line 673
    if-nez v2, :cond_19

    .line 674
    .line 675
    const-string/jumbo v2, "updateStateBooting"

    .line 676
    .line 677
    .line 678
    invoke-virtual {v5, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 682
    .line 683
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    .line 688
    .line 689
    .line 690
    iget-object v2, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 691
    .line 692
    const/16 v3, 0x32

    .line 693
    .line 694
    const/4 v4, 0x0

    .line 695
    invoke-virtual {v2, v3, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 696
    .line 697
    .line 698
    move-result-object v3

    .line 699
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 700
    .line 701
    .line 702
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 703
    .line 704
    .line 705
    goto :goto_8

    .line 706
    :cond_19
    const/4 v4, 0x0

    .line 707
    :goto_8
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 708
    .line 709
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 710
    .line 711
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 712
    .line 713
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 714
    .line 715
    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 716
    .line 717
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 718
    .line 719
    new-instance v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda2;

    .line 720
    .line 721
    invoke-direct {v8, v2, v1, v12, v6}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;IZZ)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v3, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 725
    .line 726
    .line 727
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 728
    .line 729
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 730
    .line 731
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 732
    .line 733
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 734
    .line 735
    iget-object v3, v2, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 736
    .line 737
    new-instance v8, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda1;

    .line 738
    .line 739
    invoke-direct {v8, v2, v1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiTaskingController;I)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v3, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 743
    .line 744
    .line 745
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 746
    .line 747
    .line 748
    move-result v2

    .line 749
    if-eqz v2, :cond_1a

    .line 750
    .line 751
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncrypted(I)Z

    .line 752
    .line 753
    .line 754
    move-result v2

    .line 755
    if-eqz v2, :cond_1a

    .line 756
    .line 757
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isInitialized()Z

    .line 758
    .line 759
    .line 760
    move-result v2

    .line 761
    if-eqz v2, :cond_1a

    .line 762
    .line 763
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 764
    .line 765
    invoke-static {v2}, Lcom/android/server/am/DualDarUserController;->getInstance(Lcom/android/server/am/UserController$Injector;)Lcom/android/server/am/DualDarUserController;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    iget-object v2, v2, Lcom/android/server/am/DualDarUserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 770
    .line 771
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 772
    .line 773
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 774
    .line 775
    invoke-static {v2}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->onUserStart(I)V

    .line 780
    .line 781
    .line 782
    :cond_1a
    const-string/jumbo v2, "sendMessages"

    .line 783
    .line 784
    .line 785
    invoke-virtual {v5, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    if-eqz v12, :cond_1c

    .line 789
    .line 790
    iget-object v2, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 791
    .line 792
    const/16 v3, 0x3c

    .line 793
    .line 794
    move/from16 v8, v18

    .line 795
    .line 796
    invoke-virtual {v2, v3, v1, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 797
    .line 798
    .line 799
    move-result-object v3

    .line 800
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 801
    .line 802
    .line 803
    iget-object v2, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 804
    .line 805
    const/16 v3, 0xa

    .line 806
    .line 807
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 808
    .line 809
    .line 810
    iget-object v2, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 811
    .line 812
    const/16 v9, 0x1e

    .line 813
    .line 814
    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 815
    .line 816
    .line 817
    iget-object v2, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 818
    .line 819
    invoke-virtual {v2, v3, v8, v1, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 824
    .line 825
    .line 826
    iget-object v2, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 827
    .line 828
    invoke-virtual {v2, v9, v8, v1, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 829
    .line 830
    .line 831
    move-result-object v3

    .line 832
    const-string/jumbo v8, "debug.usercontroller.user_switch_timeout_ms"

    .line 833
    .line 834
    .line 835
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v8

    .line 839
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 840
    .line 841
    .line 842
    move-result v9
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 843
    if-nez v9, :cond_1b

    .line 844
    .line 845
    :try_start_17
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 846
    .line 847
    .line 848
    move-result v8
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 849
    goto :goto_9

    .line 850
    :catch_1
    :cond_1b
    const/16 v8, 0xbb8

    .line 851
    .line 852
    :goto_9
    int-to-long v8, v8

    .line 853
    :try_start_18
    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 854
    .line 855
    .line 856
    :cond_1c
    iget-boolean v2, v10, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 857
    .line 858
    if-eqz v2, :cond_1d

    .line 859
    .line 860
    move v6, v4

    .line 861
    :cond_1d
    if-nez v1, :cond_1e

    .line 862
    .line 863
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 864
    .line 865
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 866
    .line 867
    .line 868
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 869
    .line 870
    .line 871
    move-result v2

    .line 872
    if-eqz v2, :cond_1e

    .line 873
    .line 874
    const/4 v10, 0x1

    .line 875
    goto :goto_a

    .line 876
    :cond_1e
    move v10, v4

    .line 877
    :goto_a
    if-nez v6, :cond_1f

    .line 878
    .line 879
    if-eqz v10, :cond_20

    .line 880
    .line 881
    :cond_1f
    move/from16 v2, v16

    .line 882
    .line 883
    move/from16 v3, v17

    .line 884
    .line 885
    goto :goto_b

    .line 886
    :cond_20
    move/from16 v2, v16

    .line 887
    .line 888
    move/from16 v3, v17

    .line 889
    .line 890
    goto :goto_c

    .line 891
    :goto_b
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController;->sendUserStartedBroadcast(III)V

    .line 892
    .line 893
    .line 894
    :goto_c
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 895
    .line 896
    .line 897
    if-eqz v12, :cond_21

    .line 898
    .line 899
    const-string/jumbo v4, "moveUserToForeground"

    .line 900
    .line 901
    .line 902
    invoke-virtual {v5, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v0, v1, v7}, Lcom/android/server/am/UserController;->moveUserToForeground(ILcom/android/server/am/UserState;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 909
    .line 910
    .line 911
    goto :goto_d

    .line 912
    :cond_21
    const-string/jumbo v4, "finishUserBoot"

    .line 913
    .line 914
    .line 915
    invoke-virtual {v5, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    const/4 v4, 0x0

    .line 919
    invoke-virtual {v0, v7, v4}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Lcom/android/server/am/ActivityManagerService$12;)V

    .line 920
    .line 921
    .line 922
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 923
    .line 924
    .line 925
    :goto_d
    if-nez v6, :cond_22

    .line 926
    .line 927
    if-eqz v10, :cond_23

    .line 928
    .line 929
    :cond_22
    const-string/jumbo v4, "sendRestartBroadcast"

    .line 930
    .line 931
    .line 932
    invoke-virtual {v5, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController;->sendUserStartingBroadcast(III)V

    .line 936
    .line 937
    .line 938
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 939
    .line 940
    .line 941
    :cond_23
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 942
    .line 943
    .line 944
    const/4 v0, 0x1

    .line 945
    return v0

    .line 946
    :goto_e
    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 947
    :try_start_1a
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 948
    :goto_f
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 949
    .line 950
    .line 951
    throw v0
.end method

.method public final startUserNoChecks(IIILandroid/os/IProgressListener;)Z
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 2
    .line 3
    invoke-direct {v6}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 19
    .line 20
    const-string v0, "PersonaServiceHelper"

    .line 21
    .line 22
    const-string/jumbo v1, "blocking when device compromised : "

    .line 23
    .line 24
    .line 25
    const-string/jumbo v2, "shouldBlockUserStart() "

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 58
    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_0

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDeviceCompromised()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_0

    .line 72
    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    const/4 p0, 0x0

    .line 92
    return p0

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v1, "UserController.startUser-"

    .line 106
    .line 107
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    if-nez p2, :cond_2

    .line 114
    .line 115
    const-string v1, ""

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    const-string v1, "-display-"

    .line 119
    .line 120
    invoke-static {p2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, "-"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const/4 v1, 0x1

    .line 133
    if-ne p3, v1, :cond_3

    .line 134
    .line 135
    const-string/jumbo v1, "fg"

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_3
    const-string/jumbo v1, "bg"

    .line 140
    .line 141
    .line 142
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v1, "-start-mode-"

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v6, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    move-object v0, p0

    .line 161
    move v1, p1

    .line 162
    move v2, p2

    .line 163
    move v3, p3

    .line 164
    move-object v4, p4

    .line 165
    move-object v5, v6

    .line 166
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->startUserInternal(IIILandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z

    .line 167
    .line 168
    .line 169
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    invoke-virtual {v6}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 171
    .line 172
    .line 173
    return p0

    .line 174
    :catchall_1
    move-exception p0

    .line 175
    invoke-virtual {v6}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 176
    .line 177
    .line 178
    throw p0
.end method

.method public final stopExcessRunningUsersLU(ILandroid/util/ArraySet;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-le v2, p1, :cond_2

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 38
    .line 39
    if-eq v3, v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string v4, "ActivityManager"

    .line 61
    .line 62
    const-string v5, "Too many running users (%d). Attempting to stop user %d"

    .line 63
    .line 64
    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v9, 0x1

    .line 73
    const/4 v10, 0x0

    .line 74
    const/4 v11, 0x0

    .line 75
    move-object v6, p0

    .line 76
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_0

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    return-void
.end method

.method public final stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "UserController"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const-string v2, "-stopProfileRegardlessOfParent"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v2, ""

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    const-string v2, "-allowDelayedLocking"

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const-string v2, ""

    .line 29
    .line 30
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    if-eqz p4, :cond_2

    .line 34
    .line 35
    const-string v2, "-withStopUserCallback"

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const-string v2, ""

    .line 39
    .line 40
    :goto_2
    const-string v3, "-"

    .line 41
    .line 42
    const-string v4, "-[stopUser]"

    .line 43
    .line 44
    invoke-static {p1, v2, v3, v4, v1}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :try_start_0
    const-string/jumbo v1, "stopUser"

    .line 52
    .line 53
    .line 54
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 55
    .line 56
    filled-new-array {v2}, [Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/UserController;->checkCallingHasOneOfThosePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    if-ltz p1, :cond_3

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    const/4 v1, 0x0

    .line 68
    :goto_3
    const-string v2, "Invalid user id %d"

    .line 69
    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 85
    .line 86
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    :try_start_1
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 93
    .line 94
    .line 95
    return p0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 101
    .line 102
    .line 103
    throw p0
.end method

.method public final stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    if-nez v7, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x3

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v7, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, -0x2

    .line 16
    return v0

    .line 17
    :cond_1
    const/4 v0, -0x4

    .line 18
    const/16 v1, -0x2710

    .line 19
    .line 20
    if-nez p2, :cond_3

    .line 21
    .line 22
    iget-object v2, v6, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 23
    .line 24
    invoke-virtual {v2, v7, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eq v2, v1, :cond_3

    .line 29
    .line 30
    if-eq v2, v7, :cond_3

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ne v2, v3, :cond_3

    .line 39
    .line 40
    :cond_2
    return v0

    .line 41
    :cond_3
    iget-object v2, v6, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    new-instance v3, Landroid/util/IntArray;

    .line 48
    .line 49
    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v7}, Landroid/util/IntArray;->add(I)V

    .line 53
    .line 54
    .line 55
    iget-object v4, v6, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 56
    .line 57
    invoke-virtual {v4, v7, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/4 v8, 0x1

    .line 62
    const/4 v9, 0x0

    .line 63
    if-ne v4, v7, :cond_8

    .line 64
    .line 65
    move v5, v9

    .line 66
    :goto_0
    if-ge v5, v2, :cond_8

    .line 67
    .line 68
    iget-object v10, v6, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    check-cast v10, Lcom/android/server/am/UserState;

    .line 75
    .line 76
    iget-object v10, v10, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 77
    .line 78
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    iget-object v11, v6, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 83
    .line 84
    invoke-virtual {v11, v10, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 85
    .line 86
    .line 87
    move-result v11

    .line 88
    if-eq v4, v1, :cond_4

    .line 89
    .line 90
    if-ne v4, v11, :cond_4

    .line 91
    .line 92
    move v11, v8

    .line 93
    goto :goto_1

    .line 94
    :cond_4
    move v11, v9

    .line 95
    :goto_1
    if-ne v10, v7, :cond_5

    .line 96
    .line 97
    move v12, v8

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    move v12, v9

    .line 100
    :goto_2
    if-eqz v11, :cond_7

    .line 101
    .line 102
    if-eqz v12, :cond_6

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_6
    invoke-virtual {v3, v10}, Landroid/util/IntArray;->add(I)V

    .line 106
    .line 107
    .line 108
    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_8
    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    array-length v1, v10

    .line 116
    move v2, v9

    .line 117
    :goto_4
    const-string v11, "ActivityManager"

    .line 118
    .line 119
    if-ge v2, v1, :cond_b

    .line 120
    .line 121
    aget v3, v10, v2

    .line 122
    .line 123
    if-eqz v3, :cond_a

    .line 124
    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-ne v3, v4, :cond_9

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_a
    :goto_5
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const-string v2, "Cannot stop user %d because it is related to user %d. "

    .line 148
    .line 149
    invoke-static {v11, v2, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    return v0

    .line 153
    :cond_b
    new-instance v12, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 154
    .line 155
    invoke-direct {v12}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 156
    .line 157
    .line 158
    array-length v13, v10

    .line 159
    move v14, v9

    .line 160
    :goto_6
    if-ge v14, v13, :cond_19

    .line 161
    .line 162
    aget v15, v10, v14

    .line 163
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string/jumbo v1, "stopSingleUserLU-"

    .line 167
    .line 168
    .line 169
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v1, "-[stopUser]"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v12, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    if-ne v15, v7, :cond_c

    .line 188
    .line 189
    move-object/from16 v2, p4

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_c
    const/4 v2, 0x0

    .line 193
    :goto_7
    if-ne v15, v7, :cond_d

    .line 194
    .line 195
    move-object/from16 v3, p5

    .line 196
    .line 197
    goto :goto_8

    .line 198
    :cond_d
    const/4 v3, 0x0

    .line 199
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string/jumbo v5, "stopSingleUserLU userId="

    .line 202
    .line 203
    .line 204
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-static {v11, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    invoke-static {}, Landroid/multiuser/Flags;->scheduleStopOfBackgroundUser()Z

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-eqz v4, :cond_e

    .line 222
    .line 223
    iget-object v4, v6, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 224
    .line 225
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    const/16 v0, 0x96

    .line 230
    .line 231
    invoke-virtual {v4, v0, v5}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_e
    iget-object v0, v6, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 235
    .line 236
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    move-object v4, v0

    .line 241
    check-cast v4, Lcom/android/server/am/UserState;

    .line 242
    .line 243
    if-nez v4, :cond_12

    .line 244
    .line 245
    invoke-virtual {v6, v15}, Lcom/android/server/am/UserController;->canDelayDataLockingForUser(I)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_11

    .line 250
    .line 251
    if-eqz p3, :cond_f

    .line 252
    .line 253
    if-eqz v3, :cond_f

    .line 254
    .line 255
    const-string v0, "allowDelayedLocking set with KeyEvictedCallback, ignore it and lock user:"

    .line 256
    .line 257
    invoke-static {v15, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    new-instance v1, Ljava/lang/RuntimeException;

    .line 262
    .line 263
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-static {v11, v0, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    .line 268
    .line 269
    move v0, v9

    .line 270
    goto :goto_9

    .line 271
    :cond_f
    move/from16 v0, p3

    .line 272
    .line 273
    :goto_9
    if-nez v0, :cond_11

    .line 274
    .line 275
    iget-object v0, v6, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_11

    .line 286
    .line 287
    if-eqz v3, :cond_10

    .line 288
    .line 289
    new-instance v0, Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    goto :goto_a

    .line 298
    :cond_10
    const/4 v0, 0x0

    .line 299
    :goto_a
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;

    .line 304
    .line 305
    const/4 v4, 0x1

    .line 306
    invoke-direct {v3, v6, v15, v0, v4}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Object;I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 310
    .line 311
    .line 312
    :cond_11
    if-eqz v2, :cond_18

    .line 313
    .line 314
    iget-object v0, v6, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 315
    .line 316
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda5;

    .line 317
    .line 318
    const/4 v3, 0x1

    .line 319
    invoke-direct {v1, v15, v3, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda5;-><init>(IILjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    .line 324
    .line 325
    goto/16 :goto_d

    .line 326
    .line 327
    :cond_12
    const/4 v0, 0x5

    .line 328
    invoke-virtual {v6, v15, v0}, Lcom/android/server/am/UserController;->logUserJourneyBegin(II)V

    .line 329
    .line 330
    .line 331
    if-eqz v2, :cond_13

    .line 332
    .line 333
    iget-object v5, v4, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    :cond_13
    if-eqz v3, :cond_14

    .line 339
    .line 340
    iget-object v2, v4, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    :cond_14
    invoke-virtual {v6, v15}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    if-eqz v2, :cond_16

    .line 350
    .line 351
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    if-nez v2, :cond_15

    .line 356
    .line 357
    goto :goto_b

    .line 358
    :cond_15
    move v2, v9

    .line 359
    goto :goto_c

    .line 360
    :cond_16
    :goto_b
    move v2, v8

    .line 361
    :goto_c
    iget-object v3, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 362
    .line 363
    iget-object v3, v3, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 364
    .line 365
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 366
    .line 367
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 368
    .line 369
    iget-object v5, v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 370
    .line 371
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 372
    .line 373
    new-instance v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda3;

    .line 374
    .line 375
    invoke-direct {v8, v3, v15, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;IZ)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    .line 380
    .line 381
    iget v2, v4, Lcom/android/server/am/UserState;->state:I

    .line 382
    .line 383
    const/4 v3, 0x4

    .line 384
    if-eq v2, v3, :cond_18

    .line 385
    .line 386
    if-eq v2, v0, :cond_18

    .line 387
    .line 388
    invoke-virtual {v4, v3}, Lcom/android/server/am/UserState;->setState(I)V

    .line 389
    .line 390
    .line 391
    iget-object v0, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 392
    .line 393
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 398
    .line 399
    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 400
    .line 401
    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    const-string/jumbo v5, "setUserState-STATE_STOPPING-"

    .line 405
    .line 406
    .line 407
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    iget v3, v4, Lcom/android/server/am/UserState;->state:I

    .line 424
    .line 425
    invoke-virtual {v0, v15, v3}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 429
    .line 430
    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    const-string/jumbo v5, "unassignUserFromDisplayOnStop-"

    .line 434
    .line 435
    .line 436
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-virtual {v2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v15}, Lcom/android/server/pm/UserManagerInternal;->unassignUserFromDisplayOnStop(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 456
    .line 457
    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 459
    .line 460
    .line 461
    new-instance v8, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    .line 462
    .line 463
    const/4 v5, 0x0

    .line 464
    move-object v0, v8

    .line 465
    move-object/from16 v1, p0

    .line 466
    .line 467
    move v2, v15

    .line 468
    move-object v3, v4

    .line 469
    move/from16 v4, p3

    .line 470
    .line 471
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;ZI)V

    .line 472
    .line 473
    .line 474
    iget-object v0, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 475
    .line 476
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {v0, v15}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    if-eqz v0, :cond_17

    .line 485
    .line 486
    invoke-virtual {v8}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->run()V

    .line 487
    .line 488
    .line 489
    goto :goto_d

    .line 490
    :cond_17
    iget-object v0, v6, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 491
    .line 492
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;

    .line 493
    .line 494
    const/4 v2, 0x0

    .line 495
    invoke-direct {v1, v6, v15, v8, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Object;I)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    .line 500
    .line 501
    :cond_18
    :goto_d
    invoke-virtual {v12}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 502
    .line 503
    .line 504
    add-int/lit8 v14, v14, 0x1

    .line 505
    .line 506
    const/4 v8, 0x1

    .line 507
    goto/16 :goto_6

    .line 508
    .line 509
    :cond_19
    return v9
.end method

.method public final switchUser(I)Z
    .locals 14

    .line 1
    const-string v0, "There is already an ongoing user switch to User #"

    .line 2
    .line 3
    const-string v1, "Cannot switch to User #"

    .line 4
    .line 5
    const-string v2, "Cannot switch to User #"

    .line 6
    .line 7
    const-string v3, "Cannot switch to User #"

    .line 8
    .line 9
    const-string v4, "Cannot switch to User #"

    .line 10
    .line 11
    const-string v5, "No user info for user #"

    .line 12
    .line 13
    const-string/jumbo v6, "user #"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(I)V

    .line 17
    .line 18
    .line 19
    const/16 v7, 0x757b

    .line 20
    .line 21
    invoke-static {v7, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    const/4 v10, 0x0

    .line 37
    if-eqz v9, :cond_0

    .line 38
    .line 39
    const/16 v9, 0x4d

    .line 40
    .line 41
    if-eq v9, p1, :cond_0

    .line 42
    .line 43
    const-string p0, "ActivityManager"

    .line 44
    .line 45
    const-string v0, "Cannot switch to User #"

    .line 46
    .line 47
    const-string v1, " in Maintenance mode"

    .line 48
    .line 49
    invoke-static {p1, v0, v1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return v10

    .line 53
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v9

    .line 56
    const/16 v11, -0x2710

    .line 57
    .line 58
    const/4 v12, 0x1

    .line 59
    if-ne p1, v7, :cond_1

    .line 60
    .line 61
    :try_start_0
    iget v13, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 62
    .line 63
    if-ne v13, v11, :cond_1

    .line 64
    .line 65
    const-string p0, "ActivityManager"

    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, " is already the current user"

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    monitor-exit v9

    .line 88
    return v12

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_1
    if-nez v8, :cond_2

    .line 93
    .line 94
    const-string p0, "ActivityManager"

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    monitor-exit v9

    .line 112
    return v10

    .line 113
    :cond_2
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-nez v5, :cond_3

    .line 118
    .line 119
    const-string p0, "ActivityManager"

    .line 120
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string p1, ": not supported"

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    monitor-exit v9

    .line 142
    return v10

    .line 143
    :cond_3
    sget-object v4, Lcom/android/server/FactoryResetter;->sFactoryResetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_4

    .line 150
    .line 151
    const-string p0, "ActivityManager"

    .line 152
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p1, ": factory reset in progress"

    .line 162
    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    monitor-exit v9

    .line 174
    return v10

    .line 175
    :cond_4
    iget v3, p0, Lcom/android/server/am/UserController;->mCurrentDexMode:I

    .line 176
    .line 177
    if-eqz v3, :cond_5

    .line 178
    .line 179
    const-string v0, "ActivityManager"

    .line 180
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string p1, ": in dex mode"

    .line 190
    .line 191
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 202
    .line 203
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 204
    .line 205
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 208
    .line 209
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 210
    .line 211
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 212
    .line 213
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    .line 214
    .line 215
    const/16 p1, 0xa

    .line 216
    .line 217
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 222
    .line 223
    .line 224
    monitor-exit v9

    .line 225
    return v10

    .line 226
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    .line 227
    .line 228
    if-nez v2, :cond_6

    .line 229
    .line 230
    const-string p0, "ActivityManager"

    .line 231
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string p1, ": UserController not ready yet"

    .line 241
    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    monitor-exit v9

    .line 253
    return v10

    .line 254
    :cond_6
    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 255
    .line 256
    if-eq v1, v11, :cond_7

    .line 257
    .line 258
    const-string v1, "ActivityManager"

    .line 259
    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 266
    .line 267
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v0, ". User #"

    .line 271
    .line 272
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v0, " will be added to the queue."

    .line 279
    .line 280
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    iget-object p0, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    .line 291
    .line 292
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    monitor-exit v9

    .line 300
    return v12

    .line 301
    :cond_7
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 302
    .line 303
    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 304
    .line 305
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    if-eqz v0, :cond_8

    .line 307
    .line 308
    invoke-virtual {p0, v7}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    new-instance v0, Landroid/util/Pair;

    .line 313
    .line 314
    invoke-direct {v0, p1, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    iget-object p1, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 318
    .line 319
    const/16 v1, 0x3e8

    .line 320
    .line 321
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    .line 323
    .line 324
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 325
    .line 326
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    .line 332
    .line 333
    goto :goto_0

    .line 334
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 335
    .line 336
    const/16 v1, 0x78

    .line 337
    .line 338
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    .line 340
    .line 341
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 342
    .line 343
    invoke-virtual {p0, v1, p1, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 348
    .line 349
    .line 350
    :goto_0
    return v12

    .line 351
    :goto_1
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    throw p0
.end method

.method public final timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 5

    .line 1
    const-string v0, "User switch timeout: from "

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4
    .line 5
    const-string v2, "ActivityManager"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v3, "timeoutUserSwitch-"

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, "-to-"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v2

    .line 39
    :try_start_0
    const-string v3, "ActivityManager"

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, " to "

    .line 50
    .line 51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v3, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    const/16 v3, 0x5a

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 79
    .line 80
    invoke-virtual {p0, v3, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-wide/16 p2, 0x1388

    .line 85
    .line 86
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 87
    .line 88
    .line 89
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p0
.end method

.method public final unlockUser(ILandroid/os/IProgressListener;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    const-string/jumbo v2, "unlockUser"

    .line 4
    .line 5
    .line 6
    const-string v3, "NULL"

    .line 7
    .line 8
    invoke-static {p1, v1, v0, v2, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/UserController;->checkCallingHasOneOfThosePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x757d

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    :try_start_0
    const-string/jumbo v0, "call maybeUnlockUser"

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    invoke-static {p1, v1, v5, v2, v0}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->maybeUnlockUser(ILandroid/os/IProgressListener;)Z

    .line 37
    .line 38
    .line 39
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final updateProfileRelatedCaches()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    new-array v3, v1, [I

    .line 23
    .line 24
    move v4, v2

    .line 25
    :goto_0
    if-ge v4, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 32
    .line 33
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 34
    .line 35
    aput v5, v3, v4

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1, v2, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v1

    .line 54
    :try_start_0
    iput-object v3, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 55
    .line 56
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 59
    .line 60
    .line 61
    :goto_1
    move-object v3, v0

    .line 62
    check-cast v3, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-ge v2, v4, :cond_2

    .line 69
    .line 70
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 75
    .line 76
    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 77
    .line 78
    const/16 v5, -0x2710

    .line 79
    .line 80
    if-eq v4, v5, :cond_1

    .line 81
    .line 82
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 83
    .line 84
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 85
    .line 86
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_3

    .line 92
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    monitor-exit v1

    .line 96
    return-void

    .line 97
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0
.end method

.method public final updateStartedUserArrayLU()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    const/4 v4, 0x5

    .line 11
    const/4 v5, 0x4

    .line 12
    if-ge v1, v3, :cond_1

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/android/server/am/UserState;

    .line 21
    .line 22
    iget v3, v3, Lcom/android/server/am/UserState;->state:I

    .line 23
    .line 24
    if-eq v3, v5, :cond_0

    .line 25
    .line 26
    if-eq v3, v4, :cond_0

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-array v1, v2, [I

    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 36
    .line 37
    move v1, v0

    .line 38
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ge v0, v2, :cond_3

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/android/server/am/UserState;

    .line 53
    .line 54
    iget v2, v2, Lcom/android/server/am/UserState;->state:I

    .line 55
    .line 56
    if-eq v2, v5, :cond_2

    .line 57
    .line 58
    if-eq v2, v4, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 61
    .line 62
    add-int/lit8 v3, v1, 0x1

    .line 63
    .line 64
    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    aput v6, v2, v1

    .line 71
    .line 72
    move v1, v3

    .line 73
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    return-void
.end method

.method public final updateUserToLockLU(IZ)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->canDelayDataLockingForUser(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_2

    .line 18
    .line 19
    const-string/jumbo p2, "no_run_in_background"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-boolean p2, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    .line 30
    .line 31
    const-string/jumbo v0, "finishUserStopped: should stop user "

    .line 32
    .line 33
    .line 34
    const-string v1, "ActivityManager"

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-virtual {p2, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    add-int/2addr v2, p2

    .line 70
    iget p2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    .line 71
    .line 72
    if-le v2, p2, :cond_1

    .line 73
    .line 74
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    add-int/lit8 v2, v2, -0x1

    .line 81
    .line 82
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    iget-object p0, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    add-int/lit8 v2, v2, -0x1

    .line 99
    .line 100
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p1, " but should lock user "

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    return p2

    .line 127
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p1, " but without any locking"

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    const/16 p0, -0x2710

    .line 148
    .line 149
    return p0

    .line 150
    :cond_2
    :goto_0
    return p1
.end method
