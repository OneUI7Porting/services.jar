.class public final Lcom/android/server/wm/ActivityStarter;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final REACTIVE_COOLDOWN_TIME:J

.field public static mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

.field public static prevReactiveTime:J

.field public static prevReactiveUrl:Ljava/lang/String;


# instance fields
.field mAddingToTask:Z

.field public mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

.field public mBalCode:I

.field public mCallingUid:I

.field public mCanMoveToFrontCode:I

.field public final mController:Lcom/android/server/wm/ActivityStartController;

.field public mDisplayLockAndOccluded:Z

.field public mDoResume:Z

.field public mFrozeTaskList:Z

.field public mInTask:Lcom/android/server/wm/Task;

.field public mInTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mIntent:Landroid/content/Intent;

.field public mIntentDelivered:Z

.field public final mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

.field public mIsFreeformLaunching:Z

.field public mIsTaskCleared:Z

.field public mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mLastStartActivityResult:I

.field public mLastStartActivityTimeMs:J

.field public mLastStartReason:Ljava/lang/String;

.field public mLaunchFlags:I

.field public mLaunchMode:I

.field public final mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field public mLaunchTaskBehind:Z

.field public mMovedToFront:Z

.field mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

.field public mNoAnimation:Z

.field public mNotTop:Lcom/android/server/wm/ActivityRecord;

.field public mOptions:Landroid/app/ActivityOptions;

.field public mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

.field public mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mPreferredWindowingMode:I

.field public mPriorAboveTask:Lcom/android/server/wm/Task;

.field public mRealCallingUid:I

.field mRequest:Lcom/android/server/wm/ActivityStarter$Request;

.field public final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public final mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

.field public mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field public mSourceRootTask:Lcom/android/server/wm/Task;

.field mStartActivity:Lcom/android/server/wm/ActivityRecord;

.field public mStartFlags:I

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public mTargetRootTask:Lcom/android/server/wm/Task;

.field public mTargetTask:Lcom/android/server/wm/Task;

.field public mTransientLaunch:Z

.field public mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    .line 5
    const-wide/16 v0, 0x1f4

    .line 6
    .line 7
    sput-wide v0, Lcom/android/server/wm/ActivityStarter;->REACTIVE_COOLDOWN_TIME:J

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    sput-object v0, Lcom/android/server/wm/ActivityStarter;->prevReactiveUrl:Ljava/lang/String;

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    sput-wide v0, Lcom/android/server/wm/ActivityStarter;->prevReactiveTime:J

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 13
    .line 14
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    .line 20
    .line 21
    new-instance v1, Lcom/android/server/wm/ActivityStarter$Request;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/android/server/wm/ActivityStarter$Request;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    iget-object p1, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 39
    .line 40
    iput-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eq p2, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(ILcom/android/server/wm/ActivityRecord;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x3

    .line 18
    return p0
.end method

.method public static computeResolveFilterUid(III)I
    .locals 1

    .line 1
    const/16 v0, -0x2710

    .line 2
    .line 3
    if-eq p2, v0, :cond_0

    .line 4
    .line 5
    move p0, p2

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-ltz p0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    move p0, p1

    .line 11
    :goto_0
    return p0
.end method

.method public static getExternalResult(I)I
    .locals 1

    .line 1
    const/16 v0, 0x66

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method

.method public static shouldWriteStartActivityDebugLog(I)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq p0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method


# virtual methods
.method public final addOrReparentStartingActivity(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    invoke-static {v0, v3, p2}, Lcom/android/server/wm/ActivityStarter;->canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    iget-object v4, v0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    .line 21
    .line 22
    iput-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mRequestedLaunchingTaskFragmentToken:Landroid/os/IBinder;

    .line 23
    .line 24
    goto/16 :goto_6

    .line 25
    .line 26
    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 27
    .line 28
    if-eq v0, v2, :cond_3

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    const-string v4, "Cannot embed "

    .line 32
    .line 33
    if-eq v0, v3, :cond_2

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    if-eq v0, v3, :cond_1

    .line 37
    .line 38
    const-string v3, "Unhandled embed result:"

    .line 39
    .line 40
    invoke-static {v0, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, " that launched on another task,mLaunchMode="

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 61
    .line 62
    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->launchModeToString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, ",mLaunchFlag="

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 75
    .line 76
    invoke-static {v0, v3}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v3, ". TaskFragment\'s bounds:"

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, ", minimum dimensions:"

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getMinDimensions()Landroid/graphics/Point;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v3, "The app:"

    .line 125
    .line 126
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 130
    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v3, "is not trusted to "

    .line 135
    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 140
    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :goto_0
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->isOrganized()Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_4

    .line 153
    .line 154
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 155
    .line 156
    iget-object v6, v8, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 157
    .line 158
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 159
    .line 160
    iget-object v7, v3, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    .line 161
    .line 162
    new-instance v10, Ljava/lang/SecurityException;

    .line 163
    .line 164
    invoke-direct {v10, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const/4 v9, 0x2

    .line 168
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_5

    .line 172
    .line 173
    :cond_4
    const-string v3, "ActivityTaskManager"

    .line 174
    .line 175
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    goto/16 :goto_5

    .line 179
    .line 180
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 181
    .line 182
    if-nez v0, :cond_f

    .line 183
    .line 184
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 185
    .line 186
    const/4 v3, 0x0

    .line 187
    if-eqz v0, :cond_6

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    goto :goto_1

    .line 194
    :cond_6
    move-object v0, v3

    .line 195
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    sub-int/2addr v4, v2

    .line 200
    :goto_2
    if-ltz v4, :cond_e

    .line 201
    .line 202
    invoke-virtual {p2, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    if-eqz v6, :cond_7

    .line 211
    .line 212
    iget-boolean v5, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 213
    .line 214
    if-eqz v5, :cond_e

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_7
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    if-eqz v5, :cond_d

    .line 222
    .line 223
    iget-boolean v6, v5, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    .line 224
    .line 225
    if-eqz v6, :cond_8

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_8
    new-instance v6, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    .line 229
    .line 230
    const/4 v7, 0x1

    .line 231
    invoke-direct {v6, v7}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>(I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    if-nez v6, :cond_9

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_9
    iget-boolean v6, v5, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 242
    .line 243
    if-eqz v6, :cond_a

    .line 244
    .line 245
    iget-boolean v7, v5, Lcom/android/server/wm/TaskFragment;->mIsolatedNav:Z

    .line 246
    .line 247
    if-eqz v7, :cond_a

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_a
    if-eqz v0, :cond_c

    .line 251
    .line 252
    if-ne v0, v5, :cond_c

    .line 253
    .line 254
    :cond_b
    move-object v3, v5

    .line 255
    goto :goto_4

    .line 256
    :cond_c
    if-eqz v6, :cond_b

    .line 257
    .line 258
    iget-boolean v6, v5, Lcom/android/server/wm/TaskFragment;->mPinned:Z

    .line 259
    .line 260
    if-eqz v6, :cond_b

    .line 261
    .line 262
    :cond_d
    :goto_3
    add-int/lit8 v4, v4, -0x1

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_e
    :goto_4
    move-object v0, v3

    .line 266
    :cond_f
    if-eqz v0, :cond_10

    .line 267
    .line 268
    iget-boolean v3, v0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 269
    .line 270
    if-eqz v3, :cond_10

    .line 271
    .line 272
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 273
    .line 274
    invoke-static {v0, v3, p2}, Lcom/android/server/wm/ActivityStarter;->canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-nez v3, :cond_10

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_10
    :goto_5
    move-object v0, p2

    .line 282
    :goto_6
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 283
    .line 284
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    if-eqz v3, :cond_12

    .line 289
    .line 290
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 291
    .line 292
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    if-ne v3, v0, :cond_11

    .line 297
    .line 298
    goto :goto_7

    .line 299
    :cond_11
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 300
    .line 301
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    invoke-virtual {v3, v0, v4, p1}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_a

    .line 309
    .line 310
    :cond_12
    :goto_7
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 311
    .line 312
    if-eqz p1, :cond_14

    .line 313
    .line 314
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 315
    .line 316
    if-nez p1, :cond_14

    .line 317
    .line 318
    iget-boolean p1, v0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 319
    .line 320
    if-eqz p1, :cond_14

    .line 321
    .line 322
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 323
    .line 324
    if-eqz p1, :cond_13

    .line 325
    .line 326
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    if-eq p1, v3, :cond_14

    .line 333
    .line 334
    :cond_13
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 335
    .line 336
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->mIsActivityReparentToEmbeddedTask:Z

    .line 337
    .line 338
    :cond_14
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 339
    .line 340
    if-eqz p1, :cond_15

    .line 341
    .line 342
    goto :goto_8

    .line 343
    :cond_15
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 344
    .line 345
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    :goto_8
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 350
    .line 351
    const v4, 0x7fffffff

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 355
    .line 356
    .line 357
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 358
    .line 359
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 360
    .line 361
    if-eqz v0, :cond_18

    .line 362
    .line 363
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isDesktopModeSingleTopActivityTranslucent(Landroid/app/TaskInfo;)Z

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    if-eqz v3, :cond_18

    .line 372
    .line 373
    iget v3, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 374
    .line 375
    const/16 v4, 0xa

    .line 376
    .line 377
    if-eq v3, v4, :cond_17

    .line 378
    .line 379
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 380
    .line 381
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    invoke-static {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isSystemUiTask(Landroid/content/Context;Landroid/app/TaskInfo;)Z

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    if-nez v3, :cond_17

    .line 390
    .line 391
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 392
    .line 393
    if-nez v3, :cond_16

    .line 394
    .line 395
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 396
    .line 397
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mStyleFloating:Z

    .line 398
    .line 399
    if-eqz v3, :cond_16

    .line 400
    .line 401
    goto :goto_9

    .line 402
    :cond_16
    if-eqz p1, :cond_18

    .line 403
    .line 404
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-nez v3, :cond_18

    .line 409
    .line 410
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 411
    .line 412
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    if-eqz v3, :cond_18

    .line 417
    .line 418
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 430
    .line 431
    .line 432
    goto :goto_a

    .line 433
    :cond_17
    :goto_9
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 434
    .line 435
    .line 436
    :cond_18
    :goto_a
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    if-le p1, v2, :cond_19

    .line 441
    .line 442
    iget-object p1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexCompatController:Lcom/android/server/wm/DexCompatController;

    .line 443
    .line 444
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 445
    .line 446
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/DexCompatController;->changeWindowingModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 447
    .line 448
    .line 449
    :cond_19
    return-void
.end method

.method public final avoidMoveToFront()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final canMoveTaskToBottomTask(ILcom/android/server/wm/Task;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget v1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 6
    .line 7
    if-ne v1, p1, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    .line 33
    .line 34
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return v0

    .line 42
    :cond_3
    :goto_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    .line 43
    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    if-ne p1, p2, :cond_4

    .line 55
    .line 56
    return v0

    .line 57
    :cond_4
    const/4 p1, 0x1

    .line 58
    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    .line 67
    .line 68
    invoke-virtual {p0, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_5

    .line 73
    .line 74
    return v0

    .line 75
    :cond_5
    return p1
.end method

.method public final checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILcom/android/server/wm/SafeActivityOptions;Landroid/content/ComponentName;Ljava/lang/String;)I
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    new-instance v6, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 16
    .line 17
    invoke-direct {v6, v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 35
    .line 36
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 37
    .line 38
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v7, v6

    .line 44
    :goto_0
    const-string v14, "ActivityTaskManager"

    .line 45
    .line 46
    const-string v13, " succeeded"

    .line 47
    .line 48
    const/16 v16, -0x65

    .line 49
    .line 50
    const-string v12, "Start activity "

    .line 51
    .line 52
    if-eqz p5, :cond_16

    .line 53
    .line 54
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    if-eqz v8, :cond_16

    .line 59
    .line 60
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    const-string v8, "com.android.settings"

    .line 65
    .line 66
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    const-string v10, "OutOfMemoryError is happened"

    .line 71
    .line 72
    const-string v9, ":android:show_fragment"

    .line 73
    .line 74
    const-string/jumbo v17, "restriction_policy"

    .line 75
    .line 76
    .line 77
    move-object/from16 v18, v10

    .line 78
    .line 79
    const-string v10, "ActivityManager"

    .line 80
    .line 81
    if-eqz v8, :cond_5

    .line 82
    .line 83
    :try_start_0
    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-static {v8}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    if-eqz v8, :cond_4

    .line 92
    .line 93
    invoke-interface {v8, v6, v7}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    .line 94
    .line 95
    .line 96
    move-result v17

    .line 97
    if-nez v17, :cond_4

    .line 98
    .line 99
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_11

    .line 103
    if-nez v9, :cond_1

    .line 104
    .line 105
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-object/from16 v22, v11

    .line 111
    .line 112
    move-object v6, v12

    .line 113
    move-object/from16 v19, v14

    .line 114
    .line 115
    move-object/from16 v15, v18

    .line 116
    .line 117
    move-object v14, v10

    .line 118
    move-object/from16 v18, v13

    .line 119
    .line 120
    goto/16 :goto_9

    .line 121
    .line 122
    :catch_1
    move-exception v0

    .line 123
    move-object/from16 v22, v11

    .line 124
    .line 125
    move-object v6, v12

    .line 126
    move-object/from16 v18, v13

    .line 127
    .line 128
    move-object/from16 v19, v14

    .line 129
    .line 130
    goto/16 :goto_a

    .line 131
    .line 132
    :catch_2
    move-object/from16 v22, v11

    .line 133
    .line 134
    move-object v6, v12

    .line 135
    move-object/from16 v18, v13

    .line 136
    .line 137
    goto/16 :goto_7

    .line 138
    .line 139
    :cond_1
    :goto_1
    :try_start_2
    sget-object v15, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    .line 140
    .line 141
    array-length v6, v15
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_11

    .line 142
    move-object/from16 v19, v10

    .line 143
    .line 144
    const/4 v10, 0x0

    .line 145
    :goto_2
    if-ge v10, v6, :cond_3

    .line 146
    .line 147
    move/from16 v17, v6

    .line 148
    .line 149
    :try_start_3
    aget-object v6, v15, v10

    .line 150
    .line 151
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_2

    .line 156
    .line 157
    const/high16 v6, 0x800000

    .line 158
    .line 159
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    const-string v6, "ActivityStarter"
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6

    .line 167
    .line 168
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v15
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_9

    .line 186
    :try_start_5
    const-string v17, ""
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_6

    .line 187
    .line 188
    const/4 v9, 0x5

    .line 189
    const/4 v10, 0x0

    .line 190
    const/4 v8, 0x5

    .line 191
    move-object/from16 v20, v18

    .line 192
    .line 193
    move-object/from16 v21, v19

    .line 194
    .line 195
    move-object/from16 v22, v11

    .line 196
    .line 197
    move v11, v0

    .line 198
    move-object/from16 v23, v12

    .line 199
    .line 200
    move-object v12, v6

    .line 201
    move-object v6, v13

    .line 202
    move-object v13, v15

    .line 203
    move-object v15, v14

    .line 204
    move-object/from16 v14, v17

    .line 205
    .line 206
    move-object/from16 v18, v6

    .line 207
    .line 208
    move-object v6, v15

    .line 209
    move v15, v7

    .line 210
    :try_start_6
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_4

    .line 211
    .line 212
    .line 213
    :catch_3
    :goto_3
    move-object/from16 v19, v6

    .line 214
    .line 215
    move-object/from16 v6, v23

    .line 216
    .line 217
    goto/16 :goto_8

    .line 218
    .line 219
    :catch_4
    :goto_4
    move-object/from16 v19, v6

    .line 220
    .line 221
    move-object/from16 v15, v20

    .line 222
    .line 223
    move-object/from16 v14, v21

    .line 224
    .line 225
    move-object/from16 v6, v23

    .line 226
    .line 227
    goto/16 :goto_9

    .line 228
    .line 229
    :catch_5
    move-exception v0

    .line 230
    :goto_5
    move-object/from16 v19, v6

    .line 231
    .line 232
    move-object/from16 v6, v23

    .line 233
    .line 234
    goto/16 :goto_a

    .line 235
    .line 236
    :catch_6
    move-object/from16 v22, v11

    .line 237
    .line 238
    move-object/from16 v20, v18

    .line 239
    .line 240
    move-object/from16 v18, v13

    .line 241
    .line 242
    move-object v6, v12

    .line 243
    move-object/from16 v15, v20

    .line 244
    .line 245
    move-object/from16 v25, v19

    .line 246
    .line 247
    move-object/from16 v19, v14

    .line 248
    .line 249
    move-object/from16 v14, v25

    .line 250
    .line 251
    goto/16 :goto_9

    .line 252
    .line 253
    :catch_7
    move-exception v0

    .line 254
    move-object/from16 v22, v11

    .line 255
    .line 256
    move-object/from16 v23, v12

    .line 257
    .line 258
    move-object/from16 v18, v13

    .line 259
    .line 260
    move-object v6, v14

    .line 261
    goto :goto_5

    .line 262
    :catch_8
    move-object/from16 v22, v11

    .line 263
    .line 264
    move-object/from16 v18, v13

    .line 265
    .line 266
    move-object v6, v12

    .line 267
    goto/16 :goto_7

    .line 268
    .line 269
    :catch_9
    move-object/from16 v22, v11

    .line 270
    .line 271
    move-object/from16 v23, v12

    .line 272
    .line 273
    move-object v6, v14

    .line 274
    move-object/from16 v20, v18

    .line 275
    .line 276
    move-object/from16 v21, v19

    .line 277
    .line 278
    move-object/from16 v18, v13

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :catch_a
    move-object/from16 v22, v11

    .line 282
    .line 283
    move-object/from16 v23, v12

    .line 284
    .line 285
    move-object/from16 v18, v13

    .line 286
    .line 287
    move-object v6, v14

    .line 288
    goto :goto_3

    .line 289
    :cond_2
    move-object/from16 v22, v11

    .line 290
    .line 291
    move-object/from16 v23, v12

    .line 292
    .line 293
    move-object v6, v14

    .line 294
    move-object/from16 v20, v18

    .line 295
    .line 296
    move-object/from16 v21, v19

    .line 297
    .line 298
    move-object/from16 v18, v13

    .line 299
    .line 300
    add-int/lit8 v10, v10, 0x1

    .line 301
    .line 302
    move/from16 v6, v17

    .line 303
    .line 304
    move-object/from16 v18, v20

    .line 305
    .line 306
    goto/16 :goto_2

    .line 307
    .line 308
    :cond_3
    move-object/from16 v22, v11

    .line 309
    .line 310
    move-object/from16 v23, v12

    .line 311
    .line 312
    move-object v6, v14

    .line 313
    move-object/from16 v20, v18

    .line 314
    .line 315
    move-object/from16 v21, v19

    .line 316
    .line 317
    move-object/from16 v18, v13

    .line 318
    .line 319
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    const-string v10, "Settings restriction policy blocks "

    .line 325
    .line 326
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string v9, " from starting!"

    .line 333
    .line 334
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    const/4 v9, 0x1

    .line 345
    invoke-interface {v8, v9, v7}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    .line 346
    .line 347
    .line 348
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 349
    .line 350
    .line 351
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 352
    .line 353
    .line 354
    move-result v11

    .line 355
    const-string v12, "ActivityStarter"

    .line 356
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_10

    .line 360
    .line 361
    .line 362
    move-object/from16 v15, v23

    .line 363
    .line 364
    :try_start_8
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v8, " failed. Blocked due to settings changes not allowed."

    .line 371
    .line 372
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v13

    .line 379
    const-string v14, ""
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_d

    .line 380
    .line 381
    const/4 v9, 0x5

    .line 382
    const/4 v10, 0x0

    .line 383
    const/4 v8, 0x5

    .line 384
    move-object/from16 v19, v6

    .line 385
    .line 386
    move-object v6, v15

    .line 387
    move v15, v7

    .line 388
    :try_start_9
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_b

    .line 389
    .line 390
    .line 391
    return v16

    .line 392
    :catch_b
    :goto_6
    move-object/from16 v15, v20

    .line 393
    .line 394
    move-object/from16 v14, v21

    .line 395
    .line 396
    goto :goto_9

    .line 397
    :catch_c
    move-exception v0

    .line 398
    goto :goto_a

    .line 399
    :catch_d
    move-object/from16 v19, v6

    .line 400
    .line 401
    move-object v6, v15

    .line 402
    goto :goto_6

    .line 403
    :catch_e
    move-exception v0

    .line 404
    move-object/from16 v19, v6

    .line 405
    .line 406
    move-object v6, v15

    .line 407
    goto :goto_a

    .line 408
    :catch_f
    move-object/from16 v19, v6

    .line 409
    .line 410
    move-object v6, v15

    .line 411
    goto :goto_8

    .line 412
    :catch_10
    move-object/from16 v19, v6

    .line 413
    .line 414
    move-object/from16 v6, v23

    .line 415
    .line 416
    goto :goto_6

    .line 417
    :catch_11
    move-object/from16 v22, v11

    .line 418
    .line 419
    move-object v6, v12

    .line 420
    move-object/from16 v19, v14

    .line 421
    .line 422
    move-object/from16 v20, v18

    .line 423
    .line 424
    move-object/from16 v18, v13

    .line 425
    .line 426
    move-object v14, v10

    .line 427
    move-object/from16 v15, v20

    .line 428
    .line 429
    goto :goto_9

    .line 430
    :cond_4
    move-object/from16 v22, v11

    .line 431
    .line 432
    move-object v6, v12

    .line 433
    move-object/from16 v18, v13

    .line 434
    .line 435
    :goto_7
    move-object/from16 v19, v14

    .line 436
    .line 437
    :catch_12
    :goto_8
    move-object/from16 v24, v22

    .line 438
    .line 439
    goto/16 :goto_10

    .line 440
    .line 441
    :goto_9
    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    goto :goto_8

    .line 445
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 446
    .line 447
    .line 448
    goto :goto_8

    .line 449
    :cond_5
    move-object/from16 v22, v11

    .line 450
    .line 451
    move-object v6, v12

    .line 452
    move-object/from16 v19, v14

    .line 453
    .line 454
    move-object/from16 v15, v18

    .line 455
    .line 456
    move-object v14, v10

    .line 457
    move-object/from16 v18, v13

    .line 458
    .line 459
    sget-object v8, Lcom/samsung/android/knox/kiosk/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    .line 460
    .line 461
    move-object/from16 v13, v22

    .line 462
    .line 463
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v8

    .line 467
    if-nez v8, :cond_6

    .line 468
    .line 469
    sget-object v8, Lcom/samsung/android/knox/kiosk/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    .line 470
    .line 471
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v8

    .line 475
    if-eqz v8, :cond_7

    .line 476
    .line 477
    :cond_6
    move-object/from16 v24, v13

    .line 478
    .line 479
    move-object v0, v14

    .line 480
    goto/16 :goto_f

    .line 481
    .line 482
    :cond_7
    const-string v8, "com.vlingo.midas"

    .line 483
    .line 484
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v8

    .line 488
    if-nez v8, :cond_9

    .line 489
    .line 490
    const-string v8, "com.samsung.voiceserviceplatform"

    .line 491
    .line 492
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    move-result v8

    .line 496
    if-eqz v8, :cond_8

    .line 497
    .line 498
    goto :goto_b

    .line 499
    :catch_13
    :cond_8
    move-object/from16 v24, v13

    .line 500
    .line 501
    goto/16 :goto_10

    .line 502
    .line 503
    :cond_9
    :goto_b
    :try_start_a
    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 504
    .line 505
    .line 506
    move-result-object v8

    .line 507
    invoke-static {v8}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 508
    .line 509
    .line 510
    move-result-object v8

    .line 511
    if-eqz v8, :cond_8

    .line 512
    .line 513
    const/4 v10, 0x1

    .line 514
    invoke-interface {v8, v10, v7}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    .line 515
    .line 516
    .line 517
    move-result v11

    .line 518
    if-eqz v11, :cond_a

    .line 519
    .line 520
    invoke-interface {v8, v10, v7}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    .line 521
    .line 522
    .line 523
    move-result v8

    .line 524
    if-nez v8, :cond_8

    .line 525
    .line 526
    goto :goto_c

    .line 527
    :catch_14
    move-object/from16 v24, v13

    .line 528
    .line 529
    move-object v0, v14

    .line 530
    move-object v2, v15

    .line 531
    goto :goto_d

    .line 532
    :catch_15
    move-exception v0

    .line 533
    move-object/from16 v24, v13

    .line 534
    .line 535
    goto :goto_e

    .line 536
    :cond_a
    :goto_c
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    if-nez v0, :cond_b

    .line 541
    .line 542
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    :cond_b
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 547
    .line 548
    .line 549
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 550
    .line 551
    .line 552
    move-result v11

    .line 553
    const-string v12, "ActivityStarter"

    .line 554
    .line 555
    new-instance v8, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v0, " failed. Blocked due to SVoice not allowed."

    .line 564
    .line 565
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    const-string v17, ""
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_14

    .line 573
    .line 574
    const/4 v9, 0x5

    .line 575
    const/4 v10, 0x0

    .line 576
    const/4 v8, 0x5

    .line 577
    move-object/from16 v24, v13

    .line 578
    .line 579
    move-object v13, v0

    .line 580
    move-object v0, v14

    .line 581
    move-object/from16 v14, v17

    .line 582
    .line 583
    move-object v2, v15

    .line 584
    move v15, v7

    .line 585
    :try_start_b
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_17

    .line 586
    .line 587
    .line 588
    return v16

    .line 589
    :catch_16
    move-exception v0

    .line 590
    goto :goto_e

    .line 591
    :catch_17
    :goto_d
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .line 593
    .line 594
    goto :goto_10

    .line 595
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 596
    .line 597
    .line 598
    goto :goto_10

    .line 599
    :goto_f
    :try_start_c
    const-string v2, "kioskmode"

    .line 600
    .line 601
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    invoke-static {v2}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    if-eqz v2, :cond_c

    .line 610
    .line 611
    const/4 v8, 0x1

    .line 612
    invoke-interface {v2, v8, v7}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isTaskManagerAllowedAsUser(ZI)Z

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    if-nez v2, :cond_c

    .line 617
    .line 618
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 619
    .line 620
    .line 621
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 622
    .line 623
    .line 624
    move-result v11

    .line 625
    const-string v12, "ActivityStarter"

    .line 626
    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    .line 628
    .line 629
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    const-string v8, " failed. Task manager is not allowed."

    .line 636
    .line 637
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v13

    .line 644
    const-string v14, ""

    .line 645
    .line 646
    const/4 v9, 0x5

    .line 647
    const/4 v10, 0x0

    .line 648
    const/4 v8, 0x5

    .line 649
    move v15, v7

    .line 650
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_18

    .line 651
    .line 652
    .line 653
    return v16

    .line 654
    :catch_18
    const-string v2, "Is edm running?"

    .line 655
    .line 656
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    .line 658
    .line 659
    :catch_19
    :cond_c
    :goto_10
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    if-eqz v0, :cond_17

    .line 664
    .line 665
    :try_start_d
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    .line 666
    .line 667
    if-nez v0, :cond_d

    .line 668
    .line 669
    const-class v0, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    .line 670
    .line 671
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    check-cast v0, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    .line 676
    .line 677
    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    .line 678
    .line 679
    :cond_d
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    .line 680
    .line 681
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    .line 682
    .line 683
    if-nez v2, :cond_e

    .line 684
    .line 685
    const-class v2, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    .line 686
    .line 687
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    check-cast v2, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    .line 692
    .line 693
    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    .line 694
    .line 695
    :cond_e
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    .line 696
    .line 697
    if-eqz v0, :cond_f

    .line 698
    .line 699
    const/4 v8, 0x0

    .line 700
    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;->isChangeRequestedAsUser(I)I

    .line 701
    .line 702
    .line 703
    move-result v0

    .line 704
    if-gtz v0, :cond_10

    .line 705
    .line 706
    goto :goto_11

    .line 707
    :catch_1a
    move-exception v0

    .line 708
    goto/16 :goto_14

    .line 709
    .line 710
    :cond_f
    :goto_11
    if-eqz v2, :cond_14

    .line 711
    .line 712
    invoke-virtual {v2, v7}, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;->isDodBannerVisibleAsUser(I)Z

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    if-eqz v0, :cond_14

    .line 717
    .line 718
    :cond_10
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    const/4 v2, 0x1

    .line 723
    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    if-eqz v0, :cond_14

    .line 728
    .line 729
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 730
    .line 731
    .line 732
    move-result v2

    .line 733
    if-nez v2, :cond_14

    .line 734
    .line 735
    const/4 v2, 0x0

    .line 736
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 741
    .line 742
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 743
    .line 744
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v2

    .line 752
    sget-object v8, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    .line 753
    .line 754
    array-length v9, v8

    .line 755
    const/4 v10, 0x0

    .line 756
    const/4 v15, 0x0

    .line 757
    :goto_12
    if-ge v10, v9, :cond_13

    .line 758
    .line 759
    aget-object v11, v8, v10

    .line 760
    .line 761
    if-eqz v0, :cond_11

    .line 762
    .line 763
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v12

    .line 767
    if-eqz v12, :cond_11

    .line 768
    .line 769
    const/4 v15, 0x1

    .line 770
    :cond_11
    if-eqz v2, :cond_12

    .line 771
    .line 772
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    move-result v11

    .line 776
    if-eqz v11, :cond_12

    .line 777
    .line 778
    const/4 v0, 0x1

    .line 779
    goto :goto_13

    .line 780
    :cond_12
    add-int/lit8 v10, v10, 0x1

    .line 781
    .line 782
    goto :goto_12

    .line 783
    :cond_13
    const/4 v0, 0x0

    .line 784
    :goto_13
    if-eqz v15, :cond_14

    .line 785
    .line 786
    if-nez v0, :cond_14

    .line 787
    .line 788
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 789
    .line 790
    .line 791
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 792
    .line 793
    .line 794
    move-result v11

    .line 795
    const-string v12, "ActivityStarter"

    .line 796
    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    .line 798
    .line 799
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    const-string v2, " failed. Blocked due to password change enforcement."

    .line 809
    .line 810
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v13

    .line 817
    const-string v14, ""

    .line 818
    .line 819
    const/4 v9, 0x5

    .line 820
    const/4 v10, 0x0

    .line 821
    const/4 v8, 0x5

    .line 822
    move v15, v7

    .line 823
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1a

    .line 824
    .line 825
    .line 826
    return v16

    .line 827
    :goto_14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 828
    .line 829
    .line 830
    :catch_1b
    :cond_14
    :try_start_e
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 831
    .line 832
    if-nez v0, :cond_15

    .line 833
    .line 834
    const-class v0, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 835
    .line 836
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    check-cast v0, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 841
    .line 842
    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 843
    .line 844
    :cond_15
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 845
    .line 846
    if-eqz v0, :cond_17

    .line 847
    .line 848
    move-object/from16 v4, v24

    .line 849
    .line 850
    const/4 v2, 0x1

    .line 851
    invoke-virtual {v0, v4, v2, v7}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    .line 852
    .line 853
    .line 854
    move-result v0

    .line 855
    if-nez v0, :cond_17

    .line 856
    .line 857
    const-string v0, "ActivityStarter"

    .line 858
    .line 859
    new-instance v2, Ljava/lang/StringBuilder;

    .line 860
    .line 861
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 862
    .line 863
    .line 864
    const-string v8, "Unable to open "

    .line 865
    .line 866
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    .line 868
    .line 869
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v2

    .line 876
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    .line 878
    .line 879
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1c

    .line 880
    .line 881
    .line 882
    return v16

    .line 883
    :catch_1c
    move-exception v0

    .line 884
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 885
    .line 886
    .line 887
    goto :goto_15

    .line 888
    :cond_16
    move-object v6, v12

    .line 889
    move-object/from16 v18, v13

    .line 890
    .line 891
    move-object/from16 v19, v14

    .line 892
    .line 893
    :cond_17
    :goto_15
    if-eqz v3, :cond_18

    .line 894
    .line 895
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 896
    .line 897
    .line 898
    move-result v0

    .line 899
    move/from16 v2, p3

    .line 900
    .line 901
    if-ne v2, v0, :cond_18

    .line 902
    .line 903
    const/4 v0, 0x0

    .line 904
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 905
    .line 906
    invoke-virtual {v3, v0, v0, v0, v2}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    .line 907
    .line 908
    .line 909
    move-result-object v4

    .line 910
    if-eqz v4, :cond_1c

    .line 911
    .line 912
    invoke-virtual {v3, v0, v0, v0, v2}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getStartedByMDMAdmin()Z

    .line 917
    .line 918
    .line 919
    move-result v0

    .line 920
    if-nez v0, :cond_1c

    .line 921
    .line 922
    :cond_18
    move-object/from16 v2, p2

    .line 923
    .line 924
    if-eqz v2, :cond_1c

    .line 925
    .line 926
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 927
    .line 928
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 929
    .line 930
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 931
    .line 932
    .line 933
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 934
    .line 935
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 936
    .line 937
    .line 938
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 939
    .line 940
    .line 941
    move-result v4

    .line 942
    const/4 v8, 0x1

    .line 943
    sub-int/2addr v4, v8

    .line 944
    :goto_16
    if-ltz v4, :cond_19

    .line 945
    .line 946
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 947
    .line 948
    .line 949
    move-result-object v8

    .line 950
    check-cast v8, Lcom/android/server/wm/DisplayContent;

    .line 951
    .line 952
    new-instance v9, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;

    .line 953
    .line 954
    const/4 v10, 0x1

    .line 955
    invoke-direct {v9, v0, v7, v3, v10}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicReference;I)V

    .line 956
    .line 957
    .line 958
    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 959
    .line 960
    .line 961
    add-int/lit8 v4, v4, -0x1

    .line 962
    .line 963
    goto :goto_16

    .line 964
    :cond_19
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object v2

    .line 968
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 969
    .line 970
    if-nez v2, :cond_1c

    .line 971
    .line 972
    :try_start_f
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 973
    .line 974
    if-nez v2, :cond_1a

    .line 975
    .line 976
    const-class v2, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 977
    .line 978
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v2

    .line 982
    check-cast v2, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 983
    .line 984
    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 985
    .line 986
    :cond_1a
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 987
    .line 988
    if-eqz v1, :cond_1b

    .line 989
    .line 990
    invoke-virtual {v1, v0, v7}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    .line 991
    .line 992
    .line 993
    move-result v1

    .line 994
    if-eqz v1, :cond_1b

    .line 995
    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    .line 997
    .line 998
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 999
    .line 1000
    .line 1001
    const-string v2, "Unable to start "

    .line 1002
    .line 1003
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    .line 1013
    const-string v2, " which is at prevent start black list"

    .line 1014
    .line 1015
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    move-object/from16 v2, v19

    .line 1023
    .line 1024
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    .line 1026
    .line 1027
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1028
    .line 1029
    .line 1030
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 1031
    .line 1032
    .line 1033
    move-result v11

    .line 1034
    const-string v12, "ActivityStarter"

    .line 1035
    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    .line 1047
    const-string v0, " failed"

    .line 1048
    .line 1049
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v13

    .line 1056
    const-string v14, ""

    .line 1057
    .line 1058
    const/4 v9, 0x5

    .line 1059
    const/4 v10, 0x0

    .line 1060
    const/4 v8, 0x5

    .line 1061
    move v15, v7

    .line 1062
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1063
    .line 1064
    .line 1065
    return v16

    .line 1066
    :catch_1d
    move-exception v0

    .line 1067
    goto :goto_17

    .line 1068
    :cond_1b
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 1069
    .line 1070
    .line 1071
    move-result v11

    .line 1072
    const-string v12, "ActivityStarter"

    .line 1073
    .line 1074
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    .line 1085
    move-object/from16 v2, v18

    .line 1086
    .line 1087
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v13

    .line 1094
    const-string v14, ""

    .line 1095
    .line 1096
    const/4 v9, 0x5

    .line 1097
    const/4 v10, 0x1

    .line 1098
    const/4 v8, 0x5

    .line 1099
    move v15, v7

    .line 1100
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1d

    .line 1101
    .line 1102
    .line 1103
    goto :goto_18

    .line 1104
    :goto_17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1105
    .line 1106
    .line 1107
    :cond_1c
    :goto_18
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1108
    .line 1109
    .line 1110
    const/4 v1, 0x0

    .line 1111
    return v1
.end method

.method public final createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 18

    .line 1
    move-object/from16 v12, p1

    .line 2
    .line 3
    if-eqz v12, :cond_0

    .line 4
    .line 5
    iget-boolean v0, v12, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object/from16 v0, p0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object/from16 v13, p3

    .line 18
    .line 19
    move/from16 v14, p7

    .line 20
    .line 21
    invoke-virtual {v0, v13, v14}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 26
    .line 27
    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 28
    .line 29
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    new-instance v11, Landroid/content/pm/InstantAppRequest;

    .line 33
    .line 34
    iget-object v10, v12, Landroid/content/pm/AuxiliaryResolveInfo;->hostDigestPrefixSecure:[I

    .line 35
    .line 36
    iget-object v9, v12, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    .line 37
    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    move-object v0, v11

    .line 41
    move-object/from16 v1, p1

    .line 42
    .line 43
    move-object/from16 v2, p2

    .line 44
    .line 45
    move-object/from16 v3, p6

    .line 46
    .line 47
    move-object/from16 v4, p3

    .line 48
    .line 49
    move-object/from16 v5, p4

    .line 50
    .line 51
    move/from16 v7, p7

    .line 52
    .line 53
    move-object/from16 v8, p5

    .line 54
    .line 55
    move-object/from16 v17, v9

    .line 56
    .line 57
    move/from16 v9, v16

    .line 58
    .line 59
    move-object v13, v11

    .line 60
    move-object/from16 v11, v17

    .line 61
    .line 62
    invoke-direct/range {v0 .. v11}, Landroid/content/pm/InstantAppRequest;-><init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v15, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 66
    .line 67
    const/16 v1, 0x14

    .line 68
    .line 69
    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move/from16 v14, p7

    .line 78
    .line 79
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const/4 v0, 0x0

    .line 84
    if-nez v12, :cond_1

    .line 85
    .line 86
    move-object v3, v0

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    iget-object v1, v12, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 89
    .line 90
    move-object v3, v1

    .line 91
    :goto_1
    if-nez v12, :cond_2

    .line 92
    .line 93
    move-object v9, v0

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget-object v1, v12, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    .line 96
    .line 97
    move-object v9, v1

    .line 98
    :goto_2
    if-nez v12, :cond_3

    .line 99
    .line 100
    move-object v10, v0

    .line 101
    goto :goto_3

    .line 102
    :cond_3
    iget-object v1, v12, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    .line 103
    .line 104
    move-object v10, v1

    .line 105
    :goto_3
    if-eqz v12, :cond_4

    .line 106
    .line 107
    iget-boolean v1, v12, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    .line 108
    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    const/4 v1, 0x1

    .line 112
    :goto_4
    move v11, v1

    .line 113
    goto :goto_5

    .line 114
    :cond_4
    const/4 v1, 0x0

    .line 115
    goto :goto_4

    .line 116
    :goto_5
    if-nez v12, :cond_5

    .line 117
    .line 118
    :goto_6
    move-object v12, v0

    .line 119
    goto :goto_7

    .line 120
    :cond_5
    iget-object v0, v12, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :goto_7
    move-object/from16 v1, p2

    .line 124
    .line 125
    move-object/from16 v4, p3

    .line 126
    .line 127
    move-object/from16 v5, p4

    .line 128
    .line 129
    move-object/from16 v6, p5

    .line 130
    .line 131
    move-object/from16 v7, p6

    .line 132
    .line 133
    move/from16 v8, p7

    .line 134
    .line 135
    invoke-static/range {v1 .. v12}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    return-object v0
.end method

.method public final deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    iget-boolean v0, v1, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getStartInfo()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/16 v3, 0x7533

    .line 17
    .line 18
    invoke-virtual {v8, v3, v0, v2}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v13, v1, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 22
    .line 23
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    iget-object v15, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 26
    .line 27
    iget-object v14, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 28
    .line 29
    iget-boolean v9, v0, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    .line 30
    .line 31
    iget v10, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 34
    .line 35
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 36
    .line 37
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 38
    .line 39
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 40
    .line 41
    .line 42
    move-result v12

    .line 43
    const-string v11, "Exception thrown sending new intent to "

    .line 44
    .line 45
    new-instance v7, Landroid/os/Binder;

    .line 46
    .line 47
    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/security/Flags;->contentUriPermissionApis()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    move-object/from16 v2, p1

    .line 57
    .line 58
    move-object v3, v7

    .line 59
    move-object v4, v15

    .line 60
    move v5, v13

    .line 61
    move-object v6, v14

    .line 62
    move-object/from16 v16, v7

    .line 63
    .line 64
    move v7, v9

    .line 65
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityRecord;->computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move-object/from16 v16, v7

    .line 70
    .line 71
    :goto_0
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 74
    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 80
    .line 81
    move-object/from16 v3, p2

    .line 82
    .line 83
    invoke-virtual {v0, v3, v2}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 84
    .line 85
    .line 86
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    .line 87
    .line 88
    const/4 v2, 0x1

    .line 89
    const-string v3, "ActivityTaskManager"

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 94
    .line 95
    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    const-string v4, "LAUNCH_FROM_NOTIFICATION"

    .line 99
    .line 100
    const/4 v5, -0x1

    .line 101
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eq v4, v2, :cond_2

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const/high16 v4, 0x4000000

    .line 112
    .line 113
    and-int/2addr v0, v4

    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    goto :goto_2

    .line 119
    :cond_2
    :goto_1
    iput-boolean v2, v8, Lcom/android/server/wm/ActivityRecord;->mLaunchingRequestedFromNotification:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :goto_2
    const-string v4, "Exception while parsing intent but ignorable, was : "

    .line 123
    .line 124
    invoke-static {v0, v4, v3}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    :goto_3
    if-eqz v9, :cond_4

    .line 128
    .line 129
    invoke-static {}, Landroid/security/Flags;->contentUriPermissionApis()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    move-object v9, v0

    .line 142
    check-cast v9, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 143
    .line 144
    const/4 v0, 0x0

    .line 145
    const/4 v4, 0x1

    .line 146
    move-object v5, v11

    .line 147
    move-object v11, v15

    .line 148
    move-object v6, v14

    .line 149
    move v14, v4

    .line 150
    move-object v4, v15

    .line 151
    move v15, v0

    .line 152
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_4
    move-object v5, v11

    .line 157
    move-object v6, v14

    .line 158
    move-object v4, v15

    .line 159
    :goto_4
    new-instance v7, Lcom/android/internal/content/ReferrerIntent;

    .line 160
    .line 161
    invoke-virtual {v8, v6}, Lcom/android/server/wm/ActivityRecord;->getFilteredReferrer(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    move-object/from16 v6, v16

    .line 166
    .line 167
    invoke-direct {v7, v4, v0, v6}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    const/4 v4, 0x0

    .line 175
    if-eqz v0, :cond_6

    .line 176
    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    goto :goto_5

    .line 188
    :cond_5
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 189
    .line 190
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 191
    .line 192
    :goto_5
    if-eqz v0, :cond_6

    .line 193
    .line 194
    move v0, v2

    .line 195
    goto :goto_6

    .line 196
    :cond_6
    move v0, v4

    .line 197
    :goto_6
    iget-object v6, v8, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 198
    .line 199
    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 200
    .line 201
    if-eq v6, v9, :cond_7

    .line 202
    .line 203
    sget-object v10, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    .line 204
    .line 205
    if-eq v6, v10, :cond_7

    .line 206
    .line 207
    if-eqz v0, :cond_9

    .line 208
    .line 209
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_9

    .line 214
    .line 215
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    iget-object v6, v8, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 224
    .line 225
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 226
    .line 227
    iget-object v10, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 228
    .line 229
    iget-object v10, v10, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 230
    .line 231
    iget-object v11, v8, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 232
    .line 233
    iget-object v12, v8, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 234
    .line 235
    if-ne v12, v9, :cond_8

    .line 236
    .line 237
    move v4, v2

    .line 238
    :cond_8
    invoke-static {v11, v0, v4}, Landroid/app/servertransaction/NewIntentItem;->obtain(Landroid/os/IBinder;Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v6, v10, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    .line 244
    .line 245
    goto :goto_a

    .line 246
    :catch_1
    move-exception v0

    .line 247
    goto :goto_7

    .line 248
    :catch_2
    move-exception v0

    .line 249
    goto :goto_8

    .line 250
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .line 264
    .line 265
    goto :goto_9

    .line 266
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .line 280
    .line 281
    :cond_9
    :goto_9
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 282
    .line 283
    if-nez v0, :cond_a

    .line 284
    .line 285
    new-instance v0, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .line 289
    .line 290
    iput-object v0, v8, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 291
    .line 292
    :cond_a
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    :goto_a
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 298
    .line 299
    return-void
.end method

.method public final deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_7

    .line 21
    .line 22
    iget v2, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 27
    .line 28
    if-ne v2, v3, :cond_7

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_7

    .line 35
    .line 36
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 37
    .line 38
    const/high16 v3, 0x20000000

    .line 39
    .line 40
    and-int/2addr v2, v3

    .line 41
    const/4 v3, 0x1

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 45
    .line 46
    if-ne v3, v2, :cond_7

    .line 47
    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 59
    .line 60
    if-ne v2, v4, :cond_7

    .line 61
    .line 62
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iget-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    .line 67
    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ne v2, v4, :cond_2

    .line 79
    .line 80
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eq v2, v4, :cond_3

    .line 107
    .line 108
    :cond_2
    return v1

    .line 109
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 114
    .line 115
    .line 116
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 117
    .line 118
    if-eqz v1, :cond_4

    .line 119
    .line 120
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 123
    .line 124
    .line 125
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 126
    .line 127
    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 128
    .line 129
    .line 130
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 131
    .line 132
    and-int/2addr v1, v3

    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    return v3

    .line 136
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 137
    .line 138
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 139
    .line 140
    if-eqz v2, :cond_6

    .line 141
    .line 142
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 143
    .line 144
    iget v5, v1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 145
    .line 146
    const/4 v8, 0x0

    .line 147
    const/4 v9, 0x0

    .line 148
    const/4 v3, -0x1

    .line 149
    const/4 v6, 0x0

    .line 150
    const/4 v7, 0x0

    .line 151
    const/4 v10, 0x0

    .line 152
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 156
    .line 157
    const/4 v2, 0x0

    .line 158
    iput-object v2, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 159
    .line 160
    :cond_6
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 161
    .line 162
    .line 163
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 164
    .line 165
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 166
    .line 167
    iget v5, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 168
    .line 169
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 170
    .line 171
    const/4 v8, 0x0

    .line 172
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 173
    .line 174
    move-object v7, p1

    .line 175
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    .line 176
    .line 177
    .line 178
    const/4 p0, 0x3

    .line 179
    return p0

    .line 180
    :cond_7
    return v1
.end method

.method public final execute()I
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string/jumbo v2, "startActivity: reason="

    .line 4
    .line 5
    .line 6
    const-string v3, "[SecIpm] intent received, starting preload launch:"

    .line 7
    .line 8
    const-string v4, "Failed active Launch package : "

    .line 9
    .line 10
    const-string v5, "Active launch : App auto run is off : "

    .line 11
    .line 12
    const-string v6, "Checking for the Active launch isDataCleared :"

    .line 13
    .line 14
    const-string v7, "Checking for the Active launch isPkgEverLaunched :"

    .line 15
    .line 16
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionStarted()V

    .line 17
    .line 18
    .line 19
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 20
    .line 21
    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 22
    .line 23
    const/4 v9, 0x1

    .line 24
    if-eqz v8, :cond_1

    .line 25
    .line 26
    invoke-virtual {v8}, Landroid/content/Intent;->hasFileDescriptors()Z

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-nez v8, :cond_0

    .line 31
    .line 32
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 33
    .line 34
    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 35
    .line 36
    invoke-virtual {v8, v9}, Landroid/content/Intent;->removeExtendedFlags(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    move-object v2, v0

    .line 42
    goto/16 :goto_18

    .line 43
    .line 44
    :catch_0
    move-exception v0

    .line 45
    move-object v2, v0

    .line 46
    goto/16 :goto_19

    .line 47
    .line 48
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string v3, "File descriptors passed in Intent"

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v2

    .line 56
    :cond_1
    :goto_0
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 57
    .line 58
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 59
    .line 60
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 61
    .line 62
    .line 63
    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 65
    .line 66
    iget-object v10, v10, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 67
    .line 68
    invoke-static {v10}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 73
    .line 74
    iget v11, v11, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 75
    .line 76
    const/4 v12, -0x1

    .line 77
    if-ne v11, v12, :cond_2

    .line 78
    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    goto :goto_1

    .line 84
    :catchall_1
    move-exception v0

    .line 85
    move-object v2, v0

    .line 86
    goto/16 :goto_17

    .line 87
    .line 88
    :cond_2
    :goto_1
    iget-object v13, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 89
    .line 90
    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 91
    .line 92
    iget-object v14, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 93
    .line 94
    iget-object v14, v14, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 95
    .line 96
    invoke-virtual {v13, v14, v10, v11}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 102
    .line 103
    .line 104
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 105
    .line 106
    iget-object v11, v8, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 107
    .line 108
    if-eqz v11, :cond_4

    .line 109
    .line 110
    iget-boolean v14, v8, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 111
    .line 112
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    if-eqz v11, :cond_3

    .line 117
    .line 118
    move v11, v9

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    const/4 v11, 0x0

    .line 121
    :goto_2
    or-int/2addr v11, v14

    .line 122
    iput-boolean v11, v8, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 123
    .line 124
    :cond_4
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 125
    .line 126
    iget-object v11, v8, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 127
    .line 128
    if-nez v11, :cond_5

    .line 129
    .line 130
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 131
    .line 132
    invoke-virtual {v8, v11}, Lcom/android/server/wm/ActivityStarter$Request;->resolveActivity(Lcom/android/server/wm/ActivityTaskSupervisor;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 136
    .line 137
    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 138
    .line 139
    const/4 v11, 0x0

    .line 140
    if-eqz v8, :cond_6

    .line 141
    .line 142
    iget-object v14, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 143
    .line 144
    invoke-virtual {v8, v11, v11, v11, v14}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    move-object v8, v11

    .line 150
    :goto_3
    if-eqz v8, :cond_f

    .line 151
    .line 152
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->isActiveApplaunch()Z

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    if-eqz v15, :cond_f

    .line 157
    .line 158
    iget-object v15, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 159
    .line 160
    iget-object v15, v15, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 161
    .line 162
    if-eqz v15, :cond_f

    .line 163
    .line 164
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 165
    .line 166
    .line 167
    move-result-wide v2

    .line 168
    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 169
    .line 170
    iget-object v11, v10, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 171
    .line 172
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 173
    .line 174
    iget v10, v10, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 175
    .line 176
    const-class v15, Landroid/content/pm/PackageManagerInternal;

    .line 177
    .line 178
    invoke-static {v15}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v15

    .line 182
    check-cast v15, Landroid/content/pm/PackageManagerInternal;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    .line 184
    if-eqz v15, :cond_8

    .line 185
    .line 186
    :try_start_3
    invoke-virtual {v15, v10, v11}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(ILjava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v14

    .line 190
    invoke-virtual {v15, v10, v11}, Landroid/content/pm/PackageManagerInternal;->wasPackageStopped(ILjava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    invoke-virtual {v15, v9, v11}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(ILjava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    if-eqz v14, :cond_7

    .line 203
    .line 204
    if-nez v12, :cond_7

    .line 205
    .line 206
    if-eqz v9, :cond_8

    .line 207
    .line 208
    :cond_7
    const-string v15, "ActivityTaskManager"

    .line 209
    .line 210
    new-instance v13, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v7, ", isPkgStopped : "

    .line 219
    .line 220
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v7, ", isPkgSuspended : "

    .line 227
    .line 228
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    invoke-static {v15, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    .line 240
    .line 241
    const/16 v7, -0x60

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :catch_1
    move-exception v0

    .line 245
    move-object v5, v0

    .line 246
    const/4 v7, 0x0

    .line 247
    goto :goto_7

    .line 248
    :cond_8
    const/4 v7, 0x0

    .line 249
    :goto_4
    :try_start_4
    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 250
    .line 251
    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 252
    .line 253
    invoke-virtual {v9, v11, v10}, Landroid/app/ActivityManagerInternal;->getIsDataClearedInAms(Ljava/lang/String;I)Z

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-eqz v9, :cond_9

    .line 258
    .line 259
    const-string v10, "ActivityTaskManager"

    .line 260
    .line 261
    new-instance v12, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    invoke-static {v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    const/16 v7, -0x60

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :catch_2
    move-exception v0

    .line 280
    move-object v5, v0

    .line 281
    goto :goto_7

    .line 282
    :cond_9
    :goto_5
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 283
    .line 284
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 285
    .line 286
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    if-eqz v6, :cond_a

    .line 291
    .line 292
    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    goto :goto_6

    .line 297
    :cond_a
    const/4 v6, 0x0

    .line 298
    :goto_6
    const/4 v9, 0x4

    .line 299
    if-ne v6, v9, :cond_b

    .line 300
    .line 301
    const-string v6, "ActivityTaskManager"

    .line 302
    .line 303
    const-string v9, "Checking for the Active launch getApplicationEnabledSetting"

    .line 304
    .line 305
    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    const/16 v7, -0x60

    .line 309
    .line 310
    :cond_b
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    if-eqz v9, :cond_c

    .line 322
    .line 323
    const/4 v9, 0x0

    .line 324
    invoke-virtual {v6, v9, v11}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    if-nez v6, :cond_c

    .line 329
    .line 330
    const-string v6, "ActivityTaskManager"

    .line 331
    .line 332
    new-instance v9, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 345
    .line 346
    .line 347
    const/16 v7, -0x60

    .line 348
    .line 349
    goto :goto_8

    .line 350
    :goto_7
    :try_start_5
    const-string v6, "ActivityTaskManager"

    .line 351
    .line 352
    new-instance v9, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v4, ": "

    .line 361
    .line 362
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 373
    .line 374
    .line 375
    :cond_c
    :goto_8
    :try_start_6
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 376
    .line 377
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 378
    .line 379
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 380
    .line 381
    .line 382
    monitor-enter v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 383
    :try_start_7
    const-string v5, "ActivityTaskManager"

    .line 384
    .line 385
    const-string/jumbo v6, "request preloading for newly launching app"

    .line 386
    .line 387
    .line 388
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 392
    .line 393
    iget-object v6, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 394
    .line 395
    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 396
    .line 397
    iget-object v10, v9, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 398
    .line 399
    iget v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 400
    .line 401
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    invoke-virtual {v6, v10, v9, v5}, Lcom/android/server/wm/TaskOrganizerController;->preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V

    .line 406
    .line 407
    .line 408
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    .line 409
    .line 410
    if-eqz v5, :cond_d

    .line 411
    .line 412
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    if-nez v5, :cond_d

    .line 417
    .line 418
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 419
    .line 420
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 421
    .line 422
    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 423
    .line 424
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 425
    .line 426
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedPackage(Ljava/lang/String;)Z

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    if-eqz v5, :cond_d

    .line 431
    .line 432
    const/4 v5, 0x1

    .line 433
    goto :goto_9

    .line 434
    :catchall_2
    move-exception v0

    .line 435
    move-object v5, v0

    .line 436
    goto :goto_a

    .line 437
    :cond_d
    const/4 v5, 0x0

    .line 438
    :goto_9
    if-nez v7, :cond_e

    .line 439
    .line 440
    const-string v6, "ActivityTaskManager"

    .line 441
    .line 442
    const-string/jumbo v9, "starting ActiveLaunch"

    .line 443
    .line 444
    .line 445
    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 449
    .line 450
    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 451
    .line 452
    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 453
    .line 454
    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 455
    .line 456
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 457
    .line 458
    const-string v26, "activelaunch"

    .line 459
    .line 460
    new-instance v11, Landroid/content/ComponentName;

    .line 461
    .line 462
    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 463
    .line 464
    iget-object v12, v12, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 465
    .line 466
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 467
    .line 468
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 469
    .line 470
    invoke-direct {v11, v13, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    const/4 v12, 0x1

    .line 474
    xor-int/2addr v5, v12

    .line 475
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    new-instance v20, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;

    .line 479
    .line 480
    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    .line 481
    .line 482
    .line 483
    iget-object v12, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 484
    .line 485
    sget-object v25, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 486
    .line 487
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 488
    .line 489
    .line 490
    move-result-object v28

    .line 491
    const/4 v5, -0x1

    .line 492
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 493
    .line 494
    .line 495
    move-result-object v29

    .line 496
    move-object/from16 v21, v12

    .line 497
    .line 498
    move-object/from16 v22, v10

    .line 499
    .line 500
    move-object/from16 v23, v9

    .line 501
    .line 502
    move-object/from16 v24, v25

    .line 503
    .line 504
    move-object/from16 v27, v11

    .line 505
    .line 506
    invoke-static/range {v20 .. v29}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 511
    .line 512
    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 513
    .line 514
    .line 515
    const/4 v7, 0x0

    .line 516
    :cond_e
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 517
    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 518
    .line 519
    .line 520
    const/4 v4, 0x0

    .line 521
    :try_start_9
    invoke-virtual {v8, v4}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    .line 522
    .line 523
    .line 524
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 525
    .line 526
    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 528
    .line 529
    .line 530
    return v7

    .line 531
    :catchall_3
    const/4 v4, 0x0

    .line 532
    goto :goto_c

    .line 533
    :catch_3
    move-exception v0

    .line 534
    move-object v4, v0

    .line 535
    goto :goto_b

    .line 536
    :goto_a
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 537
    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 538
    .line 539
    .line 540
    throw v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 541
    :goto_b
    :try_start_c
    const-string v5, "ActivityTaskManager"

    .line 542
    .line 543
    new-instance v6, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .line 547
    .line 548
    const-string v9, "ActiveLaunching Fail, "

    .line 549
    .line 550
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 561
    .line 562
    .line 563
    const/4 v4, 0x0

    .line 564
    :try_start_d
    invoke-virtual {v8, v4}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    .line 565
    .line 566
    .line 567
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 568
    .line 569
    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 571
    .line 572
    .line 573
    const/16 v1, -0x60

    .line 574
    .line 575
    return v1

    .line 576
    :goto_c
    :try_start_e
    invoke-virtual {v8, v4}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    .line 577
    .line 578
    .line 579
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 580
    .line 581
    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 583
    .line 584
    .line 585
    return v7

    .line 586
    :cond_f
    if-eqz v8, :cond_10

    .line 587
    .line 588
    :try_start_f
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->isMlLaunch()I

    .line 589
    .line 590
    .line 591
    move-result v4

    .line 592
    const/4 v5, -0x1

    .line 593
    if-le v4, v5, :cond_10

    .line 594
    .line 595
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 596
    .line 597
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 598
    .line 599
    if-eqz v4, :cond_10

    .line 600
    .line 601
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 602
    .line 603
    .line 604
    move-result-wide v4
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 605
    :try_start_10
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 606
    .line 607
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 608
    .line 609
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 610
    .line 611
    .line 612
    monitor-enter v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 613
    :try_start_11
    const-string v6, "ActivityTaskManager"

    .line 614
    .line 615
    new-instance v7, Ljava/lang/StringBuilder;

    .line 616
    .line 617
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 621
    .line 622
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 623
    .line 624
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 625
    .line 626
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .line 635
    .line 636
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 637
    .line 638
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 639
    .line 640
    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 641
    .line 642
    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 643
    .line 644
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 645
    .line 646
    const-string v26, "IpmLaunch"

    .line 647
    .line 648
    new-instance v9, Landroid/content/ComponentName;

    .line 649
    .line 650
    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 651
    .line 652
    iget-object v10, v10, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 653
    .line 654
    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 655
    .line 656
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 657
    .line 658
    invoke-direct {v9, v11, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->isMlLaunch()I

    .line 662
    .line 663
    .line 664
    move-result v10

    .line 665
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    new-instance v20, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;

    .line 669
    .line 670
    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    .line 671
    .line 672
    .line 673
    iget-object v11, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 674
    .line 675
    sget-object v28, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 676
    .line 677
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 678
    .line 679
    .line 680
    move-result-object v29

    .line 681
    move-object/from16 v21, v11

    .line 682
    .line 683
    move-object/from16 v22, v7

    .line 684
    .line 685
    move-object/from16 v23, v6

    .line 686
    .line 687
    move-object/from16 v24, v28

    .line 688
    .line 689
    move-object/from16 v25, v28

    .line 690
    .line 691
    move-object/from16 v27, v9

    .line 692
    .line 693
    invoke-static/range {v20 .. v29}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 694
    .line 695
    .line 696
    move-result-object v6

    .line 697
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 698
    .line 699
    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 700
    .line 701
    .line 702
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 703
    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 704
    .line 705
    .line 706
    const/4 v2, -0x1

    .line 707
    :try_start_13
    invoke-virtual {v8, v2}, Landroid/app/ActivityOptions;->setMlLaunch(I)V

    .line 708
    .line 709
    .line 710
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 711
    .line 712
    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 714
    .line 715
    .line 716
    const/4 v1, 0x0

    .line 717
    return v1

    .line 718
    :catchall_4
    const/4 v2, -0x1

    .line 719
    goto :goto_e

    .line 720
    :catch_4
    move-exception v0

    .line 721
    move-object v2, v0

    .line 722
    goto :goto_d

    .line 723
    :catchall_5
    move-exception v0

    .line 724
    move-object v3, v0

    .line 725
    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 726
    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 727
    .line 728
    .line 729
    throw v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 730
    :goto_d
    :try_start_16
    const-string v3, "ActivityTaskManager"

    .line 731
    .line 732
    new-instance v6, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .line 736
    .line 737
    const-string v7, "[SecIpm] Launching Fail, "

    .line 738
    .line 739
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 750
    .line 751
    .line 752
    const/4 v2, -0x1

    .line 753
    :try_start_17
    invoke-virtual {v8, v2}, Landroid/app/ActivityOptions;->setMlLaunch(I)V

    .line 754
    .line 755
    .line 756
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 757
    .line 758
    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 760
    .line 761
    .line 762
    const/16 v3, -0x60

    .line 763
    .line 764
    return v3

    .line 765
    :goto_e
    :try_start_18
    invoke-virtual {v8, v2}, Landroid/app/ActivityOptions;->setMlLaunch(I)V

    .line 766
    .line 767
    .line 768
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 769
    .line 770
    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 772
    .line 773
    .line 774
    const/4 v1, 0x0

    .line 775
    return v1

    .line 776
    :cond_10
    const/16 v3, -0x60

    .line 777
    .line 778
    :try_start_19
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 779
    .line 780
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 781
    .line 782
    if-eqz v4, :cond_12

    .line 783
    .line 784
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v4

    .line 788
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 789
    .line 790
    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 791
    .line 792
    if-eqz v4, :cond_12

    .line 793
    .line 794
    if-eqz v5, :cond_12

    .line 795
    .line 796
    const-string v6, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    .line 797
    .line 798
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 799
    .line 800
    .line 801
    move-result v6

    .line 802
    if-nez v6, :cond_11

    .line 803
    .line 804
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    .line 805
    .line 806
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    move-result v6

    .line 810
    if-nez v6, :cond_11

    .line 811
    .line 812
    const-string v6, "android.intent.action.REBOOT"

    .line 813
    .line 814
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v6

    .line 818
    if-eqz v6, :cond_12

    .line 819
    .line 820
    :cond_11
    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    :cond_12
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 824
    .line 825
    if-eqz v4, :cond_14

    .line 826
    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->isExternalStartForSpeg()Z

    .line 828
    .line 829
    .line 830
    move-result v4
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 831
    if-eqz v4, :cond_13

    .line 832
    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 834
    .line 835
    .line 836
    const/16 v1, 0x66

    .line 837
    .line 838
    return v1

    .line 839
    :cond_13
    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->useSpegDisplayIfNeeded()V

    .line 840
    .line 841
    .line 842
    :cond_14
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 843
    .line 844
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 845
    .line 846
    if-eqz v4, :cond_19

    .line 847
    .line 848
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 849
    .line 850
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 851
    .line 852
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 853
    .line 854
    .line 855
    move-result v4

    .line 856
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 857
    .line 858
    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 859
    .line 860
    const/4 v6, -0x1

    .line 861
    if-ne v5, v6, :cond_15

    .line 862
    .line 863
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 864
    .line 865
    .line 866
    move-result v5

    .line 867
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 868
    .line 869
    .line 870
    move-result v5

    .line 871
    goto :goto_f

    .line 872
    :cond_15
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 873
    .line 874
    .line 875
    move-result v5

    .line 876
    :goto_f
    if-eq v5, v4, :cond_18

    .line 877
    .line 878
    if-nez v5, :cond_16

    .line 879
    .line 880
    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 881
    .line 882
    .line 883
    move-result v6

    .line 884
    if-nez v6, :cond_17

    .line 885
    .line 886
    :cond_16
    if-nez v4, :cond_18

    .line 887
    .line 888
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 889
    .line 890
    .line 891
    move-result v4

    .line 892
    if-eqz v4, :cond_18

    .line 893
    .line 894
    :cond_17
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 895
    .line 896
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 897
    .line 898
    invoke-static {v5, v4}, Lcom/android/server/DualAppManagerService;->changeUriForDualApp(ILandroid/content/Intent;)V

    .line 899
    .line 900
    .line 901
    :cond_18
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    .line 902
    .line 903
    .line 904
    move-result v4

    .line 905
    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 906
    .line 907
    .line 908
    move-result v4

    .line 909
    if-eqz v4, :cond_19

    .line 910
    .line 911
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 912
    .line 913
    .line 914
    move-result v4

    .line 915
    if-nez v4, :cond_19

    .line 916
    .line 917
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 918
    .line 919
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 920
    .line 921
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 922
    .line 923
    iget-object v5, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 924
    .line 925
    iget v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 926
    .line 927
    invoke-static {v4, v5}, Lcom/android/server/DualAppManagerService;->recordDaUsageCount(ILandroid/content/Intent;)V

    .line 928
    .line 929
    .line 930
    :cond_19
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 931
    .line 932
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 933
    .line 934
    if-eqz v4, :cond_1b

    .line 935
    .line 936
    const-string v5, "android.intent.action.DELETE"

    .line 937
    .line 938
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v4

    .line 942
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    move-result v4

    .line 946
    if-nez v4, :cond_1a

    .line 947
    .line 948
    const-string v4, "android.intent.action.UNINSTALL_PACKAGE"

    .line 949
    .line 950
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 951
    .line 952
    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 953
    .line 954
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v5

    .line 958
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 959
    .line 960
    .line 961
    move-result v4

    .line 962
    if-eqz v4, :cond_1b

    .line 963
    .line 964
    :cond_1a
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 965
    .line 966
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 967
    .line 968
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 969
    .line 970
    iget-object v6, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 971
    .line 972
    iget-object v7, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 973
    .line 974
    iget v8, v4, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 975
    .line 976
    iget-object v9, v4, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 977
    .line 978
    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/server/DualAppManagerService;->changeInfoIfDeletingDualApp(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ILjava/lang/String;)Landroid/content/pm/ActivityInfo;

    .line 979
    .line 980
    .line 981
    move-result-object v5

    .line 982
    iput-object v5, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 983
    .line 984
    :cond_1b
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 985
    .line 986
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 987
    .line 988
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 989
    .line 990
    .line 991
    monitor-enter v4
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 992
    :try_start_1b
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 993
    .line 994
    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 995
    .line 996
    if-eqz v5, :cond_1c

    .line 997
    .line 998
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 999
    .line 1000
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v5

    .line 1004
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1005
    .line 1006
    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 1007
    .line 1008
    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 1009
    .line 1010
    .line 1011
    move-result v5

    .line 1012
    if-eqz v5, :cond_1c

    .line 1013
    .line 1014
    const/4 v5, 0x1

    .line 1015
    goto :goto_10

    .line 1016
    :catchall_6
    move-exception v0

    .line 1017
    move-object v2, v0

    .line 1018
    goto/16 :goto_16

    .line 1019
    .line 1020
    :cond_1c
    const/4 v5, 0x0

    .line 1021
    :goto_10
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1022
    .line 1023
    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v6

    .line 1027
    if-eqz v6, :cond_1d

    .line 1028
    .line 1029
    iput-boolean v5, v6, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    .line 1030
    .line 1031
    :cond_1d
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    .line 1032
    .line 1033
    const/4 v8, 0x1

    .line 1034
    aget-boolean v9, v7, v8

    .line 1035
    .line 1036
    if-eqz v9, :cond_1e

    .line 1037
    .line 1038
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1039
    .line 1040
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v8

    .line 1044
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v17

    .line 1048
    const/4 v15, 0x3

    .line 1049
    const/16 v16, 0x0

    .line 1050
    .line 1051
    const-wide v13, 0x171dc0871351371bL

    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1057
    .line 1058
    .line 1059
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1060
    .line 1061
    .line 1062
    move-result-wide v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 1063
    :try_start_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->resolveToHeavyWeightSwitcherIfNeeded()I

    .line 1064
    .line 1065
    .line 1066
    move-result v14
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 1067
    if-eqz v14, :cond_1f

    .line 1068
    .line 1069
    :try_start_1d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1070
    .line 1071
    .line 1072
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1073
    .line 1074
    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    const-string v3, " result code="

    .line 1077
    .line 1078
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    .line 1084
    const-string v2, "ActivityTaskManager"

    .line 1085
    .line 1086
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1087
    .line 1088
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v3

    .line 1094
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    .line 1096
    .line 1097
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1098
    .line 1099
    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    const/4 v3, 0x0

    .line 1102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1103
    .line 1104
    .line 1105
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 1106
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 1110
    .line 1111
    .line 1112
    return v14

    .line 1113
    :cond_1f
    :try_start_1e
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1114
    .line 1115
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 1116
    .line 1117
    invoke-static {v3}, Lcom/android/server/am/Pageboost;->onAppLaunch(Landroid/content/Intent;)V

    .line 1118
    .line 1119
    .line 1120
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1121
    .line 1122
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStarter;->executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I

    .line 1123
    .line 1124
    .line 1125
    move-result v14

    .line 1126
    invoke-static {}, Lcom/android/server/am/Pageboost;->stopActiveLaunch()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 1127
    .line 1128
    .line 1129
    :try_start_1f
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1130
    .line 1131
    .line 1132
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1133
    .line 1134
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    const-string v8, " result code="

    .line 1137
    .line 1138
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1142
    .line 1143
    .line 1144
    const-string v3, "ActivityTaskManager"

    .line 1145
    .line 1146
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1147
    .line 1148
    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v8

    .line 1154
    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    .line 1156
    .line 1157
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1158
    .line 1159
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1160
    .line 1161
    const/4 v8, 0x0

    .line 1162
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1163
    .line 1164
    .line 1165
    if-eqz v5, :cond_22

    .line 1166
    .line 1167
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1168
    .line 1169
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1170
    .line 1171
    const-string v5, "android.permission.CHANGE_CONFIGURATION"

    .line 1172
    .line 1173
    const-string/jumbo v8, "updateConfiguration()"

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v3, v5, v8}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    .line 1178
    .line 1179
    if-eqz v6, :cond_20

    .line 1180
    .line 1181
    const/4 v3, 0x0

    .line 1182
    iput-boolean v3, v6, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    .line 1183
    .line 1184
    :cond_20
    const/4 v3, 0x1

    .line 1185
    aget-boolean v5, v7, v3

    .line 1186
    .line 1187
    if-eqz v5, :cond_21

    .line 1188
    .line 1189
    sget-object v20, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1190
    .line 1191
    const/16 v24, 0x0

    .line 1192
    .line 1193
    const/16 v25, 0x0

    .line 1194
    .line 1195
    const-wide v21, 0x41e4c7b09dde3f7aL    # 2.7890495829452486E9

    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    const/16 v23, 0x0

    .line 1201
    .line 1202
    invoke-static/range {v20 .. v25}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1203
    .line 1204
    .line 1205
    :cond_21
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1206
    .line 1207
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1208
    .line 1209
    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 1210
    .line 1211
    const/16 v7, -0x2710

    .line 1212
    .line 1213
    const/4 v8, 0x0

    .line 1214
    invoke-virtual {v5, v6, v8, v8, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;ZZI)Z

    .line 1215
    .line 1216
    .line 1217
    goto :goto_11

    .line 1218
    :cond_22
    const/4 v3, 0x1

    .line 1219
    :goto_11
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1220
    .line 1221
    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 1222
    .line 1223
    if-eqz v5, :cond_23

    .line 1224
    .line 1225
    iget-object v5, v5, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    .line 1226
    .line 1227
    move-object/from16 v20, v5

    .line 1228
    .line 1229
    goto :goto_12

    .line 1230
    :cond_23
    move-object/from16 v20, v11

    .line 1231
    .line 1232
    :goto_12
    iget-boolean v5, v1, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 1233
    .line 1234
    if-eqz v5, :cond_24

    .line 1235
    .line 1236
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1237
    .line 1238
    goto :goto_13

    .line 1239
    :cond_24
    move-object v5, v11

    .line 1240
    :goto_13
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1241
    .line 1242
    if-ne v6, v5, :cond_25

    .line 1243
    .line 1244
    move/from16 v18, v3

    .line 1245
    .line 1246
    goto :goto_14

    .line 1247
    :cond_25
    const/16 v18, 0x0

    .line 1248
    .line 1249
    :goto_14
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1250
    .line 1251
    iget-object v15, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 1252
    .line 1253
    move-object/from16 v16, v10

    .line 1254
    .line 1255
    move/from16 v17, v14

    .line 1256
    .line 1257
    move-object/from16 v19, v5

    .line 1258
    .line 1259
    invoke-virtual/range {v15 .. v20}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 1260
    .line 1261
    .line 1262
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1263
    .line 1264
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 1265
    .line 1266
    if-eqz v3, :cond_26

    .line 1267
    .line 1268
    iput v14, v3, Landroid/app/WaitResult;->result:I

    .line 1269
    .line 1270
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1271
    .line 1272
    invoke-virtual {v1, v3, v5, v10}, Lcom/android/server/wm/ActivityStarter;->waitResultIfNeeded(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)I

    .line 1273
    .line 1274
    .line 1275
    move-result v14

    .line 1276
    :cond_26
    invoke-static {v14}, Lcom/android/server/wm/ActivityStarter;->shouldWriteStartActivityDebugLog(I)Z

    .line 1277
    .line 1278
    .line 1279
    move-result v3

    .line 1280
    if-eqz v3, :cond_27

    .line 1281
    .line 1282
    const-string v3, "ActivityTaskManager"

    .line 1283
    .line 1284
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1287
    .line 1288
    .line 1289
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1290
    .line 1291
    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 1292
    .line 1293
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    .line 1295
    .line 1296
    const-string v2, ", result="

    .line 1297
    .line 1298
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v2

    .line 1308
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    .line 1310
    .line 1311
    :cond_27
    invoke-static {v14}, Lcom/android/server/wm/ActivityStarter;->getExternalResult(I)I

    .line 1312
    .line 1313
    .line 1314
    move-result v2

    .line 1315
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    .line 1316
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 1320
    .line 1321
    .line 1322
    return v2

    .line 1323
    :catchall_7
    move-exception v0

    .line 1324
    move-object v2, v0

    .line 1325
    goto :goto_15

    .line 1326
    :catchall_8
    move-exception v0

    .line 1327
    move-object v2, v0

    .line 1328
    move v14, v3

    .line 1329
    :goto_15
    :try_start_20
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1330
    .line 1331
    .line 1332
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1333
    .line 1334
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1335
    .line 1336
    const-string v5, " result code="

    .line 1337
    .line 1338
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1342
    .line 1343
    .line 1344
    const-string v3, "ActivityTaskManager"

    .line 1345
    .line 1346
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1347
    .line 1348
    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1349
    .line 1350
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v5

    .line 1354
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    .line 1356
    .line 1357
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1358
    .line 1359
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1360
    .line 1361
    const/4 v5, 0x0

    .line 1362
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1363
    .line 1364
    .line 1365
    throw v2

    .line 1366
    :goto_16
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    .line 1367
    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1368
    .line 1369
    .line 1370
    throw v2
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 1371
    :goto_17
    :try_start_22
    monitor-exit v8
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    .line 1372
    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1373
    .line 1374
    .line 1375
    throw v2
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 1376
    :goto_18
    :try_start_24
    const-string v3, "ActivityTaskManager"

    .line 1377
    .line 1378
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1379
    .line 1380
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1381
    .line 1382
    .line 1383
    const-string/jumbo v5, "startActivity: reason="

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    .line 1388
    .line 1389
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1390
    .line 1391
    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 1392
    .line 1393
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v4

    .line 1400
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1401
    .line 1402
    .line 1403
    throw v2

    .line 1404
    :catchall_9
    move-exception v0

    .line 1405
    move-object v2, v0

    .line 1406
    goto :goto_1a

    .line 1407
    :goto_19
    throw v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    .line 1408
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 1409
    .line 1410
    .line 1411
    throw v2
.end method

.method public final executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I
    .locals 90

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    const-string v9, "PackageArchiverService"

    .line 6
    .line 7
    const-string/jumbo v1, "unknown"

    .line 8
    .line 9
    .line 10
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_7c

    .line 17
    .line 18
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    iput-wide v2, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 27
    .line 28
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 29
    .line 30
    iget-object v7, v14, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 31
    .line 32
    iget-object v6, v14, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 33
    .line 34
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v4, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 37
    .line 38
    iget-object v3, v14, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 39
    .line 40
    iget-object v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 41
    .line 42
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 43
    .line 44
    iget-object v8, v14, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 45
    .line 46
    iget v11, v14, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 47
    .line 48
    iget v12, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 49
    .line 50
    iget v15, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 51
    .line 52
    move-object/from16 v17, v8

    .line 53
    .line 54
    iget-object v8, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 55
    .line 56
    move-object/from16 v18, v8

    .line 57
    .line 58
    iget-object v8, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 59
    .line 60
    move/from16 v19, v15

    .line 61
    .line 62
    iget v15, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 63
    .line 64
    move-object/from16 v20, v8

    .line 65
    .line 66
    iget v8, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 67
    .line 68
    move-object/from16 v32, v10

    .line 69
    .line 70
    iget v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 71
    .line 72
    move/from16 v33, v10

    .line 73
    .line 74
    iget-object v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 75
    .line 76
    move-object/from16 v21, v9

    .line 77
    .line 78
    iget-object v9, v14, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 79
    .line 80
    move-object/from16 v44, v9

    .line 81
    .line 82
    iget-object v9, v14, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 83
    .line 84
    move-object/from16 v22, v1

    .line 85
    .line 86
    if-eqz v10, :cond_1

    .line 87
    .line 88
    iget-object v1, v10, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    .line 89
    .line 90
    if-eqz v1, :cond_0

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    goto :goto_0

    .line 97
    :cond_0
    const/4 v1, 0x0

    .line 98
    :goto_0
    move-object/from16 v45, v1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    const/16 v45, 0x0

    .line 102
    .line 103
    :goto_1
    const-string v1, "ActivityTaskManager"

    .line 104
    .line 105
    move-object/from16 v23, v3

    .line 106
    .line 107
    if-eqz v2, :cond_3

    .line 108
    .line 109
    iget-object v3, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 110
    .line 111
    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    iget v12, v3, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 118
    .line 119
    iget-object v2, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 120
    .line 121
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 122
    .line 123
    move-object/from16 v25, v5

    .line 124
    .line 125
    move/from16 v46, v12

    .line 126
    .line 127
    move v5, v2

    .line 128
    move-object v12, v3

    .line 129
    const/4 v2, 0x0

    .line 130
    goto :goto_2

    .line 131
    :cond_2
    move-object/from16 v24, v3

    .line 132
    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    move-object/from16 v25, v5

    .line 136
    .line 137
    const-string v5, "Unable to find app for caller "

    .line 138
    .line 139
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v2, " (pid="

    .line 146
    .line 147
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, ") when starting: "

    .line 154
    .line 155
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move/from16 v46, v12

    .line 173
    .line 174
    move/from16 v5, v19

    .line 175
    .line 176
    move-object/from16 v12, v24

    .line 177
    .line 178
    const/16 v2, -0x5e

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_3
    move-object/from16 v25, v5

    .line 182
    .line 183
    move/from16 v46, v12

    .line 184
    .line 185
    move/from16 v5, v19

    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    const/4 v12, 0x0

    .line 189
    :goto_2
    const-string v3, ""

    .line 190
    .line 191
    if-nez v2, :cond_5

    .line 192
    .line 193
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 194
    .line 195
    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 199
    .line 200
    .line 201
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    if-eqz v2, :cond_4

    .line 203
    .line 204
    :try_start_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    :cond_4
    move-object/from16 v19, v2

    .line 209
    .line 210
    move-object/from16 v22, v3

    .line 211
    .line 212
    move-object v3, v1

    .line 213
    goto :goto_3

    .line 214
    :catch_0
    const/4 v2, 0x0

    .line 215
    :catch_1
    move-object v3, v1

    .line 216
    move-object/from16 v19, v2

    .line 217
    .line 218
    :goto_3
    move-object/from16 v1, p0

    .line 219
    .line 220
    move-object v2, v7

    .line 221
    move-object/from16 v48, v9

    .line 222
    .line 223
    move-object/from16 v47, v23

    .line 224
    .line 225
    move-object v9, v3

    .line 226
    move-object v3, v4

    .line 227
    move-object/from16 v49, v9

    .line 228
    .line 229
    move-object v9, v4

    .line 230
    move v4, v15

    .line 231
    move/from16 v23, v11

    .line 232
    .line 233
    move-object/from16 v50, v25

    .line 234
    .line 235
    move v11, v5

    .line 236
    move-object v5, v10

    .line 237
    move-object/from16 v51, v6

    .line 238
    .line 239
    move-object/from16 v6, v19

    .line 240
    .line 241
    move-object/from16 v34, v10

    .line 242
    .line 243
    move-object v10, v7

    .line 244
    move-object/from16 v7, v22

    .line 245
    .line 246
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILcom/android/server/wm/SafeActivityOptions;Landroid/content/ComponentName;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    move-object/from16 v3, v22

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_5
    move-object/from16 v49, v1

    .line 254
    .line 255
    move-object/from16 v51, v6

    .line 256
    .line 257
    move-object/from16 v48, v9

    .line 258
    .line 259
    move-object/from16 v34, v10

    .line 260
    .line 261
    move-object/from16 v47, v23

    .line 262
    .line 263
    move-object/from16 v50, v25

    .line 264
    .line 265
    move-object v9, v4

    .line 266
    move-object v10, v7

    .line 267
    move/from16 v23, v11

    .line 268
    .line 269
    move v11, v5

    .line 270
    :goto_4
    if-eqz v9, :cond_6

    .line 271
    .line 272
    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 273
    .line 274
    if-eqz v1, :cond_6

    .line 275
    .line 276
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 277
    .line 278
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    move v7, v1

    .line 283
    goto :goto_5

    .line 284
    :cond_6
    const/4 v7, 0x0

    .line 285
    :goto_5
    if-eqz v9, :cond_7

    .line 286
    .line 287
    iget v1, v9, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_7
    const/4 v1, 0x0

    .line 291
    :goto_6
    const-string v4, ")"

    .line 292
    .line 293
    if-nez v2, :cond_e

    .line 294
    .line 295
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string v6, "START u"

    .line 298
    .line 299
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string v6, " {"

    .line 306
    .line 307
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    move-object/from16 v52, v3

    .line 311
    .line 312
    move/from16 v65, v7

    .line 313
    .line 314
    const/4 v3, 0x1

    .line 315
    const/4 v6, 0x0

    .line 316
    invoke-virtual {v10, v3, v3, v3, v6}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string/jumbo v3, "} with "

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->launchModeToString(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v1, " from uid "

    .line 337
    .line 338
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    if-eq v11, v8, :cond_8

    .line 345
    .line 346
    const/4 v1, -0x1

    .line 347
    if-eq v8, v1, :cond_8

    .line 348
    .line 349
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v3, " (realCallingUid="

    .line 352
    .line 353
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    :cond_8
    const-string v1, "knoxmtd.analysis.features"

    .line 363
    .line 364
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    if-eqz v1, :cond_f

    .line 369
    .line 370
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    if-nez v3, :cond_f

    .line 375
    .line 376
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    const/4 v3, 0x1

    .line 381
    and-int/2addr v1, v3

    .line 382
    if-ne v1, v3, :cond_f

    .line 383
    .line 384
    invoke-virtual {v10}, Landroid/content/Intent;->isWebIntent()Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-eqz v1, :cond_f

    .line 389
    .line 390
    const-string v1, "SKIP_KFBP_CHECK"

    .line 391
    .line 392
    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    if-eqz v1, :cond_f

    .line 397
    .line 398
    sget-object v1, Lcom/android/server/wm/ActivityStarter;->mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

    .line 399
    .line 400
    if-nez v1, :cond_9

    .line 401
    .line 402
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 403
    .line 404
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 405
    .line 406
    const-string v3, "knox.mtd"

    .line 407
    .line 408
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    check-cast v1, Lcom/samsung/android/knox/mtd/KMTDManager;

    .line 413
    .line 414
    sput-object v1, Lcom/android/server/wm/ActivityStarter;->mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

    .line 415
    .line 416
    :cond_9
    invoke-virtual {v10}, Landroid/content/Intent;->isWebIntent()Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-eqz v1, :cond_c

    .line 421
    .line 422
    if-nez v12, :cond_a

    .line 423
    .line 424
    if-lez v15, :cond_a

    .line 425
    .line 426
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 427
    .line 428
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 429
    .line 430
    invoke-virtual {v1, v15}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    if-eqz v1, :cond_a

    .line 435
    .line 436
    goto :goto_7

    .line 437
    :cond_a
    move-object v1, v12

    .line 438
    :goto_7
    if-eqz v1, :cond_b

    .line 439
    .line 440
    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 441
    .line 442
    goto :goto_8

    .line 443
    :cond_b
    move-object/from16 v1, v18

    .line 444
    .line 445
    goto :goto_8

    .line 446
    :cond_c
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 447
    .line 448
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 449
    .line 450
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 451
    .line 452
    :goto_8
    invoke-virtual {v10}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    const-string v5, "[Reactive] Validating url for "

    .line 457
    .line 458
    const-string v6, "ActivityTaskManager[KnoxAIMTD]"

    .line 459
    .line 460
    invoke-static {v5, v1, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    sget-object v5, Lcom/android/server/wm/ActivityStarter;->prevReactiveUrl:Ljava/lang/String;

    .line 464
    .line 465
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v5

    .line 469
    if-eqz v5, :cond_d

    .line 470
    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 472
    .line 473
    .line 474
    move-result-wide v24

    .line 475
    sget-wide v26, Lcom/android/server/wm/ActivityStarter;->prevReactiveTime:J

    .line 476
    .line 477
    sub-long v24, v24, v26

    .line 478
    .line 479
    sget-wide v26, Lcom/android/server/wm/ActivityStarter;->REACTIVE_COOLDOWN_TIME:J

    .line 480
    .line 481
    cmp-long v5, v24, v26

    .line 482
    .line 483
    if-gez v5, :cond_d

    .line 484
    .line 485
    const-string v1, "Already analyzed the url"

    .line 486
    .line 487
    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    goto :goto_9

    .line 491
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 492
    .line 493
    .line 494
    move-result-wide v5

    .line 495
    sput-wide v5, Lcom/android/server/wm/ActivityStarter;->prevReactiveTime:J

    .line 496
    .line 497
    sput-object v3, Lcom/android/server/wm/ActivityStarter;->prevReactiveUrl:Ljava/lang/String;

    .line 498
    .line 499
    sget-object v5, Lcom/android/server/wm/ActivityStarter;->mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

    .line 500
    .line 501
    invoke-virtual {v5, v3, v1, v10, v8}, Lcom/samsung/android/knox/mtd/KMTDManager;->analyzeUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 502
    .line 503
    .line 504
    goto :goto_9

    .line 505
    :cond_e
    move-object/from16 v52, v3

    .line 506
    .line 507
    move/from16 v65, v7

    .line 508
    .line 509
    :cond_f
    :goto_9
    if-eqz v0, :cond_11

    .line 510
    .line 511
    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    if-eqz v0, :cond_10

    .line 516
    .line 517
    if-ltz v23, :cond_10

    .line 518
    .line 519
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 520
    .line 521
    if-nez v1, :cond_10

    .line 522
    .line 523
    move-object v7, v0

    .line 524
    goto :goto_a

    .line 525
    :cond_10
    move-object v7, v0

    .line 526
    const/4 v0, 0x0

    .line 527
    goto :goto_a

    .line 528
    :cond_11
    const/4 v0, 0x0

    .line 529
    const/4 v7, 0x0

    .line 530
    :goto_a
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    const/high16 v3, 0x2000000

    .line 535
    .line 536
    and-int/2addr v3, v1

    .line 537
    if-eqz v3, :cond_16

    .line 538
    .line 539
    if-eqz v7, :cond_16

    .line 540
    .line 541
    if-ltz v23, :cond_12

    .line 542
    .line 543
    invoke-static/range {v34 .. v34}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 544
    .line 545
    .line 546
    const/16 v0, -0x5d

    .line 547
    .line 548
    return v0

    .line 549
    :cond_12
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 550
    .line 551
    if-eqz v0, :cond_13

    .line 552
    .line 553
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    if-nez v3, :cond_13

    .line 558
    .line 559
    const/4 v0, 0x0

    .line 560
    :cond_13
    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 561
    .line 562
    iget v5, v7, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 563
    .line 564
    const/4 v6, 0x0

    .line 565
    iput-object v6, v7, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 566
    .line 567
    if-eqz v0, :cond_14

    .line 568
    .line 569
    invoke-virtual {v0, v7, v3, v5}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 570
    .line 571
    .line 572
    :cond_14
    iget v6, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 573
    .line 574
    if-ne v6, v11, :cond_15

    .line 575
    .line 576
    iget-object v6, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 577
    .line 578
    move-object/from16 v17, v0

    .line 579
    .line 580
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 581
    .line 582
    move-object/from16 v78, v3

    .line 583
    .line 584
    move/from16 v79, v5

    .line 585
    .line 586
    move-object/from16 v77, v17

    .line 587
    .line 588
    move-object v5, v0

    .line 589
    goto :goto_b

    .line 590
    :cond_15
    move-object/from16 v17, v0

    .line 591
    .line 592
    move-object/from16 v78, v3

    .line 593
    .line 594
    move/from16 v79, v5

    .line 595
    .line 596
    move-object/from16 v77, v17

    .line 597
    .line 598
    move-object/from16 v6, v18

    .line 599
    .line 600
    move-object/from16 v5, v20

    .line 601
    .line 602
    goto :goto_b

    .line 603
    :cond_16
    move-object/from16 v77, v0

    .line 604
    .line 605
    move-object/from16 v78, v17

    .line 606
    .line 607
    move-object/from16 v6, v18

    .line 608
    .line 609
    move-object/from16 v5, v20

    .line 610
    .line 611
    move/from16 v79, v23

    .line 612
    .line 613
    :goto_b
    if-nez v2, :cond_17

    .line 614
    .line 615
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    if-nez v0, :cond_17

    .line 620
    .line 621
    const/16 v2, -0x5b

    .line 622
    .line 623
    :cond_17
    if-nez v2, :cond_2f

    .line 624
    .line 625
    if-nez v9, :cond_2f

    .line 626
    .line 627
    sget-object v0, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    .line 628
    .line 629
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->archiving()Z

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    if-eqz v0, :cond_2e

    .line 634
    .line 635
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 636
    .line 637
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 642
    .line 643
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 644
    .line 645
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 646
    .line 647
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 648
    .line 649
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 650
    .line 651
    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 652
    .line 653
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v10}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v3

    .line 660
    if-eqz v3, :cond_18

    .line 661
    .line 662
    invoke-virtual {v10}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    goto :goto_c

    .line 667
    :cond_18
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    if-eqz v3, :cond_19

    .line 672
    .line 673
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    goto :goto_c

    .line 682
    :cond_19
    const/4 v3, 0x0

    .line 683
    :goto_c
    if-eqz v3, :cond_2e

    .line 684
    .line 685
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 686
    .line 687
    .line 688
    move-result-object v17

    .line 689
    if-nez v17, :cond_1a

    .line 690
    .line 691
    goto/16 :goto_1a

    .line 692
    .line 693
    :cond_1a
    move-object/from16 v35, v4

    .line 694
    .line 695
    iget-object v4, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 696
    .line 697
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 698
    .line 699
    .line 700
    move-result-object v4

    .line 701
    invoke-interface {v4, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 702
    .line 703
    .line 704
    move-result-object v4

    .line 705
    if-nez v4, :cond_1b

    .line 706
    .line 707
    :goto_d
    goto/16 :goto_1b

    .line 708
    .line 709
    :cond_1b
    invoke-interface {v4, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 710
    .line 711
    .line 712
    move-result-object v2

    .line 713
    invoke-static {v2}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    .line 714
    .line 715
    .line 716
    move-result v4

    .line 717
    if-nez v4, :cond_1c

    .line 718
    .line 719
    goto :goto_d

    .line 720
    :cond_1c
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    iget-object v2, v2, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    .line 725
    .line 726
    move/from16 v66, v15

    .line 727
    .line 728
    const/4 v4, 0x0

    .line 729
    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 730
    .line 731
    .line 732
    move-result v15

    .line 733
    if-ge v4, v15, :cond_2d

    .line 734
    .line 735
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v15

    .line 739
    check-cast v15, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 740
    .line 741
    iget-object v15, v15, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mOriginalComponentName:Landroid/content/ComponentName;

    .line 742
    .line 743
    move-object/from16 v17, v2

    .line 744
    .line 745
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    invoke-virtual {v15, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    move-result v2

    .line 753
    if-eqz v2, :cond_2c

    .line 754
    .line 755
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 756
    .line 757
    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 758
    .line 759
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 760
    .line 761
    .line 762
    if-nez v10, :cond_1e

    .line 763
    .line 764
    :cond_1d
    const/4 v3, 0x0

    .line 765
    goto :goto_f

    .line 766
    :cond_1e
    invoke-virtual {v10}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v3

    .line 770
    if-eqz v3, :cond_1f

    .line 771
    .line 772
    invoke-virtual {v10}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v3

    .line 776
    goto :goto_f

    .line 777
    :cond_1f
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 778
    .line 779
    .line 780
    move-result-object v3

    .line 781
    if-eqz v3, :cond_1d

    .line 782
    .line 783
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v3

    .line 791
    :goto_f
    if-nez v3, :cond_20

    .line 792
    .line 793
    const-string/jumbo v0, "packageName cannot be null for unarchival!"

    .line 794
    .line 795
    .line 796
    move-object/from16 v15, v21

    .line 797
    .line 798
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    .line 800
    .line 801
    :goto_10
    move-object/from16 v68, v5

    .line 802
    .line 803
    move/from16 v53, v11

    .line 804
    .line 805
    move-object/from16 v67, v12

    .line 806
    .line 807
    const/16 v0, -0x5c

    .line 808
    .line 809
    goto/16 :goto_19

    .line 810
    .line 811
    :cond_20
    move-object/from16 v15, v21

    .line 812
    .line 813
    if-nez v6, :cond_21

    .line 814
    .line 815
    const-string v0, "callerPackageName cannot be null for unarchival!"

    .line 816
    .line 817
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .line 819
    .line 820
    goto :goto_10

    .line 821
    :cond_21
    iget-object v4, v0, Lcom/android/server/pm/PackageArchiver;->mUserManager:Landroid/os/UserManager;

    .line 822
    .line 823
    if-nez v4, :cond_22

    .line 824
    .line 825
    iget-object v4, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 826
    .line 827
    move-object/from16 v67, v12

    .line 828
    .line 829
    const-class v12, Landroid/os/UserManager;

    .line 830
    .line 831
    invoke-virtual {v4, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v4

    .line 835
    check-cast v4, Landroid/os/UserManager;

    .line 836
    .line 837
    iput-object v4, v0, Lcom/android/server/pm/PackageArchiver;->mUserManager:Landroid/os/UserManager;

    .line 838
    .line 839
    goto :goto_11

    .line 840
    :cond_22
    move-object/from16 v67, v12

    .line 841
    .line 842
    :goto_11
    iget-object v4, v0, Lcom/android/server/pm/PackageArchiver;->mUserManager:Landroid/os/UserManager;

    .line 843
    .line 844
    invoke-virtual {v4, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 845
    .line 846
    .line 847
    move-result-object v4

    .line 848
    if-nez v4, :cond_23

    .line 849
    .line 850
    move v4, v2

    .line 851
    goto :goto_12

    .line 852
    :cond_23
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 853
    .line 854
    :goto_12
    iget-object v12, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 855
    .line 856
    move-object/from16 v68, v5

    .line 857
    .line 858
    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 859
    .line 860
    .line 861
    move-result-object v5

    .line 862
    invoke-interface {v5, v4}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    .line 863
    .line 864
    .line 865
    move-result-object v4

    .line 866
    if-eqz v4, :cond_24

    .line 867
    .line 868
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v4

    .line 872
    goto :goto_13

    .line 873
    :cond_24
    const/4 v4, 0x0

    .line 874
    :goto_13
    if-eqz v4, :cond_25

    .line 875
    .line 876
    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 877
    .line 878
    .line 879
    move-result v4

    .line 880
    if-nez v4, :cond_26

    .line 881
    .line 882
    :cond_25
    const/16 v4, 0x7d0

    .line 883
    .line 884
    if-eq v8, v4, :cond_26

    .line 885
    .line 886
    const-string v0, "callerPackageName: %s does not qualify for unarchival of package: %s!"

    .line 887
    .line 888
    filled-new-array {v6, v3}, [Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    invoke-static {v0, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    .line 898
    .line 899
    move/from16 v53, v11

    .line 900
    .line 901
    const/16 v0, -0x5e

    .line 902
    .line 903
    goto/16 :goto_19

    .line 904
    .line 905
    :cond_26
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/pm/PackageArchiver;->getAppOpsManager()Landroid/app/AppOpsManager;

    .line 906
    .line 907
    .line 908
    move-result-object v4

    .line 909
    const/16 v5, 0x92

    .line 910
    .line 911
    invoke-virtual {v4, v5, v8, v6}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    .line 912
    .line 913
    .line 914
    move-result v4

    .line 915
    if-nez v4, :cond_29

    .line 916
    .line 917
    iget-object v4, v12, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 918
    .line 919
    invoke-virtual {v4, v2}, Lcom/android/server/pm/PackageInstallerService;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    .line 920
    .line 921
    .line 922
    move-result-object v4

    .line 923
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 924
    .line 925
    .line 926
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 927
    move/from16 v53, v11

    .line 928
    .line 929
    const/4 v5, 0x0

    .line 930
    :goto_14
    :try_start_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 931
    .line 932
    .line 933
    move-result v11

    .line 934
    if-ge v5, v11, :cond_28

    .line 935
    .line 936
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    move-result-object v11

    .line 940
    check-cast v11, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 941
    .line 942
    move-object/from16 v17, v4

    .line 943
    .line 944
    iget-object v4, v11, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 945
    .line 946
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 947
    .line 948
    .line 949
    move-result v4

    .line 950
    if-eqz v4, :cond_27

    .line 951
    .line 952
    iget v4, v11, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    .line 953
    .line 954
    if-ne v4, v2, :cond_27

    .line 955
    .line 956
    iget-boolean v4, v11, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    .line 957
    .line 958
    if-eqz v4, :cond_27

    .line 959
    .line 960
    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionInfo;->isUnarchival()Z

    .line 961
    .line 962
    .line 963
    move-result v4

    .line 964
    if-eqz v4, :cond_27

    .line 965
    .line 966
    goto :goto_15

    .line 967
    :cond_27
    const/4 v4, 0x1

    .line 968
    add-int/2addr v5, v4

    .line 969
    move-object/from16 v4, v17

    .line 970
    .line 971
    goto :goto_14

    .line 972
    :cond_28
    const/4 v11, 0x0

    .line 973
    :goto_15
    if-eqz v11, :cond_2a

    .line 974
    .line 975
    iget-object v2, v12, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 976
    .line 977
    new-instance v4, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;

    .line 978
    .line 979
    invoke-direct {v4, v0, v3, v11}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    .line 980
    .line 981
    .line 982
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 983
    .line 984
    .line 985
    :goto_16
    const/16 v0, 0x66

    .line 986
    .line 987
    goto :goto_19

    .line 988
    :catchall_0
    move-exception v0

    .line 989
    goto :goto_18

    .line 990
    :cond_29
    move/from16 v53, v11

    .line 991
    .line 992
    :cond_2a
    const-string v4, "Unarchival is starting for: %s"

    .line 993
    .line 994
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 995
    .line 996
    .line 997
    move-result-object v5

    .line 998
    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v4

    .line 1002
    invoke-static {v15, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageArchiver;->getOrCreateLauncherListener(ILjava/lang/String;)Landroid/content/IntentSender;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v25

    .line 1009
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v26

    .line 1013
    invoke-virtual {v0}, Lcom/android/server/pm/PackageArchiver;->getAppOpsManager()Landroid/app/AppOpsManager;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v2

    .line 1017
    const/16 v4, 0x92

    .line 1018
    .line 1019
    invoke-virtual {v2, v4, v8, v6}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    .line 1020
    .line 1021
    .line 1022
    move-result v2

    .line 1023
    if-nez v2, :cond_2b

    .line 1024
    .line 1025
    const/16 v27, 0x1

    .line 1026
    .line 1027
    goto :goto_17

    .line 1028
    :cond_2b
    const/16 v27, 0x0

    .line 1029
    .line 1030
    :goto_17
    move-object/from16 v22, v0

    .line 1031
    .line 1032
    move-object/from16 v23, v3

    .line 1033
    .line 1034
    move-object/from16 v24, v6

    .line 1035
    .line 1036
    invoke-virtual/range {v22 .. v27}, Lcom/android/server/pm/PackageArchiver;->requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1037
    .line 1038
    .line 1039
    goto :goto_16

    .line 1040
    :catchall_1
    move-exception v0

    .line 1041
    move/from16 v53, v11

    .line 1042
    .line 1043
    :goto_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v0

    .line 1051
    const-string v2, "Unexpected error occurred while unarchiving package %s: %s."

    .line 1052
    .line 1053
    invoke-static {v2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    .line 1059
    .line 1060
    goto :goto_16

    .line 1061
    :goto_19
    move v2, v0

    .line 1062
    goto :goto_1d

    .line 1063
    :cond_2c
    move-object/from16 v68, v5

    .line 1064
    .line 1065
    move/from16 v53, v11

    .line 1066
    .line 1067
    move-object/from16 v67, v12

    .line 1068
    .line 1069
    move-object/from16 v15, v21

    .line 1070
    .line 1071
    const/4 v2, 0x1

    .line 1072
    add-int/2addr v4, v2

    .line 1073
    move-object/from16 v2, v17

    .line 1074
    .line 1075
    goto/16 :goto_e

    .line 1076
    .line 1077
    :cond_2d
    move-object/from16 v68, v5

    .line 1078
    .line 1079
    move/from16 v53, v11

    .line 1080
    .line 1081
    move-object/from16 v67, v12

    .line 1082
    .line 1083
    move-object/from16 v15, v21

    .line 1084
    .line 1085
    const-string v0, "Package: %s is archived but component to start main activity cannot be found!"

    .line 1086
    .line 1087
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v2

    .line 1091
    invoke-static {v0, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v0

    .line 1095
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    .line 1097
    .line 1098
    goto :goto_1c

    .line 1099
    :cond_2e
    :goto_1a
    move-object/from16 v35, v4

    .line 1100
    .line 1101
    :goto_1b
    move-object/from16 v68, v5

    .line 1102
    .line 1103
    move/from16 v53, v11

    .line 1104
    .line 1105
    move-object/from16 v67, v12

    .line 1106
    .line 1107
    move/from16 v66, v15

    .line 1108
    .line 1109
    :goto_1c
    const/16 v2, -0x5c

    .line 1110
    .line 1111
    goto :goto_1d

    .line 1112
    :cond_2f
    move-object/from16 v35, v4

    .line 1113
    .line 1114
    move-object/from16 v68, v5

    .line 1115
    .line 1116
    move/from16 v53, v11

    .line 1117
    .line 1118
    move-object/from16 v67, v12

    .line 1119
    .line 1120
    move/from16 v66, v15

    .line 1121
    .line 1122
    :goto_1d
    const-string v3, "Failure checking voice capabilities"

    .line 1123
    .line 1124
    const/16 v4, -0x61

    .line 1125
    .line 1126
    if-nez v2, :cond_31

    .line 1127
    .line 1128
    if-eqz v7, :cond_31

    .line 1129
    .line 1130
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1131
    .line 1132
    iget-object v0, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1133
    .line 1134
    if-eqz v0, :cond_31

    .line 1135
    .line 1136
    const/high16 v0, 0x10000000

    .line 1137
    .line 1138
    and-int/2addr v0, v1

    .line 1139
    if-nez v0, :cond_31

    .line 1140
    .line 1141
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1142
    .line 1143
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1144
    .line 1145
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1146
    .line 1147
    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1148
    .line 1149
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1150
    .line 1151
    if-eq v0, v1, :cond_31

    .line 1152
    .line 1153
    :try_start_4
    const-string v0, "android.intent.category.VOICE"

    .line 1154
    .line 1155
    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1156
    .line 1157
    .line 1158
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1159
    .line 1160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1161
    .line 1162
    .line 1163
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1171
    move-object/from16 v5, v50

    .line 1172
    .line 1173
    move/from16 v11, v65

    .line 1174
    .line 1175
    :try_start_5
    invoke-interface {v0, v1, v10, v5, v11}, Landroid/content/pm/IPackageManager;->activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z

    .line 1176
    .line 1177
    .line 1178
    move-result v0

    .line 1179
    if-nez v0, :cond_30

    .line 1180
    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1182
    .line 1183
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1184
    .line 1185
    .line 1186
    const-string v1, "Activity being started in current voice task does not support voice: "

    .line 1187
    .line 1188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1198
    move-object/from16 v12, v49

    .line 1199
    .line 1200
    :try_start_6
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1201
    .line 1202
    .line 1203
    goto :goto_1f

    .line 1204
    :catch_2
    move-exception v0

    .line 1205
    goto :goto_1e

    .line 1206
    :catch_3
    move-exception v0

    .line 1207
    move-object/from16 v12, v49

    .line 1208
    .line 1209
    goto :goto_1e

    .line 1210
    :cond_30
    move-object/from16 v12, v49

    .line 1211
    .line 1212
    goto :goto_20

    .line 1213
    :catch_4
    move-exception v0

    .line 1214
    move-object/from16 v12, v49

    .line 1215
    .line 1216
    move-object/from16 v5, v50

    .line 1217
    .line 1218
    move/from16 v11, v65

    .line 1219
    .line 1220
    :goto_1e
    invoke-static {v12, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1221
    .line 1222
    .line 1223
    :goto_1f
    move v2, v4

    .line 1224
    goto :goto_20

    .line 1225
    :cond_31
    move-object/from16 v12, v49

    .line 1226
    .line 1227
    move-object/from16 v5, v50

    .line 1228
    .line 1229
    move/from16 v11, v65

    .line 1230
    .line 1231
    :goto_20
    if-nez v2, :cond_32

    .line 1232
    .line 1233
    if-eqz v32, :cond_32

    .line 1234
    .line 1235
    :try_start_7
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1236
    .line 1237
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1238
    .line 1239
    .line 1240
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v1

    .line 1248
    invoke-interface {v0, v1, v10, v5, v11}, Landroid/content/pm/IPackageManager;->activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z

    .line 1249
    .line 1250
    .line 1251
    move-result v0

    .line 1252
    if-nez v0, :cond_32

    .line 1253
    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1257
    .line 1258
    .line 1259
    const-string v1, "Activity being started in new voice task does not support: "

    .line 1260
    .line 1261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v0

    .line 1271
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1272
    .line 1273
    .line 1274
    goto :goto_21

    .line 1275
    :catch_5
    move-exception v0

    .line 1276
    invoke-static {v12, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1277
    .line 1278
    .line 1279
    goto :goto_21

    .line 1280
    :cond_32
    move v4, v2

    .line 1281
    :goto_21
    if-nez v77, :cond_33

    .line 1282
    .line 1283
    goto :goto_22

    .line 1284
    :cond_33
    invoke-virtual/range {v77 .. v77}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 1285
    .line 1286
    .line 1287
    :goto_22
    const-string v0, "Start activity "

    .line 1288
    .line 1289
    if-eqz v4, :cond_35

    .line 1290
    .line 1291
    if-eqz v77, :cond_34

    .line 1292
    .line 1293
    const/16 v41, 0x0

    .line 1294
    .line 1295
    const/16 v42, 0x0

    .line 1296
    .line 1297
    const/16 v36, -0x1

    .line 1298
    .line 1299
    const/16 v39, 0x0

    .line 1300
    .line 1301
    const/16 v40, 0x0

    .line 1302
    .line 1303
    const/16 v43, 0x0

    .line 1304
    .line 1305
    move-object/from16 v35, v77

    .line 1306
    .line 1307
    move-object/from16 v37, v78

    .line 1308
    .line 1309
    move/from16 v38, v79

    .line 1310
    .line 1311
    invoke-virtual/range {v35 .. v43}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 1312
    .line 1313
    .line 1314
    :cond_34
    invoke-static/range {v34 .. v34}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1315
    .line 1316
    .line 1317
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 1318
    .line 1319
    .line 1320
    move-result v38

    .line 1321
    const-string v1, " failed"

    .line 1322
    .line 1323
    move-object/from16 v3, v52

    .line 1324
    .line 1325
    invoke-static {v0, v3, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v40

    .line 1329
    const/16 v37, 0x0

    .line 1330
    .line 1331
    const-string v39, "ActivityStarter"

    .line 1332
    .line 1333
    const/16 v35, 0x5

    .line 1334
    .line 1335
    const/16 v36, 0x5

    .line 1336
    .line 1337
    const-string v41, ""

    .line 1338
    .line 1339
    move/from16 v42, v11

    .line 1340
    .line 1341
    invoke-static/range {v35 .. v42}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1342
    .line 1343
    .line 1344
    return v4

    .line 1345
    :cond_35
    move-object/from16 v3, v52

    .line 1346
    .line 1347
    :try_start_8
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1348
    .line 1349
    iget-boolean v2, v14, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 1350
    .line 1351
    if-eqz v44, :cond_36

    .line 1352
    .line 1353
    const/16 v26, 0x1

    .line 1354
    .line 1355
    goto :goto_23

    .line 1356
    :cond_36
    const/16 v26, 0x0

    .line 1357
    .line 1358
    :goto_23
    move-object/from16 v16, v1

    .line 1359
    .line 1360
    move-object/from16 v17, v10

    .line 1361
    .line 1362
    move-object/from16 v18, v9

    .line 1363
    .line 1364
    move-object/from16 v19, v78

    .line 1365
    .line 1366
    move/from16 v20, v79

    .line 1367
    .line 1368
    move/from16 v21, v46

    .line 1369
    .line 1370
    move/from16 v22, v53

    .line 1371
    .line 1372
    move-object/from16 v23, v6

    .line 1373
    .line 1374
    move-object/from16 v24, v68

    .line 1375
    .line 1376
    move/from16 v25, v2

    .line 1377
    .line 1378
    move-object/from16 v27, v67

    .line 1379
    .line 1380
    move-object/from16 v28, v77

    .line 1381
    .line 1382
    invoke-virtual/range {v16 .. v28}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z

    .line 1383
    .line 1384
    .line 1385
    move-result v1
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1386
    const/4 v2, 0x1

    .line 1387
    xor-int/2addr v1, v2

    .line 1388
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1389
    .line 1390
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    .line 1391
    .line 1392
    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1393
    .line 1394
    iget-object v15, v2, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 1395
    .line 1396
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v18

    .line 1400
    const/16 v19, 0x0

    .line 1401
    .line 1402
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1403
    .line 1404
    move-object/from16 v16, v2

    .line 1405
    .line 1406
    move-object/from16 v17, v15

    .line 1407
    .line 1408
    move-object/from16 v20, v10

    .line 1409
    .line 1410
    move/from16 v21, v53

    .line 1411
    .line 1412
    move/from16 v22, v46

    .line 1413
    .line 1414
    move-object/from16 v23, v5

    .line 1415
    .line 1416
    move/from16 v24, v4

    .line 1417
    .line 1418
    invoke-virtual/range {v16 .. v24}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    .line 1419
    .line 1420
    .line 1421
    move-result v2

    .line 1422
    const/4 v4, 0x1

    .line 1423
    xor-int/2addr v2, v4

    .line 1424
    or-int/2addr v1, v2

    .line 1425
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1426
    .line 1427
    iget-object v4, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 1428
    .line 1429
    if-nez v4, :cond_37

    .line 1430
    .line 1431
    const-class v4, Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 1432
    .line 1433
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v4

    .line 1437
    check-cast v4, Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 1438
    .line 1439
    iput-object v4, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 1440
    .line 1441
    :cond_37
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 1442
    .line 1443
    move/from16 v4, v53

    .line 1444
    .line 1445
    invoke-virtual {v2, v10, v6, v4}, Lcom/android/server/policy/PermissionPolicyService$Internal;->checkStartActivity(Landroid/content/Intent;Ljava/lang/String;I)Z

    .line 1446
    .line 1447
    .line 1448
    move-result v2

    .line 1449
    const/4 v15, 0x1

    .line 1450
    xor-int/2addr v2, v15

    .line 1451
    or-int/2addr v1, v2

    .line 1452
    if-eqz v34, :cond_38

    .line 1453
    .line 1454
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1455
    .line 1456
    move-object/from16 v49, v12

    .line 1457
    .line 1458
    move-object/from16 v15, v34

    .line 1459
    .line 1460
    move-object/from16 v12, v67

    .line 1461
    .line 1462
    invoke-virtual {v15, v10, v9, v12, v2}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v2

    .line 1466
    goto :goto_24

    .line 1467
    :cond_38
    move-object/from16 v49, v12

    .line 1468
    .line 1469
    move-object/from16 v12, v67

    .line 1470
    .line 1471
    const/4 v2, 0x0

    .line 1472
    :goto_24
    if-nez v1, :cond_39

    .line 1473
    .line 1474
    move/from16 v28, v1

    .line 1475
    .line 1476
    move-object v15, v2

    .line 1477
    const-wide/16 v1, 0x20

    .line 1478
    .line 1479
    move-object/from16 v50, v0

    .line 1480
    .line 1481
    :try_start_9
    const-string/jumbo v0, "shouldAbortBackgroundActivityStart"

    .line 1482
    .line 1483
    .line 1484
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1485
    .line 1486
    .line 1487
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1488
    .line 1489
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    .line 1490
    .line 1491
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 1492
    .line 1493
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter$Request;->forcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 1494
    .line 1495
    move-object/from16 v16, v0

    .line 1496
    .line 1497
    move/from16 v17, v4

    .line 1498
    .line 1499
    move/from16 v18, v46

    .line 1500
    .line 1501
    move-object/from16 v19, v6

    .line 1502
    .line 1503
    move/from16 v20, v8

    .line 1504
    .line 1505
    move/from16 v21, v66

    .line 1506
    .line 1507
    move-object/from16 v22, v12

    .line 1508
    .line 1509
    move-object/from16 v23, v1

    .line 1510
    .line 1511
    move-object/from16 v24, v2

    .line 1512
    .line 1513
    move-object/from16 v25, v77

    .line 1514
    .line 1515
    move-object/from16 v26, v10

    .line 1516
    .line 1517
    move-object/from16 v27, v15

    .line 1518
    .line 1519
    invoke-virtual/range {v16 .. v27}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v0

    .line 1523
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1524
    .line 1525
    const-string v2, " ("

    .line 1526
    .line 1527
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1531
    .line 1532
    .line 1533
    move-object/from16 v2, v35

    .line 1534
    .line 1535
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1536
    .line 1537
    .line 1538
    const-wide/16 v1, 0x20

    .line 1539
    .line 1540
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1541
    .line 1542
    .line 1543
    :goto_25
    move-object v2, v0

    .line 1544
    goto :goto_26

    .line 1545
    :catchall_2
    move-exception v0

    .line 1546
    const-wide/16 v1, 0x20

    .line 1547
    .line 1548
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1549
    .line 1550
    .line 1551
    throw v0

    .line 1552
    :cond_39
    move-object/from16 v50, v0

    .line 1553
    .line 1554
    move/from16 v28, v1

    .line 1555
    .line 1556
    move-object v15, v2

    .line 1557
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->ALLOW_BY_DEFAULT:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 1558
    .line 1559
    goto :goto_25

    .line 1560
    :goto_26
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 1561
    .line 1562
    if-eq v2, v0, :cond_3b

    .line 1563
    .line 1564
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1565
    .line 1566
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1567
    .line 1568
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 1569
    .line 1570
    .line 1571
    move-result v0

    .line 1572
    if-eqz v12, :cond_3a

    .line 1573
    .line 1574
    iget-object v1, v12, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 1575
    .line 1576
    if-eqz v1, :cond_3a

    .line 1577
    .line 1578
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1579
    .line 1580
    iget v1, v12, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 1581
    .line 1582
    move-object/from16 v16, v0

    .line 1583
    .line 1584
    iget v0, v12, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 1585
    .line 1586
    move/from16 v26, v0

    .line 1587
    .line 1588
    move/from16 v19, v1

    .line 1589
    .line 1590
    move-object/from16 v18, v16

    .line 1591
    .line 1592
    goto :goto_27

    .line 1593
    :cond_3a
    move/from16 v19, v0

    .line 1594
    .line 1595
    const/16 v18, 0x0

    .line 1596
    .line 1597
    const/16 v26, 0x0

    .line 1598
    .line 1599
    :goto_27
    sget-object v16, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    .line 1600
    .line 1601
    new-instance v0, Landroid/content/ComponentName;

    .line 1602
    .line 1603
    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1604
    .line 1605
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1606
    .line 1607
    move-object/from16 v29, v2

    .line 1608
    .line 1609
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1610
    .line 1611
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    .line 1613
    .line 1614
    const/16 v25, 0x0

    .line 1615
    .line 1616
    const/16 v27, 0x0

    .line 1617
    .line 1618
    const-string v20, "activity"

    .line 1619
    .line 1620
    const/16 v21, 0x0

    .line 1621
    .line 1622
    const/16 v23, 0x0

    .line 1623
    .line 1624
    move-object/from16 v17, v0

    .line 1625
    .line 1626
    move/from16 v22, v11

    .line 1627
    .line 1628
    move-object/from16 v24, v9

    .line 1629
    .line 1630
    invoke-virtual/range {v16 .. v27}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    .line 1631
    .line 1632
    .line 1633
    move-result v0

    .line 1634
    const/4 v1, 0x1

    .line 1635
    xor-int/2addr v0, v1

    .line 1636
    if-eqz v0, :cond_3c

    .line 1637
    .line 1638
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1639
    .line 1640
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1641
    .line 1642
    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1643
    .line 1644
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1645
    .line 1646
    const/4 v2, 0x0

    .line 1647
    invoke-virtual {v0, v1, v11, v2}, Landroid/app/ActivityManagerInternal;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 1648
    .line 1649
    .line 1650
    goto :goto_28

    .line 1651
    :cond_3b
    move-object/from16 v29, v2

    .line 1652
    .line 1653
    :cond_3c
    :goto_28
    iget-boolean v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 1654
    .line 1655
    if-eqz v0, :cond_41

    .line 1656
    .line 1657
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1658
    .line 1659
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 1660
    .line 1661
    iget-object v0, v0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 1662
    .line 1663
    iget-object v1, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    .line 1664
    .line 1665
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v1

    .line 1669
    check-cast v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

    .line 1670
    .line 1671
    if-nez v1, :cond_3d

    .line 1672
    .line 1673
    goto :goto_2a

    .line 1674
    :cond_3d
    if-nez v15, :cond_3e

    .line 1675
    .line 1676
    iget-object v2, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    .line 1677
    .line 1678
    invoke-static {v2}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v2

    .line 1682
    goto :goto_29

    .line 1683
    :cond_3e
    iget-object v2, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    .line 1684
    .line 1685
    invoke-virtual {v15, v2}, Landroid/app/ActivityOptions;->setRemoteAnimationAdapter(Landroid/view/RemoteAnimationAdapter;)V

    .line 1686
    .line 1687
    .line 1688
    move-object v2, v15

    .line 1689
    :goto_29
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_REMOTE:Z

    .line 1690
    .line 1691
    if-eqz v15, :cond_3f

    .line 1692
    .line 1693
    iget-object v15, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->remoteTransition:Landroid/window/RemoteTransition;

    .line 1694
    .line 1695
    invoke-virtual {v2, v15}, Landroid/app/ActivityOptions;->setRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    .line 1696
    .line 1697
    .line 1698
    :cond_3f
    iget-object v1, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->launchCookie:Landroid/os/IBinder;

    .line 1699
    .line 1700
    if-eqz v1, :cond_40

    .line 1701
    .line 1702
    invoke-virtual {v2, v1}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    .line 1703
    .line 1704
    .line 1705
    :cond_40
    iget-object v0, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    .line 1706
    .line 1707
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    .line 1709
    .line 1710
    goto :goto_2b

    .line 1711
    :cond_41
    :goto_2a
    move-object v2, v15

    .line 1712
    :goto_2b
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1713
    .line 1714
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1715
    .line 1716
    if-eqz v0, :cond_42

    .line 1717
    .line 1718
    :try_start_a
    invoke-virtual {v10}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v0

    .line 1722
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1723
    .line 1724
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1725
    .line 1726
    iget-object v15, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1727
    .line 1728
    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1729
    .line 1730
    invoke-interface {v1, v0, v15}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    .line 1731
    .line 1732
    .line 1733
    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    .line 1734
    const/4 v1, 0x1

    .line 1735
    xor-int/2addr v0, v1

    .line 1736
    or-int v1, v28, v0

    .line 1737
    .line 1738
    goto :goto_2c

    .line 1739
    :catch_6
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1740
    .line 1741
    const/4 v1, 0x0

    .line 1742
    iput-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1743
    .line 1744
    :cond_42
    move/from16 v1, v28

    .line 1745
    .line 1746
    :goto_2c
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1747
    .line 1748
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 1749
    .line 1750
    iget-object v15, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1751
    .line 1752
    move-object/from16 v67, v12

    .line 1753
    .line 1754
    iget-object v12, v13, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 1755
    .line 1756
    const/16 v37, 0x0

    .line 1757
    .line 1758
    const/16 v43, 0x0

    .line 1759
    .line 1760
    const/16 v36, 0x0

    .line 1761
    .line 1762
    const/16 v41, 0x0

    .line 1763
    .line 1764
    move-object/from16 v34, v0

    .line 1765
    .line 1766
    move-object/from16 v35, v44

    .line 1767
    .line 1768
    move-object/from16 v38, v7

    .line 1769
    .line 1770
    move-object/from16 v39, v2

    .line 1771
    .line 1772
    move-object/from16 v40, v15

    .line 1773
    .line 1774
    move-object/from16 v42, v12

    .line 1775
    .line 1776
    invoke-virtual/range {v34 .. v43}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 1777
    .line 1778
    .line 1779
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 1780
    .line 1781
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 1782
    .line 1783
    if-eqz v0, :cond_43

    .line 1784
    .line 1785
    :goto_2d
    move-object/from16 v26, v0

    .line 1786
    .line 1787
    goto :goto_2e

    .line 1788
    :cond_43
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1789
    .line 1790
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 1791
    .line 1792
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v0

    .line 1796
    goto :goto_2d

    .line 1797
    :goto_2e
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 1798
    .line 1799
    move/from16 v12, v66

    .line 1800
    .line 1801
    iput v12, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    .line 1802
    .line 1803
    iput v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    .line 1804
    .line 1805
    iput v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 1806
    .line 1807
    move/from16 v15, v33

    .line 1808
    .line 1809
    iput v15, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    .line 1810
    .line 1811
    iput-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    .line 1812
    .line 1813
    move-object/from16 v15, v68

    .line 1814
    .line 1815
    iput-object v15, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingFeatureId:Ljava/lang/String;

    .line 1816
    .line 1817
    iput-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1818
    .line 1819
    move-object/from16 v27, v7

    .line 1820
    .line 1821
    const/4 v7, 0x0

    .line 1822
    iput-boolean v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForAliasActivity:Z

    .line 1823
    .line 1824
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 1825
    .line 1826
    move-object/from16 v16, v0

    .line 1827
    .line 1828
    move-object/from16 v17, v10

    .line 1829
    .line 1830
    move-object/from16 v18, v47

    .line 1831
    .line 1832
    move-object/from16 v19, v9

    .line 1833
    .line 1834
    move-object/from16 v20, v5

    .line 1835
    .line 1836
    move-object/from16 v21, v44

    .line 1837
    .line 1838
    move-object/from16 v22, v48

    .line 1839
    .line 1840
    move/from16 v23, v46

    .line 1841
    .line 1842
    move/from16 v24, v4

    .line 1843
    .line 1844
    move-object/from16 v25, v2

    .line 1845
    .line 1846
    invoke-virtual/range {v16 .. v26}, Lcom/android/server/wm/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;IILandroid/app/ActivityOptions;Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 1847
    .line 1848
    .line 1849
    move-result v0

    .line 1850
    if-eqz v0, :cond_44

    .line 1851
    .line 1852
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 1853
    .line 1854
    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 1855
    .line 1856
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 1857
    .line 1858
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 1859
    .line 1860
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 1861
    .line 1862
    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 1863
    .line 1864
    iget v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 1865
    .line 1866
    move-object/from16 v16, v2

    .line 1867
    .line 1868
    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 1869
    .line 1870
    iget-object v0, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 1871
    .line 1872
    move/from16 v54, v2

    .line 1873
    .line 1874
    move-object/from16 v44, v9

    .line 1875
    .line 1876
    move/from16 v46, v10

    .line 1877
    .line 1878
    const/16 v51, 0x0

    .line 1879
    .line 1880
    move-object v2, v0

    .line 1881
    goto :goto_2f

    .line 1882
    :cond_44
    move/from16 v54, v4

    .line 1883
    .line 1884
    move-object v4, v9

    .line 1885
    move-object v7, v10

    .line 1886
    move-object/from16 v16, v47

    .line 1887
    .line 1888
    :goto_2f
    if-eqz v1, :cond_46

    .line 1889
    .line 1890
    if-eqz v77, :cond_45

    .line 1891
    .line 1892
    const/16 v41, 0x0

    .line 1893
    .line 1894
    const/16 v42, 0x0

    .line 1895
    .line 1896
    const/16 v36, -0x1

    .line 1897
    .line 1898
    const/16 v39, 0x0

    .line 1899
    .line 1900
    const/16 v40, 0x0

    .line 1901
    .line 1902
    const/16 v43, 0x0

    .line 1903
    .line 1904
    move-object/from16 v35, v77

    .line 1905
    .line 1906
    move-object/from16 v37, v78

    .line 1907
    .line 1908
    move/from16 v38, v79

    .line 1909
    .line 1910
    invoke-virtual/range {v35 .. v43}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 1911
    .line 1912
    .line 1913
    :cond_45
    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1914
    .line 1915
    .line 1916
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 1917
    .line 1918
    .line 1919
    move-result v38

    .line 1920
    const-string v0, " succeeded"

    .line 1921
    .line 1922
    move-object/from16 v1, v50

    .line 1923
    .line 1924
    invoke-static {v1, v3, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v40

    .line 1928
    const/16 v37, 0x1

    .line 1929
    .line 1930
    const-string v39, "ActivityStarter"

    .line 1931
    .line 1932
    const/16 v35, 0x5

    .line 1933
    .line 1934
    const/16 v36, 0x5

    .line 1935
    .line 1936
    const-string v41, ""

    .line 1937
    .line 1938
    move/from16 v42, v11

    .line 1939
    .line 1940
    invoke-static/range {v35 .. v42}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1941
    .line 1942
    .line 1943
    const/16 v1, 0x66

    .line 1944
    .line 1945
    return v1

    .line 1946
    :cond_46
    const-string v0, "android.intent.extra.RESULT_NEEDED"

    .line 1947
    .line 1948
    const-string v1, "android.intent.extra.INTENT"

    .line 1949
    .line 1950
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    .line 1951
    .line 1952
    if-eqz v4, :cond_49

    .line 1953
    .line 1954
    iget-object v10, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1955
    .line 1956
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v10

    .line 1960
    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1961
    .line 1962
    invoke-virtual {v10, v11, v9}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(ILjava/lang/String;)Z

    .line 1963
    .line 1964
    .line 1965
    move-result v9

    .line 1966
    if-eqz v9, :cond_49

    .line 1967
    .line 1968
    iget-object v9, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1969
    .line 1970
    move-object/from16 v18, v2

    .line 1971
    .line 1972
    const/4 v10, 0x1

    .line 1973
    new-array v2, v10, [Landroid/content/Intent;

    .line 1974
    .line 1975
    const/4 v10, 0x0

    .line 1976
    aput-object v7, v2, v10

    .line 1977
    .line 1978
    filled-new-array {v5}, [Ljava/lang/String;

    .line 1979
    .line 1980
    .line 1981
    move-result-object v64

    .line 1982
    const/16 v62, 0x0

    .line 1983
    .line 1984
    const/16 v56, 0x0

    .line 1985
    .line 1986
    const/16 v53, 0x2

    .line 1987
    .line 1988
    const/16 v59, 0x0

    .line 1989
    .line 1990
    const/high16 v57, 0x50000000

    .line 1991
    .line 1992
    const/16 v58, 0x0

    .line 1993
    .line 1994
    move-object/from16 v52, v9

    .line 1995
    .line 1996
    move/from16 v55, v11

    .line 1997
    .line 1998
    move-object/from16 v60, v6

    .line 1999
    .line 2000
    move-object/from16 v61, v15

    .line 2001
    .line 2002
    move-object/from16 v63, v2

    .line 2003
    .line 2004
    invoke-virtual/range {v52 .. v64}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    .line 2005
    .line 2006
    .line 2007
    move-result-object v2

    .line 2008
    new-instance v5, Landroid/content/Intent;

    .line 2009
    .line 2010
    const-string v9, "android.intent.action.REVIEW_PERMISSIONS"

    .line 2011
    .line 2012
    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2013
    .line 2014
    .line 2015
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    .line 2016
    .line 2017
    .line 2018
    move-result v7

    .line 2019
    const/high16 v9, 0x800000

    .line 2020
    .line 2021
    or-int/2addr v9, v7

    .line 2022
    const/high16 v10, 0x10080000

    .line 2023
    .line 2024
    and-int/2addr v10, v9

    .line 2025
    if-eqz v10, :cond_47

    .line 2026
    .line 2027
    const/high16 v10, 0x8800000

    .line 2028
    .line 2029
    or-int v9, v7, v10

    .line 2030
    .line 2031
    :cond_47
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2032
    .line 2033
    .line 2034
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2035
    .line 2036
    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2037
    .line 2038
    .line 2039
    new-instance v4, Landroid/content/IntentSender;

    .line 2040
    .line 2041
    invoke-direct {v4, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 2042
    .line 2043
    .line 2044
    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2045
    .line 2046
    .line 2047
    if-eqz v77, :cond_48

    .line 2048
    .line 2049
    const/4 v2, 0x1

    .line 2050
    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2051
    .line 2052
    .line 2053
    :cond_48
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2054
    .line 2055
    iget v4, v14, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 2056
    .line 2057
    invoke-static {v8, v8, v4}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    .line 2058
    .line 2059
    .line 2060
    move-result v24

    .line 2061
    const/16 v23, 0x0

    .line 2062
    .line 2063
    const/4 v4, 0x0

    .line 2064
    move-object/from16 v19, v2

    .line 2065
    .line 2066
    move-object/from16 v20, v5

    .line 2067
    .line 2068
    move-object/from16 v21, v4

    .line 2069
    .line 2070
    move/from16 v22, v11

    .line 2071
    .line 2072
    move/from16 v25, v12

    .line 2073
    .line 2074
    invoke-virtual/range {v19 .. v25}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v2

    .line 2078
    iget-object v7, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2079
    .line 2080
    move/from16 v9, v33

    .line 2081
    .line 2082
    const/4 v10, 0x0

    .line 2083
    invoke-virtual {v7, v5, v2, v9, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    .line 2084
    .line 2085
    .line 2086
    move-result-object v7

    .line 2087
    move-object/from16 v16, v2

    .line 2088
    .line 2089
    move/from16 v54, v8

    .line 2090
    .line 2091
    move/from16 v46, v12

    .line 2092
    .line 2093
    const/16 v51, 0x0

    .line 2094
    .line 2095
    move-object/from16 v89, v5

    .line 2096
    .line 2097
    move-object v5, v4

    .line 2098
    move-object v4, v7

    .line 2099
    move-object/from16 v7, v89

    .line 2100
    .line 2101
    goto :goto_30

    .line 2102
    :cond_49
    move-object/from16 v18, v2

    .line 2103
    .line 2104
    move/from16 v9, v33

    .line 2105
    .line 2106
    :goto_30
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SUPPORT_SMARTMANAGER_CN:Z

    .line 2107
    .line 2108
    const-string v10, " className:"

    .line 2109
    .line 2110
    const/high16 v26, 0x100000

    .line 2111
    .line 2112
    if-eqz v2, :cond_55

    .line 2113
    .line 2114
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    .line 2115
    .line 2116
    .line 2117
    move-result v2

    .line 2118
    and-int v2, v2, v26

    .line 2119
    .line 2120
    if-eqz v2, :cond_4a

    .line 2121
    .line 2122
    const/4 v2, 0x1

    .line 2123
    goto :goto_31

    .line 2124
    :cond_4a
    const/4 v2, 0x0

    .line 2125
    :goto_31
    iget-object v14, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2126
    .line 2127
    invoke-virtual {v14, v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 2128
    .line 2129
    .line 2130
    move-result-object v14

    .line 2131
    if-eqz v4, :cond_55

    .line 2132
    .line 2133
    move-object/from16 v28, v0

    .line 2134
    .line 2135
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2136
    .line 2137
    if-eqz v0, :cond_54

    .line 2138
    .line 2139
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2140
    .line 2141
    .line 2142
    move-result v0

    .line 2143
    if-nez v0, :cond_54

    .line 2144
    .line 2145
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2146
    .line 2147
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2148
    .line 2149
    move/from16 v33, v9

    .line 2150
    .line 2151
    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2152
    .line 2153
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    .line 2154
    .line 2155
    if-eqz v0, :cond_4b

    .line 2156
    .line 2157
    invoke-virtual {v0, v9}, Lcom/android/internal/app/SmRccPolicy;->isSmRccPkg(Ljava/lang/String;)Z

    .line 2158
    .line 2159
    .line 2160
    move-result v0

    .line 2161
    goto :goto_32

    .line 2162
    :cond_4b
    const/4 v0, 0x0

    .line 2163
    :goto_32
    if-eqz v0, :cond_4c

    .line 2164
    .line 2165
    if-nez v2, :cond_4c

    .line 2166
    .line 2167
    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 2168
    .line 2169
    .line 2170
    move-result v0

    .line 2171
    if-nez v0, :cond_4c

    .line 2172
    .line 2173
    if-eqz v14, :cond_4d

    .line 2174
    .line 2175
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 2176
    .line 2177
    .line 2178
    move-result v0

    .line 2179
    if-nez v0, :cond_4c

    .line 2180
    .line 2181
    goto :goto_34

    .line 2182
    :cond_4c
    move-object/from16 v19, v7

    .line 2183
    .line 2184
    move-object/from16 v30, v10

    .line 2185
    .line 2186
    move/from16 v7, v33

    .line 2187
    .line 2188
    :goto_33
    move-object/from16 v9, v49

    .line 2189
    .line 2190
    goto/16 :goto_3a

    .line 2191
    .line 2192
    :cond_4d
    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2193
    .line 2194
    const-string v2, "SmRcc pkgName:"

    .line 2195
    .line 2196
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2197
    .line 2198
    .line 2199
    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2200
    .line 2201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    .line 2203
    .line 2204
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2205
    .line 2206
    .line 2207
    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2208
    .line 2209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2210
    .line 2211
    .line 2212
    const-string v2, " callingPackage:"

    .line 2213
    .line 2214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    .line 2216
    .line 2217
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2218
    .line 2219
    .line 2220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2221
    .line 2222
    .line 2223
    move-result-object v0

    .line 2224
    move-object/from16 v9, v49

    .line 2225
    .line 2226
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    .line 2228
    .line 2229
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2230
    .line 2231
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2232
    .line 2233
    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2234
    .line 2235
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    .line 2236
    .line 2237
    if-eqz v0, :cond_4e

    .line 2238
    .line 2239
    invoke-virtual {v0, v2}, Lcom/android/internal/app/SmRccPolicy;->isSmRccOpen(Ljava/lang/String;)Z

    .line 2240
    .line 2241
    .line 2242
    move-result v0

    .line 2243
    goto :goto_35

    .line 2244
    :cond_4e
    const/4 v0, 0x0

    .line 2245
    :goto_35
    if-eqz v0, :cond_4f

    .line 2246
    .line 2247
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2248
    .line 2249
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2250
    .line 2251
    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2252
    .line 2253
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->resetSmRccOpen(Ljava/lang/String;)V

    .line 2254
    .line 2255
    .line 2256
    move-object/from16 v19, v7

    .line 2257
    .line 2258
    move-object/from16 v30, v10

    .line 2259
    .line 2260
    move/from16 v7, v33

    .line 2261
    .line 2262
    goto/16 :goto_3a

    .line 2263
    .line 2264
    :cond_4f
    new-instance v0, Landroid/content/Intent;

    .line 2265
    .line 2266
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2267
    .line 2268
    .line 2269
    move-result-object v2

    .line 2270
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2271
    .line 2272
    .line 2273
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 2274
    .line 2275
    .line 2276
    move-result-object v2

    .line 2277
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2278
    .line 2279
    .line 2280
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2281
    .line 2282
    move-object/from16 v30, v10

    .line 2283
    .line 2284
    const/4 v14, 0x1

    .line 2285
    new-array v10, v14, [Landroid/content/Intent;

    .line 2286
    .line 2287
    const/4 v14, 0x0

    .line 2288
    aput-object v7, v10, v14

    .line 2289
    .line 2290
    filled-new-array {v5}, [Ljava/lang/String;

    .line 2291
    .line 2292
    .line 2293
    move-result-object v64

    .line 2294
    const/16 v62, 0x0

    .line 2295
    .line 2296
    const/16 v56, 0x0

    .line 2297
    .line 2298
    const/16 v53, 0x2

    .line 2299
    .line 2300
    const/16 v59, 0x0

    .line 2301
    .line 2302
    const/high16 v57, 0x50000000

    .line 2303
    .line 2304
    const/16 v58, 0x0

    .line 2305
    .line 2306
    move-object/from16 v52, v2

    .line 2307
    .line 2308
    move/from16 v55, v11

    .line 2309
    .line 2310
    move-object/from16 v60, v6

    .line 2311
    .line 2312
    move-object/from16 v61, v15

    .line 2313
    .line 2314
    move-object/from16 v63, v10

    .line 2315
    .line 2316
    invoke-virtual/range {v52 .. v64}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    .line 2317
    .line 2318
    .line 2319
    move-result-object v2

    .line 2320
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    .line 2321
    .line 2322
    .line 2323
    move-result v5

    .line 2324
    iget-object v10, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2325
    .line 2326
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2327
    .line 2328
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getSmRccAction()Ljava/lang/String;

    .line 2329
    .line 2330
    .line 2331
    move-result-object v10

    .line 2332
    new-instance v14, Landroid/content/Intent;

    .line 2333
    .line 2334
    invoke-direct {v14, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2335
    .line 2336
    .line 2337
    const/high16 v17, 0x8800000

    .line 2338
    .line 2339
    or-int v5, v5, v17

    .line 2340
    .line 2341
    invoke-virtual {v14, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2342
    .line 2343
    .line 2344
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2345
    .line 2346
    invoke-virtual {v14, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2347
    .line 2348
    .line 2349
    new-instance v5, Landroid/content/IntentSender;

    .line 2350
    .line 2351
    invoke-direct {v5, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 2352
    .line 2353
    .line 2354
    invoke-virtual {v14, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2355
    .line 2356
    .line 2357
    if-eqz v77, :cond_50

    .line 2358
    .line 2359
    const-string v2, "SM_RCC_EXTRA_RESULT_NEEDED"

    .line 2360
    .line 2361
    const/4 v5, 0x1

    .line 2362
    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2363
    .line 2364
    .line 2365
    :cond_50
    const-string v2, "SM_RCC_PACKAGE_INTENT"

    .line 2366
    .line 2367
    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2368
    .line 2369
    .line 2370
    const-string v0, "SM_RCC_PACKAGE_USERID"

    .line 2371
    .line 2372
    invoke-virtual {v14, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2373
    .line 2374
    .line 2375
    if-nez v18, :cond_51

    .line 2376
    .line 2377
    const/4 v0, 0x0

    .line 2378
    goto :goto_36

    .line 2379
    :cond_51
    invoke-virtual/range {v18 .. v18}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 2380
    .line 2381
    .line 2382
    move-result-object v0

    .line 2383
    :goto_36
    const-string v2, "SM_RCC_PACKAGE_OPTIONS"

    .line 2384
    .line 2385
    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2386
    .line 2387
    .line 2388
    invoke-static {v11}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 2389
    .line 2390
    .line 2391
    move-result v0

    .line 2392
    const/4 v5, 0x0

    .line 2393
    if-eqz v0, :cond_52

    .line 2394
    .line 2395
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2396
    .line 2397
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 2398
    .line 2399
    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 2400
    .line 2401
    invoke-static {v8, v8, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    .line 2402
    .line 2403
    .line 2404
    move-result v24

    .line 2405
    const/16 v22, 0x0

    .line 2406
    .line 2407
    const/16 v23, 0x0

    .line 2408
    .line 2409
    move-object/from16 v19, v0

    .line 2410
    .line 2411
    move-object/from16 v20, v14

    .line 2412
    .line 2413
    move-object/from16 v21, v5

    .line 2414
    .line 2415
    move/from16 v25, v12

    .line 2416
    .line 2417
    invoke-virtual/range {v19 .. v25}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 2418
    .line 2419
    .line 2420
    move-result-object v0

    .line 2421
    goto :goto_37

    .line 2422
    :cond_52
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2423
    .line 2424
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 2425
    .line 2426
    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 2427
    .line 2428
    invoke-static {v8, v8, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    .line 2429
    .line 2430
    .line 2431
    move-result v24

    .line 2432
    const/16 v23, 0x0

    .line 2433
    .line 2434
    move-object/from16 v19, v0

    .line 2435
    .line 2436
    move-object/from16 v20, v14

    .line 2437
    .line 2438
    move-object/from16 v21, v5

    .line 2439
    .line 2440
    move/from16 v22, v11

    .line 2441
    .line 2442
    move/from16 v25, v12

    .line 2443
    .line 2444
    invoke-virtual/range {v19 .. v25}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 2445
    .line 2446
    .line 2447
    move-result-object v0

    .line 2448
    :goto_37
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2449
    .line 2450
    move-object/from16 v19, v7

    .line 2451
    .line 2452
    move/from16 v7, v33

    .line 2453
    .line 2454
    const/4 v5, 0x0

    .line 2455
    invoke-virtual {v2, v14, v0, v7, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    .line 2456
    .line 2457
    .line 2458
    move-result-object v2

    .line 2459
    if-eqz v2, :cond_53

    .line 2460
    .line 2461
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2462
    .line 2463
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2464
    .line 2465
    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2466
    .line 2467
    .line 2468
    move-object/from16 v16, v0

    .line 2469
    .line 2470
    move-object v4, v2

    .line 2471
    move/from16 v54, v8

    .line 2472
    .line 2473
    move/from16 v46, v12

    .line 2474
    .line 2475
    :goto_38
    const/4 v5, 0x0

    .line 2476
    goto :goto_3b

    .line 2477
    :cond_53
    const-string v0, "SmRcc can not resolve Activity , should never happen. Check Action "

    .line 2478
    .line 2479
    invoke-static {v0, v10, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    .line 2481
    .line 2482
    move/from16 v54, v8

    .line 2483
    .line 2484
    move/from16 v46, v12

    .line 2485
    .line 2486
    move-object/from16 v14, v19

    .line 2487
    .line 2488
    goto :goto_38

    .line 2489
    :cond_54
    :goto_39
    move-object/from16 v19, v7

    .line 2490
    .line 2491
    move v7, v9

    .line 2492
    move-object/from16 v30, v10

    .line 2493
    .line 2494
    goto/16 :goto_33

    .line 2495
    .line 2496
    :cond_55
    move-object/from16 v28, v0

    .line 2497
    .line 2498
    goto :goto_39

    .line 2499
    :goto_3a
    move-object/from16 v14, v19

    .line 2500
    .line 2501
    :goto_3b
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    .line 2502
    .line 2503
    const-string v10, "LAUNCH_FROM_NOTIFICATION"

    .line 2504
    .line 2505
    if-eqz v0, :cond_6a

    .line 2506
    .line 2507
    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    .line 2508
    .line 2509
    .line 2510
    move-result v2

    .line 2511
    and-int v2, v2, v26

    .line 2512
    .line 2513
    move/from16 v26, v0

    .line 2514
    .line 2515
    move/from16 v33, v7

    .line 2516
    .line 2517
    if-eqz v2, :cond_56

    .line 2518
    .line 2519
    const/4 v2, 0x1

    .line 2520
    :goto_3c
    const/4 v7, -0x1

    .line 2521
    goto :goto_3d

    .line 2522
    :cond_56
    const/4 v2, 0x0

    .line 2523
    goto :goto_3c

    .line 2524
    :goto_3d
    invoke-virtual {v14, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 2525
    .line 2526
    .line 2527
    move-result v0

    .line 2528
    const/4 v7, 0x1

    .line 2529
    if-ne v0, v7, :cond_57

    .line 2530
    .line 2531
    const/4 v0, 0x1

    .line 2532
    goto :goto_3e

    .line 2533
    :cond_57
    const/4 v0, 0x0

    .line 2534
    :goto_3e
    iget-object v7, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2535
    .line 2536
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 2537
    .line 2538
    if-eqz v7, :cond_58

    .line 2539
    .line 2540
    if-eqz v4, :cond_58

    .line 2541
    .line 2542
    move-object/from16 v34, v10

    .line 2543
    .line 2544
    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2545
    .line 2546
    if-eqz v10, :cond_59

    .line 2547
    .line 2548
    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2549
    .line 2550
    invoke-virtual {v7, v10}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    .line 2551
    .line 2552
    .line 2553
    move-result v7

    .line 2554
    if-eqz v7, :cond_59

    .line 2555
    .line 2556
    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2557
    .line 2558
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2559
    .line 2560
    .line 2561
    move-result v7

    .line 2562
    if-eqz v7, :cond_59

    .line 2563
    .line 2564
    const/4 v7, 0x0

    .line 2565
    goto :goto_3f

    .line 2566
    :cond_58
    move-object/from16 v34, v10

    .line 2567
    .line 2568
    :cond_59
    const/4 v7, 0x1

    .line 2569
    :goto_3f
    iget-object v10, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2570
    .line 2571
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 2572
    .line 2573
    if-eqz v10, :cond_5a

    .line 2574
    .line 2575
    if-eqz v4, :cond_5a

    .line 2576
    .line 2577
    move/from16 v66, v12

    .line 2578
    .line 2579
    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2580
    .line 2581
    if-eqz v12, :cond_5b

    .line 2582
    .line 2583
    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2584
    .line 2585
    invoke-virtual {v10, v12}, Lcom/android/internal/app/AppLockPolicy;->isAppLockBypassList(Ljava/lang/String;)Z

    .line 2586
    .line 2587
    .line 2588
    move-result v10

    .line 2589
    if-eqz v10, :cond_5b

    .line 2590
    .line 2591
    const/4 v10, 0x0

    .line 2592
    goto :goto_40

    .line 2593
    :cond_5a
    move/from16 v66, v12

    .line 2594
    .line 2595
    :cond_5b
    const/4 v10, 0x1

    .line 2596
    :goto_40
    iget-object v12, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2597
    .line 2598
    invoke-virtual {v12, v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 2599
    .line 2600
    .line 2601
    move-result-object v12

    .line 2602
    if-eqz v4, :cond_69

    .line 2603
    .line 2604
    move/from16 v35, v8

    .line 2605
    .line 2606
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2607
    .line 2608
    if-eqz v8, :cond_68

    .line 2609
    .line 2610
    if-nez v0, :cond_68

    .line 2611
    .line 2612
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2613
    .line 2614
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedPackage(Ljava/lang/String;)Z

    .line 2615
    .line 2616
    .line 2617
    move-result v0

    .line 2618
    if-eqz v0, :cond_68

    .line 2619
    .line 2620
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2621
    .line 2622
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2623
    .line 2624
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedVerifying(Ljava/lang/String;)Z

    .line 2625
    .line 2626
    .line 2627
    move-result v0

    .line 2628
    if-nez v0, :cond_68

    .line 2629
    .line 2630
    if-nez v2, :cond_68

    .line 2631
    .line 2632
    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 2633
    .line 2634
    .line 2635
    move-result v0

    .line 2636
    if-nez v0, :cond_5c

    .line 2637
    .line 2638
    if-eqz v12, :cond_5d

    .line 2639
    .line 2640
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 2641
    .line 2642
    .line 2643
    move-result v0

    .line 2644
    if-eqz v0, :cond_5d

    .line 2645
    .line 2646
    :cond_5c
    invoke-static {v11}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 2647
    .line 2648
    .line 2649
    move-result v0

    .line 2650
    if-eqz v0, :cond_68

    .line 2651
    .line 2652
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    .line 2653
    .line 2654
    .line 2655
    move-result v0

    .line 2656
    if-nez v0, :cond_68

    .line 2657
    .line 2658
    :cond_5d
    if-eqz v7, :cond_68

    .line 2659
    .line 2660
    if-eqz v10, :cond_68

    .line 2661
    .line 2662
    move-object/from16 v10, v48

    .line 2663
    .line 2664
    if-eqz v48, :cond_60

    .line 2665
    .line 2666
    iget-boolean v0, v10, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 2667
    .line 2668
    if-nez v0, :cond_5e

    .line 2669
    .line 2670
    goto :goto_41

    .line 2671
    :cond_5e
    move-object/from16 v7, v18

    .line 2672
    .line 2673
    :cond_5f
    move/from16 v8, v33

    .line 2674
    .line 2675
    move/from16 v3, v35

    .line 2676
    .line 2677
    goto/16 :goto_48

    .line 2678
    .line 2679
    :cond_60
    :goto_41
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2680
    .line 2681
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 2682
    .line 2683
    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2684
    .line 2685
    move-object/from16 v7, v18

    .line 2686
    .line 2687
    invoke-static {v0, v2, v14, v7, v6}, Lcom/android/internal/app/AppLockPolicy;->skipLockWhenStart(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;)Z

    .line 2688
    .line 2689
    .line 2690
    move-result v0

    .line 2691
    if-nez v0, :cond_61

    .line 2692
    .line 2693
    if-eqz v27, :cond_61

    .line 2694
    .line 2695
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 2696
    .line 2697
    .line 2698
    move-result v2

    .line 2699
    const/4 v8, 0x2

    .line 2700
    if-ne v2, v8, :cond_61

    .line 2701
    .line 2702
    const-string/jumbo v0, "source is in dex display, skip"

    .line 2703
    .line 2704
    .line 2705
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    .line 2707
    .line 2708
    const/4 v0, 0x1

    .line 2709
    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2710
    .line 2711
    const-string v8, "AppLocked pkgName:"

    .line 2712
    .line 2713
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2714
    .line 2715
    .line 2716
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2717
    .line 2718
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2719
    .line 2720
    .line 2721
    move-object/from16 v8, v30

    .line 2722
    .line 2723
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2724
    .line 2725
    .line 2726
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2727
    .line 2728
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2729
    .line 2730
    .line 2731
    const-string v8, " skipLockWhenStart:"

    .line 2732
    .line 2733
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2734
    .line 2735
    .line 2736
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2737
    .line 2738
    .line 2739
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2740
    .line 2741
    .line 2742
    move-result-object v2

    .line 2743
    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    .line 2745
    .line 2746
    if-nez v0, :cond_5f

    .line 2747
    .line 2748
    new-instance v0, Landroid/content/Intent;

    .line 2749
    .line 2750
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2751
    .line 2752
    .line 2753
    move-result-object v2

    .line 2754
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2755
    .line 2756
    .line 2757
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 2758
    .line 2759
    .line 2760
    move-result-object v2

    .line 2761
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2762
    .line 2763
    .line 2764
    if-eqz v7, :cond_62

    .line 2765
    .line 2766
    const/4 v2, 0x1

    .line 2767
    invoke-virtual {v7, v2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 2768
    .line 2769
    .line 2770
    goto :goto_42

    .line 2771
    :cond_62
    const/4 v2, 0x1

    .line 2772
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 2773
    .line 2774
    .line 2775
    move-result-object v7

    .line 2776
    invoke-virtual {v7, v2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 2777
    .line 2778
    .line 2779
    move-result-object v7

    .line 2780
    :goto_42
    iget-object v8, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2781
    .line 2782
    new-array v12, v2, [Landroid/content/Intent;

    .line 2783
    .line 2784
    const/4 v2, 0x0

    .line 2785
    aput-object v14, v12, v2

    .line 2786
    .line 2787
    filled-new-array {v5}, [Ljava/lang/String;

    .line 2788
    .line 2789
    .line 2790
    move-result-object v64

    .line 2791
    const/16 v62, 0x0

    .line 2792
    .line 2793
    const/16 v56, 0x0

    .line 2794
    .line 2795
    const/16 v53, 0x2

    .line 2796
    .line 2797
    const/16 v59, 0x0

    .line 2798
    .line 2799
    const/high16 v57, 0x50000000

    .line 2800
    .line 2801
    const/16 v58, 0x0

    .line 2802
    .line 2803
    move-object/from16 v52, v8

    .line 2804
    .line 2805
    move/from16 v55, v11

    .line 2806
    .line 2807
    move-object/from16 v60, v6

    .line 2808
    .line 2809
    move-object/from16 v61, v15

    .line 2810
    .line 2811
    move-object/from16 v63, v12

    .line 2812
    .line 2813
    invoke-virtual/range {v52 .. v64}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    .line 2814
    .line 2815
    .line 2816
    move-result-object v2

    .line 2817
    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    .line 2818
    .line 2819
    .line 2820
    move-result v5

    .line 2821
    iget-object v8, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2822
    .line 2823
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppLockedCheckAction()Ljava/lang/String;

    .line 2824
    .line 2825
    .line 2826
    move-result-object v8

    .line 2827
    new-instance v12, Landroid/content/Intent;

    .line 2828
    .line 2829
    invoke-direct {v12, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2830
    .line 2831
    .line 2832
    const/high16 v17, 0x8800000

    .line 2833
    .line 2834
    or-int v5, v5, v17

    .line 2835
    .line 2836
    invoke-virtual {v12, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2837
    .line 2838
    .line 2839
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2840
    .line 2841
    invoke-virtual {v12, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2842
    .line 2843
    .line 2844
    new-instance v3, Landroid/content/IntentSender;

    .line 2845
    .line 2846
    invoke-direct {v3, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 2847
    .line 2848
    .line 2849
    invoke-virtual {v12, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2850
    .line 2851
    .line 2852
    if-eqz v77, :cond_63

    .line 2853
    .line 2854
    move-object/from16 v1, v28

    .line 2855
    .line 2856
    const/4 v2, 0x1

    .line 2857
    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2858
    .line 2859
    .line 2860
    :cond_63
    const-string v1, "LOCKED_PACKAGE_INTENT"

    .line 2861
    .line 2862
    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2863
    .line 2864
    .line 2865
    const-string v0, "LOCKED_PACKAGE_NAME"

    .line 2866
    .line 2867
    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2868
    .line 2869
    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2870
    .line 2871
    .line 2872
    const-string v0, "LOCKED_PACKAGE_USERID"

    .line 2873
    .line 2874
    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2875
    .line 2876
    .line 2877
    if-nez v27, :cond_64

    .line 2878
    .line 2879
    const/4 v0, 0x0

    .line 2880
    goto :goto_43

    .line 2881
    :cond_64
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    .line 2882
    .line 2883
    .line 2884
    move-result v0

    .line 2885
    :goto_43
    const-string v1, "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

    .line 2886
    .line 2887
    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2888
    .line 2889
    .line 2890
    if-nez v7, :cond_65

    .line 2891
    .line 2892
    const/4 v0, 0x0

    .line 2893
    goto :goto_44

    .line 2894
    :cond_65
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 2895
    .line 2896
    .line 2897
    move-result-object v0

    .line 2898
    :goto_44
    const-string v1, "LOCKED_PACKAGE_ACTIVITY_OPTIONS"

    .line 2899
    .line 2900
    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2901
    .line 2902
    .line 2903
    const-string v0, "com.samsung.android.applock"

    .line 2904
    .line 2905
    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2906
    .line 2907
    .line 2908
    invoke-static {v11}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 2909
    .line 2910
    .line 2911
    move-result v0

    .line 2912
    const/4 v1, 0x0

    .line 2913
    if-eqz v0, :cond_66

    .line 2914
    .line 2915
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2916
    .line 2917
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 2918
    .line 2919
    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 2920
    .line 2921
    move/from16 v3, v35

    .line 2922
    .line 2923
    invoke-static {v3, v3, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    .line 2924
    .line 2925
    .line 2926
    move-result v24

    .line 2927
    const/16 v22, 0x0

    .line 2928
    .line 2929
    const/16 v23, 0x0

    .line 2930
    .line 2931
    move-object/from16 v19, v0

    .line 2932
    .line 2933
    move-object/from16 v20, v12

    .line 2934
    .line 2935
    move-object/from16 v21, v1

    .line 2936
    .line 2937
    move/from16 v25, v66

    .line 2938
    .line 2939
    invoke-virtual/range {v19 .. v25}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 2940
    .line 2941
    .line 2942
    move-result-object v0

    .line 2943
    goto :goto_45

    .line 2944
    :cond_66
    move/from16 v3, v35

    .line 2945
    .line 2946
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2947
    .line 2948
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 2949
    .line 2950
    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 2951
    .line 2952
    invoke-static {v3, v3, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    .line 2953
    .line 2954
    .line 2955
    move-result v24

    .line 2956
    const/16 v23, 0x0

    .line 2957
    .line 2958
    move-object/from16 v19, v0

    .line 2959
    .line 2960
    move-object/from16 v20, v12

    .line 2961
    .line 2962
    move-object/from16 v21, v1

    .line 2963
    .line 2964
    move/from16 v22, v11

    .line 2965
    .line 2966
    move/from16 v25, v66

    .line 2967
    .line 2968
    invoke-virtual/range {v19 .. v25}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 2969
    .line 2970
    .line 2971
    move-result-object v0

    .line 2972
    :goto_45
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2973
    .line 2974
    move/from16 v5, v33

    .line 2975
    .line 2976
    const/4 v1, 0x0

    .line 2977
    invoke-virtual {v2, v12, v0, v5, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    .line 2978
    .line 2979
    .line 2980
    move-result-object v2

    .line 2981
    if-eqz v2, :cond_67

    .line 2982
    .line 2983
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2984
    .line 2985
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2986
    .line 2987
    invoke-virtual {v12, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2988
    .line 2989
    .line 2990
    move-object v4, v2

    .line 2991
    move/from16 v54, v3

    .line 2992
    .line 2993
    move v8, v5

    .line 2994
    move-object v14, v12

    .line 2995
    move/from16 v46, v66

    .line 2996
    .line 2997
    move-object v12, v7

    .line 2998
    :goto_46
    const/4 v7, 0x0

    .line 2999
    goto :goto_49

    .line 3000
    :cond_67
    const-string v0, "AppLock can not resolve Activity, should never happen. Check Action "

    .line 3001
    .line 3002
    invoke-static {v0, v8, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    .line 3004
    .line 3005
    move/from16 v54, v3

    .line 3006
    .line 3007
    move v8, v5

    .line 3008
    move-object v12, v7

    .line 3009
    move-object/from16 v0, v16

    .line 3010
    .line 3011
    move/from16 v46, v66

    .line 3012
    .line 3013
    goto :goto_46

    .line 3014
    :cond_68
    move-object/from16 v7, v18

    .line 3015
    .line 3016
    move/from16 v8, v33

    .line 3017
    .line 3018
    move/from16 v3, v35

    .line 3019
    .line 3020
    :goto_47
    move-object/from16 v10, v48

    .line 3021
    .line 3022
    goto :goto_48

    .line 3023
    :cond_69
    move v3, v8

    .line 3024
    move-object/from16 v7, v18

    .line 3025
    .line 3026
    move/from16 v8, v33

    .line 3027
    .line 3028
    goto :goto_47

    .line 3029
    :cond_6a
    move/from16 v26, v0

    .line 3030
    .line 3031
    move v3, v8

    .line 3032
    move-object/from16 v34, v10

    .line 3033
    .line 3034
    move/from16 v66, v12

    .line 3035
    .line 3036
    move-object/from16 v10, v48

    .line 3037
    .line 3038
    move v8, v7

    .line 3039
    move-object/from16 v7, v18

    .line 3040
    .line 3041
    :goto_48
    move-object v12, v7

    .line 3042
    move-object/from16 v0, v16

    .line 3043
    .line 3044
    move-object v7, v5

    .line 3045
    :goto_49
    if-eqz v0, :cond_6b

    .line 3046
    .line 3047
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 3048
    .line 3049
    if-eqz v2, :cond_6b

    .line 3050
    .line 3051
    move-object/from16 v5, p1

    .line 3052
    .line 3053
    iget-object v4, v5, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 3054
    .line 3055
    move-object/from16 v1, p0

    .line 3056
    .line 3057
    move-object/from16 v16, v29

    .line 3058
    .line 3059
    move v14, v3

    .line 3060
    move-object v3, v4

    .line 3061
    move-object v4, v6

    .line 3062
    move-object/from16 v20, v15

    .line 3063
    .line 3064
    move-object v15, v5

    .line 3065
    move-object/from16 v5, v20

    .line 3066
    .line 3067
    move-object/from16 v18, v6

    .line 3068
    .line 3069
    move/from16 v65, v11

    .line 3070
    .line 3071
    const/4 v11, -0x1

    .line 3072
    move-object/from16 v6, v45

    .line 3073
    .line 3074
    move/from16 v17, v14

    .line 3075
    .line 3076
    move v14, v8

    .line 3077
    move/from16 v8, v65

    .line 3078
    .line 3079
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    .line 3080
    .line 3081
    .line 3082
    move-result-object v1

    .line 3083
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 3084
    .line 3085
    const/4 v3, 0x0

    .line 3086
    invoke-virtual {v2, v1, v0, v14, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    .line 3087
    .line 3088
    .line 3089
    move-result-object v4

    .line 3090
    move-object/from16 v73, v1

    .line 3091
    .line 3092
    move-object/from16 v51, v3

    .line 3093
    .line 3094
    move-object/from16 v74, v51

    .line 3095
    .line 3096
    move v6, v14

    .line 3097
    move/from16 v70, v17

    .line 3098
    .line 3099
    move/from16 v69, v66

    .line 3100
    .line 3101
    goto :goto_4a

    .line 3102
    :cond_6b
    move/from16 v17, v3

    .line 3103
    .line 3104
    move-object/from16 v18, v6

    .line 3105
    .line 3106
    move v6, v8

    .line 3107
    move/from16 v65, v11

    .line 3108
    .line 3109
    move-object/from16 v20, v15

    .line 3110
    .line 3111
    move-object/from16 v16, v29

    .line 3112
    .line 3113
    const/4 v3, 0x0

    .line 3114
    const/4 v11, -0x1

    .line 3115
    move-object/from16 v15, p1

    .line 3116
    .line 3117
    move-object/from16 v74, v7

    .line 3118
    .line 3119
    move-object/from16 v73, v14

    .line 3120
    .line 3121
    move/from16 v69, v46

    .line 3122
    .line 3123
    move/from16 v70, v54

    .line 3124
    .line 3125
    :goto_4a
    if-nez v67, :cond_6c

    .line 3126
    .line 3127
    if-lez v66, :cond_6c

    .line 3128
    .line 3129
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3130
    .line 3131
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 3132
    .line 3133
    move/from16 v1, v66

    .line 3134
    .line 3135
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    .line 3136
    .line 3137
    .line 3138
    move-result-object v0

    .line 3139
    if-eqz v0, :cond_6c

    .line 3140
    .line 3141
    goto :goto_4b

    .line 3142
    :cond_6c
    move-object/from16 v0, v67

    .line 3143
    .line 3144
    :goto_4b
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3145
    .line 3146
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 3147
    .line 3148
    .line 3149
    move-result-object v2

    .line 3150
    iget-boolean v5, v15, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 3151
    .line 3152
    if-eqz v32, :cond_6d

    .line 3153
    .line 3154
    const/16 v81, 0x1

    .line 3155
    .line 3156
    goto :goto_4c

    .line 3157
    :cond_6d
    const/16 v81, 0x0

    .line 3158
    .line 3159
    :goto_4c
    if-nez v2, :cond_6e

    .line 3160
    .line 3161
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    .line 3162
    .line 3163
    .line 3164
    move-result-object v2

    .line 3165
    :cond_6e
    move-object/from16 v76, v2

    .line 3166
    .line 3167
    new-instance v2, Lcom/android/server/wm/ActivityRecord;

    .line 3168
    .line 3169
    move-object/from16 v66, v2

    .line 3170
    .line 3171
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 3172
    .line 3173
    move-object/from16 v82, v7

    .line 3174
    .line 3175
    const/16 v86, 0x0

    .line 3176
    .line 3177
    const-wide/16 v87, 0x0

    .line 3178
    .line 3179
    const/16 v85, 0x0

    .line 3180
    .line 3181
    move-object/from16 v67, v1

    .line 3182
    .line 3183
    move-object/from16 v68, v0

    .line 3184
    .line 3185
    move-object/from16 v71, v18

    .line 3186
    .line 3187
    move-object/from16 v72, v20

    .line 3188
    .line 3189
    move-object/from16 v75, v4

    .line 3190
    .line 3191
    move/from16 v80, v5

    .line 3192
    .line 3193
    move-object/from16 v83, v12

    .line 3194
    .line 3195
    move-object/from16 v84, v27

    .line 3196
    .line 3197
    invoke-direct/range {v66 .. v88}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;J)V

    .line 3198
    .line 3199
    .line 3200
    iput-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3201
    .line 3202
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 3203
    .line 3204
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3205
    .line 3206
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityStartInterceptor;->hasAliasActivity(Landroid/content/Intent;)Z

    .line 3207
    .line 3208
    .line 3209
    move-result v1

    .line 3210
    if-eqz v1, :cond_6f

    .line 3211
    .line 3212
    const/4 v1, 0x1

    .line 3213
    iput-boolean v1, v2, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    .line 3214
    .line 3215
    :cond_6f
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 3216
    .line 3217
    move-object/from16 v5, v27

    .line 3218
    .line 3219
    if-nez v1, :cond_70

    .line 3220
    .line 3221
    if-eqz v5, :cond_70

    .line 3222
    .line 3223
    iget-object v1, v5, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 3224
    .line 3225
    iput-object v1, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 3226
    .line 3227
    :cond_70
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3228
    .line 3229
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 3230
    .line 3231
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    .line 3232
    .line 3233
    .line 3234
    move-result v1

    .line 3235
    if-eqz v0, :cond_71

    .line 3236
    .line 3237
    iget-object v7, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 3238
    .line 3239
    if-eqz v7, :cond_71

    .line 3240
    .line 3241
    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3242
    .line 3243
    iget v3, v0, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 3244
    .line 3245
    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 3246
    .line 3247
    move/from16 v62, v0

    .line 3248
    .line 3249
    move-object/from16 v54, v1

    .line 3250
    .line 3251
    move/from16 v55, v3

    .line 3252
    .line 3253
    goto :goto_4d

    .line 3254
    :cond_71
    move/from16 v55, v1

    .line 3255
    .line 3256
    move-object/from16 v54, v3

    .line 3257
    .line 3258
    const/16 v62, 0x0

    .line 3259
    .line 3260
    :goto_4d
    sget-object v52, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    .line 3261
    .line 3262
    new-instance v0, Landroid/content/ComponentName;

    .line 3263
    .line 3264
    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3265
    .line 3266
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3267
    .line 3268
    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3269
    .line 3270
    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    .line 3272
    .line 3273
    const/16 v57, 0x0

    .line 3274
    .line 3275
    const/16 v61, 0x0

    .line 3276
    .line 3277
    const-string v56, "activity"

    .line 3278
    .line 3279
    const/16 v59, 0x0

    .line 3280
    .line 3281
    const/16 v63, 0x0

    .line 3282
    .line 3283
    move-object/from16 v53, v0

    .line 3284
    .line 3285
    move/from16 v58, v65

    .line 3286
    .line 3287
    move-object/from16 v60, v4

    .line 3288
    .line 3289
    invoke-virtual/range {v52 .. v63}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    .line 3290
    .line 3291
    .line 3292
    move-result v0

    .line 3293
    if-eqz v0, :cond_72

    .line 3294
    .line 3295
    const/16 v0, -0xc8

    .line 3296
    .line 3297
    return v0

    .line 3298
    :cond_72
    if-eqz v26, :cond_74

    .line 3299
    .line 3300
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3301
    .line 3302
    if-eqz v0, :cond_74

    .line 3303
    .line 3304
    :try_start_b
    new-instance v0, Landroid/content/Intent;

    .line 3305
    .line 3306
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3307
    .line 3308
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3309
    .line 3310
    .line 3311
    move-object/from16 v1, v34

    .line 3312
    .line 3313
    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 3314
    .line 3315
    .line 3316
    move-result v0

    .line 3317
    const/4 v1, 0x1

    .line 3318
    if-eq v0, v1, :cond_73

    .line 3319
    .line 3320
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3321
    .line 3322
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 3323
    .line 3324
    .line 3325
    move-result v0

    .line 3326
    const/high16 v1, 0x4000000

    .line 3327
    .line 3328
    and-int/2addr v0, v1

    .line 3329
    if-eqz v0, :cond_74

    .line 3330
    .line 3331
    const/4 v1, 0x1

    .line 3332
    goto :goto_4e

    .line 3333
    :catch_7
    move-exception v0

    .line 3334
    goto :goto_4f

    .line 3335
    :cond_73
    :goto_4e
    iput-boolean v1, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchingRequestedFromNotification:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 3336
    .line 3337
    goto :goto_50

    .line 3338
    :goto_4f
    const-string v1, "Exception while parsing intent but ignorable, was : "

    .line 3339
    .line 3340
    invoke-static {v0, v1, v9}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    .line 3342
    .line 3343
    :cond_74
    :goto_50
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3344
    .line 3345
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 3346
    .line 3347
    if-eqz v0, :cond_75

    .line 3348
    .line 3349
    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3350
    .line 3351
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3352
    .line 3353
    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 3354
    .line 3355
    if-ne v1, v0, :cond_75

    .line 3356
    .line 3357
    const/16 v31, 0x1

    .line 3358
    .line 3359
    goto :goto_51

    .line 3360
    :cond_75
    const/16 v31, 0x0

    .line 3361
    .line 3362
    :goto_51
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    .line 3363
    .line 3364
    .line 3365
    move-result v0

    .line 3366
    if-eqz v0, :cond_76

    .line 3367
    .line 3368
    if-nez v31, :cond_76

    .line 3369
    .line 3370
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3371
    .line 3372
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    .line 3373
    .line 3374
    .line 3375
    :cond_76
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 3376
    .line 3377
    move-object/from16 v1, p0

    .line 3378
    .line 3379
    move-object v3, v5

    .line 3380
    move-object/from16 v4, v32

    .line 3381
    .line 3382
    move-object v5, v0

    .line 3383
    move-object v7, v12

    .line 3384
    move-object/from16 v8, v44

    .line 3385
    .line 3386
    move-object v9, v10

    .line 3387
    move-object/from16 v10, v16

    .line 3388
    .line 3389
    move-object/from16 v11, v51

    .line 3390
    .line 3391
    move/from16 v12, v17

    .line 3392
    .line 3393
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;I)I

    .line 3394
    .line 3395
    .line 3396
    move-result v0

    .line 3397
    iput v0, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 3398
    .line 3399
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 3400
    .line 3401
    if-eqz v1, :cond_77

    .line 3402
    .line 3403
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3404
    .line 3405
    const/4 v3, 0x0

    .line 3406
    aput-object v2, v1, v3

    .line 3407
    .line 3408
    :cond_77
    return v0

    .line 3409
    :catch_8
    move-exception v0

    .line 3410
    move/from16 v65, v11

    .line 3411
    .line 3412
    move-object v1, v14

    .line 3413
    move-object/from16 v15, v34

    .line 3414
    .line 3415
    move/from16 v4, v53

    .line 3416
    .line 3417
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 3418
    .line 3419
    if-eqz v1, :cond_7b

    .line 3420
    .line 3421
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 3422
    .line 3423
    .line 3424
    move-result-object v2

    .line 3425
    if-nez v2, :cond_78

    .line 3426
    .line 3427
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 3428
    .line 3429
    .line 3430
    move-result-object v2

    .line 3431
    if-eqz v2, :cond_7b

    .line 3432
    .line 3433
    :cond_78
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 3434
    .line 3435
    .line 3436
    move-result-object v2

    .line 3437
    if-eqz v2, :cond_79

    .line 3438
    .line 3439
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 3440
    .line 3441
    .line 3442
    move-result-object v1

    .line 3443
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 3444
    .line 3445
    .line 3446
    move-result-object v1

    .line 3447
    goto :goto_52

    .line 3448
    :cond_79
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 3449
    .line 3450
    .line 3451
    move-result-object v1

    .line 3452
    :goto_52
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3453
    .line 3454
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 3455
    .line 3456
    .line 3457
    move-result-object v2

    .line 3458
    move/from16 v3, v65

    .line 3459
    .line 3460
    const/4 v5, 0x1

    .line 3461
    invoke-virtual {v2, v4, v3, v1, v5}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 3462
    .line 3463
    .line 3464
    move-result v1

    .line 3465
    if-eqz v1, :cond_7b

    .line 3466
    .line 3467
    if-eqz v77, :cond_7a

    .line 3468
    .line 3469
    const/16 v40, 0x0

    .line 3470
    .line 3471
    const/16 v41, 0x0

    .line 3472
    .line 3473
    const/16 v36, -0x1

    .line 3474
    .line 3475
    const/16 v39, 0x0

    .line 3476
    .line 3477
    const/16 v42, 0x0

    .line 3478
    .line 3479
    const/16 v43, 0x0

    .line 3480
    .line 3481
    move-object/from16 v35, v77

    .line 3482
    .line 3483
    move-object/from16 v37, v78

    .line 3484
    .line 3485
    move/from16 v38, v79

    .line 3486
    .line 3487
    invoke-virtual/range {v35 .. v43}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 3488
    .line 3489
    .line 3490
    :cond_7a
    invoke-static {v15}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 3491
    .line 3492
    .line 3493
    const/16 v1, -0x5c

    .line 3494
    .line 3495
    return v1

    .line 3496
    :cond_7b
    throw v0

    .line 3497
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3498
    .line 3499
    const-string v1, "Need to specify a reason."

    .line 3500
    .line 3501
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3502
    .line 3503
    .line 3504
    throw v0
.end method

.method public final getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v10, p1

    .line 3
    .line 4
    move-object/from16 v11, p3

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 7
    .line 8
    const/4 v12, 0x0

    .line 9
    const/4 v13, 0x1

    .line 10
    const/4 v14, 0x0

    .line 11
    if-eqz v1, :cond_d

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, -0x1

    .line 18
    if-eq v1, v2, :cond_d

    .line 19
    .line 20
    if-eqz v10, :cond_0

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v10, v13}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    if-eqz v11, :cond_1

    .line 35
    .line 36
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    :cond_0
    move-object v1, v14

    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p0, v1, v11}, Lcom/android/server/wm/ActivityStarter;->canMoveTaskToBottomTask(ILcom/android/server/wm/Task;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v11, :cond_2

    .line 56
    .line 57
    if-nez v3, :cond_2

    .line 58
    .line 59
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_0

    .line 66
    .line 67
    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 68
    .line 69
    if-eq v1, v2, :cond_3

    .line 70
    .line 71
    const/16 v2, -0x2710

    .line 72
    .line 73
    if-eq v1, v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {v3, v1, v12, v14, v12}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    move-object v1, v14

    .line 81
    :goto_0
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 82
    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    move-object v2, v14

    .line 91
    :goto_1
    const/4 v4, 0x5

    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    invoke-virtual {v1, v13, v12}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-eqz v5, :cond_5

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-nez v5, :cond_8

    .line 105
    .line 106
    iget v5, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 107
    .line 108
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    .line 109
    .line 110
    invoke-virtual {v6, v5, v12}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_5

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    if-eqz v2, :cond_7

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eq v1, v13, :cond_6

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eq v1, v4, :cond_6

    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    :cond_6
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    move-object v1, v14

    .line 145
    :cond_8
    :goto_2
    if-eqz v1, :cond_0

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_9

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    goto :goto_4

    .line 166
    :cond_9
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eq v2, v13, :cond_a

    .line 171
    .line 172
    if-ne v2, v4, :cond_0

    .line 173
    .line 174
    :cond_a
    if-nez p4, :cond_b

    .line 175
    .line 176
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_b
    move-object/from16 v4, p4

    .line 184
    .line 185
    :goto_3
    invoke-virtual {v4, v2}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-static {v4, v10, v11}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    if-eqz v1, :cond_0

    .line 200
    .line 201
    const/4 v5, 0x0

    .line 202
    const/4 v6, 0x0

    .line 203
    const/4 v9, 0x1

    .line 204
    move-object/from16 v2, p1

    .line 205
    .line 206
    move-object v3, v4

    .line 207
    move-object/from16 v4, p3

    .line 208
    .line 209
    move/from16 v7, p2

    .line 210
    .line 211
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    if-eqz v1, :cond_0

    .line 216
    .line 217
    :goto_4
    if-eqz v1, :cond_d

    .line 218
    .line 219
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    if-eqz v2, :cond_d

    .line 224
    .line 225
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_c

    .line 234
    .line 235
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 236
    .line 237
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 238
    .line 239
    invoke-virtual {v3, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_c

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_c
    return-object v1

    .line 247
    :cond_d
    :goto_5
    if-eqz p4, :cond_e

    .line 248
    .line 249
    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-nez v1, :cond_f

    .line 254
    .line 255
    :cond_e
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 256
    .line 257
    if-nez v1, :cond_f

    .line 258
    .line 259
    move v6, v13

    .line 260
    goto :goto_6

    .line 261
    :cond_f
    move v6, v12

    .line 262
    :goto_6
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 263
    .line 264
    if-eqz v1, :cond_10

    .line 265
    .line 266
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 267
    .line 268
    move-object v5, v1

    .line 269
    goto :goto_7

    .line 270
    :cond_10
    move-object v5, v14

    .line 271
    :goto_7
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 272
    .line 273
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 274
    .line 275
    move-object/from16 v2, p1

    .line 276
    .line 277
    move-object/from16 v3, p4

    .line 278
    .line 279
    move-object/from16 v4, p3

    .line 280
    .line 281
    move/from16 v8, p2

    .line 282
    .line 283
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_11

    .line 292
    .line 293
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-nez v2, :cond_11

    .line 298
    .line 299
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 300
    .line 301
    if-ne v1, v2, :cond_11

    .line 302
    .line 303
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 304
    .line 305
    iget-object v2, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 306
    .line 307
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-nez v2, :cond_11

    .line 312
    .line 313
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 314
    .line 315
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 316
    .line 317
    .line 318
    :cond_11
    return-object v1
.end method

.method public final getStartInfo()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ":"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public final handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/Transition;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Task;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p3

    .line 6
    .line 7
    move-object/from16 v9, p4

    .line 8
    .line 9
    move-object/from16 v10, p5

    .line 10
    .line 11
    const/4 v11, 0x1

    .line 12
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 13
    .line 14
    iget-boolean v12, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 15
    .line 16
    const/4 v13, 0x0

    .line 17
    iput-boolean v13, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    :goto_0
    move-object v14, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :goto_1
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_22

    .line 35
    .line 36
    if-nez v14, :cond_1

    .line 37
    .line 38
    goto/16 :goto_e

    .line 39
    .line 40
    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 41
    .line 42
    const/4 v6, 0x4

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iget-object v1, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 48
    .line 49
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v7, v13}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    iget v3, v1, Lcom/android/server/wm/Transition;->mType:I

    .line 66
    .line 67
    if-eq v3, v6, :cond_2

    .line 68
    .line 69
    if-ne v3, v11, :cond_3

    .line 70
    .line 71
    :cond_2
    iget v3, v1, Lcom/android/server/wm/Transition;->mFlags:I

    .line 72
    .line 73
    and-int/lit16 v3, v3, 0x100

    .line 74
    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    invoke-virtual {v2, v11, v13}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    if-ne v2, v14, :cond_3

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_3

    .line 90
    .line 91
    const/high16 v2, 0x20000

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-static {}, Landroid/security/Flags;->contentUriPermissionApis()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    .line 109
    .line 110
    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 111
    .line 112
    iget v4, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 113
    .line 114
    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 115
    .line 116
    iget-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    .line 117
    .line 118
    move/from16 v16, v1

    .line 119
    .line 120
    move-object/from16 v1, p1

    .line 121
    .line 122
    move v15, v6

    .line 123
    move/from16 v6, v16

    .line 124
    .line 125
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    move v15, v6

    .line 130
    :goto_2
    if-eqz p2, :cond_5

    .line 131
    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getTaskAlwaysOnTop()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_5

    .line 137
    .line 138
    invoke-virtual {v14, v11}, Lcom/android/server/wm/Task;->setAlwaysOnTop(Z)V

    .line 139
    .line 140
    .line 141
    :cond_5
    invoke-virtual {v14, v13}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eq v2, v3, :cond_6

    .line 154
    .line 155
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 156
    .line 157
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 158
    .line 159
    invoke-virtual {v2, v1, v3, v13}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V

    .line 160
    .line 161
    .line 162
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-nez v2, :cond_8

    .line 167
    .line 168
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 169
    .line 170
    if-eqz v2, :cond_8

    .line 171
    .line 172
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 173
    .line 174
    iget v3, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    new-array v4, v11, [Z

    .line 180
    .line 181
    aput-boolean v13, v4, v13

    .line 182
    .line 183
    new-instance v5, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;

    .line 184
    .line 185
    invoke-direct {v5, v3, v4}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;-><init>(I[Z)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v5, v11}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_8

    .line 193
    .line 194
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 195
    .line 196
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 197
    .line 198
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 199
    .line 200
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 201
    .line 202
    if-eqz v2, :cond_8

    .line 203
    .line 204
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 205
    .line 206
    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 207
    .line 208
    if-nez v3, :cond_7

    .line 209
    .line 210
    const-class v3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 211
    .line 212
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 217
    .line 218
    iput-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 219
    .line 220
    :cond_7
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 221
    .line 222
    if-eqz v2, :cond_8

    .line 223
    .line 224
    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 225
    .line 226
    iget-object v2, v2, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 227
    .line 228
    iget-object v2, v2, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 229
    .line 230
    if-eqz v2, :cond_8

    .line 231
    .line 232
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .line 234
    .line 235
    :catch_0
    :cond_8
    iget-object v2, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 236
    .line 237
    const/4 v3, 0x3

    .line 238
    if-eqz v8, :cond_c

    .line 239
    .line 240
    const/4 v4, 0x2

    .line 241
    if-eq v8, v4, :cond_c

    .line 242
    .line 243
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 244
    .line 245
    if-eqz v5, :cond_a

    .line 246
    .line 247
    if-ne v8, v3, :cond_a

    .line 248
    .line 249
    if-eqz v9, :cond_a

    .line 250
    .line 251
    if-eqz v1, :cond_a

    .line 252
    .line 253
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 254
    .line 255
    if-eqz v1, :cond_a

    .line 256
    .line 257
    iget-object v5, v9, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 258
    .line 259
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 264
    .line 265
    if-eqz v1, :cond_9

    .line 266
    .line 267
    iget-object v5, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 268
    .line 269
    if-eqz v5, :cond_9

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_9
    if-eqz v1, :cond_a

    .line 273
    .line 274
    iget v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    .line 275
    .line 276
    if-eq v1, v4, :cond_c

    .line 277
    .line 278
    if-ne v1, v15, :cond_a

    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    .line 282
    .line 283
    if-eqz v1, :cond_b

    .line 284
    .line 285
    if-ne v8, v3, :cond_b

    .line 286
    .line 287
    if-eqz p2, :cond_b

    .line 288
    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->isResumedAffordanceAnimationRequested()Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-eqz v1, :cond_b

    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_b
    move v1, v13

    .line 297
    goto :goto_4

    .line 298
    :cond_c
    :goto_3
    move v1, v11

    .line 299
    :goto_4
    if-eqz p2, :cond_d

    .line 300
    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    if-eqz v4, :cond_d

    .line 306
    .line 307
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    .line 308
    .line 309
    if-eqz v4, :cond_d

    .line 310
    .line 311
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    .line 312
    .line 313
    if-eqz v4, :cond_d

    .line 314
    .line 315
    move v4, v11

    .line 316
    goto :goto_5

    .line 317
    :cond_d
    move v4, v13

    .line 318
    :goto_5
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    .line 319
    .line 320
    if-eqz v5, :cond_e

    .line 321
    .line 322
    if-eqz p2, :cond_e

    .line 323
    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->isResumedAffordanceAnimationRequested()Z

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    if-eqz v6, :cond_e

    .line 329
    .line 330
    move v6, v11

    .line 331
    goto :goto_6

    .line 332
    :cond_e
    move v6, v13

    .line 333
    :goto_6
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 334
    .line 335
    if-eqz v15, :cond_f

    .line 336
    .line 337
    if-eqz v9, :cond_f

    .line 338
    .line 339
    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 340
    .line 341
    iget-boolean v11, v15, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForCarLife:Z

    .line 342
    .line 343
    if-eqz v11, :cond_f

    .line 344
    .line 345
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStartInterceptor;->hasCarLifeDisplay()Z

    .line 346
    .line 347
    .line 348
    move-result v11

    .line 349
    if-eqz v11, :cond_f

    .line 350
    .line 351
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 352
    .line 353
    iput-boolean v13, v11, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForCarLife:Z

    .line 354
    .line 355
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/Transition;->abort()V

    .line 356
    .line 357
    .line 358
    const/4 v9, 0x0

    .line 359
    const/4 v11, 0x1

    .line 360
    goto :goto_7

    .line 361
    :cond_f
    move v11, v13

    .line 362
    :goto_7
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 363
    .line 364
    if-eqz v15, :cond_11

    .line 365
    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    .line 367
    .line 368
    .line 369
    move-result v15

    .line 370
    if-eqz v15, :cond_11

    .line 371
    .line 372
    iget-boolean v15, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 373
    .line 374
    if-nez v15, :cond_11

    .line 375
    .line 376
    if-nez v4, :cond_11

    .line 377
    .line 378
    if-eqz v9, :cond_11

    .line 379
    .line 380
    if-eqz v1, :cond_10

    .line 381
    .line 382
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    .line 383
    .line 384
    .line 385
    move-result v15

    .line 386
    if-nez v15, :cond_11

    .line 387
    .line 388
    :cond_10
    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    .line 389
    .line 390
    .line 391
    :goto_8
    const/4 v9, 0x0

    .line 392
    goto/16 :goto_b

    .line 393
    .line 394
    :cond_11
    if-eqz v1, :cond_14

    .line 395
    .line 396
    if-nez v11, :cond_14

    .line 397
    .line 398
    if-eqz v5, :cond_12

    .line 399
    .line 400
    if-ne v8, v3, :cond_12

    .line 401
    .line 402
    if-eqz v9, :cond_12

    .line 403
    .line 404
    if-eqz v6, :cond_12

    .line 405
    .line 406
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 407
    .line 408
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 409
    .line 410
    .line 411
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 412
    .line 413
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransitionController;->setResumedAffordance(Lcom/android/server/wm/WindowContainer;)V

    .line 414
    .line 415
    .line 416
    :cond_12
    iget-object v3, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 417
    .line 418
    if-nez v3, :cond_13

    .line 419
    .line 420
    goto :goto_b

    .line 421
    :cond_13
    invoke-virtual {v3, v7}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 422
    .line 423
    .line 424
    goto :goto_b

    .line 425
    :cond_14
    if-ne v8, v3, :cond_19

    .line 426
    .line 427
    if-eqz v9, :cond_19

    .line 428
    .line 429
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    .line 430
    .line 431
    if-nez v3, :cond_19

    .line 432
    .line 433
    iget-object v3, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 434
    .line 435
    if-nez v3, :cond_15

    .line 436
    .line 437
    goto :goto_a

    .line 438
    :cond_15
    new-instance v5, Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .line 442
    .line 443
    iget-object v6, v3, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 444
    .line 445
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 450
    .line 451
    .line 452
    move-result v11

    .line 453
    if-eqz v11, :cond_16

    .line 454
    .line 455
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v11

    .line 459
    check-cast v11, Lcom/android/server/wm/DisplayContent;

    .line 460
    .line 461
    invoke-static {v11, v5}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    .line 462
    .line 463
    .line 464
    goto :goto_9

    .line 465
    :cond_16
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    :cond_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 470
    .line 471
    .line 472
    move-result v6

    .line 473
    if-eqz v6, :cond_18

    .line 474
    .line 475
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    check-cast v6, Lcom/android/server/wm/Task;

    .line 480
    .line 481
    iget-object v11, v3, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    .line 482
    .line 483
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v6

    .line 487
    if-nez v6, :cond_17

    .line 488
    .line 489
    goto :goto_b

    .line 490
    :cond_18
    :goto_a
    invoke-virtual {v2, v14}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    if-nez v3, :cond_19

    .line 495
    .line 496
    if-nez v4, :cond_19

    .line 497
    .line 498
    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    .line 499
    .line 500
    .line 501
    goto :goto_8

    .line 502
    :cond_19
    :goto_b
    if-eqz v4, :cond_1a

    .line 503
    .line 504
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 505
    .line 506
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 507
    .line 508
    .line 509
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    .line 510
    .line 511
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 512
    .line 513
    .line 514
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 515
    .line 516
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    .line 517
    .line 518
    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/TransitionController;->setTransientLaunch(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 519
    .line 520
    .line 521
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 522
    .line 523
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 528
    .line 529
    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 530
    .line 531
    .line 532
    const/4 v4, 0x1

    .line 533
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 534
    .line 535
    .line 536
    :cond_1a
    if-nez v12, :cond_1c

    .line 537
    .line 538
    iget-object v3, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 539
    .line 540
    if-nez v3, :cond_1b

    .line 541
    .line 542
    goto :goto_c

    .line 543
    :cond_1b
    iput-boolean v13, v3, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    .line 544
    .line 545
    :cond_1c
    :goto_c
    if-eqz v9, :cond_1e

    .line 546
    .line 547
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 548
    .line 549
    if-nez v0, :cond_1d

    .line 550
    .line 551
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 552
    .line 553
    :cond_1d
    const/4 v1, 0x0

    .line 554
    invoke-virtual {v2, v9, v0, v10, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 555
    .line 556
    .line 557
    goto :goto_d

    .line 558
    :cond_1e
    if-nez v8, :cond_1f

    .line 559
    .line 560
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 561
    .line 562
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 563
    .line 564
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 565
    .line 566
    .line 567
    move-result v3

    .line 568
    if-eqz v3, :cond_1f

    .line 569
    .line 570
    goto :goto_d

    .line 571
    :cond_1f
    if-eqz v1, :cond_21

    .line 572
    .line 573
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 574
    .line 575
    if-eqz v1, :cond_20

    .line 576
    .line 577
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 578
    .line 579
    if-eqz v1, :cond_21

    .line 580
    .line 581
    :cond_20
    invoke-virtual {v2, v7, v13}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 582
    .line 583
    .line 584
    iget-object v1, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 585
    .line 586
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    .line 587
    .line 588
    if-eqz v2, :cond_21

    .line 589
    .line 590
    if-eqz v10, :cond_21

    .line 591
    .line 592
    if-eqz v1, :cond_21

    .line 593
    .line 594
    iget v2, v1, Lcom/android/server/wm/Transition;->mType:I

    .line 595
    .line 596
    const/16 v3, 0xa

    .line 597
    .line 598
    if-ne v2, v3, :cond_21

    .line 599
    .line 600
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 601
    .line 602
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    if-eqz v0, :cond_21

    .line 607
    .line 608
    iput-object v10, v1, Lcom/android/server/wm/Transition;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 609
    .line 610
    :cond_21
    :goto_d
    return-object v14

    .line 611
    :cond_22
    :goto_e
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 612
    .line 613
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 614
    .line 615
    if-eqz v2, :cond_23

    .line 616
    .line 617
    const-string/jumbo v0, "startActivity"

    .line 618
    .line 619
    .line 620
    const/4 v2, 0x1

    .line 621
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 622
    .line 623
    .line 624
    goto :goto_f

    .line 625
    :cond_23
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    if-eqz v1, :cond_24

    .line 630
    .line 631
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 632
    .line 633
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 638
    .line 639
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 640
    .line 641
    .line 642
    :cond_24
    :goto_f
    if-eqz v14, :cond_25

    .line 643
    .line 644
    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    if-eqz v0, :cond_25

    .line 649
    .line 650
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    .line 651
    .line 652
    .line 653
    move-result v0

    .line 654
    if-nez v0, :cond_25

    .line 655
    .line 656
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    if-nez v0, :cond_25

    .line 661
    .line 662
    iget-boolean v0, v14, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 663
    .line 664
    if-nez v0, :cond_25

    .line 665
    .line 666
    const-string v0, "handleStartResult"

    .line 667
    .line 668
    invoke-virtual {v14, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    :cond_25
    if-eqz v9, :cond_26

    .line 672
    .line 673
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/Transition;->abort()V

    .line 674
    .line 675
    .line 676
    :cond_26
    const/4 v0, 0x0

    .line 677
    return-object v0
.end method

.method public isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    move/from16 v14, p2

    .line 6
    .line 7
    move-object/from16 v15, p3

    .line 8
    .line 9
    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 16
    .line 17
    .line 18
    const/16 v0, -0x5c

    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v12, 0x1

    .line 26
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 27
    .line 28
    const-string v11, "ActivityTaskManager"

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 35
    .line 36
    invoke-virtual {v2, v1, v3, v12}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "Cannot launch home on display area "

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const/16 v0, -0x60

    .line 62
    .line 63
    return v0

    .line 64
    :cond_1
    const/4 v10, 0x0

    .line 65
    const/4 v7, 0x3

    .line 66
    if-nez v14, :cond_4

    .line 67
    .line 68
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 69
    .line 70
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v3, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda55;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    const-class v4, Lcom/android/server/wm/ActivityRecord;

    .line 79
    .line 80
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v3, v4, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v15, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    move v3, v12

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    move v3, v10

    .line 101
    :goto_0
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 102
    .line 103
    .line 104
    if-eqz v3, :cond_4

    .line 105
    .line 106
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 107
    .line 108
    if-ne v7, v1, :cond_3

    .line 109
    .line 110
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    move v1, v10

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    :goto_1
    move v1, v12

    .line 120
    :goto_2
    iget v3, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 121
    .line 122
    const/16 v16, 0x66

    .line 123
    .line 124
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 125
    .line 126
    if-nez v3, :cond_7

    .line 127
    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    xor-int/2addr v1, v12

    .line 137
    if-nez v1, :cond_5

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_5
    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 141
    .line 142
    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 143
    .line 144
    iget v3, v13, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 145
    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    const/16 v22, 0x0

    .line 149
    .line 150
    const/16 v25, 0x0

    .line 151
    .line 152
    const/16 v18, -0x1

    .line 153
    .line 154
    const/16 v21, 0x0

    .line 155
    .line 156
    const/16 v23, 0x0

    .line 157
    .line 158
    const/16 v24, 0x0

    .line 159
    .line 160
    move-object/from16 v17, v1

    .line 161
    .line 162
    move-object/from16 v19, v2

    .line 163
    .line 164
    move/from16 v20, v3

    .line 165
    .line 166
    invoke-virtual/range {v17 .. v25}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 167
    .line 168
    .line 169
    :cond_6
    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 170
    .line 171
    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 172
    .line 173
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v2, "Abort background activity starts from "

    .line 177
    .line 178
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget v0, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 182
    .line 183
    invoke-static {v1, v0, v11}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return v16

    .line 187
    :cond_7
    :goto_3
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 188
    .line 189
    const v3, 0x10008000

    .line 190
    .line 191
    .line 192
    and-int/2addr v1, v3

    .line 193
    if-ne v1, v3, :cond_8

    .line 194
    .line 195
    move v1, v12

    .line 196
    goto :goto_4

    .line 197
    :cond_8
    move v1, v10

    .line 198
    :goto_4
    const/4 v9, 0x0

    .line 199
    const/16 v3, 0x65

    .line 200
    .line 201
    const-string v5, "Attempted Lock Task Mode violation r="

    .line 202
    .line 203
    if-nez v14, :cond_9

    .line 204
    .line 205
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 206
    .line 207
    invoke-virtual {v4, v15, v1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_c

    .line 212
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    return v3

    .line 229
    :cond_9
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    iget-object v4, v13, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 235
    .line 236
    if-eqz v4, :cond_a

    .line 237
    .line 238
    invoke-virtual {v1, v4, v10}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    goto :goto_5

    .line 243
    :cond_a
    invoke-virtual {v1, v9, v13}, Lcom/android/server/wm/LockTaskController;->getLockTaskAuth(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    iget v6, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 248
    .line 249
    iget-object v8, v13, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 250
    .line 251
    invoke-virtual {v1, v13, v6, v8, v4}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/wm/WindowContainer;ILandroid/content/Intent;I)Z

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-eqz v4, :cond_b

    .line 256
    .line 257
    invoke-virtual {v1}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 258
    .line 259
    .line 260
    move v1, v12

    .line 261
    goto :goto_5

    .line 262
    :cond_b
    move v1, v10

    .line 263
    :goto_5
    if-eqz v1, :cond_c

    .line 264
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    return v3

    .line 281
    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 282
    .line 283
    if-eqz v1, :cond_11

    .line 284
    .line 285
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 286
    .line 287
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 288
    .line 289
    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    if-eqz v1, :cond_11

    .line 294
    .line 295
    if-eqz v15, :cond_d

    .line 296
    .line 297
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    :goto_6
    move v4, v2

    .line 302
    goto :goto_7

    .line 303
    :cond_d
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    goto :goto_6

    .line 308
    :goto_7
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 309
    .line 310
    if-eqz v2, :cond_e

    .line 311
    .line 312
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    move v5, v2

    .line 317
    goto :goto_8

    .line 318
    :cond_e
    move v5, v10

    .line 319
    :goto_8
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    .line 320
    .line 321
    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 322
    .line 323
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 324
    .line 325
    iget-object v6, v1, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    .line 326
    .line 327
    if-nez v6, :cond_10

    .line 328
    .line 329
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 330
    .line 331
    if-eqz v2, :cond_f

    .line 332
    .line 333
    iget-object v1, v1, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 334
    .line 335
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 336
    .line 337
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    const-string v2, "Checking activity launch with requiredDisplayCategory=\'%s\' on display %d, which doesn\'t have a matching category."

    .line 346
    .line 347
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    const-string v2, "DisplayWindowPolicyControllerHelper"

    .line 352
    .line 353
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    move v1, v12

    .line 357
    goto :goto_9

    .line 358
    :cond_f
    move v1, v10

    .line 359
    :goto_9
    xor-int/2addr v1, v12

    .line 360
    goto :goto_a

    .line 361
    :cond_10
    move-object v1, v6

    .line 362
    move/from16 v6, p2

    .line 363
    .line 364
    invoke-virtual/range {v1 .. v6}, Landroid/window/DisplayWindowPolicyController;->canActivityBeLaunched(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IIZ)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    :goto_a
    if-nez v1, :cond_11

    .line 369
    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    const-string v2, "Abort to launch "

    .line 373
    .line 374
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 378
    .line 379
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v2, " on display area "

    .line 387
    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 392
    .line 393
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    return v16

    .line 404
    :cond_11
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 405
    .line 406
    iget-object v8, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    .line 407
    .line 408
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 409
    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    .line 411
    .line 412
    .line 413
    move-result v17

    .line 414
    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 415
    .line 416
    iget v4, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 417
    .line 418
    iget v3, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 419
    .line 420
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 421
    .line 422
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 423
    .line 424
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    const/4 v1, 0x2

    .line 428
    if-ne v4, v1, :cond_12

    .line 429
    .line 430
    move/from16 v37, v10

    .line 431
    .line 432
    goto/16 :goto_26

    .line 433
    .line 434
    :cond_12
    if-nez v14, :cond_14

    .line 435
    .line 436
    const/high16 v1, 0x10000000

    .line 437
    .line 438
    and-int v10, v5, v1

    .line 439
    .line 440
    if-ne v10, v1, :cond_13

    .line 441
    .line 442
    goto :goto_b

    .line 443
    :cond_13
    const/4 v10, 0x0

    .line 444
    goto :goto_c

    .line 445
    :cond_14
    :goto_b
    move v10, v12

    .line 446
    :goto_c
    if-eqz v10, :cond_16

    .line 447
    .line 448
    if-eq v4, v7, :cond_15

    .line 449
    .line 450
    const/4 v1, 0x6

    .line 451
    if-eq v4, v1, :cond_15

    .line 452
    .line 453
    const/4 v1, 0x5

    .line 454
    if-eq v4, v1, :cond_15

    .line 455
    .line 456
    const/4 v1, 0x7

    .line 457
    if-eq v4, v1, :cond_15

    .line 458
    .line 459
    const/4 v1, 0x4

    .line 460
    if-eq v4, v1, :cond_15

    .line 461
    .line 462
    const/16 v1, 0xb

    .line 463
    .line 464
    if-ne v4, v1, :cond_16

    .line 465
    .line 466
    :cond_15
    :goto_d
    const/16 v37, 0x0

    .line 467
    .line 468
    goto/16 :goto_26

    .line 469
    .line 470
    :cond_16
    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 471
    .line 472
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 473
    .line 474
    .line 475
    if-eqz v6, :cond_1b

    .line 476
    .line 477
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 478
    .line 479
    if-eqz v10, :cond_17

    .line 480
    .line 481
    move-object v7, v0

    .line 482
    goto :goto_e

    .line 483
    :cond_17
    move-object v7, v15

    .line 484
    :goto_e
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 485
    .line 486
    .line 487
    move-result v12

    .line 488
    invoke-virtual {v8, v7, v12, v6, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    if-eqz v10, :cond_1a

    .line 493
    .line 494
    iget-boolean v7, v1, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    .line 495
    .line 496
    if-eqz v7, :cond_1a

    .line 497
    .line 498
    if-eqz v0, :cond_19

    .line 499
    .line 500
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 501
    .line 502
    .line 503
    move-result v7

    .line 504
    if-nez v7, :cond_18

    .line 505
    .line 506
    if-ne v0, v15, :cond_19

    .line 507
    .line 508
    :cond_18
    const/4 v0, 0x1

    .line 509
    goto :goto_f

    .line 510
    :cond_19
    const/4 v0, 0x0

    .line 511
    :goto_f
    iput-boolean v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    .line 512
    .line 513
    :cond_1a
    :goto_10
    move-object v12, v9

    .line 514
    :goto_11
    const/4 v13, 0x1

    .line 515
    goto :goto_14

    .line 516
    :cond_1b
    if-eqz v15, :cond_1d

    .line 517
    .line 518
    if-eqz v10, :cond_1c

    .line 519
    .line 520
    if-eqz v17, :cond_1d

    .line 521
    .line 522
    :cond_1c
    invoke-virtual {v8, v15, v3, v9, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    goto :goto_10

    .line 527
    :cond_1d
    if-eqz v15, :cond_1e

    .line 528
    .line 529
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 530
    .line 531
    .line 532
    move-result-object v7

    .line 533
    if-eqz v7, :cond_1e

    .line 534
    .line 535
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    :cond_1e
    if-eqz v0, :cond_1a

    .line 540
    .line 541
    new-instance v7, Ljava/util/ArrayList;

    .line 542
    .line 543
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .line 545
    .line 546
    new-instance v12, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;

    .line 547
    .line 548
    const/4 v9, 0x0

    .line 549
    invoke-direct {v12, v9, v7}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 553
    .line 554
    .line 555
    const/4 v0, 0x0

    .line 556
    :goto_12
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 557
    .line 558
    .line 559
    move-result v9

    .line 560
    if-ge v0, v9, :cond_20

    .line 561
    .line 562
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v9

    .line 566
    check-cast v9, Lcom/android/server/wm/Task;

    .line 567
    .line 568
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 569
    .line 570
    .line 571
    move-result v12

    .line 572
    const/4 v13, 0x1

    .line 573
    if-ne v12, v13, :cond_1f

    .line 574
    .line 575
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 576
    .line 577
    .line 578
    move-result v12

    .line 579
    if-eqz v12, :cond_1f

    .line 580
    .line 581
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 582
    .line 583
    .line 584
    move-result-object v9

    .line 585
    invoke-virtual {v1, v9}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)V

    .line 586
    .line 587
    .line 588
    const/4 v12, 0x0

    .line 589
    goto :goto_13

    .line 590
    :cond_1f
    const/4 v12, 0x0

    .line 591
    invoke-virtual {v8, v9, v3, v12, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    :goto_13
    add-int/lit8 v0, v0, 0x1

    .line 596
    .line 597
    move-object/from16 v13, p1

    .line 598
    .line 599
    goto :goto_12

    .line 600
    :cond_20
    const/4 v12, 0x0

    .line 601
    goto :goto_11

    .line 602
    :goto_14
    iget-boolean v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    .line 603
    .line 604
    if-eqz v0, :cond_21

    .line 605
    .line 606
    move v12, v13

    .line 607
    goto/16 :goto_d

    .line 608
    .line 609
    :cond_21
    if-nez v15, :cond_22

    .line 610
    .line 611
    move-object v9, v12

    .line 612
    goto :goto_15

    .line 613
    :cond_22
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;

    .line 614
    .line 615
    const/4 v7, 0x1

    .line 616
    invoke-direct {v0, v7}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v15, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    move-object v9, v0

    .line 624
    :goto_15
    if-nez v14, :cond_25

    .line 625
    .line 626
    if-nez v6, :cond_23

    .line 627
    .line 628
    goto :goto_16

    .line 629
    :cond_23
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 630
    .line 631
    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    if-eqz v0, :cond_24

    .line 636
    .line 637
    move/from16 v28, v13

    .line 638
    .line 639
    goto :goto_17

    .line 640
    :cond_24
    const/16 v28, 0x2

    .line 641
    .line 642
    goto :goto_17

    .line 643
    :cond_25
    :goto_16
    const/16 v28, 0x3

    .line 644
    .line 645
    :goto_17
    iget-boolean v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    .line 646
    .line 647
    if-eqz v0, :cond_26

    .line 648
    .line 649
    invoke-static {v3}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldRestrictActivitySwitch(I)Z

    .line 650
    .line 651
    .line 652
    move-result v0

    .line 653
    if-eqz v0, :cond_26

    .line 654
    .line 655
    move/from16 v33, v13

    .line 656
    .line 657
    goto :goto_18

    .line 658
    :cond_26
    const/16 v33, 0x0

    .line 659
    .line 660
    :goto_18
    const/16 v0, 0x8

    .line 661
    .line 662
    if-ne v4, v0, :cond_2b

    .line 663
    .line 664
    if-eqz v10, :cond_27

    .line 665
    .line 666
    iget-object v0, v8, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 667
    .line 668
    if-eqz v0, :cond_27

    .line 669
    .line 670
    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    .line 671
    .line 672
    if-ne v0, v3, :cond_27

    .line 673
    .line 674
    :goto_19
    move/from16 v19, v13

    .line 675
    .line 676
    goto :goto_1b

    .line 677
    :cond_27
    if-eqz v10, :cond_28

    .line 678
    .line 679
    if-eqz v17, :cond_2b

    .line 680
    .line 681
    :cond_28
    if-eqz v15, :cond_29

    .line 682
    .line 683
    iget-object v0, v8, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 684
    .line 685
    iget v7, v15, Lcom/android/server/wm/Task;->mTaskId:I

    .line 686
    .line 687
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 688
    .line 689
    .line 690
    move-result-object v7

    .line 691
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 696
    .line 697
    if-eqz v0, :cond_29

    .line 698
    .line 699
    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    .line 700
    .line 701
    if-ne v0, v3, :cond_29

    .line 702
    .line 703
    goto :goto_19

    .line 704
    :cond_29
    if-eqz v6, :cond_2b

    .line 705
    .line 706
    iget-object v0, v8, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 707
    .line 708
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 709
    .line 710
    iget v7, v7, Lcom/android/server/wm/Task;->mTaskId:I

    .line 711
    .line 712
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 713
    .line 714
    .line 715
    move-result-object v7

    .line 716
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 721
    .line 722
    if-eqz v0, :cond_2a

    .line 723
    .line 724
    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    .line 725
    .line 726
    if-ne v0, v3, :cond_2a

    .line 727
    .line 728
    move v0, v13

    .line 729
    goto :goto_1a

    .line 730
    :cond_2a
    const/4 v0, 0x0

    .line 731
    :goto_1a
    move/from16 v19, v0

    .line 732
    .line 733
    goto :goto_1b

    .line 734
    :cond_2b
    const/16 v19, 0x0

    .line 735
    .line 736
    :goto_1b
    iget-object v7, v1, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    .line 737
    .line 738
    const-string v1, "Launch"

    .line 739
    .line 740
    move-object v0, v8

    .line 741
    move/from16 v20, v2

    .line 742
    .line 743
    move-object v2, v6

    .line 744
    move/from16 v34, v3

    .line 745
    .line 746
    move-object/from16 v3, p1

    .line 747
    .line 748
    move/from16 v35, v4

    .line 749
    .line 750
    move-object/from16 v4, p3

    .line 751
    .line 752
    move/from16 v27, v5

    .line 753
    .line 754
    move-object v5, v9

    .line 755
    move-object v13, v6

    .line 756
    move/from16 v6, v20

    .line 757
    .line 758
    move-object/from16 v20, v7

    .line 759
    .line 760
    move/from16 v7, v35

    .line 761
    .line 762
    move-object/from16 v36, v8

    .line 763
    .line 764
    move/from16 v8, v33

    .line 765
    .line 766
    move-object/from16 v22, v12

    .line 767
    .line 768
    move-object v12, v9

    .line 769
    move v9, v10

    .line 770
    const/16 v37, 0x0

    .line 771
    .line 772
    move/from16 v10, v17

    .line 773
    .line 774
    move-object/from16 v38, v11

    .line 775
    .line 776
    move/from16 v11, v19

    .line 777
    .line 778
    move-object v15, v12

    .line 779
    const/16 v17, 0x1

    .line 780
    .line 781
    move-object/from16 v12, v20

    .line 782
    .line 783
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IIZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    if-eqz v13, :cond_2c

    .line 788
    .line 789
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 790
    .line 791
    .line 792
    move-result v1

    .line 793
    move/from16 v19, v1

    .line 794
    .line 795
    goto :goto_1c

    .line 796
    :cond_2c
    move/from16 v19, v34

    .line 797
    .line 798
    :goto_1c
    if-eqz v13, :cond_2d

    .line 799
    .line 800
    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 801
    .line 802
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 803
    .line 804
    move-object/from16 v20, v9

    .line 805
    .line 806
    goto :goto_1d

    .line 807
    :cond_2d
    move-object/from16 v20, v22

    .line 808
    .line 809
    :goto_1d
    if-eqz v15, :cond_2e

    .line 810
    .line 811
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 812
    .line 813
    .line 814
    move-result v1

    .line 815
    :goto_1e
    move/from16 v21, v1

    .line 816
    .line 817
    goto :goto_1f

    .line 818
    :cond_2e
    const/4 v1, -0x1

    .line 819
    goto :goto_1e

    .line 820
    :goto_1f
    if-eqz v15, :cond_2f

    .line 821
    .line 822
    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 823
    .line 824
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 825
    .line 826
    move-object/from16 v22, v9

    .line 827
    .line 828
    :cond_2f
    if-nez v14, :cond_31

    .line 829
    .line 830
    if-eqz v13, :cond_31

    .line 831
    .line 832
    move-object/from16 v1, p3

    .line 833
    .line 834
    move-object v12, v15

    .line 835
    if-eqz v1, :cond_32

    .line 836
    .line 837
    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 838
    .line 839
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 840
    .line 841
    .line 842
    move-result v2

    .line 843
    if-nez v2, :cond_30

    .line 844
    .line 845
    goto :goto_20

    .line 846
    :cond_30
    move/from16 v23, v37

    .line 847
    .line 848
    goto :goto_21

    .line 849
    :cond_31
    move-object/from16 v1, p3

    .line 850
    .line 851
    move-object v12, v15

    .line 852
    :cond_32
    :goto_20
    move/from16 v23, v17

    .line 853
    .line 854
    :goto_21
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 855
    .line 856
    .line 857
    move-result v24

    .line 858
    move-object/from16 v2, p1

    .line 859
    .line 860
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 861
    .line 862
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 863
    .line 864
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 865
    .line 866
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v26

    .line 870
    if-eqz v1, :cond_33

    .line 871
    .line 872
    if-eqz v13, :cond_33

    .line 873
    .line 874
    iget-object v4, v13, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 875
    .line 876
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 877
    .line 878
    .line 879
    move-result v4

    .line 880
    if-nez v4, :cond_33

    .line 881
    .line 882
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 883
    .line 884
    .line 885
    move-result v1

    .line 886
    if-eqz v1, :cond_33

    .line 887
    .line 888
    move/from16 v30, v17

    .line 889
    .line 890
    goto :goto_22

    .line 891
    :cond_33
    move/from16 v30, v37

    .line 892
    .line 893
    :goto_22
    const/16 v18, 0x1ef

    .line 894
    .line 895
    const/16 v29, 0xb

    .line 896
    .line 897
    move-object/from16 v25, v3

    .line 898
    .line 899
    move/from16 v31, v35

    .line 900
    .line 901
    move-object/from16 v32, v0

    .line 902
    .line 903
    invoke-static/range {v18 .. v32}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIIZILjava/lang/String;)V

    .line 904
    .line 905
    .line 906
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 907
    .line 908
    invoke-static/range {v34 .. v34}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldShowToast(I)Z

    .line 909
    .line 910
    .line 911
    move-result v1

    .line 912
    if-eqz v1, :cond_35

    .line 913
    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    .line 915
    .line 916
    const-string v3, "go/android-asm"

    .line 917
    .line 918
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    if-eqz v33, :cond_34

    .line 922
    .line 923
    const-string v3, " blocked "

    .line 924
    .line 925
    goto :goto_23

    .line 926
    :cond_34
    const-string v3, " would block "

    .line 927
    .line 928
    :goto_23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    move-object/from16 v3, v36

    .line 932
    .line 933
    iget-object v4, v3, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 934
    .line 935
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 936
    .line 937
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 938
    .line 939
    .line 940
    move-result-object v4

    .line 941
    const-wide/16 v7, 0x0

    .line 942
    .line 943
    :try_start_0
    invoke-static {v7, v8}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 944
    .line 945
    .line 946
    move-result-object v5

    .line 947
    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 948
    .line 949
    .line 950
    move-result-object v5

    .line 951
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 952
    .line 953
    .line 954
    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    goto :goto_24

    .line 956
    :catch_0
    move-object v4, v6

    .line 957
    :goto_24
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v1

    .line 964
    invoke-virtual {v3, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    .line 965
    .line 966
    .line 967
    move-object/from16 v1, v38

    .line 968
    .line 969
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    .line 971
    .line 972
    goto :goto_25

    .line 973
    :cond_35
    move-object/from16 v1, v38

    .line 974
    .line 975
    :goto_25
    if-eqz v33, :cond_37

    .line 976
    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    .line 978
    .line 979
    const-string v3, "[ASM] Abort Launching r: "

    .line 980
    .line 981
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    const-string v2, " as source: "

    .line 988
    .line 989
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    .line 991
    .line 992
    if-eqz v13, :cond_36

    .line 993
    .line 994
    move-object v6, v13

    .line 995
    :cond_36
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    const-string v2, " is in background. New task: "

    .line 999
    .line 1000
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    .line 1006
    const-string v2, ". Top activity: "

    .line 1007
    .line 1008
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    .line 1014
    const-string v2, ". BAL Code: "

    .line 1015
    .line 1016
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    .line 1018
    .line 1019
    invoke-static/range {v35 .. v35}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v2

    .line 1023
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    .line 1032
    .line 1033
    move/from16 v12, v37

    .line 1034
    .line 1035
    goto :goto_26

    .line 1036
    :cond_37
    move/from16 v12, v17

    .line 1037
    .line 1038
    :goto_26
    if-nez v12, :cond_38

    .line 1039
    .line 1040
    return v16

    .line 1041
    :cond_38
    return v37
.end method

.method public final isExternalStartForSpeg()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 10
    .line 11
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 12
    .line 13
    if-eqz v3, :cond_7

    .line 14
    .line 15
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 22
    .line 23
    const/4 v3, -0x1

    .line 24
    if-ne v1, v3, :cond_2

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 31
    .line 32
    iget-boolean v3, v0, Lcom/android/server/pm/SpegService;->mIsSpegInOpeartion:Z

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    iget v3, v0, Lcom/android/server/pm/SpegService;->mSpegUid:I

    .line 38
    .line 39
    if-ne v1, v3, :cond_3

    .line 40
    .line 41
    move v3, v4

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    move v3, v2

    .line 44
    :goto_0
    const-string v5, "App with uid "

    .line 45
    .line 46
    const-string v6, "SPEG"

    .line 47
    .line 48
    if-eqz v3, :cond_6

    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 51
    .line 52
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lcom/android/server/pm/SpegService;->isSpegInOpeartion(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_4

    .line 59
    .line 60
    const-string v0, " is trying to start an external app "

    .line 61
    .line 62
    invoke-static {v1, v5, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0, p0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return v4

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 75
    .line 76
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-nez v3, :cond_5

    .line 85
    .line 86
    move v0, v4

    .line 87
    goto :goto_1

    .line 88
    :cond_5
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    xor-int/2addr v0, v4

    .line 101
    :goto_1
    if-eqz v0, :cond_7

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v1, "App "

    .line 106
    .line 107
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, " is trying to start an external intent: "

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 125
    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    return v4

    .line 137
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 138
    .line 139
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v0, v3}, Lcom/android/server/pm/SpegService;->isSpegInOpeartion(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    const-string v0, " is trying to launch SPEG app "

    .line 148
    .line 149
    invoke-static {v1, v5, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 154
    .line 155
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v0, p0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return v4

    .line 161
    :cond_7
    :goto_2
    return v2
.end method

.method public final logPIOnlyCreatorAllowsBAL()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v2, "uid="

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_0
    const-string v2, "Without Android 15 BAL hardening this activity would be moved to the foreground. The activity is started by a PendingIntent. However, only the creator of the PendingIntent allows BAL while the sender does not allow BAL. realCallingPackage: "

    .line 40
    .line 41
    const-string v3, "; callingPackage: "

    .line 42
    .line 43
    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, "; mTargetRootTask:"

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, "; mIntent: "

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, "; mTargetRootTask.getTopNonFinishingActivity: "

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 80
    .line 81
    invoke-virtual {v2, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, "; mTargetRootTask.getRootActivity: "

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const-string v0, "ActivityTaskManager"

    .line 108
    .line 109
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_1
    return-void
.end method

.method public final onExecutionComplete()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v2}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 17
    .line 18
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 28
    .line 29
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 30
    .line 31
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 32
    .line 33
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 34
    .line 35
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 36
    .line 37
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 40
    .line 41
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 42
    .line 43
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 44
    .line 45
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 46
    .line 47
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 48
    .line 49
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 50
    .line 51
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 52
    .line 53
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 54
    .line 55
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 56
    .line 57
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 58
    .line 59
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 67
    .line 68
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 69
    .line 70
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 71
    .line 72
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 73
    .line 74
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 75
    .line 76
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 79
    .line 80
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 83
    .line 84
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 85
    .line 86
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 87
    .line 88
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 91
    .line 92
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 95
    .line 96
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 97
    .line 98
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 99
    .line 100
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 103
    .line 104
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 107
    .line 108
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 111
    .line 112
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 113
    .line 114
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 115
    .line 116
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 117
    .line 118
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 119
    .line 120
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 121
    .line 122
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 123
    .line 124
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 125
    .line 126
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 127
    .line 128
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 129
    .line 130
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 131
    .line 132
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 133
    .line 134
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 135
    .line 136
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 137
    .line 138
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 139
    .line 140
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 141
    .line 142
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 143
    .line 144
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 145
    .line 146
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 147
    .line 148
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 149
    .line 150
    iget-wide v3, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 151
    .line 152
    iput-wide v3, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 153
    .line 154
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 155
    .line 156
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 159
    .line 160
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 166
    .line 167
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 168
    .line 169
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 170
    .line 171
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 172
    .line 173
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 174
    .line 175
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 176
    .line 177
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 178
    .line 179
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 180
    .line 181
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 182
    .line 183
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 184
    .line 185
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 186
    .line 187
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 188
    .line 189
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 190
    .line 191
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 192
    .line 193
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 194
    .line 195
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 196
    .line 197
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 198
    .line 199
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 200
    .line 201
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 202
    .line 203
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 204
    .line 205
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 206
    .line 207
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 208
    .line 209
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 210
    .line 211
    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 212
    .line 213
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 214
    .line 215
    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 216
    .line 217
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 218
    .line 219
    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 220
    .line 221
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 222
    .line 223
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 224
    .line 225
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 226
    .line 227
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 228
    .line 229
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 230
    .line 231
    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 232
    .line 233
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 234
    .line 235
    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 236
    .line 237
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 238
    .line 239
    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 240
    .line 241
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 242
    .line 243
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 244
    .line 245
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 246
    .line 247
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 248
    .line 249
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 250
    .line 251
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 252
    .line 253
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 254
    .line 255
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 256
    .line 257
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 258
    .line 259
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 260
    .line 261
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 262
    .line 263
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 264
    .line 265
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 266
    .line 267
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 268
    .line 269
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 270
    .line 271
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 272
    .line 273
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 274
    .line 275
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 276
    .line 277
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 278
    .line 279
    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 280
    .line 281
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 282
    .line 283
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 284
    .line 285
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 286
    .line 287
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 288
    .line 289
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 290
    .line 291
    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 292
    .line 293
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 294
    .line 295
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 296
    .line 297
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->forcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 298
    .line 299
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->forcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 300
    .line 301
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    .line 302
    .line 303
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    .line 304
    .line 305
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    .line 306
    .line 307
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    .line 308
    .line 309
    invoke-interface {v2, p0}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V

    .line 310
    .line 311
    .line 312
    return-void
.end method

.method public final onExecutionStarted()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    .line 5
    .line 6
    return-void
.end method

.method public final postStartActivityProcessing(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReorderingOnTimeout()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p1}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x2

    .line 34
    const/4 v5, 0x3

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    if-eq p1, v5, :cond_3

    .line 39
    .line 40
    if-eq p1, v4, :cond_3

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    sub-int/2addr v0, v2

    .line 50
    move v6, v3

    .line 51
    :goto_0
    if-ltz v0, :cond_8

    .line 52
    .line 53
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    .line 60
    .line 61
    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 62
    .line 63
    iget-object v8, v8, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 64
    .line 65
    if-eqz v8, :cond_5

    .line 66
    .line 67
    iget-object v8, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 68
    .line 69
    if-ne p2, v8, :cond_4

    .line 70
    .line 71
    move v8, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move v8, v3

    .line 74
    goto :goto_1

    .line 75
    :cond_5
    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    .line 76
    .line 77
    iget-object v9, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 78
    .line 79
    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    :goto_1
    if-nez v8, :cond_6

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    .line 87
    .line 88
    iput p1, v7, Landroid/app/WaitResult;->result:I

    .line 89
    .line 90
    if-ne p1, v5, :cond_7

    .line 91
    .line 92
    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 93
    .line 94
    iput-object v6, v7, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 95
    .line 96
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move v6, v2

    .line 102
    :cond_7
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_8
    if-eqz v6, :cond_9

    .line 106
    .line 107
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 112
    .line 113
    .line 114
    :cond_9
    :goto_3
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 115
    .line 116
    if-eqz v0, :cond_a

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 120
    .line 121
    :goto_4
    if-eqz p3, :cond_16

    .line 122
    .line 123
    if-eqz v0, :cond_16

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    if-nez p3, :cond_b

    .line 130
    .line 131
    goto/16 :goto_9

    .line 132
    .line 133
    :cond_b
    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 134
    .line 135
    if-eq p1, v4, :cond_c

    .line 136
    .line 137
    if-ne p1, v5, :cond_f

    .line 138
    .line 139
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 144
    .line 145
    if-eqz v1, :cond_d

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_d

    .line 153
    .line 154
    move v1, v2

    .line 155
    goto :goto_5

    .line 156
    :cond_d
    move v1, v3

    .line 157
    :goto_5
    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    if-eqz v4, :cond_e

    .line 162
    .line 163
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 164
    .line 165
    if-eqz v4, :cond_e

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_e
    move v2, v3

    .line 169
    :goto_6
    iget-object v4, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 176
    .line 177
    iget-object v7, v4, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 178
    .line 179
    const/4 v8, 0x4

    .line 180
    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    .line 182
    .line 183
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    iput-object v5, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 188
    .line 189
    iput v1, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 190
    .line 191
    iput v6, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 192
    .line 193
    iput v2, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 194
    .line 195
    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    iget-object v2, v4, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 200
    .line 201
    invoke-virtual {v4, v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 205
    .line 206
    .line 207
    :cond_f
    invoke-static {p1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_10

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 218
    .line 219
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 220
    .line 221
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    .line 222
    .line 223
    new-instance v2, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;

    .line 224
    .line 225
    invoke-direct {v2, v0, p2}, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityStartInterceptor;Lcom/android/server/wm/ActivityRecord;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->getInterceptorInfo(Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    move v2, v3

    .line 233
    :goto_7
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-ge v2, v4, :cond_10

    .line 238
    .line 239
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    check-cast v4, Lcom/android/server/wm/ActivityInterceptorCallback;

    .line 244
    .line 245
    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 246
    .line 247
    invoke-interface {v4, p1, v5, v0}, Lcom/android/server/wm/ActivityInterceptorCallback;->onActivityLaunched(Landroid/app/TaskInfo;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    .line 248
    .line 249
    .line 250
    add-int/lit8 v2, v2, 0x1

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_10
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    const/4 v0, -0x1

    .line 258
    if-eqz p1, :cond_13

    .line 259
    .line 260
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-nez p1, :cond_11

    .line 265
    .line 266
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-eqz p1, :cond_13

    .line 271
    .line 272
    :cond_11
    iget-object p1, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 273
    .line 274
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-eq v1, v0, :cond_12

    .line 279
    .line 280
    iget v2, p1, Lcom/android/server/wm/DexController;->mTargetDisplayId:I

    .line 281
    .line 282
    if-ne v2, v1, :cond_13

    .line 283
    .line 284
    iget-object v1, p1, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 285
    .line 286
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 287
    .line 288
    iget v4, p1, Lcom/android/server/wm/DexController;->mSourceDisplayId:I

    .line 289
    .line 290
    invoke-virtual {v2, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 295
    .line 296
    iget v4, p1, Lcom/android/server/wm/DexController;->mTargetDisplayId:I

    .line 297
    .line 298
    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    if-eqz v2, :cond_13

    .line 303
    .line 304
    if-eqz v1, :cond_13

    .line 305
    .line 306
    new-instance v4, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;

    .line 307
    .line 308
    const/4 v5, 0x0

    .line 309
    invoke-direct {v4, v5, p1, v1}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 313
    .line 314
    .line 315
    iput v0, p1, Lcom/android/server/wm/DexController;->mSourceDisplayId:I

    .line 316
    .line 317
    iput v0, p1, Lcom/android/server/wm/DexController;->mTargetDisplayId:I

    .line 318
    .line 319
    goto :goto_8

    .line 320
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    :cond_13
    :goto_8
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 324
    .line 325
    if-eqz p1, :cond_16

    .line 326
    .line 327
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    .line 328
    .line 329
    if-eqz p1, :cond_16

    .line 330
    .line 331
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-eqz p1, :cond_16

    .line 336
    .line 337
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    if-nez p1, :cond_15

    .line 342
    .line 343
    const-string/jumbo p1, "startActivityFromRecents"

    .line 344
    .line 345
    .line 346
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    if-nez p1, :cond_15

    .line 353
    .line 354
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 355
    .line 356
    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 357
    .line 358
    const-string p2, "android.server.wm.app"

    .line 359
    .line 360
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    if-nez p1, :cond_15

    .line 365
    .line 366
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 367
    .line 368
    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 369
    .line 370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    if-nez p1, :cond_15

    .line 375
    .line 376
    iget-object p1, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 377
    .line 378
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 379
    .line 380
    iget p2, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 381
    .line 382
    iget p1, p1, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 383
    .line 384
    invoke-static {p2, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    if-nez p1, :cond_15

    .line 389
    .line 390
    iget-object p1, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 391
    .line 392
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 393
    .line 394
    iget p2, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 395
    .line 396
    iget p1, p1, Lcom/android/server/wm/RecentTasks;->mLauncherInfo:I

    .line 397
    .line 398
    invoke-static {p2, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 399
    .line 400
    .line 401
    move-result p1

    .line 402
    if-nez p1, :cond_15

    .line 403
    .line 404
    iget-object p1, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 405
    .line 406
    iget p2, p1, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    .line 407
    .line 408
    if-ne p2, v0, :cond_14

    .line 409
    .line 410
    iget-object p2, p1, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 411
    .line 412
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 413
    .line 414
    .line 415
    move-result-object p2

    .line 416
    const-wide/32 v0, 0x100000

    .line 417
    .line 418
    .line 419
    const-string p3, "com.android.systemui"

    .line 420
    .line 421
    invoke-virtual {p2, p3, v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 422
    .line 423
    .line 424
    move-result p2

    .line 425
    iput p2, p1, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    .line 426
    .line 427
    :cond_14
    iget p1, p1, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    .line 428
    .line 429
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 430
    .line 431
    iget p2, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 432
    .line 433
    if-eq p1, p2, :cond_15

    .line 434
    .line 435
    goto :goto_9

    .line 436
    :cond_15
    const-string p1, "2004"

    .line 437
    .line 438
    const-string p2, "From application"

    .line 439
    .line 440
    invoke-static {p1, p2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 444
    .line 445
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 446
    .line 447
    const-string p1, "2013"

    .line 448
    .line 449
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    :cond_16
    :goto_9
    return-void
.end method

.method public recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v2, p3

    .line 8
    .line 9
    move-object/from16 v3, p4

    .line 10
    .line 11
    iget v5, v4, Lcom/android/server/wm/Task;->mUserId:I

    .line 12
    .line 13
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    iget v7, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 16
    .line 17
    const/4 v13, 0x0

    .line 18
    const/4 v8, 0x1

    .line 19
    if-eq v5, v7, :cond_0

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 26
    .line 27
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 28
    .line 29
    return v13

    .line 30
    :cond_0
    const/4 v5, 0x0

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    iget-object v7, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 34
    .line 35
    if-nez v7, :cond_1

    .line 36
    .line 37
    invoke-virtual {v4, v6, v5, v5}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 42
    .line 43
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    const/16 v7, 0x4000

    .line 48
    .line 49
    and-int/2addr v6, v7

    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    iget-object v6, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 53
    .line 54
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v6, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 59
    .line 60
    invoke-virtual {v6, v7}, Landroid/content/Intent;->removeFlags(I)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 68
    .line 69
    invoke-virtual {v7, v13, v1}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 77
    .line 78
    .line 79
    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 80
    .line 81
    if-eqz v9, :cond_4

    .line 82
    .line 83
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    move-object v10, v5

    .line 89
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 94
    .line 95
    const v15, 0x7fffffff

    .line 96
    .line 97
    .line 98
    const/4 v14, -0x1

    .line 99
    if-eqz v12, :cond_7

    .line 100
    .line 101
    invoke-virtual {v12}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    if-eq v12, v14, :cond_7

    .line 106
    .line 107
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    if-eqz v12, :cond_7

    .line 112
    .line 113
    invoke-virtual {v1, v8}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    if-eqz v12, :cond_7

    .line 118
    .line 119
    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 120
    .line 121
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 122
    .line 123
    invoke-virtual {v14}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    invoke-virtual {v0, v14, v12}, Lcom/android/server/wm/ActivityStarter;->canMoveTaskToBottomTask(ILcom/android/server/wm/Task;)Z

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    if-nez v14, :cond_5

    .line 132
    .line 133
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 134
    .line 135
    invoke-virtual {v14}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    if-eqz v14, :cond_7

    .line 140
    .line 141
    :cond_5
    iget v14, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 142
    .line 143
    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 144
    .line 145
    invoke-virtual {v0, v1, v14, v12, v13}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    if-eq v12, v13, :cond_7

    .line 150
    .line 151
    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 152
    .line 153
    .line 154
    move-result v14

    .line 155
    if-nez v14, :cond_7

    .line 156
    .line 157
    invoke-static {v13}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    if-eqz v7, :cond_6

    .line 162
    .line 163
    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 164
    .line 165
    if-eq v9, v12, :cond_6

    .line 166
    .line 167
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 168
    .line 169
    invoke-static {v9, v7, v1, v5}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    const/16 v19, 0x0

    .line 173
    .line 174
    const/16 v20, 0x1

    .line 175
    .line 176
    const/16 v18, 0x1

    .line 177
    .line 178
    const/16 v21, 0x1

    .line 179
    .line 180
    const-string/jumbo v22, "reparentToLaunchPolicy"

    .line 181
    .line 182
    .line 183
    move-object/from16 v16, v12

    .line 184
    .line 185
    move-object/from16 v17, v13

    .line 186
    .line 187
    invoke-virtual/range {v16 .. v22}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 191
    .line 192
    iput-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 193
    .line 194
    move v13, v15

    .line 195
    const/4 v11, 0x2

    .line 196
    goto/16 :goto_14

    .line 197
    .line 198
    :cond_7
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 199
    .line 200
    if-nez v12, :cond_9

    .line 201
    .line 202
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 203
    .line 204
    if-eqz v12, :cond_8

    .line 205
    .line 206
    iget-object v12, v12, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 207
    .line 208
    if-eqz v12, :cond_8

    .line 209
    .line 210
    invoke-static {v12}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    iput-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_8
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 218
    .line 219
    iget v13, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 220
    .line 221
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 222
    .line 223
    invoke-virtual {v0, v12, v13, v9, v14}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    iput-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 228
    .line 229
    :cond_9
    :goto_2
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    .line 230
    .line 231
    if-eqz v12, :cond_a

    .line 232
    .line 233
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 234
    .line 235
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    if-eqz v12, :cond_a

    .line 240
    .line 241
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 242
    .line 243
    if-eqz v12, :cond_a

    .line 244
    .line 245
    invoke-virtual {v12}, Landroid/app/ActivityOptions;->isForceLaunchTaskOnHome()Z

    .line 246
    .line 247
    .line 248
    move-result v12

    .line 249
    if-eqz v12, :cond_a

    .line 250
    .line 251
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 252
    .line 253
    iput-boolean v8, v12, Lcom/android/server/wm/Task;->mLaunchTaskOnHome:Z

    .line 254
    .line 255
    :cond_a
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 256
    .line 257
    if-eqz v12, :cond_b

    .line 258
    .line 259
    invoke-virtual {v12}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 260
    .line 261
    .line 262
    move-result v14

    .line 263
    move v12, v14

    .line 264
    goto :goto_3

    .line 265
    :cond_b
    const/4 v12, -0x1

    .line 266
    :goto_3
    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 267
    .line 268
    invoke-virtual {v13}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 269
    .line 270
    .line 271
    move-result-object v13

    .line 272
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 273
    .line 274
    if-ne v13, v14, :cond_15

    .line 275
    .line 276
    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 277
    .line 278
    iget-object v13, v13, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 279
    .line 280
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 281
    .line 282
    .line 283
    move-result-object v13

    .line 284
    if-nez v13, :cond_c

    .line 285
    .line 286
    move-object v14, v5

    .line 287
    goto :goto_4

    .line 288
    :cond_c
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 289
    .line 290
    invoke-virtual {v13, v14}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 291
    .line 292
    .line 293
    move-result-object v14

    .line 294
    :goto_4
    if-eqz v14, :cond_d

    .line 295
    .line 296
    iget-object v14, v14, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_d
    move-object v14, v5

    .line 300
    :goto_5
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 301
    .line 302
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    if-eqz v5, :cond_e

    .line 307
    .line 308
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 309
    .line 310
    invoke-virtual {v9, v5}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    if-nez v5, :cond_e

    .line 315
    .line 316
    move v5, v8

    .line 317
    goto :goto_6

    .line 318
    :cond_e
    const/4 v5, 0x0

    .line 319
    :goto_6
    if-nez v11, :cond_f

    .line 320
    .line 321
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    .line 322
    .line 323
    .line 324
    move-result v11

    .line 325
    if-eqz v11, :cond_f

    .line 326
    .line 327
    move v11, v8

    .line 328
    goto :goto_7

    .line 329
    :cond_f
    const/4 v11, 0x0

    .line 330
    :goto_7
    if-nez v5, :cond_11

    .line 331
    .line 332
    if-eqz v11, :cond_10

    .line 333
    .line 334
    goto :goto_8

    .line 335
    :cond_10
    const/4 v5, 0x0

    .line 336
    goto :goto_9

    .line 337
    :cond_11
    :goto_8
    move v5, v8

    .line 338
    :goto_9
    if-ne v14, v9, :cond_14

    .line 339
    .line 340
    if-eqz v13, :cond_12

    .line 341
    .line 342
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 343
    .line 344
    .line 345
    move-result-object v11

    .line 346
    if-ne v14, v11, :cond_14

    .line 347
    .line 348
    :cond_12
    if-eqz v13, :cond_13

    .line 349
    .line 350
    if-eq v13, v10, :cond_13

    .line 351
    .line 352
    goto :goto_a

    .line 353
    :cond_13
    const/4 v10, 0x0

    .line 354
    goto :goto_b

    .line 355
    :cond_14
    :goto_a
    move v10, v8

    .line 356
    goto :goto_b

    .line 357
    :cond_15
    move v10, v8

    .line 358
    const/4 v5, 0x0

    .line 359
    :goto_b
    if-nez v10, :cond_17

    .line 360
    .line 361
    if-eqz v5, :cond_16

    .line 362
    .line 363
    goto :goto_c

    .line 364
    :cond_16
    move v13, v15

    .line 365
    const/4 v11, 0x2

    .line 366
    goto/16 :goto_13

    .line 367
    .line 368
    :cond_17
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    if-nez v5, :cond_16

    .line 373
    .line 374
    if-eqz v10, :cond_18

    .line 375
    .line 376
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 377
    .line 378
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 379
    .line 380
    const/high16 v11, 0x400000

    .line 381
    .line 382
    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 383
    .line 384
    .line 385
    :cond_18
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 386
    .line 387
    if-eqz v5, :cond_19

    .line 388
    .line 389
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    invoke-static {v5}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    if-eqz v5, :cond_19

    .line 398
    .line 399
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 400
    .line 401
    if-ne v5, v11, :cond_19

    .line 402
    .line 403
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    if-eqz v5, :cond_19

    .line 408
    .line 409
    move v5, v8

    .line 410
    goto :goto_d

    .line 411
    :cond_19
    const/4 v5, 0x0

    .line 412
    :goto_d
    iget-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 413
    .line 414
    if-eqz v11, :cond_1a

    .line 415
    .line 416
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 417
    .line 418
    if-eqz v11, :cond_1a

    .line 419
    .line 420
    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 421
    .line 422
    invoke-virtual {v1, v11}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 423
    .line 424
    .line 425
    :cond_1a
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 426
    .line 427
    invoke-virtual {v1, v11}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 428
    .line 429
    .line 430
    move-result v11

    .line 431
    if-eqz v11, :cond_1d

    .line 432
    .line 433
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 434
    .line 435
    if-eq v5, v9, :cond_1b

    .line 436
    .line 437
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 438
    .line 439
    .line 440
    move-result-object v11

    .line 441
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 442
    .line 443
    .line 444
    move-result-object v11

    .line 445
    if-eq v5, v11, :cond_1b

    .line 446
    .line 447
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    const/4 v11, 0x0

    .line 452
    invoke-virtual {v5, v15, v9, v11}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 464
    .line 465
    .line 466
    move-result-object v9

    .line 467
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 468
    .line 469
    .line 470
    move-result v5

    .line 471
    if-eqz v5, :cond_1c

    .line 472
    .line 473
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 474
    .line 475
    .line 476
    move-result v5

    .line 477
    if-eqz v5, :cond_1c

    .line 478
    .line 479
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 480
    .line 481
    const/4 v11, 0x0

    .line 482
    invoke-virtual {v5, v11}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    if-ne v1, v5, :cond_1c

    .line 487
    .line 488
    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 489
    .line 490
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 491
    .line 492
    invoke-virtual {v5, v11}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    .line 493
    .line 494
    .line 495
    move-result v5

    .line 496
    if-nez v5, :cond_1c

    .line 497
    .line 498
    move v5, v8

    .line 499
    goto :goto_e

    .line 500
    :cond_1c
    const/4 v5, 0x0

    .line 501
    :goto_e
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 502
    .line 503
    iget-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 504
    .line 505
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 506
    .line 507
    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 508
    .line 509
    iget-object v15, v15, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 510
    .line 511
    const/16 v28, 0x1

    .line 512
    .line 513
    const-string v29, "bringingFoundTaskToFront"

    .line 514
    .line 515
    move-object/from16 v23, v11

    .line 516
    .line 517
    move-object/from16 v24, v9

    .line 518
    .line 519
    move/from16 v25, v13

    .line 520
    .line 521
    move-object/from16 v26, v14

    .line 522
    .line 523
    move-object/from16 v27, v15

    .line 524
    .line 525
    invoke-virtual/range {v23 .. v29}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    .line 526
    .line 527
    .line 528
    xor-int/2addr v5, v8

    .line 529
    iput-boolean v5, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 530
    .line 531
    const/4 v5, 0x0

    .line 532
    const/4 v11, 0x2

    .line 533
    const v13, 0x7fffffff

    .line 534
    .line 535
    .line 536
    goto :goto_12

    .line 537
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 538
    .line 539
    .line 540
    move-result v11

    .line 541
    const/4 v13, 0x2

    .line 542
    if-ne v11, v13, :cond_1f

    .line 543
    .line 544
    if-eqz v5, :cond_1e

    .line 545
    .line 546
    goto :goto_f

    .line 547
    :cond_1e
    move v11, v13

    .line 548
    const v13, 0x7fffffff

    .line 549
    .line 550
    .line 551
    goto :goto_11

    .line 552
    :cond_1f
    :goto_f
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 553
    .line 554
    .line 555
    move-result v5

    .line 556
    if-eqz v5, :cond_21

    .line 557
    .line 558
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 559
    .line 560
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 561
    .line 562
    .line 563
    move-result v5

    .line 564
    if-nez v5, :cond_21

    .line 565
    .line 566
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 567
    .line 568
    if-eqz v5, :cond_20

    .line 569
    .line 570
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 571
    .line 572
    .line 573
    move-result-object v5

    .line 574
    goto :goto_10

    .line 575
    :cond_20
    const/4 v5, 0x0

    .line 576
    :goto_10
    if-eqz v5, :cond_21

    .line 577
    .line 578
    new-instance v11, Landroid/graphics/Rect;

    .line 579
    .line 580
    invoke-direct {v11, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 581
    .line 582
    .line 583
    iput-object v11, v9, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 584
    .line 585
    :cond_21
    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 586
    .line 587
    const/16 v19, 0x1

    .line 588
    .line 589
    const-string/jumbo v20, "reparentToTargetRootTask"

    .line 590
    .line 591
    .line 592
    const/4 v5, 0x1

    .line 593
    const/16 v17, 0x0

    .line 594
    .line 595
    const/16 v18, 0x1

    .line 596
    .line 597
    move v11, v13

    .line 598
    move-object v14, v9

    .line 599
    const v13, 0x7fffffff

    .line 600
    .line 601
    .line 602
    move/from16 v16, v5

    .line 603
    .line 604
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)V

    .line 605
    .line 606
    .line 607
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 608
    .line 609
    :goto_11
    const/4 v5, 0x0

    .line 610
    :goto_12
    iput-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 611
    .line 612
    :goto_13
    move-object v15, v9

    .line 613
    if-eqz v10, :cond_22

    .line 614
    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    .line 616
    .line 617
    .line 618
    :cond_22
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 619
    .line 620
    iget-object v9, v5, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 621
    .line 622
    if-eqz v9, :cond_23

    .line 623
    .line 624
    iput-object v9, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 625
    .line 626
    :cond_23
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    .line 627
    .line 628
    if-eqz v5, :cond_24

    .line 629
    .line 630
    iput-object v5, v1, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    .line 631
    .line 632
    :cond_24
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 633
    .line 634
    .line 635
    move-result-object v5

    .line 636
    iput-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 637
    .line 638
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 639
    .line 640
    iget-object v9, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 641
    .line 642
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    .line 643
    .line 644
    .line 645
    move-result v9

    .line 646
    if-nez v9, :cond_25

    .line 647
    .line 648
    if-nez v12, :cond_25

    .line 649
    .line 650
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 651
    .line 652
    if-eqz v9, :cond_25

    .line 653
    .line 654
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 655
    .line 656
    .line 657
    move-result v9

    .line 658
    if-ne v9, v11, :cond_25

    .line 659
    .line 660
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 661
    .line 662
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 663
    .line 664
    .line 665
    move-result v9

    .line 666
    const/4 v10, 0x5

    .line 667
    if-ne v9, v10, :cond_25

    .line 668
    .line 669
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 670
    .line 671
    iget-object v5, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 672
    .line 673
    invoke-virtual {v9, v5}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 674
    .line 675
    .line 676
    :cond_25
    iget-object v5, v7, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 677
    .line 678
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 679
    .line 680
    .line 681
    move-result-object v17

    .line 682
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 683
    .line 684
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 685
    .line 686
    const/16 v16, 0x0

    .line 687
    .line 688
    const/16 v19, 0x0

    .line 689
    .line 690
    move-object/from16 v18, v5

    .line 691
    .line 692
    invoke-virtual/range {v14 .. v19}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    .line 693
    .line 694
    .line 695
    :goto_14
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 696
    .line 697
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 698
    .line 699
    .line 700
    move-result v5

    .line 701
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 702
    .line 703
    if-eqz v5, :cond_27

    .line 704
    .line 705
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 706
    .line 707
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 708
    .line 709
    .line 710
    move-result v5

    .line 711
    if-eqz v5, :cond_27

    .line 712
    .line 713
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 714
    .line 715
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 716
    .line 717
    .line 718
    move-result v5

    .line 719
    if-eqz v5, :cond_26

    .line 720
    .line 721
    if-nez v6, :cond_26

    .line 722
    .line 723
    move v5, v8

    .line 724
    goto :goto_15

    .line 725
    :cond_26
    const/4 v5, 0x0

    .line 726
    :goto_15
    iget-object v6, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 727
    .line 728
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 729
    .line 730
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 731
    .line 732
    .line 733
    invoke-static {v9, v5}, Lcom/android/server/wm/TaskOrganizerController;->resetStashedFreeform(Lcom/android/server/wm/Task;Z)V

    .line 734
    .line 735
    .line 736
    :cond_27
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 737
    .line 738
    if-eqz v5, :cond_29

    .line 739
    .line 740
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 741
    .line 742
    if-nez v6, :cond_28

    .line 743
    .line 744
    iget-boolean v5, v5, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    .line 745
    .line 746
    if-eqz v5, :cond_29

    .line 747
    .line 748
    :cond_28
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 749
    .line 750
    :cond_29
    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 751
    .line 752
    and-int/2addr v5, v8

    .line 753
    const-string v6, "intentActivityFound"

    .line 754
    .line 755
    if-eqz v5, :cond_2c

    .line 756
    .line 757
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 758
    .line 759
    if-nez v2, :cond_2b

    .line 760
    .line 761
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 762
    .line 763
    if-eqz v2, :cond_2b

    .line 764
    .line 765
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 766
    .line 767
    const/4 v3, 0x0

    .line 768
    aget-boolean v2, v2, v3

    .line 769
    .line 770
    if-eqz v2, :cond_2a

    .line 771
    .line 772
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 773
    .line 774
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v2

    .line 778
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 783
    .line 784
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v14

    .line 788
    const-wide v10, -0xa2fdae6a8ccd9L

    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    const/4 v12, 0x0

    .line 794
    const/4 v13, 0x0

    .line 795
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 796
    .line 797
    .line 798
    :cond_2a
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 799
    .line 800
    const/4 v2, 0x0

    .line 801
    invoke-virtual {v1, v6, v2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 802
    .line 803
    .line 804
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetRootTaskIfNeeded()V

    .line 805
    .line 806
    .line 807
    return v8

    .line 808
    :cond_2c
    if-eqz v2, :cond_2d

    .line 809
    .line 810
    invoke-virtual {v2, v8, v8}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    goto :goto_16

    .line 815
    :cond_2d
    const/4 v2, 0x0

    .line 816
    :goto_16
    invoke-virtual {v4, v8, v8}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 817
    .line 818
    .line 819
    move-result-object v5

    .line 820
    if-eqz v2, :cond_2e

    .line 821
    .line 822
    iget v9, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 823
    .line 824
    const/high16 v10, 0x200000

    .line 825
    .line 826
    and-int/2addr v9, v10

    .line 827
    if-eqz v9, :cond_2e

    .line 828
    .line 829
    move v9, v8

    .line 830
    goto :goto_17

    .line 831
    :cond_2e
    const/4 v9, 0x0

    .line 832
    :goto_17
    if-eqz v9, :cond_2f

    .line 833
    .line 834
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 835
    .line 836
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 837
    .line 838
    invoke-virtual {v10, v5, v12}, Lcom/android/server/wm/Task;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 839
    .line 840
    .line 841
    move-result-object v5

    .line 842
    :cond_2f
    iget v10, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 843
    .line 844
    const v12, 0x10008000

    .line 845
    .line 846
    .line 847
    and-int v14, v10, v12

    .line 848
    .line 849
    const/4 v15, 0x3

    .line 850
    if-ne v14, v12, :cond_30

    .line 851
    .line 852
    invoke-virtual {v4, v8}, Lcom/android/server/wm/Task;->performClearTaskForReuse(Z)V

    .line 853
    .line 854
    .line 855
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 856
    .line 857
    const/4 v3, 0x0

    .line 858
    invoke-virtual {v4, v2, v3, v3}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 859
    .line 860
    .line 861
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 862
    .line 863
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 864
    .line 865
    goto/16 :goto_1d

    .line 866
    .line 867
    :cond_30
    const/high16 v12, 0x4000000

    .line 868
    .line 869
    and-int v14, v10, v12

    .line 870
    .line 871
    if-nez v14, :cond_46

    .line 872
    .line 873
    const/high16 v14, 0x80000

    .line 874
    .line 875
    and-int/2addr v14, v10

    .line 876
    if-eqz v14, :cond_31

    .line 877
    .line 878
    const/high16 v14, 0x8000000

    .line 879
    .line 880
    and-int/2addr v14, v10

    .line 881
    if-nez v14, :cond_31

    .line 882
    .line 883
    goto/16 :goto_1b

    .line 884
    .line 885
    :cond_31
    iget v14, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 886
    .line 887
    if-eq v15, v14, :cond_46

    .line 888
    .line 889
    if-eq v11, v14, :cond_46

    .line 890
    .line 891
    const/4 v13, 0x4

    .line 892
    if-ne v13, v14, :cond_32

    .line 893
    .line 894
    goto/16 :goto_1b

    .line 895
    .line 896
    :cond_32
    and-int/2addr v12, v10

    .line 897
    if-nez v12, :cond_3c

    .line 898
    .line 899
    iget-boolean v12, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 900
    .line 901
    if-nez v12, :cond_3c

    .line 902
    .line 903
    const/high16 v12, 0x20000

    .line 904
    .line 905
    and-int/2addr v10, v12

    .line 906
    if-eqz v10, :cond_3c

    .line 907
    .line 908
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 909
    .line 910
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 911
    .line 912
    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 913
    .line 914
    new-instance v9, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;

    .line 915
    .line 916
    const/4 v10, 0x3

    .line 917
    invoke-direct {v9, v10}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;-><init>(I)V

    .line 918
    .line 919
    .line 920
    const-class v10, Lcom/android/server/wm/ActivityRecord;

    .line 921
    .line 922
    invoke-static {v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 923
    .line 924
    .line 925
    move-result-object v10

    .line 926
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 927
    .line 928
    .line 929
    move-result-object v2

    .line 930
    invoke-static {v9, v10, v5, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 931
    .line 932
    .line 933
    move-result-object v2

    .line 934
    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 935
    .line 936
    .line 937
    move-result-object v5

    .line 938
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 939
    .line 940
    .line 941
    if-eqz v5, :cond_3b

    .line 942
    .line 943
    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 944
    .line 945
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 946
    .line 947
    .line 948
    move-result-object v9

    .line 949
    if-eqz v9, :cond_33

    .line 950
    .line 951
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 952
    .line 953
    .line 954
    move-result-object v9

    .line 955
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 956
    .line 957
    .line 958
    move-result-object v9

    .line 959
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 960
    .line 961
    .line 962
    move-result-object v10

    .line 963
    if-ne v9, v10, :cond_33

    .line 964
    .line 965
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 966
    .line 967
    .line 968
    move-result v9

    .line 969
    if-eqz v9, :cond_33

    .line 970
    .line 971
    iget-boolean v9, v5, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 972
    .line 973
    if-nez v9, :cond_33

    .line 974
    .line 975
    const/4 v9, 0x0

    .line 976
    invoke-virtual {v2, v9}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 977
    .line 978
    .line 979
    move-result-object v10

    .line 980
    if-eq v10, v5, :cond_33

    .line 981
    .line 982
    iget-object v10, v5, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 983
    .line 984
    sget-object v12, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 985
    .line 986
    if-eq v10, v12, :cond_33

    .line 987
    .line 988
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 989
    .line 990
    .line 991
    move-result-object v10

    .line 992
    invoke-virtual {v10, v15, v9}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 993
    .line 994
    .line 995
    :cond_33
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    .line 996
    .line 997
    aget-boolean v9, v9, v11

    .line 998
    .line 999
    if-eqz v9, :cond_34

    .line 1000
    .line 1001
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v9

    .line 1005
    invoke-static {v13}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v10

    .line 1009
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v10

    .line 1013
    sget-object v23, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1014
    .line 1015
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v28

    .line 1019
    const/16 v27, 0x0

    .line 1020
    .line 1021
    const-wide v24, 0x59276a74a9683a61L    # 3.02327783715042E121

    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    const/16 v26, 0x0

    .line 1027
    .line 1028
    invoke-static/range {v23 .. v28}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1029
    .line 1030
    .line 1031
    :cond_34
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v9

    .line 1035
    if-eq v9, v2, :cond_37

    .line 1036
    .line 1037
    iget-boolean v10, v9, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 1038
    .line 1039
    if-eqz v10, :cond_35

    .line 1040
    .line 1041
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    .line 1042
    .line 1043
    .line 1044
    move-result v10

    .line 1045
    if-ne v10, v8, :cond_35

    .line 1046
    .line 1047
    iput-boolean v8, v9, Lcom/android/server/wm/TaskFragment;->mClearedForReorderActivityToFront:Z

    .line 1048
    .line 1049
    :cond_35
    const v10, 0x7fffffff

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v5, v2, v10}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 1053
    .line 1054
    .line 1055
    iget-boolean v9, v9, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 1056
    .line 1057
    if-eqz v9, :cond_36

    .line 1058
    .line 1059
    iget-object v9, v2, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1060
    .line 1061
    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 1062
    .line 1063
    iget-object v9, v9, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 1064
    .line 1065
    invoke-virtual {v9, v5}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onActivityReparentedToTask(Lcom/android/server/wm/ActivityRecord;)V

    .line 1066
    .line 1067
    .line 1068
    :cond_36
    :goto_18
    move v9, v8

    .line 1069
    goto :goto_19

    .line 1070
    :cond_37
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowContainer;->getDistanceFromTop(Lcom/android/server/wm/WindowContainer;)I

    .line 1071
    .line 1072
    .line 1073
    move-result v9

    .line 1074
    const/4 v10, 0x0

    .line 1075
    const v12, 0x7fffffff

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v2, v12, v5, v10}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowContainer;->getDistanceFromTop(Lcom/android/server/wm/WindowContainer;)I

    .line 1082
    .line 1083
    .line 1084
    move-result v10

    .line 1085
    if-eq v10, v9, :cond_38

    .line 1086
    .line 1087
    goto :goto_18

    .line 1088
    :cond_38
    const/4 v9, 0x0

    .line 1089
    :goto_19
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1090
    .line 1091
    .line 1092
    if-eqz v9, :cond_3a

    .line 1093
    .line 1094
    iput-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1095
    .line 1096
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 1097
    .line 1098
    if-eqz v2, :cond_39

    .line 1099
    .line 1100
    iget-object v2, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1101
    .line 1102
    const/4 v9, 0x0

    .line 1103
    invoke-virtual {v2, v9, v9}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 1104
    .line 1105
    .line 1106
    goto :goto_1a

    .line 1107
    :cond_39
    const/4 v9, 0x0

    .line 1108
    iget-object v2, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1109
    .line 1110
    invoke-virtual {v2, v15, v9}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 1111
    .line 1112
    .line 1113
    :cond_3a
    :goto_1a
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1114
    .line 1115
    invoke-virtual {v5, v2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v0, v5, v3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v2

    .line 1125
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 1126
    .line 1127
    .line 1128
    goto/16 :goto_1d

    .line 1129
    .line 1130
    :cond_3b
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1131
    .line 1132
    goto/16 :goto_1d

    .line 1133
    .line 1134
    :cond_3c
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1135
    .line 1136
    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1137
    .line 1138
    iget-object v12, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1139
    .line 1140
    invoke-virtual {v10, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 1141
    .line 1142
    .line 1143
    move-result v10

    .line 1144
    if-eqz v10, :cond_44

    .line 1145
    .line 1146
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 1147
    .line 1148
    if-ne v4, v9, :cond_3d

    .line 1149
    .line 1150
    goto/16 :goto_1d

    .line 1151
    .line 1152
    :cond_3d
    iget v9, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 1153
    .line 1154
    const/high16 v10, 0x20000000

    .line 1155
    .line 1156
    and-int/2addr v9, v10

    .line 1157
    if-nez v9, :cond_3e

    .line 1158
    .line 1159
    iget v9, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 1160
    .line 1161
    if-ne v8, v9, :cond_40

    .line 1162
    .line 1163
    :cond_3e
    iget-object v9, v5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1164
    .line 1165
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1166
    .line 1167
    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1168
    .line 1169
    invoke-virtual {v9, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 1170
    .line 1171
    .line 1172
    move-result v9

    .line 1173
    if-eqz v9, :cond_40

    .line 1174
    .line 1175
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1176
    .line 1177
    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1178
    .line 1179
    if-nez v9, :cond_40

    .line 1180
    .line 1181
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    .line 1182
    .line 1183
    .line 1184
    move-result v2

    .line 1185
    if-eqz v2, :cond_3f

    .line 1186
    .line 1187
    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1188
    .line 1189
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1190
    .line 1191
    const/4 v10, 0x0

    .line 1192
    invoke-virtual {v2, v9, v10, v10}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1193
    .line 1194
    .line 1195
    :cond_3f
    invoke-virtual {v0, v5, v3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1196
    .line 1197
    .line 1198
    goto/16 :goto_1d

    .line 1199
    .line 1200
    :cond_40
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1201
    .line 1202
    new-instance v5, Landroid/content/Intent;

    .line 1203
    .line 1204
    iget-object v9, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1205
    .line 1206
    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1207
    .line 1208
    .line 1209
    iget-object v9, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1210
    .line 1211
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1212
    .line 1213
    invoke-static {v9, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1214
    .line 1215
    .line 1216
    move-result v3

    .line 1217
    if-eqz v3, :cond_41

    .line 1218
    .line 1219
    iget-object v3, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1220
    .line 1221
    if-eqz v3, :cond_41

    .line 1222
    .line 1223
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v3

    .line 1227
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v5}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v3

    .line 1234
    if-nez v3, :cond_41

    .line 1235
    .line 1236
    iget-object v3, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1237
    .line 1238
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v3

    .line 1242
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1243
    .line 1244
    .line 1245
    :cond_41
    iget-object v3, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1246
    .line 1247
    invoke-virtual {v5, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    .line 1248
    .line 1249
    .line 1250
    move-result v3

    .line 1251
    if-nez v3, :cond_42

    .line 1252
    .line 1253
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1254
    .line 1255
    goto/16 :goto_1d

    .line 1256
    .line 1257
    :cond_42
    if-nez v2, :cond_43

    .line 1258
    .line 1259
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1260
    .line 1261
    goto/16 :goto_1d

    .line 1262
    .line 1263
    :cond_43
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 1264
    .line 1265
    if-eqz v3, :cond_4c

    .line 1266
    .line 1267
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1268
    .line 1269
    if-eqz v3, :cond_4c

    .line 1270
    .line 1271
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->isActivityEmbeddedPlaceholder()Z

    .line 1272
    .line 1273
    .line 1274
    move-result v3

    .line 1275
    if-eqz v3, :cond_4c

    .line 1276
    .line 1277
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 1278
    .line 1279
    if-eqz v3, :cond_4c

    .line 1280
    .line 1281
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v3

    .line 1285
    if-eqz v3, :cond_4c

    .line 1286
    .line 1287
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v2

    .line 1291
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 1292
    .line 1293
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1294
    .line 1295
    .line 1296
    move-result v2

    .line 1297
    if-nez v2, :cond_4c

    .line 1298
    .line 1299
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1300
    .line 1301
    goto/16 :goto_1d

    .line 1302
    .line 1303
    :cond_44
    if-nez v9, :cond_45

    .line 1304
    .line 1305
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1306
    .line 1307
    goto/16 :goto_1d

    .line 1308
    .line 1309
    :cond_45
    iget-boolean v2, v4, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 1310
    .line 1311
    if-nez v2, :cond_4c

    .line 1312
    .line 1313
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1314
    .line 1315
    const/4 v3, 0x0

    .line 1316
    invoke-virtual {v4, v2, v3, v3}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1317
    .line 1318
    .line 1319
    goto :goto_1d

    .line 1320
    :cond_46
    :goto_1b
    new-array v2, v8, [I

    .line 1321
    .line 1322
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1323
    .line 1324
    invoke-virtual {v4, v5, v10, v2}, Lcom/android/server/wm/Task;->performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v5

    .line 1328
    if-eqz v5, :cond_49

    .line 1329
    .line 1330
    iget-boolean v9, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1331
    .line 1332
    if-nez v9, :cond_49

    .line 1333
    .line 1334
    const/4 v9, 0x0

    .line 1335
    aget v2, v2, v9

    .line 1336
    .line 1337
    if-lez v2, :cond_47

    .line 1338
    .line 1339
    iput-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1340
    .line 1341
    :cond_47
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    .line 1342
    .line 1343
    .line 1344
    move-result v2

    .line 1345
    if-eqz v2, :cond_48

    .line 1346
    .line 1347
    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1348
    .line 1349
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1350
    .line 1351
    const/4 v10, 0x0

    .line 1352
    invoke-virtual {v2, v9, v10, v10}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1353
    .line 1354
    .line 1355
    :cond_48
    invoke-virtual {v0, v5, v3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1356
    .line 1357
    .line 1358
    goto :goto_1d

    .line 1359
    :cond_49
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1360
    .line 1361
    if-eqz v5, :cond_4a

    .line 1362
    .line 1363
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v2

    .line 1367
    if-eqz v2, :cond_4a

    .line 1368
    .line 1369
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v2

    .line 1373
    iget-boolean v2, v2, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 1374
    .line 1375
    if-eqz v2, :cond_4a

    .line 1376
    .line 1377
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v2

    .line 1381
    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 1382
    .line 1383
    :cond_4a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v2

    .line 1387
    if-nez v2, :cond_4c

    .line 1388
    .line 1389
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1390
    .line 1391
    iget v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 1392
    .line 1393
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1394
    .line 1395
    const/4 v9, 0x0

    .line 1396
    invoke-virtual {v0, v2, v3, v9, v5}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v2

    .line 1400
    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 1401
    .line 1402
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1403
    .line 1404
    xor-int/2addr v3, v8

    .line 1405
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1406
    .line 1407
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1408
    .line 1409
    iget v5, v5, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1410
    .line 1411
    and-int/lit16 v5, v5, 0x400

    .line 1412
    .line 1413
    if-eqz v5, :cond_4b

    .line 1414
    .line 1415
    move v5, v8

    .line 1416
    goto :goto_1c

    .line 1417
    :cond_4b
    const/4 v5, 0x0

    .line 1418
    :goto_1c
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    .line 1419
    .line 1420
    .line 1421
    :cond_4c
    :goto_1d
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1422
    .line 1423
    if-eqz v2, :cond_54

    .line 1424
    .line 1425
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1426
    .line 1427
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    .line 1428
    .line 1429
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1430
    .line 1431
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1432
    .line 1433
    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 1434
    .line 1435
    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 1436
    .line 1437
    iget v7, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 1438
    .line 1439
    iget v9, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 1440
    .line 1441
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1442
    .line 1443
    .line 1444
    const/high16 v0, 0x10000000

    .line 1445
    .line 1446
    and-int v10, v7, v0

    .line 1447
    .line 1448
    if-ne v10, v0, :cond_53

    .line 1449
    .line 1450
    if-ne v9, v11, :cond_4d

    .line 1451
    .line 1452
    goto/16 :goto_1f

    .line 1453
    .line 1454
    :cond_4d
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 1455
    .line 1456
    .line 1457
    move-result v0

    .line 1458
    new-instance v10, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;

    .line 1459
    .line 1460
    invoke-direct {v10, v0, v5, v6}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;-><init>(III)V

    .line 1461
    .line 1462
    .line 1463
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v11

    .line 1467
    if-eqz v11, :cond_53

    .line 1468
    .line 1469
    invoke-virtual {v10, v11}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;->test(Ljava/lang/Object;)Z

    .line 1470
    .line 1471
    .line 1472
    move-result v0

    .line 1473
    if-eqz v0, :cond_4e

    .line 1474
    .line 1475
    goto/16 :goto_1f

    .line 1476
    .line 1477
    :cond_4e
    new-array v0, v8, [I

    .line 1478
    .line 1479
    invoke-static {v5}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldRestrictActivitySwitch(I)Z

    .line 1480
    .line 1481
    .line 1482
    move-result v8

    .line 1483
    new-instance v12, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 1484
    .line 1485
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 1486
    .line 1487
    .line 1488
    invoke-virtual {v1, v11, v5, v12}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v12

    .line 1492
    const-string v13, "ActivityTaskManager"

    .line 1493
    .line 1494
    if-eqz v8, :cond_50

    .line 1495
    .line 1496
    iget-boolean v14, v12, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    .line 1497
    .line 1498
    if-eqz v14, :cond_50

    .line 1499
    .line 1500
    invoke-virtual {v4, v10}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v10

    .line 1504
    if-nez v10, :cond_4f

    .line 1505
    .line 1506
    move-object v10, v3

    .line 1507
    :cond_4f
    invoke-virtual {v4, v10, v7, v0}, Lcom/android/server/wm/Task;->performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    .line 1508
    .line 1509
    .line 1510
    const/4 v7, 0x0

    .line 1511
    aget v10, v0, v7

    .line 1512
    .line 1513
    if-lez v10, :cond_50

    .line 1514
    .line 1515
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1516
    .line 1517
    const-string v14, "Cleared top n: "

    .line 1518
    .line 1519
    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1520
    .line 1521
    .line 1522
    aget v14, v0, v7

    .line 1523
    .line 1524
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1525
    .line 1526
    .line 1527
    const-string v7, " activities from task t: "

    .line 1528
    .line 1529
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1533
    .line 1534
    .line 1535
    const-string v7, " not matching top uid: "

    .line 1536
    .line 1537
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    .line 1539
    .line 1540
    invoke-static {v10, v5, v13}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1541
    .line 1542
    .line 1543
    :cond_50
    invoke-static {v5}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldShowToast(I)Z

    .line 1544
    .line 1545
    .line 1546
    move-result v5

    .line 1547
    if-eqz v5, :cond_53

    .line 1548
    .line 1549
    if-eqz v8, :cond_51

    .line 1550
    .line 1551
    const/4 v5, 0x0

    .line 1552
    aget v0, v0, v5

    .line 1553
    .line 1554
    if-lez v0, :cond_53

    .line 1555
    .line 1556
    :cond_51
    if-eqz v8, :cond_52

    .line 1557
    .line 1558
    const-string v0, "Top activities cleared by "

    .line 1559
    .line 1560
    goto :goto_1e

    .line 1561
    :cond_52
    const-string v0, "Top activities would be cleared by "

    .line 1562
    .line 1563
    :goto_1e
    const-string v5, "go/android-asm"

    .line 1564
    .line 1565
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v0

    .line 1569
    invoke-virtual {v1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    .line 1570
    .line 1571
    .line 1572
    iget-object v12, v12, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    .line 1573
    .line 1574
    const-string v5, "Clear Top"

    .line 1575
    .line 1576
    const/4 v10, 0x1

    .line 1577
    const/4 v14, 0x0

    .line 1578
    const/4 v15, 0x0

    .line 1579
    move-object v0, v1

    .line 1580
    move-object v1, v5

    .line 1581
    move-object/from16 v4, p1

    .line 1582
    .line 1583
    move-object v5, v11

    .line 1584
    move v7, v9

    .line 1585
    move v9, v10

    .line 1586
    move v10, v14

    .line 1587
    move v11, v15

    .line 1588
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IIZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v0

    .line 1592
    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    .line 1594
    .line 1595
    :cond_53
    :goto_1f
    const/4 v0, 0x0

    .line 1596
    return v0

    .line 1597
    :cond_54
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1598
    .line 1599
    if-eqz v2, :cond_55

    .line 1600
    .line 1601
    invoke-virtual {v4, v8, v8}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v1

    .line 1605
    :cond_55
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 1606
    .line 1607
    if-eqz v2, :cond_56

    .line 1608
    .line 1609
    invoke-virtual {v1, v8}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    .line 1610
    .line 1611
    .line 1612
    goto :goto_20

    .line 1613
    :cond_56
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 1614
    .line 1615
    if-eqz v2, :cond_57

    .line 1616
    .line 1617
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 1618
    .line 1619
    const/4 v3, 0x0

    .line 1620
    invoke-virtual {v2, v6, v3}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 1621
    .line 1622
    .line 1623
    :cond_57
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetRootTaskIfNeeded()V

    .line 1624
    .line 1625
    .line 1626
    iget-object v2, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveDreamComponent:Landroid/content/ComponentName;

    .line 1627
    .line 1628
    if-eqz v2, :cond_58

    .line 1629
    .line 1630
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    .line 1631
    .line 1632
    .line 1633
    move-result v2

    .line 1634
    if-eqz v2, :cond_58

    .line 1635
    .line 1636
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1637
    .line 1638
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1639
    .line 1640
    const-string/jumbo v4, "recycleTask#turnScreenOnFlag::"

    .line 1641
    .line 1642
    .line 1643
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1644
    .line 1645
    .line 1646
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1647
    .line 1648
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    .line 1650
    .line 1651
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v3

    .line 1655
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 1656
    .line 1657
    .line 1658
    :cond_58
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1659
    .line 1660
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 1661
    .line 1662
    if-eqz v0, :cond_59

    .line 1663
    .line 1664
    move v14, v11

    .line 1665
    goto :goto_21

    .line 1666
    :cond_59
    move v14, v15

    .line 1667
    :goto_21
    return v14
.end method

.method public final reset(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 8
    .line 9
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 18
    .line 19
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 20
    .line 21
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 29
    .line 30
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 31
    .line 32
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 37
    .line 38
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 45
    .line 46
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 53
    .line 54
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 55
    .line 56
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 59
    .line 60
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 61
    .line 62
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 63
    .line 64
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    .line 67
    .line 68
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    .line 69
    .line 70
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 73
    .line 74
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 75
    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 86
    .line 87
    .line 88
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    .line 89
    .line 90
    if-eqz p1, :cond_1

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    .line 97
    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    .line 101
    .line 102
    const-string/jumbo p0, "setAffordanceTargetTask: null"

    .line 103
    .line 104
    .line 105
    const-string p1, "MultiTaskingController"

    .line 106
    .line 107
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :cond_1
    return-void
.end method

.method public final resolveReusableTask()Lcom/android/server/wm/Task;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {v3, v0}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    return-object v4

    .line 37
    :cond_1
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 38
    .line 39
    const/high16 v5, 0x10000000

    .line 40
    .line 41
    and-int/2addr v5, v1

    .line 42
    const/4 v6, 0x1

    .line 43
    const/4 v7, 0x2

    .line 44
    const/4 v8, 0x3

    .line 45
    const/4 v9, 0x0

    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    const/high16 v5, 0x8000000

    .line 49
    .line 50
    and-int/2addr v1, v5

    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    :cond_2
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 54
    .line 55
    if-eq v8, v1, :cond_5

    .line 56
    .line 57
    if-ne v7, v1, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchTaskIdForAliasManagedTarget()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eq v1, v2, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    move v1, v9

    .line 72
    goto :goto_1

    .line 73
    :cond_5
    :goto_0
    move v1, v6

    .line 74
    :goto_1
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 75
    .line 76
    if-nez v2, :cond_6

    .line 77
    .line 78
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 81
    .line 82
    if-nez v2, :cond_6

    .line 83
    .line 84
    move v2, v6

    .line 85
    goto :goto_2

    .line 86
    :cond_6
    move v2, v9

    .line 87
    :goto_2
    and-int/2addr v1, v2

    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 91
    .line 92
    if-ne v8, v1, :cond_8

    .line 93
    .line 94
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 95
    .line 96
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 97
    .line 98
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 99
    .line 100
    invoke-virtual {v3, v1, v2, v9}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_12

    .line 105
    .line 106
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_12

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_12

    .line 119
    .line 120
    const-string v2, "Removes redundant singleInstance"

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    :cond_7
    move-object v1, v4

    .line 126
    goto/16 :goto_5

    .line 127
    .line 128
    :cond_8
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 129
    .line 130
    and-int/lit16 v2, v2, 0x1000

    .line 131
    .line 132
    if-eqz v2, :cond_a

    .line 133
    .line 134
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 135
    .line 136
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 137
    .line 138
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 139
    .line 140
    if-eq v7, v1, :cond_9

    .line 141
    .line 142
    move v1, v6

    .line 143
    goto :goto_3

    .line 144
    :cond_9
    move v1, v9

    .line 145
    :goto_3
    invoke-virtual {v3, v2, v5, v1}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    goto/16 :goto_5

    .line 150
    .line 151
    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 152
    .line 153
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 163
    .line 164
    iget-object v8, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 165
    .line 166
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 167
    .line 168
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 169
    .line 170
    aget-boolean v11, v10, v9

    .line 171
    .line 172
    if-eqz v11, :cond_b

    .line 173
    .line 174
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v13

    .line 182
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v15

    .line 190
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v16

    .line 194
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 195
    .line 196
    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 197
    .line 198
    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v22

    .line 202
    const-wide v18, 0x36e3a4f36cb337fdL    # 2.7527582584529757E-44

    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    const/16 v20, 0xc00

    .line 208
    .line 209
    const/16 v21, 0x0

    .line 210
    .line 211
    move-object/from16 v17, v11

    .line 212
    .line 213
    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_b
    iget-object v11, v3, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 217
    .line 218
    iput v5, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mActivityType:I

    .line 219
    .line 220
    iput-object v7, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mTaskAffinity:Ljava/lang/String;

    .line 221
    .line 222
    iput-object v8, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    .line 223
    .line 224
    iput-object v1, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 225
    .line 226
    iput-object v4, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 227
    .line 228
    iput-object v4, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    .line 229
    .line 230
    iput-boolean v6, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIncludeLaunchedFromBubble:Z

    .line 231
    .line 232
    if-eqz v2, :cond_d

    .line 233
    .line 234
    invoke-virtual {v11, v2}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/WindowContainer;)V

    .line 235
    .line 236
    .line 237
    iget-object v5, v3, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 238
    .line 239
    iget-object v7, v5, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 240
    .line 241
    if-eqz v7, :cond_c

    .line 242
    .line 243
    move-object v1, v7

    .line 244
    goto/16 :goto_5

    .line 245
    .line 246
    :cond_c
    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    .line 247
    .line 248
    if-eqz v5, :cond_d

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_d
    move-object v5, v4

    .line 252
    :goto_4
    new-instance v7, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;

    .line 253
    .line 254
    invoke-direct {v7, v3, v2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 262
    .line 263
    if-eqz v2, :cond_e

    .line 264
    .line 265
    move-object v1, v2

    .line 266
    goto :goto_5

    .line 267
    :cond_e
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 268
    .line 269
    invoke-virtual {v11}, Lcom/android/internal/protolog/ProtoLogGroup;->isEnabled()Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_f

    .line 274
    .line 275
    if-nez v5, :cond_f

    .line 276
    .line 277
    aget-boolean v2, v10, v9

    .line 278
    .line 279
    if-eqz v2, :cond_f

    .line 280
    .line 281
    const-wide v12, 0x27428b51d2773e63L

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    const/4 v14, 0x0

    .line 287
    const/4 v15, 0x0

    .line 288
    const/16 v16, 0x0

    .line 289
    .line 290
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    :cond_f
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_ACTIVE_APP_ADCP_ENABLE:Z

    .line 294
    .line 295
    if-eqz v2, :cond_11

    .line 296
    .line 297
    if-nez v5, :cond_11

    .line 298
    .line 299
    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    .line 300
    .line 301
    if-nez v2, :cond_10

    .line 302
    .line 303
    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 304
    .line 305
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 306
    .line 307
    const-string v7, "PkgPredictorService"

    .line 308
    .line 309
    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    check-cast v2, Lcom/samsung/android/ipm/SecIpmManager;

    .line 314
    .line 315
    iput-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    .line 316
    .line 317
    :cond_10
    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    .line 318
    .line 319
    if-eqz v2, :cond_11

    .line 320
    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    const-string/jumbo v7, "mSecIpmManager Preload "

    .line 324
    .line 325
    .line 326
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 330
    .line 331
    const-string v8, " dex files"

    .line 332
    .line 333
    const-string v10, "[secipm]"

    .line 334
    .line 335
    invoke-static {v2, v7, v8, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    .line 339
    .line 340
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 341
    .line 342
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 343
    .line 344
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v2, v7, v1, v3}, Lcom/samsung/android/ipm/SecIpmManager;->dexFilePreload(ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :cond_11
    move-object v1, v5

    .line 354
    :cond_12
    :goto_5
    if-eqz v1, :cond_13

    .line 355
    .line 356
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 357
    .line 358
    const/4 v3, 0x4

    .line 359
    if-ne v2, v3, :cond_13

    .line 360
    .line 361
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 362
    .line 363
    invoke-virtual {v2, v6, v9}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 368
    .line 369
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 370
    .line 371
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 372
    .line 373
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    if-nez v2, :cond_13

    .line 378
    .line 379
    move-object v1, v4

    .line 380
    :cond_13
    if-eqz v1, :cond_15

    .line 381
    .line 382
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 383
    .line 384
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-nez v2, :cond_14

    .line 389
    .line 390
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-eqz v2, :cond_15

    .line 395
    .line 396
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 401
    .line 402
    if-eq v2, v3, :cond_15

    .line 403
    .line 404
    move-object v1, v4

    .line 405
    :cond_15
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 406
    .line 407
    if-eqz v2, :cond_16

    .line 408
    .line 409
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 410
    .line 411
    if-eqz v2, :cond_16

    .line 412
    .line 413
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 414
    .line 415
    if-eqz v2, :cond_16

    .line 416
    .line 417
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isActivityEmbeddedPlaceholder()Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-eqz v2, :cond_16

    .line 422
    .line 423
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 424
    .line 425
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    return-object v0

    .line 430
    :cond_16
    if-eqz v1, :cond_17

    .line 431
    .line 432
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 433
    .line 434
    :cond_17
    return-object v4
.end method

.method public final resolveToHeavyWeightSwitcherIfNeeded()I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 11
    .line 12
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 19
    .line 20
    and-int/lit8 v4, v4, 0x2

    .line 21
    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    :cond_0
    move v0, v2

    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    return v2

    .line 38
    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 45
    .line 46
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 47
    .line 48
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 49
    .line 50
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 51
    .line 52
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 53
    .line 54
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 55
    .line 56
    if-ne v3, v5, :cond_4

    .line 57
    .line 58
    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    :cond_3
    move v0, v2

    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_4
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 72
    .line 73
    iget v4, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 74
    .line 75
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 76
    .line 77
    if-eqz v3, :cond_5

    .line 78
    .line 79
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 80
    .line 81
    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_6

    .line 86
    .line 87
    iget-object v3, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 88
    .line 89
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 90
    .line 91
    :cond_5
    move v5, v4

    .line 92
    goto :goto_0

    .line 93
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "Unable to find app for caller "

    .line 96
    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 101
    .line 102
    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v2, " (pid="

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 113
    .line 114
    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v2, ") when starting: "

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 125
    .line 126
    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v2, "ActivityTaskManager"

    .line 140
    .line 141
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 145
    .line 146
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 149
    .line 150
    .line 151
    const/16 v0, -0x5e

    .line 152
    .line 153
    return v0

    .line 154
    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 155
    .line 156
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 157
    .line 158
    iget v6, v4, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 159
    .line 160
    const/4 v15, 0x1

    .line 161
    new-array v14, v15, [Landroid/content/Intent;

    .line 162
    .line 163
    iget-object v7, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 164
    .line 165
    aput-object v7, v14, v2

    .line 166
    .line 167
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 168
    .line 169
    filled-new-array {v4}, [Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v16

    .line 173
    const/4 v13, 0x0

    .line 174
    const/4 v7, 0x0

    .line 175
    const/4 v4, 0x2

    .line 176
    const-string v11, "android"

    .line 177
    .line 178
    const/4 v12, 0x0

    .line 179
    const/4 v10, 0x0

    .line 180
    const/high16 v8, 0x50000000

    .line 181
    .line 182
    const/4 v9, 0x0

    .line 183
    move v2, v15

    .line 184
    move-object/from16 v15, v16

    .line 185
    .line 186
    invoke-virtual/range {v3 .. v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    new-instance v4, Landroid/content/Intent;

    .line 191
    .line 192
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 193
    .line 194
    .line 195
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 196
    .line 197
    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 198
    .line 199
    if-ltz v5, :cond_7

    .line 200
    .line 201
    const-string v5, "has_result"

    .line 202
    .line 203
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    .line 205
    .line 206
    :cond_7
    new-instance v5, Landroid/content/IntentSender;

    .line 207
    .line 208
    invoke-direct {v5, v3}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 209
    .line 210
    .line 211
    const-string v3, "intent"

    .line 212
    .line 213
    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 214
    .line 215
    .line 216
    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-eqz v3, :cond_8

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_8
    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 226
    .line 227
    const/4 v3, 0x0

    .line 228
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 233
    .line 234
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 235
    .line 236
    const-string v5, "cur_app"

    .line 237
    .line 238
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 242
    .line 243
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 244
    .line 245
    const-string v3, "cur_task"

    .line 246
    .line 247
    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    .line 249
    .line 250
    :goto_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 251
    .line 252
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 253
    .line 254
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 255
    .line 256
    const-string/jumbo v3, "new_app"

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 263
    .line 264
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 265
    .line 266
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 271
    .line 272
    .line 273
    const-class v1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    const-string v3, "android"

    .line 280
    .line 281
    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    .line 283
    .line 284
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 285
    .line 286
    iput-object v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 287
    .line 288
    const/4 v3, 0x0

    .line 289
    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 290
    .line 291
    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 292
    .line 293
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    iput v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 298
    .line 299
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 300
    .line 301
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    iput v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 306
    .line 307
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 308
    .line 309
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 310
    .line 311
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 312
    .line 313
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 314
    .line 315
    iget v7, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 316
    .line 317
    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 318
    .line 319
    iget v6, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 320
    .line 321
    iget v8, v1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 322
    .line 323
    invoke-static {v2, v6, v8}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    .line 324
    .line 325
    .line 326
    move-result v9

    .line 327
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 328
    .line 329
    iget v10, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 330
    .line 331
    const/4 v6, 0x0

    .line 332
    const/4 v8, 0x0

    .line 333
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 338
    .line 339
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 340
    .line 341
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 342
    .line 343
    if-eqz v2, :cond_9

    .line 344
    .line 345
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 346
    .line 347
    :cond_9
    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 348
    .line 349
    if-eqz v3, :cond_a

    .line 350
    .line 351
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 352
    .line 353
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 354
    .line 355
    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 356
    .line 357
    invoke-virtual {v0, v3, v2}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 362
    .line 363
    :cond_a
    const/4 v0, 0x0

    .line 364
    :goto_2
    return v0
.end method

.method public final resumeTargetRootTaskIfNeeded()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 42
    .line 43
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 47
    .line 48
    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 51
    .line 52
    iget v2, v1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 53
    .line 54
    if-eq v0, v2, :cond_4

    .line 55
    .line 56
    if-nez p0, :cond_3

    .line 57
    .line 58
    iget-object p0, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    :cond_3
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 76
    .line 77
    invoke-virtual {v1, v0, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    .line 79
    .line 80
    :cond_4
    return-void
.end method

.method public final setActivityOptions(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 8
    .line 9
    return-void
.end method

.method public final setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;II)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v12, p2

    .line 6
    .line 7
    move-object/from16 v13, p3

    .line 8
    .line 9
    move/from16 v14, p5

    .line 10
    .line 11
    move-object/from16 v15, p6

    .line 12
    .line 13
    const/4 v10, 0x0

    .line 14
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 15
    .line 16
    .line 17
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 18
    .line 19
    const/4 v9, 0x1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    if-eqz v12, :cond_0

    .line 23
    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    iput-boolean v9, v0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput-boolean v10, v0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    .line 44
    .line 45
    :goto_0
    iput-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 46
    .line 47
    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 48
    .line 49
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 50
    .line 51
    iput-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 52
    .line 53
    iget v1, v11, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 54
    .line 55
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 56
    .line 57
    move/from16 v1, p10

    .line 58
    .line 59
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 60
    .line 61
    iput-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 62
    .line 63
    const/4 v8, 0x0

    .line 64
    if-eqz v15, :cond_1

    .line 65
    .line 66
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move-object v1, v8

    .line 72
    :goto_1
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 73
    .line 74
    move-object/from16 v1, p7

    .line 75
    .line 76
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 77
    .line 78
    move-object/from16 v1, p8

    .line 79
    .line 80
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 81
    .line 82
    move/from16 v1, p9

    .line 83
    .line 84
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 85
    .line 86
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 87
    .line 88
    invoke-virtual {v7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 89
    .line 90
    .line 91
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 92
    .line 93
    iget-object v1, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 94
    .line 95
    iget-object v2, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 96
    .line 97
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 98
    .line 99
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 100
    .line 101
    const/16 v16, 0x0

    .line 102
    .line 103
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 104
    .line 105
    const/16 v17, 0x0

    .line 106
    .line 107
    move-object/from16 v2, p3

    .line 108
    .line 109
    move-object/from16 v18, v4

    .line 110
    .line 111
    move-object/from16 v4, p1

    .line 112
    .line 113
    move-object/from16 v19, v5

    .line 114
    .line 115
    move-object/from16 v5, p6

    .line 116
    .line 117
    move-object/from16 v20, v6

    .line 118
    .line 119
    move-object/from16 v6, p2

    .line 120
    .line 121
    move-object/from16 v21, v7

    .line 122
    .line 123
    move-object/from16 v7, v19

    .line 124
    .line 125
    move/from16 v8, v16

    .line 126
    .line 127
    move-object/from16 v9, v18

    .line 128
    .line 129
    move v12, v10

    .line 130
    move-object/from16 v10, v17

    .line 131
    .line 132
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 133
    .line 134
    .line 135
    move-object/from16 v1, v21

    .line 136
    .line 137
    iget-object v2, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 138
    .line 139
    if-eqz v2, :cond_2

    .line 140
    .line 141
    const/4 v10, 0x1

    .line 142
    goto :goto_2

    .line 143
    :cond_2
    move v10, v12

    .line 144
    :goto_2
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 145
    .line 146
    if-eqz v10, :cond_3

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_3
    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    :goto_3
    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 156
    .line 157
    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 158
    .line 159
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 160
    .line 161
    iget v1, v11, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    .line 162
    .line 163
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 164
    .line 165
    const/4 v2, 0x3

    .line 166
    if-ne v2, v1, :cond_4

    .line 167
    .line 168
    const/4 v10, 0x1

    .line 169
    goto :goto_4

    .line 170
    :cond_4
    move v10, v12

    .line 171
    :goto_4
    const/4 v4, 0x2

    .line 172
    if-ne v4, v1, :cond_5

    .line 173
    .line 174
    const/4 v1, 0x1

    .line 175
    goto :goto_5

    .line 176
    :cond_5
    move v1, v12

    .line 177
    :goto_5
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 178
    .line 179
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    const/high16 v6, 0x80000

    .line 184
    .line 185
    and-int v7, v5, v6

    .line 186
    .line 187
    const/4 v8, 0x4

    .line 188
    const-string v9, "ActivityTaskManager"

    .line 189
    .line 190
    const v16, -0x8080001

    .line 191
    .line 192
    .line 193
    if-eqz v7, :cond_7

    .line 194
    .line 195
    if-nez v10, :cond_6

    .line 196
    .line 197
    if-eqz v1, :cond_7

    .line 198
    .line 199
    :cond_6
    const-string v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    .line 200
    .line 201
    invoke-static {v9, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    and-int v5, v5, v16

    .line 205
    .line 206
    const/4 v10, 0x1

    .line 207
    goto :goto_6

    .line 208
    :cond_7
    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 209
    .line 210
    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 211
    .line 212
    const/4 v10, 0x1

    .line 213
    if-eq v1, v10, :cond_a

    .line 214
    .line 215
    if-eq v1, v4, :cond_a

    .line 216
    .line 217
    if-eq v1, v2, :cond_8

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_8
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 221
    .line 222
    if-ne v1, v8, :cond_9

    .line 223
    .line 224
    if-eqz v7, :cond_b

    .line 225
    .line 226
    :cond_9
    and-int v5, v5, v16

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_a
    or-int/2addr v5, v6

    .line 230
    :cond_b
    :goto_6
    iput v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 231
    .line 232
    iget-boolean v1, v11, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 233
    .line 234
    if-eqz v1, :cond_d

    .line 235
    .line 236
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 237
    .line 238
    if-eq v4, v1, :cond_d

    .line 239
    .line 240
    if-ne v2, v1, :cond_c

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_c
    and-int v1, v5, v6

    .line 244
    .line 245
    if-eqz v1, :cond_d

    .line 246
    .line 247
    move v1, v10

    .line 248
    goto :goto_8

    .line 249
    :cond_d
    :goto_7
    move v1, v12

    .line 250
    :goto_8
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 251
    .line 252
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 253
    .line 254
    const/high16 v7, 0x10000000

    .line 255
    .line 256
    if-ne v1, v8, :cond_e

    .line 257
    .line 258
    or-int v1, v5, v7

    .line 259
    .line 260
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 261
    .line 262
    :cond_e
    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 263
    .line 264
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 265
    .line 266
    if-eqz v1, :cond_f

    .line 267
    .line 268
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 269
    .line 270
    if-eqz v5, :cond_f

    .line 271
    .line 272
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 273
    .line 274
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-nez v1, :cond_f

    .line 281
    .line 282
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 283
    .line 284
    or-int/2addr v1, v7

    .line 285
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 286
    .line 287
    :cond_f
    const-string/jumbo v1, "startResolvedActivity"

    .line 288
    .line 289
    .line 290
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-eqz v1, :cond_11

    .line 297
    .line 298
    :cond_10
    const/4 v2, 0x0

    .line 299
    goto :goto_9

    .line 300
    :cond_11
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 301
    .line 302
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 303
    .line 304
    if-eqz v1, :cond_10

    .line 305
    .line 306
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 307
    .line 308
    and-int/2addr v1, v7

    .line 309
    if-eqz v1, :cond_10

    .line 310
    .line 311
    const-string v1, "Activity is launching as a new task, so cancelling activity result."

    .line 312
    .line 313
    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 317
    .line 318
    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 319
    .line 320
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 321
    .line 322
    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 323
    .line 324
    const/16 v27, 0x0

    .line 325
    .line 326
    const/16 v30, 0x0

    .line 327
    .line 328
    const/16 v23, -0x1

    .line 329
    .line 330
    const/16 v26, 0x0

    .line 331
    .line 332
    const/16 v28, 0x0

    .line 333
    .line 334
    const/16 v29, 0x0

    .line 335
    .line 336
    move-object/from16 v22, v5

    .line 337
    .line 338
    move-object/from16 v24, v2

    .line 339
    .line 340
    move/from16 v25, v1

    .line 341
    .line 342
    invoke-virtual/range {v22 .. v30}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 343
    .line 344
    .line 345
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 346
    .line 347
    const/4 v2, 0x0

    .line 348
    iput-object v2, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 349
    .line 350
    :goto_9
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 351
    .line 352
    and-int v5, v1, v6

    .line 353
    .line 354
    if-eqz v5, :cond_12

    .line 355
    .line 356
    iget-object v5, v11, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 357
    .line 358
    if-nez v5, :cond_12

    .line 359
    .line 360
    or-int/2addr v1, v7

    .line 361
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 362
    .line 363
    :cond_12
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 364
    .line 365
    and-int v5, v1, v7

    .line 366
    .line 367
    if-eqz v5, :cond_14

    .line 368
    .line 369
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 370
    .line 371
    if-nez v5, :cond_13

    .line 372
    .line 373
    iget-object v5, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 374
    .line 375
    iget v5, v5, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 376
    .line 377
    if-ne v5, v4, :cond_14

    .line 378
    .line 379
    :cond_13
    const/high16 v5, 0x8000000

    .line 380
    .line 381
    or-int/2addr v1, v5

    .line 382
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 383
    .line 384
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isLaunchAdjacent()Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-eqz v1, :cond_15

    .line 389
    .line 390
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    .line 391
    .line 392
    if-nez v1, :cond_15

    .line 393
    .line 394
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 395
    .line 396
    and-int/lit16 v1, v1, -0x1001

    .line 397
    .line 398
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 399
    .line 400
    :cond_15
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 401
    .line 402
    const/high16 v5, 0x40000

    .line 403
    .line 404
    and-int/2addr v1, v5

    .line 405
    if-nez v1, :cond_16

    .line 406
    .line 407
    move v1, v10

    .line 408
    :goto_a
    move-object/from16 v5, v20

    .line 409
    .line 410
    goto :goto_b

    .line 411
    :cond_16
    move v1, v12

    .line 412
    goto :goto_a

    .line 413
    :goto_b
    iput-boolean v1, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 414
    .line 415
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-nez v1, :cond_17

    .line 420
    .line 421
    new-instance v6, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    const-string v7, "Can\'t resume non-current user r="

    .line 424
    .line 425
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    invoke-static {v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    :cond_17
    if-eqz v1, :cond_19

    .line 439
    .line 440
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 441
    .line 442
    if-eqz v1, :cond_18

    .line 443
    .line 444
    goto :goto_c

    .line 445
    :cond_18
    iput-boolean v10, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 446
    .line 447
    goto :goto_d

    .line 448
    :cond_19
    :goto_c
    iput-boolean v10, v11, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 449
    .line 450
    iput-boolean v12, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 451
    .line 452
    :goto_d
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 453
    .line 454
    const/4 v6, -0x1

    .line 455
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 456
    .line 457
    if-eqz v1, :cond_22

    .line 458
    .line 459
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    if-eq v1, v6, :cond_1b

    .line 464
    .line 465
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 466
    .line 467
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    if-eqz v1, :cond_1b

    .line 472
    .line 473
    iput-boolean v10, v11, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 474
    .line 475
    invoke-virtual {v11, v10}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    .line 476
    .line 477
    .line 478
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 479
    .line 480
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    if-nez v1, :cond_1c

    .line 485
    .line 486
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 487
    .line 488
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    invoke-virtual {v3, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    if-eqz v1, :cond_1a

    .line 497
    .line 498
    invoke-virtual {v1, v10, v10}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    goto :goto_e

    .line 503
    :cond_1a
    move-object v1, v2

    .line 504
    :goto_e
    if-eqz v1, :cond_1c

    .line 505
    .line 506
    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 507
    .line 508
    invoke-virtual {v1, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    if-nez v1, :cond_1c

    .line 513
    .line 514
    iput-boolean v12, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 515
    .line 516
    iput v4, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 517
    .line 518
    goto :goto_f

    .line 519
    :cond_1b
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 520
    .line 521
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    if-eqz v1, :cond_1c

    .line 526
    .line 527
    iput-boolean v12, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 528
    .line 529
    iput v4, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 530
    .line 531
    :cond_1c
    :goto_f
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 532
    .line 533
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 538
    .line 539
    iget-object v1, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 540
    .line 541
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 542
    .line 543
    iget-object v5, v5, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 544
    .line 545
    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 546
    .line 547
    invoke-virtual {v1, v5}, Lcom/android/server/wm/KeyguardController;->isKeyguardOccluded(I)Z

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    .line 552
    .line 553
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 554
    .line 555
    if-eqz v5, :cond_1d

    .line 556
    .line 557
    if-eqz v1, :cond_1d

    .line 558
    .line 559
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 560
    .line 561
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 562
    .line 563
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 564
    .line 565
    .line 566
    move-result v1

    .line 567
    if-eqz v1, :cond_1d

    .line 568
    .line 569
    iput-boolean v12, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 570
    .line 571
    iput v4, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 572
    .line 573
    :cond_1d
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 574
    .line 575
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-static {v1}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 584
    .line 585
    if-nez p4, :cond_1f

    .line 586
    .line 587
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 588
    .line 589
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    if-nez v1, :cond_1e

    .line 594
    .line 595
    move-object v1, v2

    .line 596
    goto :goto_10

    .line 597
    :cond_1e
    iget-object v5, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 598
    .line 599
    iget-object v5, v5, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 600
    .line 601
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    check-cast v1, Lcom/android/server/wm/TaskFragment;

    .line 606
    .line 607
    :goto_10
    if-eqz v1, :cond_20

    .line 608
    .line 609
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    .line 610
    .line 611
    .line 612
    move-result v5

    .line 613
    if-eqz v5, :cond_20

    .line 614
    .line 615
    new-instance v5, Ljava/lang/StringBuilder;

    .line 616
    .line 617
    const-string v8, "Can not start activity in TaskFragment in PIP: "

    .line 618
    .line 619
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .line 631
    .line 632
    move-object v1, v2

    .line 633
    goto :goto_11

    .line 634
    :cond_1f
    move-object/from16 v1, p4

    .line 635
    .line 636
    :cond_20
    :goto_11
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 637
    .line 638
    if-eqz v5, :cond_23

    .line 639
    .line 640
    if-eqz v1, :cond_23

    .line 641
    .line 642
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 643
    .line 644
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->isActivityEmbeddedPlaceholder()Z

    .line 645
    .line 646
    .line 647
    move-result v5

    .line 648
    if-eqz v5, :cond_23

    .line 649
    .line 650
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 651
    .line 652
    .line 653
    move-result-object v5

    .line 654
    if-eqz v5, :cond_21

    .line 655
    .line 656
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 657
    .line 658
    .line 659
    move-result v8

    .line 660
    if-eqz v8, :cond_21

    .line 661
    .line 662
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 663
    .line 664
    .line 665
    move-result-object v8

    .line 666
    if-eqz v8, :cond_21

    .line 667
    .line 668
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 669
    .line 670
    .line 671
    move-result-object v8

    .line 672
    new-instance v6, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    .line 673
    .line 674
    const/4 v2, 0x0

    .line 675
    invoke-direct {v6, v2}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>(I)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v8, v6}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    if-eqz v2, :cond_21

    .line 683
    .line 684
    if-eq v2, v5, :cond_21

    .line 685
    .line 686
    iput v4, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 687
    .line 688
    iput-boolean v12, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 689
    .line 690
    :cond_21
    iput-boolean v10, v1, Lcom/android/server/wm/TaskFragment;->mIsPlaceholderTaskFragment:Z

    .line 691
    .line 692
    goto :goto_12

    .line 693
    :cond_22
    move-object/from16 v1, p4

    .line 694
    .line 695
    :cond_23
    :goto_12
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 696
    .line 697
    const/high16 v5, 0x1000000

    .line 698
    .line 699
    and-int/2addr v2, v5

    .line 700
    if-eqz v2, :cond_24

    .line 701
    .line 702
    move-object v8, v15

    .line 703
    goto :goto_13

    .line 704
    :cond_24
    const/4 v8, 0x0

    .line 705
    :goto_13
    iput-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 706
    .line 707
    iput-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 708
    .line 709
    if-eqz v13, :cond_25

    .line 710
    .line 711
    iget-boolean v2, v13, Lcom/android/server/wm/Task;->inRecents:Z

    .line 712
    .line 713
    if-nez v2, :cond_25

    .line 714
    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    .line 716
    .line 717
    const-string v5, "Starting activity in task not in recents: "

    .line 718
    .line 719
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v2

    .line 729
    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .line 731
    .line 732
    const/4 v2, 0x0

    .line 733
    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 734
    .line 735
    :cond_25
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 736
    .line 737
    if-eqz v2, :cond_28

    .line 738
    .line 739
    iget-object v5, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 740
    .line 741
    iget-object v6, v2, Lcom/android/server/wm/Task;->mRequiredDisplayCategory:Ljava/lang/String;

    .line 742
    .line 743
    if-eqz v6, :cond_26

    .line 744
    .line 745
    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 746
    .line 747
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-result v6

    .line 751
    if-nez v6, :cond_28

    .line 752
    .line 753
    :cond_26
    iget-object v2, v2, Lcom/android/server/wm/Task;->mRequiredDisplayCategory:Ljava/lang/String;

    .line 754
    .line 755
    if-nez v2, :cond_27

    .line 756
    .line 757
    iget-object v2, v5, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 758
    .line 759
    if-nez v2, :cond_27

    .line 760
    .line 761
    goto :goto_14

    .line 762
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 763
    .line 764
    const-string v5, "Starting activity in task with different display category: "

    .line 765
    .line 766
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 770
    .line 771
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v2

    .line 778
    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    .line 780
    .line 781
    const/4 v2, 0x0

    .line 782
    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 783
    .line 784
    :cond_28
    :goto_14
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 785
    .line 786
    iput v14, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 787
    .line 788
    and-int/lit8 v1, v14, 0x1

    .line 789
    .line 790
    if-eqz v1, :cond_2b

    .line 791
    .line 792
    if-nez v15, :cond_29

    .line 793
    .line 794
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 795
    .line 796
    .line 797
    move-result-object v1

    .line 798
    if-eqz v1, :cond_29

    .line 799
    .line 800
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 801
    .line 802
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    goto :goto_15

    .line 807
    :cond_29
    move-object v1, v15

    .line 808
    :goto_15
    if-eqz v1, :cond_2a

    .line 809
    .line 810
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 811
    .line 812
    iget-object v2, v11, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 813
    .line 814
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v1

    .line 818
    if-nez v1, :cond_2b

    .line 819
    .line 820
    :cond_2a
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 821
    .line 822
    and-int/lit8 v1, v1, -0x2

    .line 823
    .line 824
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 825
    .line 826
    :cond_2b
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 827
    .line 828
    const/high16 v2, 0x10000

    .line 829
    .line 830
    and-int/2addr v1, v2

    .line 831
    if-eqz v1, :cond_2c

    .line 832
    .line 833
    move v1, v10

    .line 834
    goto :goto_16

    .line 835
    :cond_2c
    move v1, v12

    .line 836
    :goto_16
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 837
    .line 838
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 839
    .line 840
    if-nez v1, :cond_2d

    .line 841
    .line 842
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 843
    .line 844
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    .line 845
    .line 846
    .line 847
    move-result v1

    .line 848
    if-nez v1, :cond_2d

    .line 849
    .line 850
    iput v4, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 851
    .line 852
    iput-boolean v12, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 853
    .line 854
    :cond_2d
    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 855
    .line 856
    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    .line 857
    .line 858
    .line 859
    move-result v1

    .line 860
    const/4 v2, -0x1

    .line 861
    if-eq v1, v2, :cond_31

    .line 862
    .line 863
    iget-object v1, v3, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 864
    .line 865
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 870
    .line 871
    .line 872
    move-result v2

    .line 873
    if-eqz v2, :cond_30

    .line 874
    .line 875
    new-instance v2, Ljava/util/ArrayList;

    .line 876
    .line 877
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 878
    .line 879
    .line 880
    move-result-object v5

    .line 881
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 882
    .line 883
    .line 884
    move-result-object v6

    .line 885
    filled-new-array {v5, v6}, [Ljava/lang/Integer;

    .line 886
    .line 887
    .line 888
    move-result-object v5

    .line 889
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 890
    .line 891
    .line 892
    move-result-object v5

    .line 893
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 894
    .line 895
    .line 896
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 897
    .line 898
    if-eqz v5, :cond_2e

    .line 899
    .line 900
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    .line 901
    .line 902
    .line 903
    move-result v5

    .line 904
    if-eqz v5, :cond_2e

    .line 905
    .line 906
    const/4 v5, 0x4

    .line 907
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 908
    .line 909
    .line 910
    move-result-object v6

    .line 911
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    .line 913
    .line 914
    goto :goto_17

    .line 915
    :cond_2e
    const/4 v5, 0x4

    .line 916
    :goto_17
    move v6, v12

    .line 917
    :goto_18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 918
    .line 919
    .line 920
    move-result v8

    .line 921
    if-ge v6, v8, :cond_32

    .line 922
    .line 923
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v8

    .line 927
    check-cast v8, Ljava/lang/Integer;

    .line 928
    .line 929
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 930
    .line 931
    .line 932
    move-result v8

    .line 933
    invoke-virtual {v1, v8}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    .line 934
    .line 935
    .line 936
    move-result-object v8

    .line 937
    if-eqz v8, :cond_2f

    .line 938
    .line 939
    invoke-virtual {v8, v10, v12}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 940
    .line 941
    .line 942
    move-result-object v9

    .line 943
    if-eqz v9, :cond_2f

    .line 944
    .line 945
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    .line 946
    .line 947
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 948
    .line 949
    .line 950
    move-result-object v8

    .line 951
    iget v8, v8, Lcom/android/server/wm/Task;->mTaskId:I

    .line 952
    .line 953
    invoke-virtual {v9, v8, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 954
    .line 955
    .line 956
    :cond_2f
    add-int/lit8 v6, v6, 0x1

    .line 957
    .line 958
    goto :goto_18

    .line 959
    :cond_30
    const/4 v5, 0x4

    .line 960
    invoke-virtual {v1, v10, v12}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 961
    .line 962
    .line 963
    move-result-object v1

    .line 964
    if-eqz v1, :cond_32

    .line 965
    .line 966
    invoke-virtual {v1, v10, v12}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 967
    .line 968
    .line 969
    move-result-object v2

    .line 970
    if-eqz v2, :cond_32

    .line 971
    .line 972
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    .line 973
    .line 974
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 975
    .line 976
    .line 977
    move-result-object v1

    .line 978
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 979
    .line 980
    invoke-virtual {v2, v1, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 981
    .line 982
    .line 983
    goto :goto_19

    .line 984
    :cond_31
    const/4 v5, 0x4

    .line 985
    :cond_32
    :goto_19
    iget v0, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 986
    .line 987
    const v1, 0x10001000

    .line 988
    .line 989
    .line 990
    and-int/2addr v0, v1

    .line 991
    if-ne v0, v1, :cond_3e

    .line 992
    .line 993
    if-eqz v15, :cond_3e

    .line 994
    .line 995
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 996
    .line 997
    .line 998
    move-result v0

    .line 999
    if-nez v0, :cond_3e

    .line 1000
    .line 1001
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 1002
    .line 1003
    .line 1004
    move-result v0

    .line 1005
    if-ne v0, v10, :cond_3e

    .line 1006
    .line 1007
    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1008
    .line 1009
    if-eqz v0, :cond_3e

    .line 1010
    .line 1011
    invoke-virtual {v0, v10}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    .line 1012
    .line 1013
    .line 1014
    move-result v0

    .line 1015
    if-eqz v0, :cond_3e

    .line 1016
    .line 1017
    move v0, v12

    .line 1018
    if-eqz p2, :cond_36

    .line 1019
    .line 1020
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->hasValidLaunchAdjacentExt()Z

    .line 1021
    .line 1022
    .line 1023
    move-result v1

    .line 1024
    if-eqz v1, :cond_36

    .line 1025
    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->hasValidHorizontalSplitLayoutWithAdjacentFlag()Z

    .line 1027
    .line 1028
    .line 1029
    move-result v0

    .line 1030
    if-eqz v0, :cond_34

    .line 1031
    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->launchToTopSideWithAdjacentFlag()Z

    .line 1033
    .line 1034
    .line 1035
    move-result v0

    .line 1036
    if-eqz v0, :cond_33

    .line 1037
    .line 1038
    const/4 v2, 0x5

    .line 1039
    goto :goto_1a

    .line 1040
    :cond_33
    const/4 v2, 0x3

    .line 1041
    goto :goto_1a

    .line 1042
    :cond_34
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->launchToRightSideWithAdjacentFlag()Z

    .line 1043
    .line 1044
    .line 1045
    move-result v0

    .line 1046
    if-eqz v0, :cond_35

    .line 1047
    .line 1048
    move v2, v4

    .line 1049
    goto :goto_1a

    .line 1050
    :cond_35
    move v2, v5

    .line 1051
    :goto_1a
    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 1052
    .line 1053
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1054
    .line 1055
    .line 1056
    new-instance v1, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    .line 1057
    .line 1058
    invoke-direct {v1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>()V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setSplitScreenCreateModeForLaunchAdjacent(I)V

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->toBundle()Landroid/os/Bundle;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v1

    .line 1068
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskOrganizerController;->onSplitLayoutChangeRequested(Landroid/os/Bundle;)V

    .line 1069
    .line 1070
    .line 1071
    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 1072
    .line 1073
    iput-boolean v10, v0, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    .line 1074
    .line 1075
    goto :goto_1b

    .line 1076
    :cond_36
    iget-object v1, v3, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 1077
    .line 1078
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v1

    .line 1082
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    .line 1083
    .line 1084
    if-eqz v1, :cond_3d

    .line 1085
    .line 1086
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v1

    .line 1090
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    .line 1091
    .line 1092
    .line 1093
    move-result v1

    .line 1094
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_LAUNCH_ADJACENT:Z

    .line 1095
    .line 1096
    const/16 v3, 0x8

    .line 1097
    .line 1098
    if-eqz v2, :cond_3b

    .line 1099
    .line 1100
    if-eq v1, v3, :cond_37

    .line 1101
    .line 1102
    const/16 v2, 0x20

    .line 1103
    .line 1104
    if-ne v1, v2, :cond_38

    .line 1105
    .line 1106
    :cond_37
    move v0, v10

    .line 1107
    :cond_38
    if-eqz v0, :cond_39

    .line 1108
    .line 1109
    if-eq v1, v3, :cond_3a

    .line 1110
    .line 1111
    :cond_39
    if-nez v0, :cond_3d

    .line 1112
    .line 1113
    :cond_3a
    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 1114
    .line 1115
    iput-boolean v10, v0, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    .line 1116
    .line 1117
    goto :goto_1b

    .line 1118
    :cond_3b
    const/16 v0, 0x10

    .line 1119
    .line 1120
    if-eq v1, v0, :cond_3c

    .line 1121
    .line 1122
    if-ne v1, v3, :cond_3d

    .line 1123
    .line 1124
    :cond_3c
    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 1125
    .line 1126
    iput-boolean v10, v0, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    .line 1127
    .line 1128
    :cond_3d
    :goto_1b
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_LAUNCH_ADJACENT_SA_LOGGING:Z

    .line 1129
    .line 1130
    if-eqz v0, :cond_3e

    .line 1131
    .line 1132
    const-string v0, "1000"

    .line 1133
    .line 1134
    const-string v1, "From application"

    .line 1135
    .line 1136
    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    .line 1138
    .line 1139
    :cond_3e
    return-void
.end method

.method public final setNewTask(Lcom/android/server/wm/Task;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    move v7, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    move v7, v0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 17
    .line 18
    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    iget-object v3, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 23
    .line 24
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 25
    .line 26
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 27
    .line 28
    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 29
    .line 30
    iget-object v10, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 31
    .line 32
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    const-string/jumbo v2, "setTaskFromReuseOrCreateNewTask"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 53
    .line 54
    aget-boolean v0, v0, v1

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 73
    .line 74
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    const-wide v3, -0x1e660f29cd5dc2c7L    # -1.458816009883848E162

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v6, 0x0

    .line 85
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    if-eqz p1, :cond_3

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void
.end method

.method public startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;I)I
    .locals 41

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    .line 1
    iget-boolean v0, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    .line 2
    iget v1, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    const/4 v10, 0x5

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    move v9, v10

    goto :goto_0

    :cond_0
    move v9, v1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move v15, v10

    move/from16 v10, p11

    .line 3
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/ActivityStarter;->setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;II)V

    .line 4
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/high16 v1, 0x10000000

    const/4 v7, 0x3

    const/4 v6, 0x2

    if-nez v0, :cond_8

    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 5
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 6
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 7
    invoke-virtual {v2, v8, v9}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v0, :cond_7

    .line 8
    iget v3, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v7, v3, :cond_1

    if-ne v6, v3, :cond_2

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v2, :cond_5

    :cond_2
    if-nez v2, :cond_3

    .line 10
    iget v2, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v3, -0x18082001

    and-int/2addr v2, v3

    .line 11
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v3, 0x18082000

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    iput v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 12
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 13
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 14
    invoke-virtual {v0, v2, v10, v10}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 15
    iput-boolean v8, v11, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_1

    .line 16
    :cond_3
    iget v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 17
    iput-boolean v9, v11, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_1

    .line 18
    :cond_4
    iput-boolean v8, v11, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_1

    .line 19
    :cond_5
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Caller with mInTask "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has root "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but target is singleInstance/Task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_6
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to launch singleInstance/Task "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " into different task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_7
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching into task without base intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_8
    iput-object v10, v11, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 26
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_b

    .line 27
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 28
    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 29
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v0, v6, :cond_b

    .line 30
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 31
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 32
    iget-object v2, v2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 33
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v0, v2, :cond_b

    .line 34
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 35
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_b

    .line 36
    :cond_a
    iput-boolean v8, v11, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 37
    :cond_b
    :goto_1
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    const-string v5, "ActivityTaskManager"

    if-nez v0, :cond_f

    .line 38
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_c

    .line 39
    iget v2, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v2, v1

    if-nez v2, :cond_f

    if-nez v0, :cond_f

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v1

    iput v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_2

    .line 42
    :cond_c
    iget v0, v2, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-ne v0, v7, :cond_d

    .line 43
    iget v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v1

    iput v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_2

    .line 44
    :cond_d
    iget v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v7, v0, :cond_e

    if-ne v6, v0, :cond_f

    .line 45
    :cond_e
    iget v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v1

    iput v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 46
    :cond_f
    :goto_2
    iget v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_11

    and-int v2, v0, v1

    if-eqz v2, :cond_10

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_11

    :cond_10
    and-int/lit16 v0, v0, -0x1001

    .line 47
    iput v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 48
    :cond_11
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v2, 0x4

    const/4 v4, -0x1

    if-ne v0, v2, :cond_29

    iget v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x8000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_12

    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_29

    .line 49
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isStartedFromWindowTypeLauncher()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 50
    :cond_12
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_15

    .line 51
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    if-nez v0, :cond_13

    .line 52
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    .line 53
    :cond_13
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 54
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v16

    if-eqz v16, :cond_14

    .line 55
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v3

    goto :goto_3

    :cond_14
    move v3, v9

    goto :goto_3

    :cond_15
    move v0, v9

    move v3, v0

    :goto_3
    if-nez v3, :cond_16

    .line 56
    iget-object v6, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_16

    .line 57
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 58
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v3

    .line 59
    :cond_16
    iget-object v6, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiInstanceController:Lcom/android/server/wm/MultiInstanceController;

    iget-object v7, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    iget-object v10, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getLaunchTaskIdForSingleInstancePerTask()I

    move-result v10

    if-eq v10, v4, :cond_17

    goto/16 :goto_a

    .line 61
    :cond_17
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v4, v6, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v6, Lcom/android/server/wm/MultiInstanceController;->mTmpFindTaskResult:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    invoke-virtual {v6, v7, v4, v10}, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)V

    .line 63
    new-instance v4, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    if-nez v9, :cond_18

    if-nez v0, :cond_18

    if-eqz v3, :cond_19

    :cond_18
    if-eqz v9, :cond_1b

    .line 64
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_1b

    if-nez v0, :cond_1b

    if-nez v3, :cond_1b

    :cond_19
    const/4 v0, 0x0

    .line 65
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 66
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 67
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 68
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    goto/16 :goto_a

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1b
    if-eqz v9, :cond_1c

    .line 69
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 70
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_1c

    goto/16 :goto_a

    .line 71
    :cond_1c
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 72
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_24

    .line 73
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    .line 74
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 75
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v2

    if-ne v2, v3, :cond_1d

    .line 76
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v1, v8, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    goto/16 :goto_a

    .line 77
    :cond_1d
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 78
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 79
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_6

    :cond_1e
    if-nez v9, :cond_23

    move-object v9, v8

    goto :goto_7

    .line 80
    :cond_1f
    :goto_6
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v1, v8, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    goto/16 :goto_a

    .line 81
    :cond_20
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    if-nez v2, :cond_21

    if-nez v6, :cond_23

    move-object v6, v8

    goto :goto_7

    .line 82
    :cond_21
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 83
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 84
    :cond_22
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    :goto_7
    add-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x8000000

    goto :goto_5

    .line 85
    :cond_24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    if-nez v0, :cond_25

    if-eqz v6, :cond_25

    goto :goto_8

    :cond_25
    move-object v6, v0

    :goto_8
    if-eqz v6, :cond_26

    .line 86
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v1, v6, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    goto :goto_a

    .line 87
    :cond_26
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v15, :cond_28

    .line 88
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_27

    goto :goto_9

    .line 89
    :cond_27
    iget v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_a

    :cond_28
    :goto_9
    if-eqz v9, :cond_29

    .line 90
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v1, v9, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    .line 91
    :cond_29
    :goto_a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v0, :cond_2a

    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mIsFlexPanel:Z

    if-eqz v0, :cond_2a

    .line 92
    iget v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 93
    :cond_2a
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v1, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 95
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v1

    if-ne v1, v15, :cond_2b

    const/4 v10, 0x1

    goto :goto_b

    :cond_2c
    const/4 v10, 0x0

    .line 96
    :goto_b
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 97
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v0

    move-object v9, v0

    goto :goto_c

    :cond_2d
    const/4 v9, 0x0

    :goto_c
    if-eqz v13, :cond_2e

    .line 98
    iget-boolean v0, v13, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    .line 99
    :cond_2e
    invoke-static {}, Lcom/android/wm/shell/Flags;->onlyReuseBubbledTaskWhenLaunchedFromBubble()Z

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->resolveReusableTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 101
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v1, v12, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 103
    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->isFreezeTaskListReorderingSet()Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, v11, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 105
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    :cond_2f
    if-eqz v8, :cond_30

    move-object v7, v8

    goto :goto_f

    .line 106
    :cond_30
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_31

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v1, :cond_31

    iget-boolean v1, v11, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v1, :cond_31

    iget v1, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_31

    :goto_d
    const/4 v0, 0x0

    goto :goto_e

    .line 107
    :cond_31
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_32

    .line 108
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_e

    .line 109
    :cond_32
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_34

    .line 110
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_33

    .line 111
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 112
    :cond_33
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    goto :goto_e

    .line 113
    :cond_34
    iget v1, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-virtual {v11, v0, v1, v3, v2}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 115
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_e

    .line 116
    :cond_35
    const-string v1, "computeTargetTask"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    goto :goto_d

    :goto_e
    move-object v7, v0

    :goto_f
    if-nez v7, :cond_36

    const/4 v6, 0x1

    goto :goto_10

    :cond_36
    const/4 v6, 0x0

    .line 117
    :goto_10
    iput-object v7, v11, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 118
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_37

    .line 119
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_37

    if-ge v0, v15, :cond_37

    .line 120
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 121
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    goto :goto_11

    :cond_37
    const/4 v4, 0x0

    .line 122
    :goto_11
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-eqz v0, :cond_38

    goto :goto_12

    .line 123
    :cond_38
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_3d

    .line 124
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_39

    .line 125
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    if-nez v1, :cond_3d

    :cond_39
    if-eqz v7, :cond_3a

    .line 126
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    goto :goto_13

    :cond_3a
    move v1, v4

    :goto_13
    if-eqz v7, :cond_3b

    .line 127
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 128
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    if-eq v2, v0, :cond_3b

    move v1, v4

    .line 129
    :cond_3b
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-nez v0, :cond_3c

    .line 130
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 131
    :cond_3c
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 132
    :cond_3d
    sget-boolean v17, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    if-eqz v17, :cond_41

    .line 133
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3e

    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_3e

    if-eqz v7, :cond_3f

    .line 135
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_14

    :cond_3e
    const/4 v1, 0x1

    goto :goto_15

    .line 136
    :cond_3f
    :goto_14
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-nez v0, :cond_40

    .line 137
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 138
    :cond_40
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    goto :goto_15

    :cond_41
    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 139
    :goto_15
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 140
    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v15, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move/from16 p4, v6

    iget-object v6, v11, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    move-object/from16 p7, v8

    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object/from16 v20, v9

    iget-object v9, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/16 v21, 0x3

    move-object/from16 v22, v1

    const/16 v18, 0x1

    move-object v1, v7

    move/from16 v23, v2

    move-object/from16 v2, v22

    move-object/from16 v24, v3

    move-object/from16 v3, p1

    move/from16 v22, v4

    move-object/from16 v4, p2

    move-object/from16 v26, v5

    move-object v5, v15

    move/from16 v15, p4

    move/from16 v28, v10

    move-object v10, v7

    move/from16 v7, v21

    move-object/from16 v30, p7

    move-object/from16 v13, v20

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 141
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_43

    .line 142
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-nez v1, :cond_42

    .line 143
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 144
    :cond_42
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 145
    :cond_43
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_44

    goto :goto_16

    :cond_44
    move-object/from16 v1, v24

    .line 146
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 147
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 148
    :goto_16
    iput-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 149
    iget v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v0, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 150
    invoke-virtual {v11, v12, v15, v10}, Lcom/android/server/wm/ActivityStarter;->isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I

    move-result v0

    if-eqz v0, :cond_46

    .line 151
    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_45

    .line 152
    iget-object v3, v12, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v4, v12, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 153
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    :cond_45
    return v0

    .line 154
    :cond_46
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v0, :cond_47

    .line 155
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityStartLocked(Lcom/android/server/wm/ActivityRecord;)V

    :cond_47
    const/16 v0, 0x66

    if-eqz v10, :cond_4c

    .line 156
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getTreeWeight()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_48

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remove "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because it has contained too many activities or windows (abort starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, v26

    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v1, "bulky-task"

    invoke-virtual {v10, v1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    return v0

    :cond_48
    move-object/from16 v9, v26

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v1

    if-nez v1, :cond_4a

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_49

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    move/from16 v2, p11

    if-eq v1, v2, :cond_4a

    :cond_49
    if-eqz v13, :cond_4a

    .line 160
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, v12, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 161
    invoke-virtual {v1, v10}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/4 v1, 0x2

    .line 162
    iput v1, v11, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 163
    :cond_4a
    invoke-static {}, Lcom/android/window/flags/Flags;->balDontBringExistingBackgroundTaskStackToFg()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 164
    iget-boolean v1, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mOnlyCreatorAllows:Z

    if-eqz v1, :cond_4b

    const/4 v8, 0x1

    .line 165
    iput v8, v11, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    goto :goto_17

    :cond_4b
    const/4 v8, 0x1

    .line 166
    :goto_17
    invoke-virtual {v10}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v1

    iput-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    goto :goto_18

    :cond_4c
    move-object/from16 v9, v26

    const/4 v8, 0x1

    .line 167
    :goto_18
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_4f

    .line 168
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_4e

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 169
    invoke-virtual {v1}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 170
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    if-eqz v1, :cond_4d

    .line 171
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    goto :goto_19

    :cond_4d
    const/4 v2, 0x0

    .line 172
    :goto_19
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v1

    if-eqz v1, :cond_50

    .line 173
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    goto :goto_1a

    :cond_4e
    const/4 v2, 0x0

    goto :goto_1a

    :cond_4f
    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 174
    :cond_50
    :goto_1a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz v1, :cond_54

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 175
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v6, v30

    if-eqz v6, :cond_55

    if-eqz p6, :cond_55

    .line 176
    invoke-virtual/range {p6 .. p6}, Landroid/app/ActivityOptions;->isResumedAffordanceAnimationRequested()Z

    move-result v1

    if-nez v1, :cond_51

    goto :goto_1c

    .line 177
    :cond_51
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_1c

    .line 178
    :cond_52
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 179
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 180
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 181
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    goto :goto_1b

    .line 182
    :cond_53
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 183
    :goto_1b
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 184
    iget-object v3, v1, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    if-eq v3, v6, :cond_55

    .line 185
    iput-object v6, v1, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setAffordanceTargetTask: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MultiTaskingController"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_54
    move-object/from16 v6, v30

    .line 187
    :cond_55
    :goto_1c
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v1}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v1

    if-eq v1, v8, :cond_59

    const/4 v3, 0x2

    if-ne v1, v3, :cond_56

    .line 188
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 189
    iget-object v4, v4, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 190
    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v4, v3, :cond_56

    goto :goto_1d

    :cond_56
    if-eqz v17, :cond_58

    const/4 v3, 0x3

    if-ne v1, v3, :cond_58

    .line 191
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mNewDexController:Lcom/android/server/wm/NewDexController;

    iget-object v3, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/NewDexController;->shouldAbortStartActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 192
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v4, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v10}, Lcom/android/server/wm/DexController;->showWarningToastIfNeeded(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/Task;)V

    :cond_57
    move-object/from16 v5, p2

    move v4, v2

    goto/16 :goto_1f

    :cond_58
    move-object/from16 v5, p2

    move v1, v2

    move v4, v1

    goto :goto_1f

    .line 193
    :cond_59
    :goto_1d
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v3, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/DexController;->getDexPolicyFlags(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    and-int/lit8 v1, v1, 0x6

    if-eqz v1, :cond_5a

    move v1, v8

    goto :goto_1e

    :cond_5a
    move v1, v2

    .line 195
    :goto_1e
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v4, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v10}, Lcom/android/server/wm/DexController;->showWarningToastIfNeeded(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/Task;)V

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_57

    move-object/from16 v5, p2

    move v4, v2

    if-eqz v5, :cond_5c

    .line 197
    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_5c

    .line 198
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 199
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 200
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 201
    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v1, :cond_5b

    .line 202
    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->abort()V

    .line 203
    :cond_5b
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v3, 0x0

    .line 204
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;)Z

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start launcher is not allowed on desktop mode. source="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 206
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    :cond_5c
    :goto_1f
    if-eqz v1, :cond_5e

    .line 208
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 209
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v2, :cond_5d

    .line 210
    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 p1, v2

    move/from16 p2, v6

    move-object/from16 p3, v3

    move/from16 p4, v1

    move/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move/from16 p9, v9

    .line 211
    invoke-virtual/range {p1 .. p9}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 212
    :cond_5d
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return v0

    .line 213
    :cond_5e
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 214
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 215
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 216
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    move-object/from16 v18, v1

    move-object v1, v6

    move-object/from16 v19, v2

    move-object/from16 v2, p1

    move/from16 v20, v3

    move-object/from16 v3, p2

    move v14, v4

    move/from16 v4, p5

    move/from16 v5, v20

    move-object/from16 v20, v6

    move-object/from16 v6, v19

    move-object/from16 v7, p10

    move v14, v8

    move-object v8, v10

    move-object/from16 v31, v9

    move-object/from16 v9, v18

    .line 217
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/MultiTaskingController;->interceptStartActivityLocked(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;IILandroid/app/ActivityOptions;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStarter$Request;)Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_5f

    return v1

    .line 218
    :cond_5f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-nez v0, :cond_60

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_LARGE_COVER_SCREEN_SA_LOGGING:Z

    if-eqz v0, :cond_63

    .line 219
    :cond_60
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 220
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 221
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 222
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_61

    const/4 v0, 0x0

    goto :goto_20

    .line 223
    :cond_61
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_20
    if-eqz v0, :cond_62

    .line 224
    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 225
    :cond_62
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 227
    const-string v2, "W005"

    invoke-static {v2, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    if-eqz v15, :cond_64

    const/4 v0, 0x0

    goto :goto_21

    .line 228
    :cond_64
    invoke-virtual {v10, v14, v14}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_21
    if-eqz v0, :cond_69

    .line 229
    iget v2, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x3

    if-ne v3, v2, :cond_65

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_65

    .line 230
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-ne v10, v2, :cond_65

    .line 231
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 232
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eq v3, v10, :cond_65

    .line 233
    const-string v3, "Removes redundant singleInstance"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 234
    :cond_65
    iget-boolean v2, v11, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    if-nez v2, :cond_66

    goto :goto_22

    .line 235
    :cond_66
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 236
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 237
    iget-object v3, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v3, :cond_67

    invoke-virtual {v3, v0}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_67

    goto :goto_22

    .line 238
    :cond_67
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/TransitionController;->setTransientLaunch(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    :cond_68
    :goto_22
    move-object/from16 p3, p0

    move-object/from16 p4, v10

    move-object/from16 p5, v0

    move-object/from16 p6, v20

    move-object/from16 p7, p10

    move-object/from16 p8, p9

    .line 239
    invoke-virtual/range {p3 .. p8}, Lcom/android/server/wm/ActivityStarter;->recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I

    move-result v0

    if-eqz v0, :cond_6a

    return v0

    .line 240
    :cond_69
    iput-boolean v14, v11, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 241
    :cond_6a
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    move-object/from16 v0, p10

    if-eqz v2, :cond_6b

    .line 242
    invoke-virtual {v11, v2, v0}, Lcom/android/server/wm/ActivityStarter;->deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I

    move-result v3

    if-eqz v3, :cond_6b

    return v3

    :cond_6b
    if-eqz v15, :cond_6c

    .line 243
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v7, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 244
    iget-object v7, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 245
    iget v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 246
    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v8, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 247
    iget-object v3, v3, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 248
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRemoteAppController:Lcom/android/server/wm/RemoteAppController;

    const/16 v34, 0x0

    const-string/jumbo v39, "newTask"

    move-object/from16 v32, v3

    move-object/from16 v33, v4

    move-object/from16 v35, v5

    move-object/from16 v36, v6

    move/from16 v37, v7

    move-object/from16 v38, v9

    move-object/from16 v40, v8

    invoke-virtual/range {v32 .. v40}, Lcom/android/server/wm/RemoteAppController;->interceptStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Lcom/android/server/wm/ActivityStarter$Request;)Z

    move-result v3

    if-eqz v3, :cond_6c

    return v1

    .line 249
    :cond_6c
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-nez v1, :cond_6d

    .line 250
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v11, v1, v3, v10, v4}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v1

    iput-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 251
    :cond_6d
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 252
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_6e

    .line 253
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->isForceLaunchTaskOnHome()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 254
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 255
    iput-boolean v14, v1, Lcom/android/server/wm/Task;->mLaunchTaskOnHome:Z

    .line 256
    :cond_6e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v1, :cond_71

    .line 257
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_6f

    .line 258
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    goto :goto_23

    :cond_6f
    const/4 v1, 0x0

    :goto_23
    if-eqz v1, :cond_71

    const/4 v3, 0x0

    .line 259
    invoke-virtual {v1, v14, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_71

    .line 260
    invoke-virtual {v1, v14, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 261
    iget-boolean v3, v4, Lcom/android/server/wm/ActivityRecord;->mIsFlexPanel:Z

    if-eqz v3, :cond_71

    .line 262
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_70

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_71

    .line 263
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v3

    if-ne v3, v4, :cond_71

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    const/4 v4, 0x0

    .line 264
    invoke-virtual {v1, v14, v4}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 265
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 266
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 267
    :cond_70
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    const-string v3, "flex_panel_finish"

    const/4 v4, 0x0

    .line 268
    invoke-virtual {v1, v4, v3, v4}, Lcom/android/server/wm/ChangeTransitionController;->requestDisplayChangeTransition(ILjava/lang/String;Z)V

    .line 269
    :cond_71
    iget v1, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_72

    .line 270
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 271
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v3

    if-nez v3, :cond_72

    .line 272
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_72

    .line 273
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 274
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 275
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    .line 276
    const-string v3, "adjacent"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_72
    if-eqz v15, :cond_76

    .line 277
    iget-boolean v1, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_73

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_73

    .line 278
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_24

    :cond_73
    const/4 v1, 0x0

    .line 279
    :goto_24
    invoke-virtual {v11, v1}, Lcom/android/server/wm/ActivityStarter;->setNewTask(Lcom/android/server/wm/Task;)V

    move-object/from16 v7, p2

    if-eqz v7, :cond_74

    .line 280
    iget-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-nez v1, :cond_75

    :cond_74
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_78

    const-string v3, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    .line 281
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 282
    :cond_75
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 283
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 284
    iput-boolean v14, v1, Lcom/android/server/wm/Task;->mIsAliasManaged:Z

    goto :goto_26

    :cond_76
    move-object/from16 v7, p2

    .line 285
    iget-boolean v1, v11, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v1, :cond_78

    .line 286
    const-string v1, "adding to task"

    invoke-virtual {v11, v1, v10}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 287
    iget v1, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v3, 0x10008000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_77

    move v9, v14

    goto :goto_25

    :cond_77
    const/4 v9, 0x0

    .line 288
    :goto_25
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v1, :cond_78

    if-eqz v9, :cond_78

    if-eqz v7, :cond_78

    .line 289
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 290
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-nez v1, :cond_78

    const/4 v1, 0x0

    .line 291
    invoke-virtual {v10, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startActivityInner: ensure visible earlier for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v31

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v10, v14, v1}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 294
    :cond_78
    :goto_26
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_7b

    .line 295
    iget-boolean v3, v11, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    if-nez v3, :cond_79

    goto :goto_27

    .line 296
    :cond_79
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 297
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 298
    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v4, :cond_7a

    invoke-virtual {v4, v1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_7a

    goto :goto_27

    .line 299
    :cond_7a
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/TransitionController;->setTransientLaunch(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 300
    :cond_7b
    :goto_27
    iget-boolean v1, v11, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_7e

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 302
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const-string/jumbo v3, "reuseOrNewTask"

    invoke-virtual {v1, v3, v10}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 303
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v1

    if-nez v1, :cond_7e

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 304
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveDreamComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_7c

    move v9, v14

    goto :goto_28

    :cond_7c
    const/4 v9, 0x0

    :goto_28
    if-eqz v9, :cond_7e

    if-nez v28, :cond_7e

    .line 305
    iput-boolean v14, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 306
    iput-boolean v14, v12, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    goto :goto_29

    .line 307
    :cond_7d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    .line 308
    :cond_7e
    :goto_29
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 309
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v3

    .line 310
    check-cast v1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    invoke-virtual {v1, v0, v3}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 311
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_7f

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_7f

    .line 312
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 313
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 314
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v27

    .line 315
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 316
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v26

    .line 317
    move-object/from16 v23, v0

    check-cast v23, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    const/16 v28, 0x1

    const/16 v29, 0x0

    move/from16 v24, v3

    move-object/from16 v25, v4

    .line 318
    invoke-virtual/range {v23 .. v29}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    goto :goto_2a

    .line 319
    :cond_7f
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    if-eqz v0, :cond_80

    .line 320
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 321
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 322
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 323
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v26

    iget v1, v12, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 324
    move-object/from16 v23, v0

    check-cast v23, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    const/16 v28, 0x1

    const/16 v29, 0x0

    move/from16 v24, v3

    move-object/from16 v25, v4

    move/from16 v27, v1

    .line 325
    invoke-virtual/range {v23 .. v29}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    .line 326
    :cond_80
    :goto_2a
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v15, :cond_81

    .line 327
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v1, v8, Lcom/android/server/wm/Task;->mTaskId:I

    .line 328
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 329
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v4

    .line 330
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7534

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 331
    :cond_81
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v1, 0x7535

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getStartInfo()Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 334
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_82

    .line 335
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->semSetLaunchOverTargetTask(IZ)V

    .line 336
    :cond_82
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v9, :cond_83

    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v0, :cond_83

    iget-boolean v1, v11, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v1, :cond_83

    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 337
    invoke-virtual {v0, v1}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    move v10, v14

    goto :goto_2b

    :cond_83
    const/4 v10, 0x0

    :goto_2b
    if-eqz v9, :cond_84

    if-eqz v10, :cond_84

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 339
    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 340
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.applock"

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 342
    iput-boolean v14, v12, Lcom/android/server/wm/ActivityRecord;->mIsAppLockExceptionActivity:Z

    .line 343
    :cond_84
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 344
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    if-eq v8, v13, :cond_85

    move v4, v14

    goto :goto_2c

    :cond_85
    const/4 v4, 0x0

    .line 345
    :goto_2c
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move v3, v15

    move-object/from16 v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    .line 346
    iget-boolean v0, v11, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_8c

    .line 347
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 348
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v1

    if-eqz v1, :cond_8b

    if-eqz v0, :cond_86

    .line 349
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v1, :cond_86

    .line 350
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v0, :cond_86

    goto :goto_2f

    .line 351
    :cond_86
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_87

    .line 352
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v1, v0, :cond_88

    move v0, v14

    goto :goto_2d

    .line 353
    :cond_87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_88
    const/4 v0, 0x0

    :goto_2d
    if-nez v0, :cond_8a

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_89

    .line 355
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const-string/jumbo v1, "startActivityInner"

    const/4 v2, 0x0

    .line 356
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_2e

    .line 357
    :cond_89
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    .line 358
    :cond_8a
    :goto_2e
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean v4, v11, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    goto :goto_30

    .line 359
    :cond_8b
    :goto_2f
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    .line 360
    invoke-virtual {v0, v14, v1}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 361
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 362
    :cond_8c
    :goto_30
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 363
    iget v3, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    if-eq v1, v3, :cond_8e

    if-nez v2, :cond_8d

    .line 364
    iget-object v2, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    const/4 v3, 0x0

    .line 365
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 366
    :cond_8d
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    .line 367
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 368
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 369
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 370
    :cond_8e
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 371
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v4, 0x0

    move-object/from16 p3, v0

    move-object/from16 p4, v8

    move/from16 p5, v1

    move-object/from16 p6, v2

    move-object/from16 p7, v3

    move/from16 p8, v4

    .line 372
    invoke-virtual/range {p3 .. p8}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    .line 373
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    move-result v0

    if-eqz v0, :cond_8f

    if-eqz v7, :cond_8f

    .line 374
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_8f

    .line 375
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 376
    const-string v1, "launch-into-pip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 377
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 378
    const-string v4, "launch-into-pip"

    move-object/from16 p3, v0

    move-object/from16 p4, v1

    move-object/from16 p5, p2

    move-object/from16 p6, v4

    move-object/from16 p7, v3

    move-object/from16 p8, v2

    .line 379
    invoke-virtual/range {p3 .. p8}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/Transition;Landroid/graphics/Rect;)V

    :cond_8f
    if-eqz v17, :cond_90

    .line 380
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    move-result v0

    if-nez v0, :cond_93

    :cond_90
    if-eqz v7, :cond_91

    .line 381
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_91

    move v0, v14

    goto :goto_31

    :cond_91
    const/4 v0, 0x0

    .line 382
    :goto_31
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-ne v1, v14, :cond_92

    move v1, v14

    goto :goto_32

    :cond_92
    const/4 v1, 0x0

    .line 383
    :goto_32
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 384
    invoke-virtual {v2, v14}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    move-result v2

    xor-int/2addr v2, v14

    if-eqz v0, :cond_93

    if-eqz v15, :cond_93

    if-eqz v1, :cond_93

    if-eqz v2, :cond_93

    .line 385
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 386
    iget-object v1, v0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/4 v2, 0x1

    .line 387
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_93
    if-eqz v9, :cond_94

    if-eqz v10, :cond_94

    const/4 v0, 0x0

    .line 389
    iput-boolean v0, v12, Lcom/android/server/wm/ActivityRecord;->mIsAppLockExceptionActivity:Z

    goto :goto_33

    :cond_94
    const/4 v0, 0x0

    .line 390
    :goto_33
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 391
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    .line 392
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 393
    invoke-virtual {v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->onNewActivityLaunched(Lcom/android/server/wm/ActivityRecord;)V

    return v0
.end method

.method public final startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;I)I
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    iget-object v0, v8, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isLaunchAdjacent()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    if-eqz v9, :cond_0

    .line 18
    .line 19
    iget-boolean v2, v9, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget v2, v1, Lcom/android/server/wm/Transition;->mType:I

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    if-ne v2, v3, :cond_0

    .line 45
    .line 46
    const-string v2, "ActivityTaskManager"

    .line 47
    .line 48
    const-string v3, "Start Adjacent Activity, Collecting Transition is TRANSIT_CLOSE"

    .line 49
    .line 50
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->abort()V

    .line 54
    .line 55
    .line 56
    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    .line 57
    .line 58
    const/4 v10, 0x1

    .line 59
    const/4 v3, 0x0

    .line 60
    if-eqz v2, :cond_9

    .line 61
    .line 62
    iget-object v2, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 63
    .line 64
    if-eqz v2, :cond_9

    .line 65
    .line 66
    const-string v4, "android.intent.action.AUTORUN_FLEX_PANEL"

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_9

    .line 77
    .line 78
    if-eqz v1, :cond_9

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->isCollecting()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_9

    .line 85
    .line 86
    iget v2, v1, Lcom/android/server/wm/Transition;->mType:I

    .line 87
    .line 88
    const/4 v4, 0x3

    .line 89
    if-eq v2, v4, :cond_1

    .line 90
    .line 91
    if-ne v2, v10, :cond_9

    .line 92
    .line 93
    :cond_1
    move v2, v3

    .line 94
    :goto_0
    iget-object v5, v1, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 95
    .line 96
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-ge v2, v5, :cond_9

    .line 101
    .line 102
    iget-object v5, v1, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 109
    .line 110
    iget-object v6, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    if-nez v6, :cond_2

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_2
    iget-object v6, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 120
    .line 121
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    if-eq v11, v10, :cond_3

    .line 126
    .line 127
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-ne v6, v4, :cond_8

    .line 132
    .line 133
    :cond_3
    iget v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 134
    .line 135
    if-ne v5, v10, :cond_8

    .line 136
    .line 137
    move v2, v3

    .line 138
    :goto_1
    iget-object v5, v1, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 139
    .line 140
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-ge v2, v5, :cond_7

    .line 145
    .line 146
    iget-object v5, v1, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 147
    .line 148
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 153
    .line 154
    iget-object v6, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 155
    .line 156
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    if-nez v6, :cond_4

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_4
    iget-object v6, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 164
    .line 165
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    if-eq v11, v10, :cond_5

    .line 170
    .line 171
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-ne v5, v4, :cond_6

    .line 176
    .line 177
    :cond_5
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-eqz v5, :cond_6

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_7
    const-string v2, "ActivityTaskManager"

    .line 192
    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string/jumbo v5, "transition abort for flex panel, t="

    .line 196
    .line 197
    .line 198
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->abort()V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_9
    :goto_4
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    const/4 v4, 0x0

    .line 223
    if-eqz v2, :cond_10

    .line 224
    .line 225
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_b

    .line 232
    .line 233
    :cond_a
    :goto_5
    move-object v2, v4

    .line 234
    goto :goto_6

    .line 235
    :cond_b
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-nez v2, :cond_c

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_c
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 245
    .line 246
    invoke-virtual {v2}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_f

    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-eqz v2, :cond_e

    .line 257
    .line 258
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TransitionController;->canStartCollectingNow(Lcom/android/server/wm/Transition;)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_a

    .line 263
    .line 264
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    .line 265
    .line 266
    aget-boolean v2, v2, v10

    .line 267
    .line 268
    if-eqz v2, :cond_d

    .line 269
    .line 270
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 271
    .line 272
    iget v2, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 273
    .line 274
    int-to-long v5, v2

    .line 275
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 276
    .line 277
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v16

    .line 285
    const-string v15, "Moving #%d from collecting to waiting."

    .line 286
    .line 287
    const-wide v12, -0x165e91cdd667c4f0L    # -6.67107460160601E200

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    const/4 v14, 0x1

    .line 293
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_d
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 297
    .line 298
    iget-object v5, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 299
    .line 300
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    iput-object v4, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 304
    .line 305
    new-instance v2, Lcom/android/server/wm/Transition;

    .line 306
    .line 307
    iget-object v5, v0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 308
    .line 309
    invoke-direct {v2, v10, v3, v0, v5}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    .line 313
    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_e
    const-string v2, "TransitionController"

    .line 317
    .line 318
    const-string v5, "Ongoing Sync outside of transition."

    .line 319
    .line 320
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_f
    new-instance v2, Lcom/android/server/wm/Transition;

    .line 325
    .line 326
    iget-object v5, v0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 327
    .line 328
    invoke-direct {v2, v10, v3, v0, v5}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    .line 332
    .line 333
    .line 334
    :goto_6
    move-object v5, v2

    .line 335
    goto :goto_7

    .line 336
    :cond_10
    move-object v5, v4

    .line 337
    :goto_7
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    .line 338
    .line 339
    if-eqz v2, :cond_14

    .line 340
    .line 341
    iget-boolean v2, v8, Lcom/android/server/wm/ActivityRecord;->mIsFlexPanel:Z

    .line 342
    .line 343
    if-eqz v2, :cond_14

    .line 344
    .line 345
    if-nez v5, :cond_14

    .line 346
    .line 347
    const-string v0, "ActivityTaskManager"

    .line 348
    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v5, "if the flex panel does not run with the new transition, cancel start activity, transition="

    .line 352
    .line 353
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    iget-object v0, v7, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 367
    .line 368
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 369
    .line 370
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    if-eqz v0, :cond_11

    .line 375
    .line 376
    invoke-virtual {v0, v10, v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    goto :goto_8

    .line 381
    :cond_11
    move-object v0, v4

    .line 382
    :goto_8
    if-eqz v0, :cond_12

    .line 383
    .line 384
    invoke-virtual {v0, v10, v3}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    :cond_12
    if-eqz v4, :cond_13

    .line 389
    .line 390
    const-string v1, "ActivityTaskManager"

    .line 391
    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    const-string v3, "flex panel cancel Task="

    .line 395
    .line 396
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v0, " topActivity="

    .line 403
    .line 404
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const-string v0, " orientation="

    .line 411
    .line 412
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    :cond_13
    const/16 v0, -0x60

    .line 430
    .line 431
    return v0

    .line 432
    :cond_14
    iget-object v1, v8, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    .line 433
    .line 434
    iput-object v4, v8, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    .line 435
    .line 436
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 437
    .line 438
    if-eqz v2, :cond_15

    .line 439
    .line 440
    iget-object v2, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 441
    .line 442
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    const/high16 v6, 0x10000

    .line 447
    .line 448
    and-int/2addr v2, v6

    .line 449
    if-eqz v2, :cond_15

    .line 450
    .line 451
    move-object v6, v4

    .line 452
    goto :goto_9

    .line 453
    :cond_15
    move-object v6, v1

    .line 454
    :goto_9
    if-eqz v5, :cond_17

    .line 455
    .line 456
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 457
    .line 458
    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    .line 459
    .line 460
    if-eqz v1, :cond_17

    .line 461
    .line 462
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 463
    .line 464
    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 465
    .line 466
    if-eqz v1, :cond_16

    .line 467
    .line 468
    goto :goto_a

    .line 469
    :cond_16
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 470
    .line 471
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 472
    .line 473
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    :goto_a
    iget-object v2, v7, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 478
    .line 479
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 480
    .line 481
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 482
    .line 483
    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    if-eqz v1, :cond_19

    .line 488
    .line 489
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 493
    .line 494
    .line 495
    goto :goto_c

    .line 496
    :cond_17
    if-eqz v5, :cond_19

    .line 497
    .line 498
    iget-object v1, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 499
    .line 500
    if-eqz v1, :cond_19

    .line 501
    .line 502
    const-string v2, "com.sec.intent.extra.FREEZE_TASK_DISPLAY_AREA"

    .line 503
    .line 504
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    if-eqz v1, :cond_19

    .line 509
    .line 510
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 511
    .line 512
    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 513
    .line 514
    if-eqz v1, :cond_18

    .line 515
    .line 516
    goto :goto_b

    .line 517
    :cond_18
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 518
    .line 519
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 520
    .line 521
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 529
    .line 530
    .line 531
    :cond_19
    :goto_c
    :try_start_0
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 532
    .line 533
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0, v8}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    .line 538
    .line 539
    const-wide/16 v1, 0x20

    .line 540
    .line 541
    const/16 v11, -0x60

    .line 542
    .line 543
    :try_start_1
    const-string/jumbo v0, "startActivityInner"

    .line 544
    .line 545
    .line 546
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/wm/ActivityStarter;->startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;I)I

    .line 550
    .line 551
    .line 552
    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 553
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 554
    .line 555
    .line 556
    :goto_d
    move-object/from16 v1, p0

    .line 557
    .line 558
    move-object/from16 v2, p1

    .line 559
    .line 560
    move-object/from16 v3, p6

    .line 561
    .line 562
    move v4, v11

    .line 563
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/Transition;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Task;

    .line 564
    .line 565
    .line 566
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 567
    goto :goto_e

    .line 568
    :catchall_0
    move-exception v0

    .line 569
    goto/16 :goto_15

    .line 570
    .line 571
    :catchall_1
    move-exception v0

    .line 572
    goto/16 :goto_14

    .line 573
    .line 574
    :catch_0
    move-exception v0

    .line 575
    :try_start_3
    const-string v3, "ActivityTaskManager"

    .line 576
    .line 577
    const-string v4, "Exception on startActivityInner"

    .line 578
    .line 579
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 580
    .line 581
    .line 582
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 583
    .line 584
    .line 585
    goto :goto_d

    .line 586
    :goto_e
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 587
    .line 588
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 589
    .line 590
    .line 591
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 592
    .line 593
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 594
    .line 595
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    .line 596
    .line 597
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    xor-int/2addr v1, v10

    .line 602
    if-eqz v1, :cond_1a

    .line 603
    .line 604
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 605
    .line 606
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 607
    .line 608
    const-string v2, "adjacent"

    .line 609
    .line 610
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    :cond_1a
    invoke-virtual {v7, v11, v8, v0}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 614
    .line 615
    .line 616
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 617
    .line 618
    if-eqz v1, :cond_1f

    .line 619
    .line 620
    if-eqz v0, :cond_1f

    .line 621
    .line 622
    iget-object v2, v7, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 623
    .line 624
    if-eqz v2, :cond_1f

    .line 625
    .line 626
    if-eqz v9, :cond_1b

    .line 627
    .line 628
    iget-object v2, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 629
    .line 630
    if-eqz v2, :cond_1b

    .line 631
    .line 632
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 633
    .line 634
    goto :goto_f

    .line 635
    :cond_1b
    const/4 v2, -0x1

    .line 636
    :goto_f
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 637
    .line 638
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 639
    .line 640
    if-eqz v1, :cond_1d

    .line 641
    .line 642
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 643
    .line 644
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 645
    .line 646
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 647
    .line 648
    .line 649
    monitor-enter v1

    .line 650
    :try_start_5
    iget-object v4, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 651
    .line 652
    iget-object v5, v7, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 653
    .line 654
    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 655
    .line 656
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    .line 657
    .line 658
    .line 659
    move-result-object v4

    .line 660
    if-eqz v4, :cond_1c

    .line 661
    .line 662
    iget-object v3, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 663
    .line 664
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 665
    .line 666
    goto :goto_10

    .line 667
    :catchall_2
    move-exception v0

    .line 668
    goto :goto_11

    .line 669
    :cond_1c
    :goto_10
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 670
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 671
    .line 672
    .line 673
    goto :goto_12

    .line 674
    :goto_11
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 675
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 676
    .line 677
    .line 678
    throw v0

    .line 679
    :cond_1d
    :goto_12
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 680
    .line 681
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContentDispatcher:Lcom/android/server/pm/ContentDispatcher;

    .line 682
    .line 683
    iget-object v4, v7, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 684
    .line 685
    iget-object v5, v4, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 686
    .line 687
    iget-object v6, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 688
    .line 689
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 690
    .line 691
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 692
    .line 693
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 694
    .line 695
    .line 696
    if-eqz v4, :cond_1f

    .line 697
    .line 698
    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 699
    .line 700
    if-eqz v7, :cond_1f

    .line 701
    .line 702
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 703
    .line 704
    if-eqz v7, :cond_1f

    .line 705
    .line 706
    if-nez v6, :cond_1e

    .line 707
    .line 708
    goto :goto_13

    .line 709
    :cond_1e
    invoke-virtual {v6}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v6

    .line 713
    check-cast v6, Landroid/content/Intent;

    .line 714
    .line 715
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 716
    .line 717
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 718
    .line 719
    iget-object v7, v1, Lcom/android/server/pm/ContentDispatcher;->mHandler:Landroid/os/Handler;

    .line 720
    .line 721
    new-instance v8, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;

    .line 722
    .line 723
    move-object/from16 p0, v8

    .line 724
    .line 725
    move-object/from16 p1, v1

    .line 726
    .line 727
    move-object/from16 p2, v6

    .line 728
    .line 729
    move-object/from16 p3, v4

    .line 730
    .line 731
    move/from16 p4, v3

    .line 732
    .line 733
    move/from16 p5, v0

    .line 734
    .line 735
    move-object/from16 p6, v5

    .line 736
    .line 737
    move/from16 p7, v2

    .line 738
    .line 739
    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ContentDispatcher;Landroid/content/Intent;Ljava/lang/String;IILjava/lang/String;I)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 743
    .line 744
    .line 745
    :cond_1f
    :goto_13
    return v11

    .line 746
    :goto_14
    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 747
    .line 748
    .line 749
    move-object/from16 v1, p0

    .line 750
    .line 751
    move-object/from16 v2, p1

    .line 752
    .line 753
    move-object/from16 v3, p6

    .line 754
    .line 755
    move v4, v11

    .line 756
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/Transition;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Task;

    .line 757
    .line 758
    .line 759
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 760
    :goto_15
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 761
    .line 762
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 763
    .line 764
    .line 765
    throw v0
.end method

.method public final startResolvedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 16

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v14, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6
    .line 7
    :try_start_0
    iget-object v1, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 18
    .line 19
    .line 20
    move-result-object v15

    .line 21
    const-string/jumbo v1, "startResolvedActivity"

    .line 22
    .line 23
    .line 24
    iput-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    iput-wide v1, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 31
    .line 32
    iput-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 33
    .line 34
    sget-object v10, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->ALLOW_PRIVILEGED:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 35
    .line 36
    const/4 v12, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    move-object/from16 v1, p0

    .line 41
    .line 42
    move-object/from16 v2, p1

    .line 43
    .line 44
    move-object/from16 v3, p2

    .line 45
    .line 46
    move/from16 v6, p3

    .line 47
    .line 48
    move-object/from16 v7, p4

    .line 49
    .line 50
    move-object/from16 v8, p5

    .line 51
    .line 52
    move-object/from16 v11, p6

    .line 53
    .line 54
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;I)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    iput v7, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 59
    .line 60
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 61
    .line 62
    iget-object v9, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 63
    .line 64
    if-ne v0, v9, :cond_0

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    :goto_0
    move v8, v0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    goto :goto_0

    .line 71
    :goto_1
    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 72
    .line 73
    move-object v6, v15

    .line 74
    move-object/from16 v10, p4

    .line 75
    .line 76
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 85
    .line 86
    .line 87
    throw v0
.end method

.method public final useSpegDisplayIfNeeded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 11
    .line 12
    if-eqz v2, :cond_5

    .line 13
    .line 14
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    if-ne v1, v2, :cond_2

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 29
    .line 30
    iget-boolean v3, v0, Lcom/android/server/pm/SpegService;->mIsSpegInOpeartion:Z

    .line 31
    .line 32
    if-eqz v3, :cond_5

    .line 33
    .line 34
    iget v3, v0, Lcom/android/server/pm/SpegService;->mSpegUid:I

    .line 35
    .line 36
    if-ne v1, v3, :cond_5

    .line 37
    .line 38
    if-ne v1, v3, :cond_3

    .line 39
    .line 40
    iget v2, v0, Lcom/android/server/pm/SpegService;->mSpegDisplayId:I

    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v1, v1, v3}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_0
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eq v1, v2, :cond_5

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 67
    .line 68
    new-instance v3, Lcom/android/server/wm/SafeActivityOptions;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 71
    .line 72
    .line 73
    const/4 v4, 0x1

    .line 74
    invoke-virtual {v0, v4}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 75
    .line 76
    .line 77
    invoke-direct {v3, v0}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    .line 78
    .line 79
    .line 80
    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 81
    .line 82
    const-string v0, "Reuse hidden display #"

    .line 83
    .line 84
    const-string v1, " for "

    .line 85
    .line 86
    invoke-static {v2, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 93
    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string v0, "SPEG"

    .line 102
    .line 103
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_1
    return-void
.end method

.method public final waitResultIfNeeded(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)I
    .locals 3

    .line 1
    iget v0, p1, Landroid/app/WaitResult;->result:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_4

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-boolean v2, p2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 14
    .line 15
    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget v2, p1, Landroid/app/WaitResult;->result:I

    .line 28
    .line 29
    if-eq v2, v1, :cond_1

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v2, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    .line 35
    .line 36
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 37
    .line 38
    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;-><init>(Landroid/app/WaitResult;Landroid/content/ComponentName;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 47
    .line 48
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_2

    .line 60
    .line 61
    :goto_0
    if-nez v0, :cond_3

    .line 62
    .line 63
    iget p0, p1, Landroid/app/WaitResult;->result:I

    .line 64
    .line 65
    if-ne p0, v1, :cond_3

    .line 66
    .line 67
    return v1

    .line 68
    :cond_3
    return v0

    .line 69
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 70
    iput-boolean p0, p1, Landroid/app/WaitResult;->timeout:Z

    .line 71
    .line 72
    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 73
    .line 74
    iput-object p0, p1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 75
    .line 76
    const-wide/16 p2, 0x0

    .line 77
    .line 78
    iput-wide p2, p1, Landroid/app/WaitResult;->totalTime:J

    .line 79
    .line 80
    return v0
.end method
